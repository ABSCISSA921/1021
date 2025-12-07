#include "sentry_chassis_controller/sentry_chassis_controller.h"
#include <algorithm>
#include <pluginlib/class_list_macros.h>

namespace sentry_chassis_controller {

// 构造函数：初始化 TF 监听器
SentryChassisController::SentryChassisController() : tf_listener_(tf_buffer_) {}

/**
 * @brief 计算运动学参数
 * 根据轮距(track)和轴距(base)计算底盘半径，用于解算角速度与轮速的关系
 */
void SentryChassisController::calculateKinematicsParams() {
  // 半径 R = sqrt((宽/2)^2 + (长/2)^2)
  radius_ = std::sqrt(std::pow(wheel_track_ / 2.0, 2) + std::pow(wheel_base_ / 2.0, 2));
}

/**
 * @brief 动态参数回调函数 (Dynamic Reconfigure)
 * 用于在运行时通过 rqt 修改 PID 参数、几何尺寸、加速度限制等，无需重新编译
 */
void SentryChassisController::reconfigCallback(sentry_chassis_controller::ChassisOpsConfig& config, uint32_t level) {
  double i_limit = 20.0; // 积分限幅，防止积分饱和
  
  // 1. 更新舵向电机 (Steer/Pivot) PID
  // 舵机一般不需要积分项(I)，主要靠P和D快速对准
  pivot_pid_[0].setGains(config.lf_steer_p, config.lf_steer_i, config.lf_steer_d, 50.0, -50.0, 500.0);
  pivot_pid_[1].setGains(config.rf_steer_p, config.rf_steer_i, config.rf_steer_d, 50.0, -50.0, 500.0);
  pivot_pid_[2].setGains(config.lb_steer_p, config.lb_steer_i, config.lb_steer_d, 50.0, -50.0, 500.0);
  pivot_pid_[3].setGains(config.rb_steer_p, config.rb_steer_i, config.rb_steer_d, 50.0, -50.0, 500.0);

  // 2. 更新驱动电机 (Wheel/Drive) PID
  // 驱动轮需要根据速度误差调整力矩
  wheel_pid_[0].setGains(config.lf_wheel_p, config.lf_wheel_i, config.lf_wheel_d, i_limit, -i_limit, config.lf_wheel_max);
  wheel_pid_[1].setGains(config.rf_wheel_p, config.rf_wheel_i, config.rf_wheel_d, i_limit, -i_limit, config.rf_wheel_max);
  wheel_pid_[2].setGains(config.lb_wheel_p, config.lb_wheel_i, config.lb_wheel_d, i_limit, -i_limit, config.lb_wheel_max);
  wheel_pid_[3].setGains(config.rb_wheel_p, config.rb_wheel_i, config.rb_wheel_d, i_limit, -i_limit, config.lb_wheel_max);

  // 3. 更新几何参数
  wheel_track_ = config.wheel_track;
  wheel_base_ = config.wheel_base;
  
  // 4. 更新零偏 (Offset) - 用于校准舵机安装误差
  steer_offset_rad_[0] = config.offset_lf;
  steer_offset_rad_[1] = config.offset_rf;
  steer_offset_rad_[2] = config.offset_lb;
  steer_offset_rad_[3] = config.offset_rb;

  // 5. 更新特殊模式参数
  spin_vw_ = config.spin_vw; // 小陀螺自旋速度
  use_world_frame_ = config.use_world_frame; // 是否开启世界坐标系控制
  
  // 6. [新增] 读取加速度限制参数
  acc_linear_limit_ = config.acc_linear;
  acc_angular_limit_ = config.acc_angular;
  
  // 重新计算运动学常数
  calculateKinematicsParams();
}

/**
 * @brief 控制器初始化函数
 * ROS Control 加载控制器时调用，获取句柄、初始化变量、发布器/订阅器
 */
bool SentryChassisController::init(hardware_interface::EffortJointInterface* hw, ros::NodeHandle& nh) {
  this->nh_ = nh;
  
  // === [初始化] 电容满电 ===
  buffer_energy_ = 60.0;
  
  ROS_INFO("!!! Sentry Controller Initialized !!!");
  ROS_INFO("Odom Scale -> Linear: %.4f, Angular: %.4f", odom_linear_scale_, odom_angular_scale_);

  // 1. 从参数服务器获取关节名称并获取 Handle
  std::vector<std::string> joint_names;
  if (!nh_.getParam("joints", joint_names)) return false;
  
  for (const auto& name : joint_names) {
    if (name.find("pivot") != std::string::npos) pivot_joints_.push_back(hw->getHandle(name));
    else if (name.find("wheel") != std::string::npos) wheel_joints_.push_back(hw->getHandle(name));
  }
  
  if (pivot_joints_.size() != 4 || wheel_joints_.size() != 4) return false;

  // 2. 初始化动态参数服务器
  dr_server_.reset(new dynamic_reconfigure::Server<sentry_chassis_controller::ChassisOpsConfig>(nh_));
  dynamic_reconfigure::Server<sentry_chassis_controller::ChassisOpsConfig>::CallbackType cb;
  cb = boost::bind(&SentryChassisController::reconfigCallback, this, _1, _2);
  dr_server_->setCallback(cb);

  // 3. 初始化订阅器和发布器
  cmd_vel_sub_ = nh.subscribe("/cmd_vel", 10, &SentryChassisController::cmdVelCallback, this);
  key_sub_ = nh.subscribe("/keyboard/key", 10, &SentryChassisController::keyCallback, this);
  odom_pub_ = nh.advertise<nav_msgs::Odometry>("/odom", 50);

  // 调试话题发布
  std_msgs::Float64 msg;
  std::string wheel_names[4] = {"lf", "rf", "lb", "rb"};
  for (int i = 0; i < 4; i++) {
      debug_pub_target_[i] = nh.advertise<std_msgs::Float64>("/debug/" + wheel_names[i] + "_wheel/target", 100);
      debug_pub_actual_[i] = nh.advertise<std_msgs::Float64>("/debug/" + wheel_names[i] + "_wheel/actual", 100);
      debug_pub_effort_[i] = nh.advertise<std_msgs::Float64>("/debug/" + wheel_names[i] + "_wheel/effort", 100);

      last_target_velocities_[i] = 0.0;
  }

  // 初始化里程计消息头
  odom_msg_.header.frame_id = "odom";
  odom_msg_.child_frame_id = "base_link";
  
  // 轮子转动方向修正 (根据实际电机安装方向调整)
  wheel_direction_.resize(4, -1.0); 

  return true;
}

/**
 * @brief 控制器启动时调用
 * 重置PID、清除历史状态
 */
void SentryChassisController::starting(const ros::Time& time) {
    last_odom_time_ = time;
    for (int i = 0; i < 4; ++i) {
        pivot_pid_[i].reset();
        wheel_pid_[i].reset();
        
        // 获取当前位置作为初始目标，防止上电乱转
        double current_pos = pivot_joints_[i].getPosition();
        target_angles_[i] = current_pos;
        last_steer_angles_[i] = current_pos;
        
        pivot_joints_[i].setCommand(0.0);
        wheel_joints_[i].setCommand(0.0);
        last_target_velocities_[i] = 0.0;
    }
    ramped_vel_ = geometry_msgs::Twist();
}

/**
 * @brief 控制器停止时调用 (安全保护)
 */
void SentryChassisController::stopping(const ros::Time& time) {
    for (int i = 0; i < 4; ++i) {
        pivot_joints_[i].setCommand(0.0);
        wheel_joints_[i].setCommand(0.0);
    }
}

/**
 * @brief 键盘/按键回调
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
 * @brief 速度指令回调
 */
void SentryChassisController::cmdVelCallback(const geometry_msgs::Twist::ConstPtr& msg) {
  cmd_vel_ = *msg;
}

/**
 * @brief 坐标系转换 (World -> Body)
 * [关键修改]: 使用 ros::Duration(0) 进行非阻塞 TF 查询
 * 满足任务要求 7，同时解决延迟导致的偏摆问题
 */
void SentryChassisController::transformVelocity(double& vx, double& vy) {
  if (use_world_frame_) {
    try {
      // 1. 封装数据：声明这是一个在 "odom" (世界) 坐标系下的矢量
      geometry_msgs::Vector3Stamped v_world;
      v_world.header.frame_id = "odom"; 
      // 使用最新的可用变换
      v_world.header.stamp = ros::Time(0); 
      v_world.vector.x = vx;
      v_world.vector.y = vy;
      v_world.vector.z = 0.0;

      // 2. 执行变换 (核心修复)
      // [修复] 将 timeout 设为 0。如果 TF 不可用，立即抛出异常，而不是阻塞线程。
      // 这保证了实时控制循环不会卡顿。
      geometry_msgs::Vector3Stamped v_body;
      v_body = tf_buffer_.transform(v_world, "base_link", ros::Duration(0));

      // 3. 更新速度
      vx = v_body.vector.x;
      vy = v_body.vector.y;

    } catch (tf2::TransformException& ex) {
      // 如果 TF 失败（例如刚启动时），为了安全，将速度清零或维持原值。
      // 这里选择清零，防止机器人不可控地乱跑。
      // 使用 THROTTLE 减少报错刷屏频率。
      ROS_WARN_THROTTLE(2.0, "TF Transform Failed (World->Body): %s", ex.what());
      vx = 0.0;
      vy = 0.0;
    }
  }
  // 如果不开启世界模式，保持原样 (Body Frame)
}

/**
 * @brief 输入死区过滤
 */
void SentryChassisController::snapInput(double& vx, double& vy, double& vw) {
    if (std::abs(vx) < 0.001) vx = 0.0;
    if (std::abs(vy) < 0.001) vy = 0.0;
    if (std::abs(vw) < 0.001) vw = 0.0;
}

/**
 * @brief 梯形加减速 (Velocity Ramp)
 */
void SentryChassisController::rampVelocity(const ros::Duration& period) {
    double dt = period.toSec();
    double max_lin_inc = acc_linear_limit_ * dt; 
    double max_ang_inc = acc_angular_limit_ * dt; 

    // X轴平滑处理
    double error_x = cmd_vel_.linear.x - ramped_vel_.linear.x;
    if (std::abs(error_x) > max_lin_inc) {
        ramped_vel_.linear.x += (error_x > 0 ? 1.0 : -1.0) * max_lin_inc;
    } else {
        ramped_vel_.linear.x = cmd_vel_.linear.x;
    }

    // Y轴平滑处理
    double error_y = cmd_vel_.linear.y - ramped_vel_.linear.y;
    if (std::abs(error_y) > max_lin_inc) {
        ramped_vel_.linear.y += (error_y > 0 ? 1.0 : -1.0) * max_lin_inc;
    } else {
        ramped_vel_.linear.y = cmd_vel_.linear.y;
    }

    // Z轴(角速度)平滑处理
    double error_w = cmd_vel_.angular.z - ramped_vel_.angular.z;
    if (std::abs(error_w) > max_ang_inc) {
        ramped_vel_.angular.z += (error_w > 0 ? 1.0 : -1.0) * max_ang_inc;
    } else {
        ramped_vel_.angular.z = cmd_vel_.angular.z;
    }
}

/**
 * @brief 功率限制与电容模拟
 */
void SentryChassisController::limitPower(double period_dt) {
    double total_predicted_power = 0.0;
    double constant_loss = 10.0; 

    for (int i = 0; i < 4; i++) {
        double w = std::abs(wheel_joints_[i].getVelocity());
        double tau = std::abs(wheel_joints_[i].getCommand()); 
        total_predicted_power += w * tau;
    }
    total_predicted_power += constant_loss;

    double input_power = 50.0; 
    double energy_change = (input_power - total_predicted_power) * period_dt;
    
    buffer_energy_ += energy_change;

    if (buffer_energy_ > 60.0) buffer_energy_ = 60.0;
    if (buffer_energy_ < 0.0) buffer_energy_ = 0.0;

    if (buffer_energy_ < 59.0) {
        ROS_INFO_THROTTLE(1.0, "Buffer: %.2f J | Pred Power: %.2f W", buffer_energy_, total_predicted_power);
    }

    double current_power_limit;
    if (buffer_energy_ > 20.0) current_power_limit = 300.0; 
    else current_power_limit = 50.0;  

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
 * @brief 逆运动学解算 (IK)
 * [优化]: 增加了小角度/小速度的死区过滤，防止舵机抖动
 */
void SentryChassisController::calculateWheelStates(double vx, double vy, double vw) {
    snapInput(vx, vy, vw); 

    if (vx == 0.0 && vy == 0.0 && vw == 0.0) {
        for(int i=0; i<4; i++) target_velocities_[i] = 0.0;
        // 注意：这里不重置角度，保持最后姿态，防止回正时车身抖动
        return;
    }

    double raw_angles[4];
    double raw_speeds[4];

    // 分情况计算 
    if (std::abs(vw) < 1e-3) { // 纯平移
        double v_mag = std::sqrt(vx*vx + vy*vy);
        double theta = std::atan2(vy, vx);
        for (int i=0; i<4; i++) {
            raw_speeds[i] = v_mag;
            raw_angles[i] = theta;
        }
    }
    else if (std::abs(vx) < 1e-3 && std::abs(vy) < 1e-3) { // 纯旋转
        double a = wheel_track_ / 2.0; 
        double b = wheel_base_ / 2.0;
        raw_angles[0] = std::atan2(b, -a); 
        raw_angles[1] = std::atan2(b, a);  
        raw_angles[2] = std::atan2(-b, -a);
        raw_angles[3] = std::atan2(-b, a); 
        
        double v_mag = std::abs(vw) * radius_;
        double speed_sign = (vw >= 0) ? 1.0 : -1.0;
        for(int i=0; i<4; i++) raw_speeds[i] = v_mag * speed_sign;
    }
    else { // 混合运动
        double a = wheel_track_ / 2.0; 
        double b = wheel_base_ / 2.0;
        double A = vx - vw * a; 
        double B = vx + vw * a; 
        double C = vy - vw * b; 
        double D = vy + vw * b;
        raw_angles[0] = atan2(D, A); raw_angles[1] = atan2(D, B); 
        raw_angles[2] = atan2(C, A); raw_angles[3] = atan2(C, B); 
        raw_speeds[0] = std::sqrt(A*A + D*D); raw_speeds[1] = std::sqrt(B*B + D*D);
        raw_speeds[2] = std::sqrt(A*A + C*C); raw_speeds[3] = std::sqrt(B*B + C*C);
    }

    // 优化：就近转角逻辑
    for (int i = 0; i < 4; i++) {
        double last_phys_angle = last_steer_angles_[i] - steer_offset_rad_[i];
        double target_phys_angle = raw_angles[i];

        if (i == 2 || i == 3) target_phys_angle += M_PI; 

        double diff = target_phys_angle - last_phys_angle;
        // 角度归一化到 [-PI, PI]
        while (diff > M_PI) diff -= 2 * M_PI;
        while (diff < -M_PI) diff += 2 * M_PI;
        
        double final_speed_sign = 1.0;
        if (std::abs(diff) > M_PI / 2.0) {
            if (diff > 0) diff -= M_PI; else diff += M_PI;
            final_speed_sign = -1.0;
        }

        // ============================================================
        // [新增] 舵机防抖死区 (Anti-Jitter)
        // 解决 TF 微小噪声导致的舵机“抽搐”
        // ============================================================
        
        // 1. 如果目标速度极小 (没让它走)，不仅锁速度，也锁舵角，防止原地乱转
        if (std::abs(raw_speeds[i]) < 0.05) {
             diff = 0.0; // 强制认为不需要转动
             target_velocities_[i] = 0.0;
             target_angles_[i] = last_steer_angles_[i]; // 保持原角度
        }
        // 2. 如果需要转动的角度极小 (比如 TF 噪声导致的 2度 抖动)，忽略它
        else if (std::abs(diff) < 0.05) { // 约 2.8度 的死区
             diff = 0.0;
             // 保持原来的目标，不要微调
             target_angles_[i] = last_steer_angles_[i];
        } 
        else {
             // 只有变化足够大，才更新目标角度
             target_angles_[i] = last_phys_angle + diff + steer_offset_rad_[i];
        }
        
        last_steer_angles_[i] = target_angles_[i];
        
        // 速度单位转换: m/s -> rad/s
        double wheel_radius = WHEEL_PERIMETER_ / (2 * M_PI);
        double final_speed = raw_speeds[i] / wheel_radius;
        final_speed *= final_speed_sign;    
        final_speed *= -1.0;                
        final_speed *= wheel_direction_[i]; 
        
        // 大角度偏差保护：如果轮子还没转到位，先别给速度
        if (std::abs(diff) > 0.3) final_speed = 0.0; 

        target_velocities_[i] = final_speed;
    }
}

// 模式：底盘云台分离 (普通全向移动)
void SentryChassisController::ChassisSeparateGimbalMode() {
  double vx = ramped_vel_.linear.x; 
  double vy = ramped_vel_.linear.y;
  double vw = ramped_vel_.angular.z;
  transformVelocity(vx, vy); 
  calculateWheelStates(vx, vy, vw); 
}

// 模式：小陀螺 (边跑边转)
void SentryChassisController::ChassisSpinMode() {
  double vx = ramped_vel_.linear.x;
  double vy = ramped_vel_.linear.y;
  
  // 对于小陀螺模式，也需要转换平移速度
  transformVelocity(vx, vy);

  double vw = spin_vw_; // 使用固定自旋速度
  calculateWheelStates(vx, vy, vw);
}

// === 主控制循环 Update (1kHz or 500Hz) ===
void SentryChassisController::update(const ros::Time& time, const ros::Duration& period) {
  if (pivot_joints_.empty() || wheel_joints_.empty()) return;

  // 1. 计算平滑速度
  rampVelocity(period);

  // 2. 模式判断与切换
  bool cmd_is_zero = (fabs(cmd_vel_.linear.x) < 1e-3 && fabs(cmd_vel_.linear.y) < 1e-3 && fabs(cmd_vel_.angular.z) < 1e-3);
  bool ramp_is_zero = (fabs(ramped_vel_.linear.x) < 1e-3 && fabs(ramped_vel_.linear.y) < 1e-3 && fabs(ramped_vel_.angular.z) < 1e-3);

  if (cmd_is_zero && ramp_is_zero && ctrl_mode_ != CHASSIS_SPIN) { 
      // 只有完全停稳才进入 STOP
      if (ctrl_mode_ != CHASSIS_STOP) {
          for(int i=0; i<4; i++) wheel_pid_[i].reset(); 
      }
      ctrl_mode_ = CHASSIS_STOP;
      ChassisStopMode(); 
      for(int i=0; i<4; i++) last_target_velocities_[i] = 0.0;
  }
  else {
      if (ctrl_mode_ == CHASSIS_STOP) ctrl_mode_ = CHASSIS_SEPARATE_GIMBAL; 
      
      if (ctrl_mode_ == CHASSIS_SPIN) ChassisSpinMode();
      else ChassisSeparateGimbalMode();
  }

  calculateRoundCnt();
  calculateTargetRoundCnt(); 

  // ============================================================
  // 全局舵向检查 (Global Steering Check)
  // ============================================================
  bool all_wheels_aligned = true;
  for (int i = 0; i < 4; i++) {
      double steer_error = target_angles_[i] - pivot_joints_[i].getPosition();
      if (std::abs(steer_error) > 0.1) {
          all_wheels_aligned = false;
          break; 
      }
  }

  if (!all_wheels_aligned) {
      ramped_vel_ = geometry_msgs::Twist(); // 速度清零，等待对齐
      // 重新计算一次目标（修正速度为0）
      if (ctrl_mode_ == CHASSIS_SPIN) ChassisSpinMode();
      else ChassisSeparateGimbalMode();
  }

  // 3. PID 控制循环
  for (int i = 0; i < 4; i++) {
    // A. 舵向控制
    double steer_error = target_angles_[i] - pivot_joints_[i].getPosition();
    double steer_effort = pivot_pid_[i].computeCommand(steer_error, period);
    pivot_joints_[i].setCommand(steer_effort);

    // B. 轮速控制
    double wheel_vel_fdb = wheel_joints_[i].getVelocity();
    
    wheel_vel_fdb *= -1.0; 
    wheel_vel_fdb *= wheel_direction_[i];
    if (i == 2 || i == 3) wheel_vel_fdb *= -1.0;

    double current_target = target_velocities_[i];

    if (!all_wheels_aligned) {
        current_target = 0.0;
        wheel_pid_[i].reset();//PID reset
    }

    last_target_velocities_[i] = current_target;

    double wheel_error = current_target - wheel_vel_fdb;
    double final_effort = 0.0;

    if (ctrl_mode_ == CHASSIS_STOP) {
        double velocity_threshold = 0.2; 
        if (std::abs(wheel_vel_fdb) > velocity_threshold) {
            double stop_kp = 30.0; 
            double brake_effort = -wheel_vel_fdb * stop_kp;
            double max_force = 3.0; 
            brake_effort = std::max(-max_force, std::min(max_force, brake_effort));
            final_effort = brake_effort;
        } 
        else {
            final_effort = 0.0; 
        }
    } 
    else {
        double wheel_effort = wheel_pid_[i].computeCommand(wheel_error, period);
        double safe_limit = 3.0; 
        wheel_effort = std::max(-safe_limit, std::min(safe_limit, wheel_effort));
        final_effort = wheel_effort; 
    }

    if (i == 2 || i == 3) final_effort *= -1.0;
    wheel_joints_[i].setCommand(final_effort);

    // C. 发布调试数据
    std_msgs::Float64 msg;
    msg.data = current_target; 
    debug_pub_target_[i].publish(msg);
    
    double debug_actual = wheel_vel_fdb;
    if (i == 2 || i == 3) debug_actual *= -1.0; 
    msg.data = debug_actual;
    debug_pub_actual_[i].publish(msg);
    
    std_msgs::Float64 effort_msg;
    effort_msg.data = final_effort;
    debug_pub_effort_[i].publish(effort_msg);
  }

  // === 4. 功率限制 ===
  limitPower(period.toSec());

  // === 5. 里程计解算 ===
  calculateOdom(time);
}

/**
 * @brief 正运动学解算 (里程计 FK)
 */
void SentryChassisController::calculateOdom(const ros::Time& now) {
  if (wheel_joints_.empty()) return;
  if (now <= last_odom_time_) return;
  
  double dt = (now - last_odom_time_).toSec();
  last_odom_time_ = now;

  double wheel_radius = WHEEL_PERIMETER_ / (2 * M_PI);
  double vx_calc = 0.0;
  double vy_calc = 0.0;
  double wz_calc = 0.0;

  double x_offset = wheel_track_ / 2.0;
  double y_offset = wheel_base_ / 2.0;
  double wheel_pos_x[4] = { x_offset,  x_offset, -x_offset, -x_offset};
  double wheel_pos_y[4] = { y_offset, -y_offset,  y_offset, -y_offset};

  for (int i = 0; i < 4; i++) {
      double raw_vel = wheel_joints_[i].getVelocity();
      raw_vel *= -1.0;
      raw_vel *= wheel_direction_[i];
      if (i == 2 || i == 3) raw_vel *= -1.0;
      
      double wheel_v = raw_vel * wheel_radius; 
      double wheel_a = pivot_joints_[i].getPosition(); 
      if (i == 2 || i == 3) wheel_a += M_PI; 

      double v_xi = wheel_v * std::cos(wheel_a);
      double v_yi = wheel_v * std::sin(wheel_a);

      vx_calc += v_xi;
      vy_calc += v_yi;

      double r2 = wheel_pos_x[i]*wheel_pos_x[i] + wheel_pos_y[i]*wheel_pos_y[i];
      wz_calc += (wheel_pos_x[i] * v_yi - wheel_pos_y[i] * v_xi) / r2;
  }
  
  double vx_base = vx_calc / 4.0;
  double vy_base = vy_calc / 4.0;
  double wz_base = wz_calc / 4.0; 

  vx_base *= odom_linear_scale_;
  vy_base *= odom_linear_scale_;
  wz_base *= odom_angular_scale_;

  yaw_ += wz_base * dt; 
  
  double c = cos(yaw_), s = sin(yaw_);
  x_pos_ += (vx_base * c - vy_base * s) * dt;
  y_pos_ += (vx_base * s + vy_base * c) * dt;
  
  tf2::Quaternion q;
  q.setRPY(0, 0, yaw_); 
  
  odom_msg_.header.stamp = now;
  odom_msg_.pose.pose.position.x = x_pos_;
  odom_msg_.pose.pose.position.y = y_pos_;
  odom_msg_.pose.pose.position.z = 0.0;
  odom_msg_.pose.pose.orientation = tf2::toMsg(q); 
  
  odom_msg_.twist.twist.linear.x = vx_base;
  odom_msg_.twist.twist.linear.y = vy_base;
  odom_msg_.twist.twist.angular.z = wz_base; 
  
  odom_pub_.publish(odom_msg_);
  
  geometry_msgs::TransformStamped transformStamped;
  transformStamped.header.stamp = now;
  transformStamped.header.frame_id = "odom";
  transformStamped.child_frame_id = "base_link";
  transformStamped.transform.translation.x = x_pos_;
  transformStamped.transform.translation.y = y_pos_;
  transformStamped.transform.translation.z = 0.0;
  transformStamped.transform.rotation = odom_msg_.pose.pose.orientation;

  tf_broadcaster_.sendTransform(transformStamped);
}

void SentryChassisController::ChassisStopMode() {
    double target_phys[4];
    target_phys[0] = -M_PI * 3.0 / 4.0; 
    target_phys[1] =  M_PI * 3.0 / 4.0; 
    target_phys[2] = -M_PI / 4.0;       
    target_phys[3] =  M_PI / 4.0;       

    for(int i=0; i<4; i++) {
        double current_target = target_phys[i];
        if (i == 2 || i == 3) current_target += M_PI; 

        target_angles_[i] = current_target + steer_offset_rad_[i];
        last_steer_angles_[i] = target_angles_[i]; 
        target_velocities_[i] = 0.0; 
    }
}

void SentryChassisController::calculateRoundCnt() {
  static double last_angle[4] = {0.0};
  for (int i = 0; i < 4; i++) {
    double now_angle_deg = pivot_joints_[i].getPosition() * 180.0 / M_PI; 
    if (now_angle_deg - last_angle[i] > 180.0) motor_circle_[i]--;
    else if (now_angle_deg - last_angle[i] < -180.0) motor_circle_[i]++;
    last_angle[i] = now_angle_deg;
  }
}

void SentryChassisController::calculateTargetRoundCnt() {
  static double last_target[4] = {0.0};
  for (int i = 0; i < 4; i++) {
    double now_target_deg = target_angles_[i] * 180.0 / M_PI;
    if (now_target_deg - last_target[i] > 180.0) motor_target_circle_[i]--;
    else if (now_target_deg - last_target[i] < -180.0) motor_target_circle_[i]++;
    last_target[i] = now_target_deg;
  }
}

} 
PLUGINLIB_EXPORT_CLASS(sentry_chassis_controller::SentryChassisController, controller_interface::ControllerBase)