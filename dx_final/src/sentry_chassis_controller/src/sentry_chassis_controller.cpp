#include "sentry_chassis_controller/sentry_chassis_controller.h"
#include <algorithm>
#include <pluginlib/class_list_macros.h>
#include <tf/transform_datatypes.h>

namespace sentry_chassis_controller {

// 1. 运动学参数计算
/**
 * @brief 计算运动学参数
 * 根据轮距和轴距计算旋转半径（底盘中心到每个轮子的距离），用于运动学解算
 */
void SentryChassisController::calculateKinematicsParams() {
  // 计算旋转半径 (底盘中心到轮子的距离)
  radius_ = std::sqrt(std::pow(wheel_track_ / 2.0, 2) + std::pow(wheel_base_ / 2.0, 2));
}

// 2. 动态参数回调
/**
 * @brief 动态参数配置回调函数
 * 接收动态配置参数（如PID参数、轮距、轴距、转向偏差等），更新控制器参数并重新计算运动学参数
 * @param config 动态配置参数对象
 * @param level 配置级别（未使用）
 */
void SentryChassisController::reconfigCallback(sentry_chassis_controller::ChassisOpsConfig& config, uint32_t level) {
  // 抗积分饱和配置
  double i_limit = 20.0; 
  

 // 1. 左前 (LF) 转向和驱动PID参数配置
  pivot_pid_[0].setGains(config.lf_steer_p, config.lf_steer_i, config.lf_steer_d, 50.0, -50.0, 500.0);
  wheel_pid_[0].setGains(config.lf_wheel_p, config.lf_wheel_i, config.lf_wheel_d, i_limit, -i_limit, config.lf_wheel_max);

  // 2. 右前 (RF) 转向和驱动PID参数配置
  pivot_pid_[1].setGains(config.rf_steer_p, config.rf_steer_i, config.rf_steer_d, 50.0, -50.0, 500.0);
  wheel_pid_[1].setGains(config.rf_wheel_p, config.rf_wheel_i, config.rf_wheel_d, i_limit, -i_limit, config.rf_wheel_max);

  // 3. 左后 (LB) 转向和驱动PID参数配置
  pivot_pid_[2].setGains(config.lb_steer_p, config.lb_steer_i, config.lb_steer_d, 50.0, -50.0, 500.0);
  wheel_pid_[2].setGains(config.lb_wheel_p, config.lb_wheel_i, config.lb_wheel_d, i_limit, -i_limit, config.lb_wheel_max);

  // 4. 右后 (RB) 转向和驱动PID参数配置
  pivot_pid_[3].setGains(config.rb_steer_p, config.rb_steer_i, config.rb_steer_d, 50.0, -50.0, 500.0);
  wheel_pid_[3].setGains(config.rb_wheel_p, config.rb_wheel_i, config.rb_wheel_d, i_limit, -i_limit, config.rb_wheel_max);

  wheel_track_ = config.wheel_track;  // 更新轮距
  wheel_base_ = config.wheel_base;    // 更新轴距
  
  // 更新转向零位偏差
  steer_offset_rad_[0] = config.offset_lf;
  steer_offset_rad_[1] = config.offset_rf;
  steer_offset_rad_[2] = config.offset_lb;
  steer_offset_rad_[3] = config.offset_rb;

  spin_vw_ = config.spin_vw;          // 更新小陀螺模式自转角速度
  use_world_frame_ = config.use_world_frame;  // 更新世界坐标系开关
  
  // [新增] 更新加速度限制参数
  // 注意：需要在 .h 文件中添加 acc_linear_ 和 acc_angular_ 变量，或者直接用 config 使用
  // 这里假设你主要是为了能在 update 中使用，暂时保持原样，如果需要动态生效请确保 rampVelocity 使用的是最新参数
  
  calculateKinematicsParams();  // 重新计算运动学参数
}

// 3. 初始化
/**
 * @brief 控制器初始化函数
 * 从参数服务器获取关节名称，初始化关节句柄、动态配置服务器、订阅者、发布者等
 * @param hw 力控制关节接口
 * @param nh 节点句柄
 * @return 初始化成功返回true，否则返回false
 */
bool SentryChassisController::init(hardware_interface::EffortJointInterface* hw, ros::NodeHandle& nh) {
  this->nh_ = nh;
  std::vector<std::string> joint_names;
  if (!nh_.getParam("joints", joint_names)) return false;  // 获取关节名称列表，失败则返回false
  
  // 分离转向关节和车轮关节句柄
  for (const auto& name : joint_names) {
    if (name.find("pivot") != std::string::npos) pivot_joints_.push_back(hw->getHandle(name));
    else if (name.find("wheel") != std::string::npos) wheel_joints_.push_back(hw->getHandle(name));
  }
  
  if (pivot_joints_.size() != 4 || wheel_joints_.size() != 4) return false;  // 检查关节数量是否为4个

  // 初始化动态配置服务器
  dr_server_.reset(new dynamic_reconfigure::Server<sentry_chassis_controller::ChassisOpsConfig>(nh_));
  dynamic_reconfigure::Server<sentry_chassis_controller::ChassisOpsConfig>::CallbackType cb;
  cb = boost::bind(&SentryChassisController::reconfigCallback, this, _1, _2);
  dr_server_->setCallback(cb);

  // 初始化订阅者和发布者
  cmd_vel_sub_ = nh.subscribe("/cmd_vel", 10, &SentryChassisController::cmdVelCallback, this);
  key_sub_ = nh.subscribe("/keyboard/key", 10, &SentryChassisController::keyCallback, this);
  odom_pub_ = nh.advertise<nav_msgs::Odometry>("/odom", 50);

  // 初始化调试发布者
  std::string wheel_names[4] = {"lf", "rf", "lb", "rb"};
  for (int i = 0; i < 4; i++) {
      debug_pub_target_[i] = nh.advertise<std_msgs::Float64>("/debug/" + wheel_names[i] + "_wheel/target", 100);
      debug_pub_actual_[i] = nh.advertise<std_msgs::Float64>("/debug/" + wheel_names[i] + "_wheel/actual", 100);
      debug_pub_effort_[i] = nh.advertise<std_msgs::Float64>("/debug/" + wheel_names[i] + "_wheel/effort", 100);

      last_target_velocities_[i] = 0.0;
  }

  // 初始化里程计消息帧ID
  odom_msg_.header.frame_id = "odom";
  odom_msg_.child_frame_id = "base_link";
  
  wheel_direction_.resize(4, -1.0); //12.4修改,正确方向的PID反馈

  return true;
}

/**
 * @brief 控制器启动函数
 * 在控制器启动时初始化时间戳、PID控制器、关节指令和状态变量
 * @param time 启动时刻的时间
 */
void SentryChassisController::starting(const ros::Time& time) {
    last_odom_time_ = time;  // 初始化里程计时间戳
    for (int i = 0; i < 4; ++i) {
        pivot_pid_[i].reset();  // 重置转向PID
        wheel_pid_[i].reset();  // 重置驱动PID
        
        double current_pos = pivot_joints_[i].getPosition();
        target_angles_[i] = current_pos;  // 初始化目标转向角度为当前角度
        last_steer_angles_[i] = current_pos;  // 记录上一时刻转向角度
        
        pivot_joints_[i].setCommand(0.0);  // 初始化转向关节指令为0
        wheel_joints_[i].setCommand(0.0);  // 初始化驱动关节指令为0
        last_target_velocities_[i] = 0.0;  // 初始化上一时刻目标速度
    }
    ramped_vel_ = geometry_msgs::Twist();  // 初始化斜坡速度
}

/**
 * @brief 控制器停止函数
 * 在控制器停止时将所有关节指令设为0，停止动力输出
 * @param time 停止时刻的时间
 */
void SentryChassisController::stopping(const ros::Time& time) {
    for (int i = 0; i < 4; ++i) {
        pivot_joints_[i].setCommand(0.0);
        wheel_joints_[i].setCommand(0.0);
    }
}

/**
 * @brief 键盘指令回调函数
 * 处理键盘模式切换指令（G键切换小陀螺模式，H键切换世界坐标系）
 * @param msg 键盘指令消息
 */
void SentryChassisController::keyCallback(const std_msgs::String::ConstPtr& msg) {
  if (msg->data == "g") {
      if (ctrl_mode_ == CHASSIS_SPIN) {
          ctrl_mode_ = CHASSIS_SEPARATE_GIMBAL; // 切换回普通模式
          ROS_INFO("Switch to NORMAL Mode");
      } else {
          ctrl_mode_ = CHASSIS_SPIN; // 切换到小陀螺模式
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
 * 接收并保存/cmd_vel话题的速度指令
 * @param msg 速度指令消息
 */
void SentryChassisController::cmdVelCallback(const geometry_msgs::Twist::ConstPtr& msg) {
  cmd_vel_ = *msg;
}

// 普通模式下的坐标变换 (受 use_world_frame_ 开关控制)
/**
 * @brief 速度坐标系转换
 * 当使用世界坐标系时，将世界坐标系下的速度指令（vx, vy）转换为车体坐标系下的速度
 * @param vx x方向线速度（引用，会被修改为车体坐标系下的速度）
 * @param vy y方向线速度（引用，会被修改为车体坐标系下的速度）
 */
void SentryChassisController::transformVelocity(double& vx, double& vy) {
  if (use_world_frame_) {
    try {
      tf::StampedTransform transform;
      // 查找 base_link 到 odom 的变换
      // 这里的逻辑是：把 odom 坐标系下的指令 v_world 转换到 base_link 坐标系下 v_body
      tf_listener_.lookupTransform("base_link", "odom", ros::Time(0), transform);
      
      tf::Vector3 v_world(vx, vy, 0);
      tf::Vector3 v_body = transform.getBasis() * v_world;  // 应用坐标变换
      vx = v_body.x();
      vy = v_body.y();
    } catch (tf::TransformException& ex) {
      ROS_WARN_THROTTLE(2.0, "TF Lookup Failed: %s", ex.what());
    }
  }
}

/**
 * @brief 速度指令小值过滤
 * 对接近零的速度指令进行归零处理，避免机械因微小指令产生抖动
 * @param vx x方向线速度（引用，会被修改）
 * @param vy y方向线速度（引用，会被修改）
 * @param vw 角速度（引用，会被修改）
 */
void SentryChassisController::snapInput(double& vx, double& vy, double& vw) {
    if (std::abs(vx) < 0.001) vx = 0.0;
    if (std::abs(vy) < 0.001) vy = 0.0;
    if (std::abs(vw) < 0.001) vw = 0.0;
}

// 运动学解算核心
// 运动学解算核心
/**
 * @brief 计算车轮状态
 * 根据速度指令（vx, vy, vw）解算4个轮子的目标转向角度和目标速度，处理就近转向逻辑和舵向保护
 * @param vx x方向线速度（车体坐标系）
 * @param vy y方向线速度（车体坐标系）
 * @param vw 角速度
 */
void SentryChassisController::calculateWheelStates(double vx, double vy, double vw) {
    snapInput(vx, vy, vw);  // 过滤小值速度

    // 若速度指令全为零，设置所有车轮目标速度为零
    if (vx == 0.0 && vy == 0.0 && vw == 0.0) {
        for(int i=0; i<4; i++) target_velocities_[i] = 0.0;
        return;
    }

    double raw_angles[4];  // 原始转向角度（未处理就近转向）
    double raw_speeds[4];  // 原始车轮速度（未处理方向修正）

    // === 优化分支 1：纯平移模式 ===
    if (std::abs(vw) < 1e-3) {
        double v_mag = std::sqrt(vx*vx + vy*vy);  // 平移速度大小
        double theta = std::atan2(vy, vx);        // 平移方向角度
        for (int i=0; i<4; i++) {
            raw_speeds[i] = v_mag;                // 所有车轮速度大小相同
            raw_angles[i] = theta;                // 所有车轮转向角度相同（沿平移方向）
        }
    }
    // === 优化分支 2：纯旋转模式 ===
    else if (std::abs(vx) < 1e-3 && std::abs(vy) < 1e-3) {
        double a = wheel_track_ / 2.0;  // 半轮距
        double b = wheel_base_ / 2.0;   // 半轴距
        // 计算每个车轮的转向角度（指向旋转中心）
        raw_angles[0] = std::atan2(b, -a); 
        raw_angles[1] = std::atan2(b, a);  
        raw_angles[2] = std::atan2(-b, -a);
        raw_angles[3] = std::atan2(-b, a); 
        
        double v_mag = std::abs(vw) * radius_;  // 车轮线速度大小（旋转半径×角速度）
        double speed_sign = (vw >= 0) ? 1.0 : -1.0;  // 速度方向（由旋转方向决定）
        for(int i=0; i<4; i++) raw_speeds[i] = v_mag * speed_sign;
    }
    // === 分支 3：混合模式（既有平移又有旋转） ===
    else {
        double a = wheel_track_ / 2.0; 
        double b = wheel_base_ / 2.0;
        double A = vx - vw * a;  // 左前轮x方向速度分量
        double B = vx + vw * a;  // 右前轮x方向速度分量
        double C = vy - vw * b;  // 左后轮y方向速度分量
        double D = vy + vw * b;  // 右前轮y方向速度分量
        
        // 计算每个车轮的转向角度（速度方向）
        raw_angles[0] = atan2(D, A); 
        raw_angles[1] = atan2(D, B); 
        raw_angles[2] = atan2(C, A); 
        raw_angles[3] = atan2(C, B); 
        
        // 计算每个车轮的速度大小（速度矢量模长）
        raw_speeds[0] = std::sqrt(A*A + D*D);
        raw_speeds[1] = std::sqrt(B*B + D*D);
        raw_speeds[2] = std::sqrt(A*A + C*C);
        raw_speeds[3] = std::sqrt(B*B + C*C);
    }

    // === 后处理：物理就近原则 + [新增] 舵向保护 ===
    for (int i = 0; i < 4; i++) {
        double last_phys_angle = last_steer_angles_[i] - steer_offset_rad_[i];  // 上一时刻实际角度（去除偏差）
        double target_phys_angle = raw_angles[i];  // 目标实际角度（去除偏差）

        // 后轮反向逻辑 (保持你原有的逻辑)
        if (i == 2 || i == 3) target_phys_angle += M_PI; 

        // 计算角度差，并归一化到[-π, π]
        double diff = target_phys_angle - last_phys_angle;
        while (diff > M_PI) diff -= 2 * M_PI;
        while (diff < -M_PI) diff += 2 * M_PI;
        
        double final_speed_sign = 1.0;
        // 若角度差超过90度，通过反转车轮方向减少转向角度（就近转向）
        if (std::abs(diff) > M_PI / 2.0) {
            if (diff > 0) diff -= M_PI; else diff += M_PI;
            final_speed_sign = -1.0;  // 反转车轮速度方向
        }
        
        // 计算最终目标转向角度（加上偏差）
        target_angles_[i] = last_phys_angle + diff + steer_offset_rad_[i];
        last_steer_angles_[i] = target_angles_[i];  // 更新上一时刻转向角度
        
        // 计算车轮目标角速度（由线速度转换为弧度/秒）
        double wheel_radius = WHEEL_PERIMETER_ / (2 * M_PI);  // 车轮半径
        double final_speed = raw_speeds[i] / wheel_radius;
        
        final_speed *= final_speed_sign;    // 应用就近转向的速度方向修正
        final_speed *= -1.0;                // 通用方向修正
        final_speed *= wheel_direction_[i]; // 车轮方向修正
        
        // 如果舵机还需要转动的角度超过 (0.2 rad)，则强制切断动力（舵向保护）
        if (std::abs(diff) > 0.2) {
            final_speed = 0.0;
        }

        target_velocities_[i] = final_speed;  // 保存目标角速度
    }
}

// 普通移动模式
/**
 * @brief 独立云台模式控制逻辑
 * 处理普通移动模式下的速度转换（根据世界坐标系开关）和车轮状态解算
 */
void SentryChassisController::ChassisSeparateGimbalMode() {
  double vx = ramped_vel_.linear.x;
  double vy = ramped_vel_.linear.y;
  double vw = ramped_vel_.angular.z;
  transformVelocity(vx, vy); // 只有按下H键开启 use_world_frame_ 时才进行TF转换
  calculateWheelStates(vx, vy, vw);  // 解算车轮状态
}

// 小陀螺模式
// 逻辑：读取世界坐标指令 -> 强制TF转换 -> 叠加自转 -> 混合解算
/**
 * @brief 小陀螺模式控制逻辑
 * 处理小陀螺模式下的速度转换（世界坐标系→车体坐标系），叠加自转角速度，解算车轮状态
 */
void SentryChassisController::ChassisSpinMode() {
  //  获取指令 (视为世界坐标系指令)
  double vx = ramped_vel_.linear.x;
  double vy = ramped_vel_.linear.y;
  
  // 强制执行坐标转换 (World -> Body)
  try {
      tf::StampedTransform transform;
      // 查找从 odom (世界) 到 base_link (机器人) 的变换
      tf_listener_.lookupTransform("base_link", "odom", ros::Time(0), transform);
      
      tf::Vector3 v_world(vx, vy, 0);
      tf::Vector3 v_body = transform.getBasis() * v_world; // 旋转矢量（世界→车体）
      
      vx = v_body.x();
      vy = v_body.y();
  } catch (tf::TransformException& ex) {
      // 保护措施：TF 失败时禁止平移，只允许自转，防止失控
      ROS_WARN_THROTTLE(2.0, "Spin Mode TF Failure: %s", ex.what());
      vx = 0.0;
      vy = 0.0;
  }

  // 叠加小陀螺自转速度，这里 spin_vw_ 是配置的固定转速
  double vw = spin_vw_; 

  // 进行混合解算 (进入 calculateWheelStates 的分支3)
  calculateWheelStates(vx, vy, vw);
}

/**
 * @brief 速度斜坡处理
 * 对速度指令进行平滑处理（当前直接赋值，可扩展为带加速度限制的斜坡函数）
 * @param period 控制周期
 */
void SentryChassisController::rampVelocity(const ros::Duration& period) {

    ramped_vel_ = cmd_vel_;  // 直接赋值（可扩展为带加速度限制的实现）
}

/**
 * @brief 控制器周期更新函数
 * 核心控制逻辑：处理模式切换、速度斜坡、运动学解算、PID控制、里程计计算等
 * @param time 当前时刻时间
 * @param period 控制周期
 */
void SentryChassisController::update(const ros::Time& time, const ros::Duration& period) {
  if (pivot_joints_.empty() || wheel_joints_.empty()) return;  // 关节句柄为空则退出

  rampVelocity(period);  // 速度斜坡处理

  // --- 1. 停车与模式判断逻辑 ---
  // 如果输入指令几乎为0且当前不是小陀螺模式，进入停车模式
  if (fabs(cmd_vel_.linear.x) < 1e-3 && 
      fabs(cmd_vel_.linear.y) < 1e-3 && 
      fabs(cmd_vel_.angular.z) < 1e-3 &&
      ctrl_mode_ != CHASSIS_SPIN) { 
      
      // 停车模式，重置 PID
     
      for(int i=0; i<4; i++) wheel_pid_[i].reset();
      
      ctrl_mode_ = CHASSIS_STOP;
      ChassisStopMode();  // 进入停车锁死状态
      for(int i=0; i<4; i++) last_target_velocities_[i] = 0.0;
  }
  else {
      // [修复 Bug的关键] 如果当前是停车模式，收到指令后必须立刻切换回普通模式！
      if (ctrl_mode_ == CHASSIS_STOP) {
          ctrl_mode_ = CHASSIS_SEPARATE_GIMBAL; 
      }

      // 模式分发
      if (ctrl_mode_ == CHASSIS_SPIN) ChassisSpinMode();
      else ChassisSeparateGimbalMode();
  }

  calculateRoundCnt();  // 计算转向电机累计圈数
  calculateTargetRoundCnt();  // 计算转向目标角度累计圈数

  // --- 2. PID 控制核心循环 ---
  for (int i = 0; i < 4; i++) {
    // ------------------------------------------
    // A. 舵向控制 (Position Control)
    // ------------------------------------------
    double steer_error = target_angles_[i] - pivot_joints_[i].getPosition();  // 转向角度误差
    double steer_effort = pivot_pid_[i].computeCommand(steer_error, period);  // PID计算转向力
    pivot_joints_[i].setCommand(steer_effort);  // 设置转向关节指令

    // ------------------------------------------
    // B. 轮速控制 (Velocity Control)
    // ------------------------------------------
    double wheel_vel_fdb = wheel_joints_[i].getVelocity();  // 车轮速度反馈
    wheel_vel_fdb *= -1.0;  // 方向修正
    wheel_vel_fdb *= wheel_direction_[i];  // 车轮方向修正

    // 获取原始目标速度
    double current_target = target_velocities_[i];

    double final_effort = 0.0;

    // [分支 1] 停车刹车模式
    if (ctrl_mode_ == CHASSIS_STOP) {
        // 刹车力度 P=5.0（比例控制，与速度反馈成反比）
        double brake_effort = -wheel_vel_fdb * 5.0; 
        // 刹车限幅 10.0
        brake_effort = std::max(-10.0, std::min(10.0, brake_effort));
        
        final_effort = brake_effort; 
        wheel_joints_[i].setCommand(final_effort);
    } 
    // [分支 2] 正常行驶模式
    else {
        double current_target = target_velocities_[i];
        last_target_velocities_[i] = current_target;

        double wheel_error = current_target - wheel_vel_fdb;  // 速度误差

        // 使用正规 PID 计算 (参数来自 yaml/rqt)
        double wheel_effort = wheel_pid_[i].computeCommand(wheel_error, period);

        // [安全锁] 手动强制限幅，防止参数配置错误导致飞车
        // 建议值：3.0 (对应URDF) 到 10.0 之间
        double safe_limit = 10.0; 
        wheel_effort = std::max(-safe_limit, std::min(safe_limit, wheel_effort));
        
        final_effort = wheel_effort; 

        // 最后发布给机器人的时候，给两个后轮乘负号
        if (i == 2 || i == 3) {
           final_effort *= -1.0;
        }    
        wheel_joints_[i].setCommand(final_effort);
    }

    // 最后发布给机器人的时候，给两个后轮乘负号
    if (i == 2 || i == 3) {
        final_effort *= -1.0;//必要
    }

    // ------------------------------------------
    // C. 发布调试数据
    // ------------------------------------------
    std_msgs::Float64 msg;
    msg.data = target_velocities_[i];
    debug_pub_target_[i].publish(msg);
    
    msg.data = wheel_vel_fdb;
    debug_pub_actual_[i].publish(msg);

    std_msgs::Float64 effort_msg;
    effort_msg.data = final_effort;
    debug_pub_effort_[i].publish(effort_msg);
  }
  
  // --- 3. 更新里程计 ---
  calculateOdom(time);
}

/**
 * @brief 计算里程计
 * 根据车轮速度和转向角度，通过正运动学计算底盘的位置、姿态和速度，并发布里程计消息和TF变换
 * @param now 当前时刻时间
 */
void SentryChassisController::calculateOdom(const ros::Time& now) {
  if (wheel_joints_.empty()) return;
  if (now <= last_odom_time_) return;  // 时间戳异常则退出
  double dt = (now - last_odom_time_).toSec();  // 计算时间间隔
  last_odom_time_ = now;  // 更新里程计时间戳

  double wheel_radius = WHEEL_PERIMETER_ / (2 * M_PI);  // 车轮半径
  double vx_base = 0.0;  // 车体坐标系x方向线速度
  double vy_base = 0.0;  // 车体坐标系y方向线速度

  // 正运动学解算 (Forward Kinematics)：平均4个车轮的速度
  for (int i = 0; i < 4; i++) {
      double raw_vel = wheel_joints_[i].getVelocity();  // 车轮角速度反馈
      raw_vel *= -1.0;  // 方向修正
      raw_vel *= wheel_direction_[i];  // 车轮方向修正
      
      double wheel_v = raw_vel * wheel_radius;  // 车轮线速度
      double wheel_a = pivot_joints_[i].getPosition();  // 车轮转向角度
      if (i == 2 || i == 3) wheel_a += M_PI;  // 后轮角度修正

      // 累加每个车轮在车体坐标系下的速度分量
      vx_base += wheel_v * std::cos(wheel_a);
      vy_base += wheel_v * std::sin(wheel_a);
  }
  vx_base /= 4.0;  // 平均4个车轮的x方向速度
  vy_base /= 4.0;  // 平均4个车轮的y方向速度


  // [关键修正] 强制反转里程计的输出方向，解决 "按d(向右)却显示正速度(向左)" 的问题，方案无效

  vx_base *= -1.0;
  vy_base *= -1.0;

  double wz = ramped_vel_.angular.z;  // 角速度直接取指令值或IMU值
  yaw_ += wz * dt;  // 积分计算偏航角
  
  // 计算世界坐标系下的位置增量
  double c = cos(yaw_), s = sin(yaw_);
  x_pos_ += (vx_base * c - vy_base * s) * dt;  // x方向位置累加
  y_pos_ += (vx_base * s + vy_base * c) * dt;  // y方向位置累加
  
  // 发布 Odom 消息
  odom_msg_.header.stamp = now;
  odom_msg_.pose.pose.position.x = x_pos_;
  odom_msg_.pose.pose.position.y = y_pos_;
  odom_msg_.pose.pose.orientation = tf::createQuaternionMsgFromYaw(yaw_);
  odom_msg_.twist.twist.linear.x = vx_base;
  odom_msg_.twist.twist.linear.y = vy_base;
  odom_msg_.twist.twist.angular.z = wz;
  odom_pub_.publish(odom_msg_);
  
  // 发布 TF 变换（odom→base_link）
  tf::Transform transform;
  transform.setOrigin(tf::Vector3(x_pos_, y_pos_, 0.0));
  transform.setRotation(tf::createQuaternionFromYaw(yaw_));
  tf_broadcaster_.sendTransform(tf::StampedTransform(transform, now, "odom", "base_link"));
}

/**
 * @brief 停止模式控制逻辑
 * 控制底盘进入X型锁死状态，所有轮子转向特定角度实现机械锁死，防止滑动
 */
void SentryChassisController::ChassisStopMode() {
    // 停车自锁 (X型锁死)
    double target_phys[4];
    target_phys[0] = -M_PI * 3.0 / 4.0;  // 左前转向角度
    target_phys[1] =  M_PI * 3.0 / 4.0;  // 右前转向角度
    target_phys[2] = -M_PI / 4.0;        // 左后转向角度
    target_phys[3] =  M_PI / 4.0;        // 右后转向角度

    for(int i=0; i<4; i++) {
        double current_target = target_phys[i];
        if (i == 2 || i == 3) current_target += M_PI;  // 后轮角度修正

        target_angles_[i] = current_target + steer_offset_rad_[i];  // 加上转向偏差
        last_steer_angles_[i] = target_angles_[i];  // 更新上一时刻转向角度
        target_velocities_[i] = 0.0;  // 车轮目标速度为0
    }
}

/**
 * @brief 计算转向电机累计圈数
 * 处理转向角度的跳变（超过±180度），通过累计圈数实现绝对角度的准确计算
 */
void SentryChassisController::calculateRoundCnt() {
  static double last_angle[4] = {0.0};  // 上一时刻角度（度）
  for (int i = 0; i < 4; i++) {
    double now_angle_deg = pivot_joints_[i].getPosition() * 180.0 / M_PI;  // 当前角度（度）
    // 检测角度跳变（顺时针超过180度，圈数减1）
    if (now_angle_deg - last_angle[i] > 180.0) motor_circle_[i]--;
    // 检测角度跳变（逆时针超过180度，圈数加1）
    else if (now_angle_deg - last_angle[i] < -180.0) motor_circle_[i]++;
    last_angle[i] = now_angle_deg;  // 更新上一时刻角度
  }
}

/**
 * @brief 计算转向目标角度累计圈数
 * 处理目标转向角度的跳变，通过累计圈数实现目标角度的准确跟踪
 */
void SentryChassisController::calculateTargetRoundCnt() {
  static double last_target[4] = {0.0};  // 上一时刻目标角度（度）
  for (int i = 0; i < 4; i++) {
    double now_target_deg = target_angles_[i] * 180.0 / M_PI;  // 当前目标角度（度）
    // 检测目标角度跳变（顺时针超过180度，圈数减1）
    if (now_target_deg - last_target[i] > 180.0) motor_target_circle_[i]--;
    // 检测目标角度跳变（逆时针超过180度，圈数加1）
    else if (now_target_deg - last_target[i] < -180.0) motor_target_circle_[i]++;
    last_target[i] = now_target_deg;  // 更新上一时刻目标角度
  }
}

} 
PLUGINLIB_EXPORT_CLASS(sentry_chassis_controller::SentryChassisController, controller_interface::ControllerBase)