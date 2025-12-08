/**
 * @file sentry_chassis_controller.cpp
 * @brief 哨兵机器人全向底盘控制器实现文件
 * @details 基于ROS Control框架的Effort（力矩）接口，实现全向底盘的核心控制逻辑：
 *          1. 动态参数配置（PID、几何尺寸、零偏等）
 *          2. 坐标系转换（世界帧→车体帧）
 *          3. 逆运动学解算（速度指令→轮速/舵角目标）
 *          4. PID闭环控制（舵向/驱动电机）
 *          5. 功率限制与电容能量模拟
 *          6. 正运动学解算（里程计发布）
 *          7. 多模式切换（普通全向/自旋/停止）
 */
#include "sentry_chassis_controller/sentry_chassis_controller.h"
#include <algorithm>
#include <pluginlib/class_list_macros.h>

namespace sentry_chassis_controller {

// === [常量定义] 提取硬编码常量，便于维护 ===
/** 底盘电容静态功率损耗 (W) */
const double CONSTANT_POWER_LOSS = 10.0; 
/** 底盘电容最大输入功率 (W) */
const double MAX_INPUT_POWER     = 50.0; 
/** 停止模式下的制动比例系数 (Nm/(rad/s)) */
const double STOP_MODE_KP        = 30.0; 
/** 停止模式下的最大制动力矩 (Nm) */
const double STOP_MODE_MAX_FORCE = 3.0;  

/**
 * @brief 构造函数
 * @details 初始化TF2监听器（用于坐标系转换），初始化列表方式初始化成员变量
 */
SentryChassisController::SentryChassisController() : tf_listener_(tf_buffer_) {}

/**
 * @brief 计算底盘运动学核心参数
 * @details 根据轮距(wheel_track)和轴距(wheel_base)计算底盘旋转半径R，
 *          公式：R = √[(轮距/2)² + (轴距/2)²]，用于逆运动学解算轮速/舵角
 */
void SentryChassisController::calculateKinematicsParams() {
  radius_ = std::sqrt(std::pow(wheel_track_ / 2.0, 2) + std::pow(wheel_base_ / 2.0, 2));
}

/**
 * @brief 动态参数配置回调函数（Dynamic Reconfigure）
 * @param config 动态配置参数结构体（由.cfg文件生成）
 * @param level 参数更新级别（未使用）
 * @details 运行时通过rqt_reconfigure修改参数，无需重启节点：
 *          1. 更新舵向/驱动电机PID参数（含积分限幅、输出限幅）
 *          2. 更新底盘几何参数（轮距、轴距）
 *          3. 更新舵机安装零偏、自旋速度、坐标系模式等
 *          4. 重新计算运动学参数
 */
void SentryChassisController::reconfigCallback(sentry_chassis_controller::ChassisOpsConfig& config, uint32_t level) {
  // 驱动电机积分限幅设为最大力矩（防止积分饱和）
  double wheel_i_limit = config.lf_wheel_max; 
  // 保存驱动轮最大力矩到成员变量（后续PID输出限幅用）
  wheel_max_effort_ = config.lf_wheel_max;

  // 1. 舵向电机PID配置（匹配URDF物理限制：最大输出力矩1.2Nm，积分限幅±1）
  pivot_pid_[0].setGains(config.lf_steer_p, config.lf_steer_i, config.lf_steer_d, 1.0, -1.0, 1.2); // 左前舵机
  pivot_pid_[1].setGains(config.rf_steer_p, config.rf_steer_i, config.rf_steer_d, 1.0, -1.0, 1.2); // 右前舵机
  pivot_pid_[2].setGains(config.lb_steer_p, config.lb_steer_i, config.lb_steer_d, 1.0, -1.0, 1.2); // 左后舵机
  pivot_pid_[3].setGains(config.rb_steer_p, config.rb_steer_i, config.rb_steer_d, 1.0, -1.0, 1.2); // 右后舵机

  // 2. 驱动电机PID配置（积分限幅±wheel_i_limit，输出限幅为配置的最大力矩）
  wheel_pid_[0].setGains(config.lf_wheel_p, config.lf_wheel_i, config.lf_wheel_d, wheel_i_limit, -wheel_i_limit, config.lf_wheel_max); // 左前驱动
  wheel_pid_[1].setGains(config.rf_wheel_p, config.rf_wheel_i, config.rf_wheel_d, wheel_i_limit, -wheel_i_limit, config.rf_wheel_max); // 右前驱动
  wheel_pid_[2].setGains(config.lb_wheel_p, config.lb_wheel_i, config.lb_wheel_d, wheel_i_limit, -wheel_i_limit, config.lb_wheel_max); // 左后驱动
  wheel_pid_[3].setGains(config.rb_wheel_p, config.rb_wheel_i, config.rb_wheel_d, wheel_i_limit, -wheel_i_limit, config.rb_wheel_max); // 右后驱动

  // 3. 底盘几何参数更新
  wheel_track_ = config.wheel_track;  // 轮距（左右轮间距，m）
  wheel_base_ = config.wheel_base;    // 轴距（前后轮间距，m）
  
  // 4. 舵机安装零偏（rad）- 校准机械安装误差
  steer_offset_rad_[0] = config.offset_lf; // 左前
  steer_offset_rad_[1] = config.offset_rf; // 右前
  steer_offset_rad_[2] = config.offset_lb; // 左后
  steer_offset_rad_[3] = config.offset_rb; // 右后

  // 5. 特殊模式参数
  spin_vw_ = config.spin_vw;               // 自旋模式角速度（rad/s）
  use_world_frame_ = config.use_world_frame; // 是否启用世界坐标系控制

  // 6. 加减速限制参数
  acc_linear_limit_ = config.acc_linear;   // 线加速度限制（m/s²）
  acc_angular_limit_ = config.acc_angular; // 角加速度限制（rad/s²）
  
  // 参数更新后重新计算运动学常数
  calculateKinematicsParams();
}

/**
 * @brief 控制器初始化函数（ROS Control框架调用）
 * @param hw 硬件接口指针（EffortJointInterface，力矩控制接口）
 * @param nh 节点句柄（用于读取参数、创建订阅/发布器）
 * @return 初始化成功返回true，失败返回false
 * @details 初始化流程：
 *          1. 读取参数服务器配置（里程计缩放、功率参数、关节名）
 *          2. 获取关节句柄（舵向/驱动关节）
 *          3. 初始化动态参数服务器
 *          4. 创建订阅器（速度指令、键盘指令）、发布器（里程计、调试数据）
 *          5. 初始化里程计消息、轮子方向修正
 */
bool SentryChassisController::init(hardware_interface::EffortJointInterface* hw, ros::NodeHandle& nh) {
  this->nh_ = nh;
  buffer_energy_ = 60.0; // 电容初始能量（J）

  // 从参数服务器读取配置（带默认值）
  nh_.param("odom_linear_scale", odom_linear_scale_, 1.0);    // 里程计线速度缩放因子
  nh_.param("odom_angular_scale", odom_angular_scale_, 1.0);  // 里程计角速度缩放因子
  nh_.param("power_constant_loss", power_constant_loss_, 10.0); // 功率静态损耗（覆盖常量）
  nh_.param("power_max_input", power_max_input_, 50.0);       // 最大输入功率（覆盖常量）
  nh_.param("stop_mode_kp", stop_mode_kp_, 30.0);             // 停止模式KP（覆盖常量）
  nh_.param("stop_mode_max_force", stop_mode_max_force_, 3.0);// 停止模式最大制动力（覆盖常量）

  ROS_INFO("!!! Sentry Controller Initialized !!!");
  
  // 读取关节名称列表（从参数服务器）
  std::vector<std::string> joint_names;
  if (!nh_.getParam("joints", joint_names)) {
      ROS_ERROR("Failed to get joint names from param server!");
      return false;
  }
  
  // 获取关节句柄（带异常捕获，防止关节名错误崩溃）
  try {
      for (const auto& name : joint_names) {
        if (name.find("pivot") != std::string::npos) {
            pivot_joints_.push_back(hw->getHandle(name)); // 舵向关节（pivot）
        } else if (name.find("wheel") != std::string::npos) {
            wheel_joints_.push_back(hw->getHandle(name)); // 驱动关节（wheel）
        }
      }
  } catch (const hardware_interface::HardwareInterfaceException& e) {
      ROS_ERROR_STREAM("Exception getting joint handles: " << e.what());
      return false;
  }
  
  // 检查关节数量（必须4个舵向+4个驱动）
  if (pivot_joints_.size() != 4 || wheel_joints_.size() != 4) {
      ROS_ERROR("Pivot joints count: %lu, Wheel joints count: %lu (need 4+4)", 
                pivot_joints_.size(), wheel_joints_.size());
      return false;
  }

  // 初始化动态参数服务器
  dr_server_.reset(new dynamic_reconfigure::Server<sentry_chassis_controller::ChassisOpsConfig>(nh_));
  dynamic_reconfigure::Server<sentry_chassis_controller::ChassisOpsConfig>::CallbackType cb;
  cb = boost::bind(&SentryChassisController::reconfigCallback, this, _1, _2);
  dr_server_->setCallback(cb);

  // 创建订阅器
  cmd_vel_sub_ = nh.subscribe("/cmd_vel", 10, &SentryChassisController::cmdVelCallback, this); // 速度指令
  key_sub_ = nh.subscribe("/keyboard/key", 10, &SentryChassisController::keyCallback, this);   // 键盘指令

  // 创建发布器
  odom_pub_ = nh.advertise<nav_msgs::Odometry>("/odom", 50); // 里程计发布

  // 初始化调试话题发布器（每个轮子的目标速度/实际速度/输出力矩）
  std_msgs::Float64 msg;
  std::string wheel_names[4] = {"lf", "rf", "lb", "rb"}; // 左前/右前/左后/右后
  for (int i = 0; i < 4; i++) {
      debug_pub_target_[i] = nh.advertise<std_msgs::Float64>("/debug/" + wheel_names[i] + "_wheel/target", 100);
      debug_pub_actual_[i] = nh.advertise<std_msgs::Float64>("/debug/" + wheel_names[i] + "_wheel/actual", 100);
      debug_pub_effort_[i] = nh.advertise<std_msgs::Float64>("/debug/" + wheel_names[i] + "_wheel/effort", 100);
      last_target_velocities_[i] = 0.0; // 初始化上一周期目标速度
  }

  // 初始化里程计消息帧ID
  odom_msg_.header.frame_id = "odom";       // 里程计父帧（世界帧）
  odom_msg_.child_frame_id = "base_link";   // 里程计子帧（车体帧）
  wheel_direction_.resize(4, -1.0);         // 轮子转动方向修正（-1为反转，适配电机安装）

  return true;
}

/**
 * @brief 控制器启动回调（ROS Control调用）
 * @param time 启动时间戳
 * @details 重置PID控制器、初始化关节指令、清空历史状态，防止启动时抖动
 */
void SentryChassisController::starting(const ros::Time& time) {
    last_odom_time_ = time; // 初始化里程计时间戳
    for (int i = 0; i < 4; ++i) {
        pivot_pid_[i].reset();  // 舵向PID重置
        wheel_pid_[i].reset();  // 驱动PID重置
        
        // 获取当前舵角作为初始目标，防止上电乱转
        double current_pos = pivot_joints_[i].getPosition();
        target_angles_[i] = current_pos;
        last_steer_angles_[i] = current_pos;
        
        // 初始指令设为0（无力矩输出）
        pivot_joints_[i].setCommand(0.0);
        wheel_joints_[i].setCommand(0.0);
        last_target_velocities_[i] = 0.0;
    }
    ramped_vel_ = geometry_msgs::Twist(); // 初始化平滑速度
}

/**
 * @brief 控制器停止回调（ROS Control调用）
 * @param time 停止时间戳
 * @details 紧急停止：所有关节指令设为0，防止电机抱死
 */
void SentryChassisController::stopping(const ros::Time& time) {
    for (int i = 0; i < 4; ++i) {
        pivot_joints_[i].setCommand(0.0);
        wheel_joints_[i].setCommand(0.0);
    }
}

/**
 * @brief 键盘指令回调函数
 * @param msg 键盘按键消息（std_msgs::String）
 * @details 处理键盘指令：
 *          - 'g'：切换自旋模式/普通模式
 *          - 'h'：切换世界坐标系/车体坐标系控制
 */
void SentryChassisController::keyCallback(const std_msgs::String::ConstPtr& msg) {
  if (msg->data == "g") {
      if (ctrl_mode_ == CHASSIS_SPIN) {
          ctrl_mode_ = CHASSIS_SEPARATE_GIMBAL; 
          ROS_INFO("Switch to NORMAL Mode");
      } else {
          ctrl_mode_ = CHASSIS_SPIN; 
          ROS_INFO("Switch to SPIN Mode");
      }
  }
  else if (msg->data == "h") {
      use_world_frame_ = !use_world_frame_;
      ROS_INFO("World Frame: %s", use_world_frame_ ? "ON" : "OFF");
  }
}

/**
 * @brief 速度指令回调函数
 * @param msg 速度指令消息（geometry_msgs::Twist）
 * @details 接收/cmd_vel话题的速度指令（vx, vy, vw），保存到成员变量
 */
void SentryChassisController::cmdVelCallback(const geometry_msgs::Twist::ConstPtr& msg) {
  cmd_vel_ = *msg;
}

/**
 * @brief 坐标系转换：世界帧速度 → 车体帧速度
 * @param vx 输入/输出：x方向速度（世界帧→车体帧）
 * @param vy 输入/输出：y方向速度（世界帧→车体帧）
 * @details 当启用世界坐标系控制时，将odom帧的速度转换为base_link帧，
 *          使用非阻塞TF查询（超时0），避免控制循环卡顿；转换失败则速度清零
 */
void SentryChassisController::transformVelocity(double& vx, double& vy) {
  if (use_world_frame_) {
    try {
      // 封装世界帧速度矢量
      geometry_msgs::Vector3Stamped v_world;
      v_world.header.frame_id = "odom"; 
      v_world.header.stamp = ros::Time(0); // 使用最新可用的TF变换
      v_world.vector.x = vx;
      v_world.vector.y = vy;
      v_world.vector.z = 0.0;

      // 执行变换：odom → base_link（非阻塞，超时0）
      geometry_msgs::Vector3Stamped v_body;
      v_body = tf_buffer_.transform(v_world, "base_link", ros::Duration(0));

      // 更新为车体帧速度
      vx = v_body.vector.x;
      vy = v_body.vector.y;

    } catch (tf2::TransformException& ex) {
      // TF转换失败（如刚启动），速度清零并节流打印警告
      ROS_WARN_THROTTLE(2.0, "TF Transform Failed (World->Body): %s", ex.what());
      vx = 0.0;
      vy = 0.0;
    }
  }
}

/**
 * @brief 输入死区过滤
 * @param vx x方向速度（引用，会被修改）
 * @param vy y方向速度（引用，会被修改）
 * @param vw 角速度（引用，会被修改）
 * @details 过滤微小速度指令（绝对值<0.001），设为0，防止电机微小抖动
 */
void SentryChassisController::snapInput(double& vx, double& vy, double& vw) {
    if (std::abs(vx) < 0.001) vx = 0.0;
    if (std::abs(vy) < 0.001) vy = 0.0;
    if (std::abs(vw) < 0.001) vw = 0.0;
}

/**
 * @brief 梯形加减速（速度斜坡）
 * @param period 控制周期（ros::Duration）
 * @details 限制速度变化率，防止加速度过大导致底盘冲击：
 *          1. 计算周期内最大允许速度增量（加速度限制 × 周期）
 *          2. 若目标速度与当前平滑速度的误差超过增量，按增量逼近；否则直接赋值
 */
void SentryChassisController::rampVelocity(const ros::Duration& period) {
    double dt = period.toSec(); // 周期时间（s）
    double max_lin_inc = acc_linear_limit_ * dt;  // 线速度最大增量（m/s）
    double max_ang_inc = acc_angular_limit_ * dt; // 角速度最大增量（rad/s）

    // X轴速度平滑
    double error_x = cmd_vel_.linear.x - ramped_vel_.linear.x;
    if (std::abs(error_x) > max_lin_inc) {
        ramped_vel_.linear.x += (error_x > 0 ? 1.0 : -1.0) * max_lin_inc;
    } else {
        ramped_vel_.linear.x = cmd_vel_.linear.x;
    }

    // Y轴速度平滑
    double error_y = cmd_vel_.linear.y - ramped_vel_.linear.y;
    if (std::abs(error_y) > max_lin_inc) {
        ramped_vel_.linear.y += (error_y > 0 ? 1.0 : -1.0) * max_lin_inc;
    } else {
        ramped_vel_.linear.y = cmd_vel_.linear.y;
    }

    // 角速度平滑
    double error_w = cmd_vel_.angular.z - ramped_vel_.angular.z;
    if (std::abs(error_w) > max_ang_inc) {
        ramped_vel_.angular.z += (error_w > 0 ? 1.0 : -1.0) * max_ang_inc;
    } else {
        ramped_vel_.angular.z = cmd_vel_.angular.z;
    }
}

/**
 * @brief 功率限制与电容能量模拟
 * @param period_dt 控制周期（s）
 * @details 核心逻辑：
 *          1. 计算当前总预测功率（驱动轮功率+静态损耗）
 *          2. 模拟电容能量变化（输入功率-消耗功率）× 周期
 *          3. 电容能量低于阈值时，限制总功率输出，防止过载
 */
void SentryChassisController::limitPower(double period_dt) {
    double total_predicted_power = 0.0;
    double constant_loss = power_constant_loss_; // 静态功率损耗

    // 计算4个驱动轮的总功率（功率=角速度×力矩，取绝对值）
    for (int i = 0; i < 4; i++) {
        double w = std::abs(wheel_joints_[i].getVelocity()); // 轮子角速度（rad/s）
        double tau = std::abs(wheel_joints_[i].getCommand()); // 输出力矩（Nm）
        total_predicted_power += w * tau;
    }
    total_predicted_power += constant_loss; // 加上静态损耗

    // 计算电容能量变化（输入功率-消耗功率）× 周期
    double input_power = power_max_input_; 
    double energy_change = (input_power - total_predicted_power) * period_dt;
    buffer_energy_ += energy_change;

    // 电容能量限幅（0~60J）
    if (buffer_energy_ > 60.0) buffer_energy_ = 60.0;
    if (buffer_energy_ < 0.0) buffer_energy_ = 0.0;

    // 节流打印电容状态（能量<59J时打印）
    if (buffer_energy_ < 59.0) {
        ROS_INFO_THROTTLE(1.0, "Buffer: %.2f J | Pred Power: %.2f W", buffer_energy_, total_predicted_power);
    }

    // 动态功率限制：能量>20J时允许300W，否则限制为50W
    double current_power_limit;
    if (buffer_energy_ > 20.0) current_power_limit = 300.0; 
    else current_power_limit = 50.0;  

    // 功率超限：按比例缩小所有驱动轮力矩
    if (total_predicted_power > current_power_limit) {
        double k_scale = current_power_limit / total_predicted_power;
        for (int i = 0; i < 4; i++) {
            double original_effort = wheel_joints_[i].getCommand();
            wheel_joints_[i].setCommand(original_effort * k_scale);
        }
        ROS_WARN_THROTTLE(0.5, "Power Limit Triggered! Scale: %.2f", k_scale);
    }
}

/**
 * @brief 逆运动学解算（IK）
 * @param vx 车体帧x方向速度（m/s）
 * @param vy 车体帧y方向速度（m/s）
 * @param vw 车体帧角速度（rad/s）
 * @details 核心逻辑：
 *          1. 死区过滤微小速度，直接设为0
 *          2. 分3种场景解算轮速/舵角：
 *             - 纯平移：所有轮子速度=合速度，舵角=平移方向角
 *             - 纯旋转：舵角指向旋转中心，轮速=半径×角速度
 *             - 混合运动：结合平移+旋转解算每个轮子的速度/舵角
 *          3. 就近转角优化：舵角变化不超过90°，超过则反转轮子方向
 *          4. 防抖处理：微小速度/角度变化时锁定舵角，防止抖动
 */
void SentryChassisController::calculateWheelStates(double vx, double vy, double vw) {
    snapInput(vx, vy, vw); // 死区过滤

    // 速度全为0：轮速设为0，保持当前舵角（防止回正抖动）
    if (vx == 0.0 && vy == 0.0 && vw == 0.0) {
        for(int i=0; i<4; i++) target_velocities_[i] = 0.0;
        return;
    }

    double raw_angles[4]; // 原始舵角（rad）
    double raw_speeds[4]; // 原始轮速（m/s）

    // 场景1：纯平移（角速度≈0）
    if (std::abs(vw) < 1e-3) { 
        double v_mag = std::sqrt(vx*vx + vy*vy); // 合速度
        double theta = std::atan2(vy, vx);       // 平移方向角
        for (int i=0; i<4; i++) {
            raw_speeds[i] = v_mag;
            raw_angles[i] = theta;
        }
    }
    // 场景2：纯旋转（线速度≈0）
    else if (std::abs(vx) < 1e-3 && std::abs(vy) < 1e-3) { 
        double a = wheel_track_ / 2.0; // 轮距/2
        double b = wheel_base_ / 2.0;  // 轴距/2
        // 计算每个轮子的舵角（指向旋转中心）
        raw_angles[0] = std::atan2(b, -a);  // 左前
        raw_angles[1] = std::atan2(b, a);   // 右前
        raw_angles[2] = std::atan2(-b, -a); // 左后
        raw_angles[3] = std::atan2(-b, a);  // 右后
        
        // 计算轮速（半径×角速度，符号由旋转方向决定）
        double v_mag = std::abs(vw) * radius_;
        double speed_sign = (vw >= 0) ? 1.0 : -1.0;
        for(int i=0; i<4; i++) raw_speeds[i] = v_mag * speed_sign;
    }
    // 场景3：混合运动（平移+旋转）
    else { 
        double a = wheel_track_ / 2.0;
        double b = wheel_base_ / 2.0;
        // 中间变量（简化计算）
        double A = vx - vw * a; 
        double B = vx + vw * a; 
        double C = vy - vw * b; 
        double D = vy + vw * b;
        // 舵角解算
        raw_angles[0] = atan2(D, A); raw_angles[1] = atan2(D, B); 
        raw_angles[2] = atan2(C, A); raw_angles[3] = atan2(C, B); 
        // 轮速解算（合速度）
        raw_speeds[0] = std::sqrt(A*A + D*D); raw_speeds[1] = std::sqrt(B*B + D*D);
        raw_speeds[2] = std::sqrt(A*A + C*C); raw_speeds[3] = std::sqrt(B*B + C*C);
    }

    // 就近转角优化 + 防抖处理
    for (int i = 0; i < 4; i++) {
        // 实际舵角 = 当前舵角 - 安装零偏
        double last_phys_angle = last_steer_angles_[i] - steer_offset_rad_[i];
        double target_phys_angle = raw_angles[i];

        // 角度差归一化到[-π, π]
        double diff = target_phys_angle - last_phys_angle;
        while (diff > M_PI) diff -= 2 * M_PI;
        while (diff < -M_PI) diff += 2 * M_PI;
        
        // 就近转角：角度差>90°时，舵角转180°，轮子反转
        double final_speed_sign = 1.0;
        if (std::abs(diff) > M_PI / 2.0) {
            if (diff > 0) diff -= M_PI; else diff += M_PI;
            final_speed_sign = -1.0;
        }

        // 防抖死区处理
        if (std::abs(raw_speeds[i]) < 0.05) {
             // 速度极小：锁定舵角，轮速设0
             diff = 0.0; 
             target_velocities_[i] = 0.0;
             target_angles_[i] = last_steer_angles_[i]; 
        }
        else if (std::abs(diff) < 0.05) { 
             // 角度变化极小：锁定舵角
             diff = 0.0;
             target_angles_[i] = last_steer_angles_[i];
        } 
        else {
             // 正常情况：更新目标舵角（含安装零偏）
             target_angles_[i] = last_phys_angle + diff + steer_offset_rad_[i];
        }
        
        // 更新历史舵角
        last_steer_angles_[i] = target_angles_[i];
        
        // 轮速单位转换：m/s → rad/s（除以轮子半径）
        double wheel_radius = WHEEL_PERIMETER_ / (2 * M_PI);
        double final_speed = raw_speeds[i] / wheel_radius;
        final_speed *= final_speed_sign;    // 就近转角反转
        final_speed *= -1.0;                // 电机方向修正
        final_speed *= wheel_direction_[i]; // 轮子方向修正
        
        // 大角度偏差保护：舵角未对齐时，轮速设0
        if (std::abs(diff) > 0.3) final_speed = 0.0; 

        // 保存目标轮速
        target_velocities_[i] = final_speed;
    }
}

/**
 * @brief 普通全向模式处理
 * @details 1. 读取平滑后的速度指令
 *          2. 转换坐标系（世界帧→车体帧）
 *          3. 逆运动学解算轮速/舵角目标
 */
void SentryChassisController::ChassisSeparateGimbalMode() {
  double vx = ramped_vel_.linear.x; 
  double vy = ramped_vel_.linear.y;
  double vw = ramped_vel_.angular.z;
  transformVelocity(vx, vy); // 坐标系转换
  calculateWheelStates(vx, vy, vw); // 逆运动学解算
}

/**
 * @brief 自旋模式处理（小陀螺模式）
 * @details 1. 平移速度仍转换坐标系
 *          2. 角速度固定为自旋速度（spin_vw_）
 *          3. 逆运动学解算轮速/舵角目标
 */
void SentryChassisController::ChassisSpinMode() {
  double vx = ramped_vel_.linear.x;
  double vy = ramped_vel_.linear.y;
  transformVelocity(vx, vy); // 平移速度坐标系转换
  double vw = spin_vw_;      // 固定自旋角速度
  calculateWheelStates(vx, vy, vw); // 逆运动学解算
}

/**
 * @brief 主控制循环（ROS Control高频调用，1kHz/500Hz）
 * @param time 当前时间戳
 * @param period 控制周期
 * @details 核心控制流程：
 *          1. 全局舵向对齐检查（所有舵角是否到达目标）
 *          2. 智能平滑速度（仅对齐/停车时更新）
 *          3. 模式切换（停止/普通/自旋）
 *          4. PID闭环控制（舵向/驱动电机）
 *          5. 功率限制
 *          6. 里程计解算
 */
void SentryChassisController::update(const ros::Time& time, const ros::Duration& period) {
  // 空关节保护：无关节句柄时直接返回
  if (pivot_joints_.empty() || wheel_joints_.empty()) return;

  // 1. 全局舵向对齐检查（误差<0.05rad视为对齐）
  bool all_wheels_aligned = true;
  for (int i = 0; i < 4; i++) {
      double steer_error = target_angles_[i] - pivot_joints_[i].getPosition();
      if (std::abs(steer_error) > 0.05) { 
          all_wheels_aligned = false;
          break; 
      }
  }

  // 2. 智能计算平滑速度：仅对齐/停车时更新，防止舵角未对齐时速度突变
  bool want_to_stop = (std::abs(cmd_vel_.linear.x) < 0.01 && std::abs(cmd_vel_.linear.y) < 0.01 && std::abs(cmd_vel_.angular.z) < 0.01);
  if (all_wheels_aligned || want_to_stop) {
      rampVelocity(period);
  }

  // 3. 模式判断与切换
  // 速度指令是否为0（死区）
  bool cmd_is_zero = (fabs(cmd_vel_.linear.x) < 1e-3 && fabs(cmd_vel_.linear.y) < 1e-3 && fabs(cmd_vel_.angular.z) < 1e-3);
  // 平滑速度是否为0（死区）
  bool ramp_is_zero = (fabs(ramped_vel_.linear.x) < 1e-3 && fabs(ramped_vel_.linear.y) < 1e-3 && fabs(ramped_vel_.angular.z) < 1e-3);

  // 停止模式：指令+平滑速度全为0，且非自旋模式
  if (cmd_is_zero && ramp_is_zero && ctrl_mode_ != CHASSIS_SPIN) { 
      if (ctrl_mode_ != CHASSIS_STOP) {
          for(int i=0; i<4; i++) wheel_pid_[i].reset(); // 重置驱动PID
      }
      ctrl_mode_ = CHASSIS_STOP;
      ChassisStopMode(); // 进入停止模式（舵角归位，轮速为0）
      for(int i=0; i<4; i++) last_target_velocities_[i] = 0.0;
  }
  // 普通/自旋模式
  else {
      if (ctrl_mode_ == CHASSIS_STOP) ctrl_mode_ = CHASSIS_SEPARATE_GIMBAL; // 退出停止模式
      if (ctrl_mode_ == CHASSIS_SPIN) ChassisSpinMode();                   // 自旋模式
      else ChassisSeparateGimbalMode();                                    // 普通模式
  }

  // 计算舵机圈数（防角度溢出）
  calculateRoundCnt();
  calculateTargetRoundCnt(); 

  // 舵角未对齐：重新解算模式，更新舵角目标（用于纠偏）
  if (!all_wheels_aligned) {
      if (ctrl_mode_ == CHASSIS_SPIN) ChassisSpinMode();
      else ChassisSeparateGimbalMode();
  }

  // 4. PID控制循环（4个轮子）
  for (int i = 0; i < 4; i++) {
    // A. 舵向PID控制
    double steer_error = target_angles_[i] - pivot_joints_[i].getPosition(); // 舵角误差
    double steer_effort = pivot_pid_[i].computeCommand(steer_error, period); // PID输出力矩
    pivot_joints_[i].setCommand(steer_effort); // 下发舵向指令

    // B. 驱动PID控制
    double wheel_vel_fdb = wheel_joints_[i].getVelocity(); // 轮子实际角速度
    wheel_vel_fdb *= -1.0;                                 // 电机方向修正
    wheel_vel_fdb *= wheel_direction_[i];                  // 轮子方向修正
    
    double current_target = target_velocities_[i]; // 轮子目标角速度

    // 舵向未对齐保护：保持上一周期速度，静止起步时重置PID（防弹射）
    if (!all_wheels_aligned) {
        current_target = last_target_velocities_[i]; // 保持速度
        if (std::abs(current_target) < 0.01) {
             wheel_pid_[i].reset(); // 静止起步：重置积分
        }
    }

    last_target_velocities_[i] = current_target; // 保存当前目标速度

    // 驱动PID计算
    double wheel_error = current_target - wheel_vel_fdb; // 速度误差
    double final_effort = 0.0;

    // 停止模式：制动逻辑
    if (ctrl_mode_ == CHASSIS_STOP) {
        double velocity_threshold = 0.2; // 制动阈值（rad/s）
        if (std::abs(wheel_vel_fdb) > velocity_threshold) {
            double stop_kp = stop_mode_kp_; // 制动KP
            double brake_effort = -wheel_vel_fdb * stop_kp; // 制动力矩（反向）
            double max_force = stop_mode_max_force_;        // 最大制动力
            brake_effort = std::max(-max_force, std::min(max_force, brake_effort)); // 限幅
            final_effort = brake_effort;
        } 
        else {
            final_effort = 0.0; // 速度低于阈值：无制动
        }
    } 
    // 普通/自旋模式：驱动PID
    else {
        double wheel_effort = wheel_pid_[i].computeCommand(wheel_error, period); // PID输出
        double safe_limit = wheel_max_effort_;                                   // 力矩限幅
        wheel_effort = std::max(-safe_limit, std::min(safe_limit, wheel_effort));// 限幅
        final_effort = wheel_effort; // 最终力矩
    }

    // 下发驱动指令
    wheel_joints_[i].setCommand(final_effort);

    // C. 发布调试数据（目标速度/实际速度/输出力矩）
    std_msgs::Float64 msg;
    msg.data = current_target; 
    debug_pub_target_[i].publish(msg);
    
    double debug_actual = wheel_vel_fdb;
    msg.data = debug_actual;
    debug_pub_actual_[i].publish(msg);
    
    std_msgs::Float64 effort_msg;
    effort_msg.data = final_effort;
    debug_pub_effort_[i].publish(effort_msg);
  }

  // 5. 功率限制
  limitPower(period.toSec());

  // 6. 里程计解算与发布
  calculateOdom(time);
}

/**
 * @brief 正运动学解算（里程计发布）
 * @param now 当前时间戳
 * @details 核心逻辑：
 *          1. 基于4个轮子的实际速度/舵角，解算车体的线速度/角速度
 *          2. 积分计算车体位置（x/y）和偏航角（yaw）
 *          3. 发布nav_msgs/Odometry话题和tf变换（odom→base_link）
 */
void SentryChassisController::calculateOdom(const ros::Time& now) {
  // 空关节/时间戳异常保护
  if (wheel_joints_.empty()) return;
  if (now <= last_odom_time_) return;
  
  double dt = (now - last_odom_time_).toSec(); // 里程计计算周期
  last_odom_time_ = now;                       // 更新时间戳

  double wheel_radius = WHEEL_PERIMETER_ / (2 * M_PI); // 轮子半径（m）
  double vx_calc = 0.0; // 车体x方向速度（m/s）
  double vy_calc = 0.0; // 车体y方向速度（m/s）
  double wz_calc = 0.0; // 车体角速度（rad/s）

  // 轮子位置偏移（相对于车体中心）
  double x_offset = wheel_track_ / 2.0;
  double y_offset = wheel_base_ / 2.0;
  double wheel_pos_x[4] = { x_offset,  x_offset, -x_offset, -x_offset}; // 左前/右前/左后/右后
  double wheel_pos_y[4] = { y_offset, -y_offset,  y_offset, -y_offset};

  // 遍历4个轮子，解算车体速度
  for (int i = 0; i < 4; i++) {
      // 轮子实际速度（rad/s → m/s）
      double raw_vel = wheel_joints_[i].getVelocity();
      raw_vel *= -1.0;                                 // 电机方向修正
      raw_vel *= wheel_direction_[i];                  // 轮子方向修正
      double wheel_v = raw_vel * wheel_radius;         // 轮子线速度（m/s）
      double wheel_a = pivot_joints_[i].getPosition(); // 轮子实际舵角

      // 分解轮子速度到车体坐标系
      double v_xi = wheel_v * std::cos(wheel_a);
      double v_yi = wheel_v * std::sin(wheel_a);

      // 累加所有轮子的速度分量
      vx_calc += v_xi;
      vy_calc += v_yi;

      // 解算角速度（基于轮子位置和速度）
      double r2 = wheel_pos_x[i]*wheel_pos_x[i] + wheel_pos_y[i]*wheel_pos_y[i];
      wz_calc += (wheel_pos_x[i] * v_yi - wheel_pos_y[i] * v_xi) / r2;
  }
  
  // 平均4个轮子的解算结果，得到车体速度
  double vx_base = vx_calc / 4.0;
  double vy_base = vy_calc / 4.0;
  double wz_base = wz_calc / 4.0; 

  // 里程计缩放（校准误差）
  vx_base *= odom_linear_scale_;
  vy_base *= odom_linear_scale_;
  wz_base *= odom_angular_scale_;

  // 积分计算偏航角（yaw）
  yaw_ += wz_base * dt; 
  
  // 积分计算车体位置（x/y）（考虑偏航角旋转）
  double c = cos(yaw_), s = sin(yaw_);
  x_pos_ += (vx_base * c - vy_base * s) * dt;
  y_pos_ += (vx_base * s + vy_base * c) * dt;
  
  // 构造四元数（偏航角）
  tf2::Quaternion q;
  q.setRPY(0, 0, yaw_); 
  
  // 填充里程计消息
  odom_msg_.header.stamp = now;
  odom_msg_.pose.pose.position.x = x_pos_;
  odom_msg_.pose.pose.position.y = y_pos_;
  odom_msg_.pose.pose.position.z = 0.0;
  odom_msg_.pose.pose.orientation = tf2::toMsg(q); 
  
  odom_msg_.twist.twist.linear.x = vx_base;
  odom_msg_.twist.twist.linear.y = vy_base;
  odom_msg_.twist.twist.angular.z = wz_base; 
  
  // 发布里程计话题
  odom_pub_.publish(odom_msg_);
  
  // 发布tf变换（odom→base_link）
  geometry_msgs::TransformStamped transformStamped;
  transformStamped.header.stamp = now;
  transformStamped.header.frame_id = "odom";
  transformStamped.child_frame_id = "base_link";
  transformStamped.transform.translation.x = x_pos_;
  transformStamped.transform.translation.y = y_pos_;
  transformStamped.transform.translation.z = 0.0;
  transformStamped.transform.rotation = odom_msg_.pose.pose.orientation;

  tf_broadcaster_.sendTransform(transformStamped);
  
  // 节流打印偏航角（调试用）
  ROS_INFO_THROTTLE(1.0, "Current Odom Yaw: %.4f (rad) | %.4f (deg)", yaw_, yaw_ * 180.0 / M_PI);
}

/**
 * @brief 停止模式处理
 * @details 停止模式下，舵角归位到预设角度（防止轮子乱摆），轮速设为0
 */
void SentryChassisController::ChassisStopMode() {
    // 预设停止模式舵角（物理角度，rad）
    double target_phys[4];
    target_phys[0] = -M_PI * 3.0 / 4.0; // 左前
    target_phys[1] =  M_PI * 3.0 / 4.0; // 右前
    target_phys[2] = -M_PI / 4.0;       // 左后
    target_phys[3] =  M_PI / 4.0;       // 右后

    for(int i=0; i<4; i++) {
        double current_target = target_phys[i];
        // 目标舵角 = 物理角度 + 安装零偏
        target_angles_[i] = current_target + steer_offset_rad_[i];
        last_steer_angles_[i] = target_angles_[i]; // 更新历史舵角
        target_velocities_[i] = 0.0;               // 轮速设为0
    }
}

/**
 * @brief 计算舵机实际圈数（防角度溢出）
 * @details 舵机角度超过±180°时，圈数+1/-1，保证角度在合理范围
 */
void SentryChassisController::calculateRoundCnt() {
  static double last_angle[4] = {0.0}; // 上一周期角度（deg）
  for (int i = 0; i < 4; i++) {
    double now_angle_deg = pivot_joints_[i].getPosition() * 180.0 / M_PI; // 当前角度（deg）
    // 角度跳变超过180°：圈数修正
    if (now_angle_deg - last_angle[i] > 180.0) motor_circle_[i]--;
    else if (now_angle_deg - last_angle[i] < -180.0) motor_circle_[i]++;
    last_angle[i] = now_angle_deg; // 更新历史角度
  }
}

/**
 * @brief 计算舵机目标圈数（防角度溢出）
 * @details 与calculateRoundCnt逻辑一致，针对目标舵角
 */
void SentryChassisController::calculateTargetRoundCnt() {
  static double last_target[4] = {0.0}; // 上一周期目标角度（deg）
  for (int i = 0; i < 4; i++) {
    double now_target_deg = target_angles_[i] * 180.0 / M_PI; // 当前目标角度（deg）
    // 角度跳变超过180°：圈数修正
    if (now_target_deg - last_target[i] > 180.0) motor_target_circle_[i]--;
    else if (now_target_deg - last_target[i] < -180.0) motor_target_circle_[i]++;
    last_target[i] = now_target_deg; // 更新历史目标角度
  }
}

} 

// 注册为ROS Control插件（必须）
PLUGINLIB_EXPORT_CLASS(sentry_chassis_controller::SentryChassisController, controller_interface::ControllerBase)