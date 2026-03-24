#include "sentry_chassis_controller/sentry_chassis_controller.h"
#include <algorithm>
#include <pluginlib/class_list_macros.h>

namespace sentry_chassis_controller {

//底盘电容静态功率损耗
const double CONSTANT_POWER_LOSS = 10.0; 
const double MAX_INPUT_POWER     = 50.0; 
//停止模式下的制动比例系数 (Nm/(rad/s))
const double STOP_MODE_KP        = 30.0; 
const double STOP_MODE_MAX_FORCE = 3.0;  

SentryChassisController::SentryChassisController() : tf_listener_(tf_buffer_) {}//构造初始化监听

void SentryChassisController::calculateKinematicsParams() {
  radius_ = std::sqrt(std::pow(wheel_track_ / 2.0, 2) + std::pow(wheel_base_ / 2.0, 2));
}

void SentryChassisController::reconfigCallback(sentry_chassis_controller::ChassisOpsConfig& config, uint32_t level) {

  double wheel_i_limit = config.lf_wheel_max; 
  wheel_max_effort_ = config.lf_wheel_max;

  // 舵向电机PID配置
  pivot_pid_[0].setGains(config.lf_steer_p, config.lf_steer_i, config.lf_steer_d, 1.0, -1.0, 1.2); // 左前舵机
  pivot_pid_[1].setGains(config.rf_steer_p, config.rf_steer_i, config.rf_steer_d, 1.0, -1.0, 1.2); // 右前舵机
  pivot_pid_[2].setGains(config.lb_steer_p, config.lb_steer_i, config.lb_steer_d, 1.0, -1.0, 1.2); // 左后舵机
  pivot_pid_[3].setGains(config.rb_steer_p, config.rb_steer_i, config.rb_steer_d, 1.0, -1.0, 1.2); // 右后舵机

  // 驱动电机PID配置
  wheel_pid_[0].setGains(config.lf_wheel_p, config.lf_wheel_i, config.lf_wheel_d, wheel_i_limit, -wheel_i_limit, config.lf_wheel_max); // 左前驱动
  wheel_pid_[1].setGains(config.rf_wheel_p, config.rf_wheel_i, config.rf_wheel_d, wheel_i_limit, -wheel_i_limit, config.rf_wheel_max); // 右前驱动
  wheel_pid_[2].setGains(config.lb_wheel_p, config.lb_wheel_i, config.lb_wheel_d, wheel_i_limit, -wheel_i_limit, config.lb_wheel_max); // 左后驱动
  wheel_pid_[3].setGains(config.rb_wheel_p, config.rb_wheel_i, config.rb_wheel_d, wheel_i_limit, -wheel_i_limit, config.rb_wheel_max); // 右后驱动

  //航向PID配置
  //yaw_pid_.setGains(config.yaw_p, config.yaw_i, config.yaw_d, 1.0, -1.0, 5.0);

  // 底盘参数
  wheel_track_ = config.wheel_track;  // 轮距
  wheel_base_ = config.wheel_base;    // 轴距

  // 舵机安装偏移，gazebo中查看后设为0
  steer_offset_rad_[0] = config.offset_lf; // 左前
  steer_offset_rad_[1] = config.offset_rf; // 右前
  steer_offset_rad_[2] = config.offset_lb; // 左后
  steer_offset_rad_[3] = config.offset_rb; // 右后

  // 其他模式参数
  spin_vw_ = config.spin_vw;               // 自旋模式角速度（rad/s）
  use_world_frame_ = config.use_world_frame; // 是否启用世界坐标系控制

  // 加减速限制参数
  acc_linear_limit_ = config.acc_linear;   // 线加速度限制（m/s²）
  acc_angular_limit_ = config.acc_angular; // 角加速度限制（rad/s²）
  sync_kp_ = config.sync_kp;             // 轮子同步交叉耦合增益
  kv_spin_ = config.kv_spin;             // 小陀螺侧向摩擦力矩补偿

  // 参数更新后重新计算运动学常数
  calculateKinematicsParams();
}

bool SentryChassisController::init(hardware_interface::EffortJointInterface* hw, ros::NodeHandle& nh) {
  this->nh_ = nh;
  //buffer_energy_ = 60.0;

  // 从参数服务器读取配置
  nh_.param("odom_linear_scale", odom_linear_scale_, 1.0);    // 里程计线速度缩放
  nh_.param("odom_angular_scale", odom_angular_scale_, 1.0);  // 里程计角速度缩放
  nh_.param("power_constant_loss", power_constant_loss_, 10.0); // 功率静态损耗
  nh_.param("power_max_input", power_max_input_, 50.0);       // 最大输入功率
  nh_.param("stop_mode_kp", stop_mode_kp_, 20.0);             // 停止模式KP
  nh_.param("stop_mode_max_force", stop_mode_max_force_, 3.0);// 停止模式最大制动力
  nh_.param("sync_kp", sync_kp_, 5.0);                       // 轮子同步交叉耦合增益
  nh_.param("kv_spin",kv_spin_,0.15);                       

  /*
  double yaw_p, yaw_i, yaw_d;
  nh_.param("yaw_p", yaw_p, 2.0); 
  nh_.param("yaw_i", yaw_i, 0.0);
  nh_.param("yaw_d", yaw_d, 0.1);
  yaw_pid_.setGains(yaw_p, yaw_i, yaw_d, 1.0, -1.0, 5.0);
  */
  ROS_INFO("Sentry Controller Initialized");
  
  // 读取关节名称列表
  std::vector<std::string> joint_names;
  if (!nh_.getParam("joints", joint_names)) {
      ROS_ERROR("Failed to get joint names from param server!");
      return false;
  }
  
  // 获取关节，握手
  try {
      for (const auto& name : joint_names) {
        if (name.find("pivot") != std::string::npos) {
            pivot_joints_.push_back(hw->getHandle(name)); // 找到后舵向关节（pivot）握手
        } else if (name.find("wheel") != std::string::npos) {
            wheel_joints_.push_back(hw->getHandle(name)); // 驱动关节（wheel）握手
        }
      }
  } catch (const hardware_interface::HardwareInterfaceException& e) {
      ROS_ERROR_STREAM("Exception getting joint handles: " << e.what());
      return false;
  }
  
  // 检查关节数量
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

  // 创建订阅
  cmd_vel_sub_ = nh.subscribe("/cmd_vel", 10, &SentryChassisController::cmdVelCallback, this); // 速度指令
  key_sub_ = nh.subscribe("/keyboard/key", 10, &SentryChassisController::keyCallback, this);   // 键盘指令

  // 创建发布
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

  // 初始化TF
  odom_msg_.header.frame_id = "odom";       // 里程计世界帧
  odom_msg_.child_frame_id = "base_link";   // 里程计车体帧
  wheel_direction_.resize(4, -1.0);         // 轮子转动方向修正补丁
  return true;
}

void SentryChassisController::starting(const ros::Time& time) {
    last_odom_time_ = time; // 初始化里程计时间戳
    for (int i = 0; i < 4; ++i) {
        pivot_pid_[i].reset();  // 舵向PID重置
        wheel_pid_[i].reset();  // 驱动PID重置
        
        // 获取当前舵角作为初始目标，防止开机乱转
        double current_pos = pivot_joints_[i].getPosition();
        target_angles_[i] = current_pos;
        last_steer_angles_[i] = current_pos;
        
        // 初始力矩指令设为0
        pivot_joints_[i].setCommand(0.0);
        wheel_joints_[i].setCommand(0.0);
        last_target_velocities_[i] = 0.0;
    }
    ramped_vel_ = geometry_msgs::Twist(); // 初始化平滑速度
    // yaw_pid_.reset(); 
}

void SentryChassisController::stopping(const ros::Time& time) {
    for (int i = 0; i < 4; ++i) {
        pivot_joints_[i].setCommand(0.0);
        wheel_joints_[i].setCommand(0.0);
    }
}

// 键盘指令回调函数
void SentryChassisController::keyCallback(const std_msgs::String::ConstPtr& msg) {
  if (msg->data == "g") {//'g'：切换自旋模式/普通模式
      if (ctrl_mode_ == CHASSIS_SPIN) {
          ctrl_mode_ = CHASSIS_SEPARATE_GIMBAL; 
          cmd_vel_.angular.z = 0.0;
          ROS_INFO("Switch to NORMAL Mode");
      } else {
          ctrl_mode_ = CHASSIS_SPIN; 
          ROS_INFO("Switch to SPIN Mode");
      }
  }
  else if (msg->data == "h") {//'h'：切换世界坐标系/车体坐标系控制
      use_world_frame_ = !use_world_frame_;
      ROS_INFO("World Frame: %s", use_world_frame_ ? "ON" : "OFF");
      cmd_vel_.angular.z = spin_vw_;
  }
}

//速度指令回调函数
void SentryChassisController::cmdVelCallback(const geometry_msgs::Twist::ConstPtr& msg) {
  cmd_vel_ = *msg;
}

//坐标系转换
void SentryChassisController::transformVelocity(double& vx, double& vy) {
  if (use_world_frame_) {
    try {
      // 封装世界帧速度矢量
      geometry_msgs::Vector3Stamped v_world;//数据
      v_world.header.frame_id = "odom"; //声明世界坐标下的速度
      v_world.header.stamp = ros::Time(0); // 使用最新可用的TF变换
      v_world.vector.x = vx;
      v_world.vector.y = vy;
      v_world.vector.z = 0.0;

      // 库自动解算矩阵执行变换：odom → base_link
      geometry_msgs::Vector3Stamped v_body;
      v_body = tf_buffer_.transform(v_world, "base_link", ros::Duration(0));

      // 更新为车体速度
      vx = v_body.vector.x;
      vy = v_body.vector.y;

    } catch (tf2::TransformException& ex) {
      // TF转换失败，速度清零并节流打印警告
      ROS_WARN_THROTTLE(2.0, "TF Transform Failed (World->Body): %s", ex.what());
      vx = 0.0;
      vy = 0.0;
    }
  }
}

//过滤
void SentryChassisController::snapInput(double& vx, double& vy, double& vw) {
    if (std::abs(vx) < 0.0001) vx = 0.0;
    if (std::abs(vy) < 0.0001) vy = 0.0;
    if (std::abs(vw) < 0.0001) vw = 0.0;
}

//底盘加速度函数
void SentryChassisController::rampVelocity(const ros::Duration& period) {
    double dt = period.toSec(); 
    double max_lin_inc = acc_linear_limit_ * dt;  // 线速度最大增量（m/s）
    double max_ang_inc = acc_angular_limit_ * dt; // 角速度最大增量（rad/s）
    
    // X轴速度
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

//功率限制函数
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

    if (buffer_energy_ > 60.0) buffer_energy_ = 60.0;
    if (buffer_energy_ < 0.0) buffer_energy_ = 0.0;

    if (buffer_energy_ < 59.0) {
        ROS_INFO_THROTTLE(1.0, "Buffer: %.2f J | Pred Power: %.2f W", buffer_energy_, total_predicted_power);
    }

    // 动态功率限制：能量>20J时允许120W，否则限制为50W
    double current_power_limit;
    if (buffer_energy_ > 20.0) {
        current_power_limit = 120.0;
    } else {
        current_power_limit = 50.0;
    }  

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

//逆运动学解算函数
void SentryChassisController::calculateWheelStates(double vx, double vy, double vw) {
    snapInput(vx, vy, vw); // 噪音过滤

    // 速度全为0：轮速设为0，保持当前舵角
    if (vx == 0.0 && vy == 0.0 && vw == 0.0) {
        for(int i=0; i<4; i++) target_velocities_[i] = 0.0;
        return;
    }

    double raw_angles[4]; // 原始舵角（rad）
    double raw_speeds[4]; // 原始轮速（m/s）

    // 纯平移
    if (std::abs(vw) < 1e-3) { 
        double v_mag = std::sqrt(vx*vx + vy*vy); // 合速度
        double theta = std::atan2(vy, vx);       // 平移方向角
        for (int i=0; i<4; i++) {
            raw_speeds[i] = v_mag;
            raw_angles[i] = theta;
        }
    }
    //纯旋转
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
        for(int i=0; i<4; i++) raw_speeds[i]=v_mag*speed_sign;
    }
    // 混合运动（平移+旋转）
    else { 
        double a = wheel_track_ / 2.0;
        double b = wheel_base_ / 2.0;
        // 中间变量
        double A = vx - vw *a; 
        double B = vx + vw *a; 
        double C = vy - vw *b; 
        double D = vy + vw *b;
        // 舵角解算
        raw_angles[0] = atan2(D, A); 
        raw_angles[1] = atan2(D, B); 
        raw_angles[2] = atan2(C, A); 
        raw_angles[3] = atan2(C, B); 
        // 轮速解算（合速度）
        raw_speeds[0] = std::sqrt(A*A + D*D); 
        raw_speeds[1] = std::sqrt(B*B + D*D);
        raw_speeds[2] = std::sqrt(A*A + C*C); 
        raw_speeds[3] = std::sqrt(B*B + C*C);
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

        // 防抖处理
        if (std::abs(raw_speeds[i]) < 0.001) {
             diff = 0.0; 
             target_velocities_[i] = 0.0;
             target_angles_[i] = last_steer_angles_[i]; 
        }
        else if (std::abs(diff) < 0.01) { 
             // 角度变化极小：锁定舵角
             diff = 0.0;
             target_angles_[i] = last_steer_angles_[i];
        } 
        else {
             // 正常情况：更新目标舵角
             target_angles_[i] = last_phys_angle + diff + steer_offset_rad_[i];
        }
        
        // 更新历史舵角
        last_steer_angles_[i] = target_angles_[i];
        
        // 轮速单位转换
        double wheel_radius = WHEEL_PERIMETER_ / (2 * M_PI);
        double final_speed = raw_speeds[i] / wheel_radius;
        final_speed *= final_speed_sign;    // 就近转角反转
        final_speed *= -1.0;                // 电机方向修正
        final_speed *= wheel_direction_[i]; // 轮子方向修正

        //if (std::abs(diff) > 0.8) final_speed = 0.0; 
        // 保存目标轮速
        target_velocities_[i] = final_speed;
    }
}

// 普通全向模式处理
void SentryChassisController::ChassisSeparateGimbalMode() {
  double vx = ramped_vel_.linear.x;
  double vy = ramped_vel_.linear.y;
  double vw = ramped_vel_.angular.z;
  

  transformVelocity(vx, vy); // 若按下h，开启坐标系转换
  calculateWheelStates(vx, vy, vw); // 逆运动学解算
}

//小陀螺模式
void SentryChassisController::ChassisSpinMode() {
  double vx = ramped_vel_.linear.x;
  double vy = ramped_vel_.linear.y;
  double vw = ramped_vel_.angular.z;
  transformVelocity(vx, vy); // 平移速度坐标系转换
  calculateWheelStates(vx, vy, vw); // 逆运动学解算
}

//主循环update函数
void SentryChassisController::update(const ros::Time& time, const ros::Duration& period) {
  if (pivot_joints_.empty() || wheel_joints_.empty()) return;
    
  //判断机器人当前是否处于运动状态，四个轮转速均大于3rad/s视为运动中
  bool is_moving = false;
  for(int i=0; i<4; i++) {
      if(std::abs(wheel_joints_[i].getVelocity()) < 1.0) {
          break;
      }
      if(i == 3) {
          is_moving = true;
      }
  }
 
  // 静态起步：必须精确到 0.6度，防止受力不均导致零漂
  // 动态运行：放宽，容忍自转时的物理抖动，防止卡顿
  double align_threshold = is_moving ? 0.1 : 0.05;

  // 1. 全局舵向对齐检查（误差<0.05rad视为对齐）
  bool all_wheels_aligned = true;//标记对齐与否
  for (int i = 0; i < 4; i++) {
      double steer_error = target_angles_[i] - pivot_joints_[i].getPosition();
      if (std::abs(steer_error) > align_threshold) { 
          all_wheels_aligned = false;
          break; 
      }
  }

  //小陀螺补丁
  if (ctrl_mode_ == CHASSIS_SPIN) {
    cmd_vel_.angular.z = spin_vw_;//小陀螺模式直接赋值
  }

  bool want_to_stop = (std::abs(cmd_vel_.linear.x) < 0.01 && std::abs(cmd_vel_.linear.y) < 0.01 && std::abs(cmd_vel_.angular.z) < 0.01);
  // 计算平滑速度：对齐/停车时更新，防止舵角未对齐时速度突变
  if (all_wheels_aligned || want_to_stop) {
      rampVelocity(period);
  }

  // 模式判断与切换
  // 速度指令是否为0
  bool cmd_is_zero = (fabs(cmd_vel_.linear.x) < 1e-3 && fabs(cmd_vel_.linear.y) < 1e-3 && fabs(cmd_vel_.angular.z) < 1e-3);
  // 平滑速度是否为0
  bool ramp_is_zero = (fabs(ramped_vel_.linear.x) < 1e-3 && fabs(ramped_vel_.linear.y) < 1e-3 && fabs(ramped_vel_.angular.z) < 1e-3);

  // 停止模式：指令+平滑速度全为0，且非自旋模式
  if (cmd_is_zero && ramp_is_zero && ctrl_mode_ != CHASSIS_SPIN) { 
      if (ctrl_mode_ != CHASSIS_STOP) {
          for(int i=0; i<4; i++) {
            wheel_pid_[i].reset();
           } // 重置驱动PID
       }
      ctrl_mode_ = CHASSIS_STOP;
      ChassisStopMode(); // 进入停止模式
      for(int i=0; i<4; i++) {
        last_target_velocities_[i] = 0.0;
       }
  }
  // 普通/自旋模式
  else {
      if (ctrl_mode_ == CHASSIS_STOP) ctrl_mode_ = CHASSIS_SEPARATE_GIMBAL; // 退出停止模式，继续运动
      if (ctrl_mode_ == CHASSIS_SPIN) ChassisSpinMode();                   // 自旋模式
      else ChassisSeparateGimbalMode();                                   // 普通模式
  }

  calculateRoundCnt();
  calculateTargetRoundCnt(); 

  //航向闭环修正逻辑
  /*
  double target_vw = cmd_vel_.angular.z; 
  double actual_vw = odom_msg_.twist.twist.angular.z; 

  bool need_correction = (std::abs(target_vw) < 0.001) && (std::abs(actual_vw) > 0.01) && is_moving;

  if (need_correction) {
      double yaw_error = 0.0 - actual_vw;
      double raw_correction = yaw_pid_.computeCommand(yaw_error, period);
      
      double limit = 0.2; 
      if (raw_correction > limit) raw_correction = limit;
      if (raw_correction < -limit) raw_correction = -limit;
      
      yaw_correction_ = raw_correction;
  }
  else {
      yaw_correction_ = 0.0;
      yaw_pid_.reset();
  }
  */
  yaw_correction_ = 0.0;

  // 舵角未对齐：重新解算模式，更新舵角目标（用于纠偏）
  if (!all_wheels_aligned) {
      if (ctrl_mode_ == CHASSIS_SPIN) {
        ChassisSpinMode();
    }
      else {ChassisSeparateGimbalMode();
    }
  }

  // 交叉耦合控制：计算所有轮子的平均实际转速,均值控制
  double avg_abs_velocity = 0.0;//平均绝对速度
  bool is_pure_translation = (std::abs(cmd_vel_.angular.z) < 0.2); // 只有纯平移才启用

  if (is_pure_translation) {
      double sum_vel = 0.0;
      for(int k=0; k<4; k++) {
          // 获取绝对速度
          sum_vel += std::abs(wheel_joints_[k].getVelocity());
      }
      avg_abs_velocity = sum_vel / 4.0;
  }

  // 4. PID控制循环
  for (int i = 0; i < 4; i++) {
    // 舵向PID控制
    double steer_error = target_angles_[i] - pivot_joints_[i].getPosition(); 
    double steer_effort = pivot_pid_[i].computeCommand(steer_error, period); 
    pivot_joints_[i].setCommand(steer_effort); 

    // 驱动PID数据准备
    double wheel_vel_fdb = wheel_joints_[i].getVelocity(); 
    wheel_vel_fdb *= -1.0 * wheel_direction_[i];           
    double current_target = target_velocities_[i]; //current_taget只是局部变量

    // 舵向未对齐保护 
    if (!all_wheels_aligned) {
        double raw_steer_error = target_angles_[i] - pivot_joints_[i].getPosition();
        double scale = std::cos(raw_steer_error);
        if (scale < 0.0) {scale = 0.0;
        }
        // 目标速度缩放
        if (std::abs(wheel_vel_fdb) > 0.5) {
            current_target = target_velocities_[i] * scale; 
        } 
        else {
            current_target = (scale > 0.9) ? target_velocities_[i] * scale : 0.0;
            if (current_target == 0.0) wheel_pid_[i].reset();
        }
    }
    last_target_velocities_[i] = current_target; 

    //驱动PID与前馈控制
    double wheel_error = current_target - wheel_vel_fdb; 
    double final_effort = 0.0;
    double pid_effort = 0.0; // pid输出力矩

    // 停止模式，产生0.2rad/s以上速度时，施加反向制动力矩
    if (ctrl_mode_ == CHASSIS_STOP) {
        double velocity_threshold = 0.2; 
        if (std::abs(wheel_vel_fdb) > velocity_threshold) {
            double stop_kp = stop_mode_kp_; 
            double brake_effort = -wheel_vel_fdb * stop_kp; 
            double max_force = stop_mode_max_force_;        
            brake_effort = std::max(-max_force, std::min(max_force, brake_effort)); 
            final_effort = brake_effort;
        } 
    } 
    else if(!all_wheels_aligned && std::abs(current_target) < 0.01){
        final_effort = 0.0;
        wheel_pid_[i].reset();//起步及停车时重置PID
    }
    else {// 非停止模式，正常PID+前馈控制
        // 前馈计算
        double ff_effort = 0.0;  //前馈力矩
        double kv_linear = 0.039; // 使用测出来的经验系数
        if (std::abs(current_target) > 0.001) {
            double static_friction = 0.05; // 静摩擦力矩补偿
            ff_effort += (current_target > 0 ? 1.0 : -1.0) * static_friction;
        }
        //平移补偿
        if(std::abs(ramped_vel_.linear.x) > 0.01 || std::abs(ramped_vel_.linear.y) > 0.01) {
             ff_effort += current_target * kv_linear;
        }

        bool is_rotating_heavy_load = std::abs(ramped_vel_.angular.z) > 0.01;
        if (is_rotating_heavy_load) {
            double kv_spin = kv_spin_; //侧向摩擦力矩补偿
            ff_effort += current_target * kv_spin;
        }

        // 先判断是否起步，再算 PID，原代码是先算 PID 再限制，导致积分已经加上去了
        // 现在改为：如果是低速起步阶段，直接不让 PID 积分项介入，只用前馈推
        if (std::abs(current_target) < 0.2 && std::abs(wheel_vel_fdb) < 0.2) {
             wheel_pid_[i].reset(); 
             pid_effort = 0.0; 
        } else {
             // 正常行驶：PID介入
             pid_effort = wheel_pid_[i].computeCommand(wheel_error, period);
        }
        
        double total_effort = pid_effort + ff_effort;

        //交叉耦合介入
        if (is_pure_translation && std::abs(current_target) > 0.1 && avg_abs_velocity > 0.1){
            double my_abs_vel = std::abs(wheel_vel_fdb);
            double sync_error = avg_abs_velocity - my_abs_vel;
            double sync_effort = sync_error * sync_kp_;
            double sign = (current_target > 0) ? 1.0 : -1.0;
            total_effort += sync_effort * sign;
        }
        // 限幅 
        double safe_limit = wheel_max_effort_;
        final_effort = std::max(-safe_limit, std::min(safe_limit, total_effort));
    }

    wheel_joints_[i].setCommand(final_effort);
  }
  // 功率限制
  limitPower(period.toSec());

  // 重新遍历发布调试数据
  for(int i=0; i<4; i++){
    double real_effort = wheel_joints_[i].getCommand(); 
    double debug_target = last_target_velocities_[i];
    double debug_actual = wheel_joints_[i].getVelocity();
    debug_actual *= -1.0 * wheel_direction_[i]; 
    // 发布
    std_msgs::Float64 msg;
    msg.data = debug_target; 
    debug_pub_target_[i].publish(msg);
    // 发布实际速度
    msg.data = debug_actual;
    debug_pub_actual_[i].publish(msg);
    // 发布最终力矩 (经过功率限制后的)
    std_msgs::Float64 effort_msg;
    effort_msg.data = real_effort;
    debug_pub_effort_[i].publish(effort_msg);
  }

  // 里程计解算与发布
  calculateOdom(time);
}

//里程计计算函数
void SentryChassisController::calculateOdom(const ros::Time& now) {
  if (wheel_joints_.empty()) return;
  if (now <= last_odom_time_) return;
  
  double dt = (now - last_odom_time_).toSec(); // 里程计计算周期
  last_odom_time_ = now;                       // 更新时间戳

  double wheel_radius = WHEEL_PERIMETER_ / (2 * M_PI); 
  double vx_calc = 0.0; // 车体x方向速度
  double vy_calc = 0.0; // 车体y方向速度
  double wz_calc = 0.0; // 车体角速度

  // 轮子位置偏移
  double x_offset = wheel_track_ / 2.0;
  double y_offset = wheel_base_ / 2.0;
  double wheel_pos_x[4] = { x_offset,  x_offset, -x_offset, -x_offset}; // 左前/右前/左后/右后
  double wheel_pos_y[4] = { y_offset, -y_offset,  y_offset, -y_offset};

  // 遍历4个轮子，解算车体速度
  for (int i = 0; i < 4; i++) {
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

      // 解算角速度,可解算差速导致的yaw偏航
      double r2 = wheel_pos_x[i]*wheel_pos_x[i] + wheel_pos_y[i]*wheel_pos_y[i];
      wz_calc += (wheel_pos_x[i] * v_yi - wheel_pos_y[i] * v_xi) / r2;
  }
  
  // 平均4个轮子的解算结果，得到车体速度
  double vx_base = vx_calc / 4.0;
  double vy_base = vy_calc / 4.0;
  double wz_base = wz_calc / 4.0; //可能误差来源，应该加权而非平均

  // 里程计缩放校准误差
  vx_base *= odom_linear_scale_;
  vy_base *= odom_linear_scale_;
  wz_base *= odom_angular_scale_;

  // 计算偏航角
  yaw_ += wz_base * dt; 
  
  // 计算车体位置
  x_pos_ += (vx_base * cos(yaw_) - vy_base * sin(yaw_)) * dt;
  y_pos_ += (vx_base * sin(yaw_) + vy_base * cos(yaw_)) * dt;
  
  // 构造四元数转化偏航角
  tf2::Quaternion q;
  q.setRPY(0, 0, yaw_); 
  
  // 填充里程计消息
  odom_msg_.header.stamp = now;
  odom_msg_.pose.pose.position.x = x_pos_;
  odom_msg_.pose.pose.position.y = y_pos_;
 
  odom_msg_.pose.pose.position.z = 0.0;
  odom_msg_.pose.pose.orientation = tf2::toMsg(q); // 四元数转换
  
  odom_msg_.twist.twist.linear.x = vx_base;
  odom_msg_.twist.twist.linear.y = vy_base;
  odom_msg_.twist.twist.angular.z = wz_base; 
  
  // 发布里程计话题
  odom_pub_.publish(odom_msg_);
  
  // 发布tf变换（odom→base_link）
  geometry_msgs::TransformStamped transformStamped;
  transformStamped.header.stamp = now;
  transformStamped.header.frame_id = "odom";//规定参考父坐标系
  transformStamped.child_frame_id = "base_link";
  transformStamped.transform.translation.x = x_pos_;
  transformStamped.transform.translation.y = y_pos_;
  transformStamped.transform.translation.z = 0.0;
  transformStamped.transform.rotation = odom_msg_.pose.pose.orientation;
  tf_broadcaster_.sendTransform(transformStamped);
  
  //ROS_INFO_THROTTLE(1.0, "Current Odom Yaw: %.4f (rad) | %.4f (deg)", yaw_, yaw_ * 180.0 / M_PI);
}

//停止模式
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
PLUGINLIB_EXPORT_CLASS(sentry_chassis_controller::SentryChassisController, controller_interface::ControllerBase)