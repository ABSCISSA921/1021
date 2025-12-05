#include "sentry_chassis_controller/sentry_chassis_controller.h"
#include <algorithm>
#include <pluginlib/class_list_macros.h>
#include <tf/transform_datatypes.h>

namespace sentry_chassis_controller {

// 1. 运动学参数计算
void SentryChassisController::calculateKinematicsParams() {
  // 计算旋转半径 (底盘中心到轮子的距离)
  radius_ = std::sqrt(std::pow(wheel_track_ / 2.0, 2) + std::pow(wheel_base_ / 2.0, 2));
}

// 2. 动态参数回调
void SentryChassisController::reconfigCallback(sentry_chassis_controller::ChassisOpsConfig& config, uint32_t level) {
  // 抗积分饱和配置
  double i_limit = 20.0; 
  

 // 1. 左前 (LF)
  pivot_pid_[0].setGains(config.lf_steer_p, config.lf_steer_i, config.lf_steer_d, 50.0, -50.0, 500.0);
  wheel_pid_[0].setGains(config.lf_wheel_p, config.lf_wheel_i, config.lf_wheel_d, i_limit, -i_limit, config.lf_wheel_max);

  // 2. 右前 (RF) 
  pivot_pid_[1].setGains(config.rf_steer_p, config.rf_steer_i, config.rf_steer_d, 50.0, -50.0, 500.0);
  wheel_pid_[1].setGains(config.rf_wheel_p, config.rf_wheel_i, config.rf_wheel_d, i_limit, -i_limit, config.rf_wheel_max);

  // 3. 左后 (LB)
  pivot_pid_[2].setGains(config.lb_steer_p, config.lb_steer_i, config.lb_steer_d, 50.0, -50.0, 500.0);
  wheel_pid_[2].setGains(config.lb_wheel_p, config.lb_wheel_i, config.lb_wheel_d, i_limit, -i_limit, config.lb_wheel_max);

  // 4. 右后 (RB)
  pivot_pid_[3].setGains(config.rb_steer_p, config.rb_steer_i, config.rb_steer_d, 50.0, -50.0, 500.0);
  wheel_pid_[3].setGains(config.rb_wheel_p, config.rb_wheel_i, config.rb_wheel_d, i_limit, -i_limit, config.rb_wheel_max);

  wheel_track_ = config.wheel_track;
  wheel_base_ = config.wheel_base;
  
  steer_offset_rad_[0] = config.offset_lf;
  steer_offset_rad_[1] = config.offset_rf;
  steer_offset_rad_[2] = config.offset_lb;
  steer_offset_rad_[3] = config.offset_rb;

  spin_vw_ = config.spin_vw;
  use_world_frame_ = config.use_world_frame;
  
  // [新增] 更新加速度限制参数
  // 注意：需要在 .h 文件中添加 acc_linear_ 和 acc_angular_ 变量，或者直接用 config 使用
  // 这里假设你主要是为了能在 update 中使用，暂时保持原样，如果需要动态生效请确保 rampVelocity 使用的是最新参数
  
  calculateKinematicsParams();
}

// 3. 初始化
bool SentryChassisController::init(hardware_interface::EffortJointInterface* hw, ros::NodeHandle& nh) {
  this->nh_ = nh;
  std::vector<std::string> joint_names;
  if (!nh_.getParam("joints", joint_names)) return false;
  
  for (const auto& name : joint_names) {
    if (name.find("pivot") != std::string::npos) pivot_joints_.push_back(hw->getHandle(name));
    else if (name.find("wheel") != std::string::npos) wheel_joints_.push_back(hw->getHandle(name));
  }
  
  if (pivot_joints_.size() != 4 || wheel_joints_.size() != 4) return false;

  dr_server_.reset(new dynamic_reconfigure::Server<sentry_chassis_controller::ChassisOpsConfig>(nh_));
  dynamic_reconfigure::Server<sentry_chassis_controller::ChassisOpsConfig>::CallbackType cb;
  cb = boost::bind(&SentryChassisController::reconfigCallback, this, _1, _2);
  dr_server_->setCallback(cb);

  cmd_vel_sub_ = nh.subscribe("/cmd_vel", 10, &SentryChassisController::cmdVelCallback, this);
  key_sub_ = nh.subscribe("/keyboard/key", 10, &SentryChassisController::keyCallback, this);
  odom_pub_ = nh.advertise<nav_msgs::Odometry>("/odom", 50);

  std::string wheel_names[4] = {"lf", "rf", "lb", "rb"};
  for (int i = 0; i < 4; i++) {
      debug_pub_target_[i] = nh.advertise<std_msgs::Float64>("/debug/" + wheel_names[i] + "_wheel/target", 100);
      debug_pub_actual_[i] = nh.advertise<std_msgs::Float64>("/debug/" + wheel_names[i] + "_wheel/actual", 100);
      debug_pub_effort_[i] = nh.advertise<std_msgs::Float64>("/debug/" + wheel_names[i] + "_wheel/effort", 100);

      last_target_velocities_[i] = 0.0;
  }

  odom_msg_.header.frame_id = "odom";
  odom_msg_.child_frame_id = "base_link";
  
  wheel_direction_.resize(4, -1.0); //12.4修改,正确方向的PID反馈

  return true;
}

void SentryChassisController::starting(const ros::Time& time) {
    last_odom_time_ = time;
    for (int i = 0; i < 4; ++i) {
        pivot_pid_[i].reset();
        wheel_pid_[i].reset();
        
        double current_pos = pivot_joints_[i].getPosition();
        target_angles_[i] = current_pos;
        last_steer_angles_[i] = current_pos;
        
        pivot_joints_[i].setCommand(0.0);
        wheel_joints_[i].setCommand(0.0);
        last_target_velocities_[i] = 0.0;
    }
    ramped_vel_ = geometry_msgs::Twist();
}

void SentryChassisController::stopping(const ros::Time& time) {
    for (int i = 0; i < 4; ++i) {
        pivot_joints_[i].setCommand(0.0);
        wheel_joints_[i].setCommand(0.0);
    }
}

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

void SentryChassisController::cmdVelCallback(const geometry_msgs::Twist::ConstPtr& msg) {
  cmd_vel_ = *msg;
}

// 普通模式下的坐标变换 (受 use_world_frame_ 开关控制)
void SentryChassisController::transformVelocity(double& vx, double& vy) {
  if (use_world_frame_) {
    try {
      tf::StampedTransform transform;
      // 查找 base_link 到 odom 的变换
      // 这里的逻辑是：把 odom 坐标系下的指令 v_world 转换到 base_link 坐标系下 v_body
      tf_listener_.lookupTransform("base_link", "odom", ros::Time(0), transform);
      
      tf::Vector3 v_world(vx, vy, 0);
      tf::Vector3 v_body = transform.getBasis() * v_world;
      vx = v_body.x();
      vy = v_body.y();
    } catch (tf::TransformException& ex) {
      ROS_WARN_THROTTLE(2.0, "TF Lookup Failed: %s", ex.what());
    }
  }
}

void SentryChassisController::snapInput(double& vx, double& vy, double& vw) {
    if (std::abs(vx) < 0.001) vx = 0.0;
    if (std::abs(vy) < 0.001) vy = 0.0;
    if (std::abs(vw) < 0.001) vw = 0.0;
}

// 运动学解算核心
// 运动学解算核心
// 运动学解算核心
void SentryChassisController::calculateWheelStates(double vx, double vy, double vw) {
    snapInput(vx, vy, vw);

    if (vx == 0.0 && vy == 0.0 && vw == 0.0) {
        for(int i=0; i<4; i++) target_velocities_[i] = 0.0;
        return;
    }

    double raw_angles[4];
    double raw_speeds[4];

    // === 优化分支 1：纯平移模式 ===
    if (std::abs(vw) < 1e-3) {
        double v_mag = std::sqrt(vx*vx + vy*vy);
        double theta = std::atan2(vy, vx);
        for (int i=0; i<4; i++) {
            raw_speeds[i] = v_mag;
            raw_angles[i] = theta;
        }
    }
    // === 优化分支 2：纯旋转模式 (修正为标准的 O 型) ===
    else if (std::abs(vx) < 1e-3 && std::abs(vy) < 1e-3) {
        double a = wheel_track_ / 2.0; 
        double b = wheel_base_ / 2.0;

        // [修正] 计算标准的 O 型切线角度 
        // 几何上：每个轮子都必须垂直于它到中心的连线
        // LF: atan2(b, -a) -> 135度 (左上)
        // RF: atan2(b, a)  -> 45度  (右上)
        // LB: atan2(-b, -a)-> -135度(左下)
        // RB: atan2(-b, a) -> -45度 (右下)
        raw_angles[0] = std::atan2(b, -a); 
        raw_angles[1] = std::atan2(b, a);  
        raw_angles[2] = std::atan2(-b, -a);
        raw_angles[3] = std::atan2(-b, a); 
        
        // 速度大小
        double v_mag = std::abs(vw) * radius_;
        
        // 基础方向：全部正转 (优化逻辑会在后面自动把左轮变成反转)
        double speed_sign = (vw >= 0) ? 1.0 : -1.0;
        for(int i=0; i<4; i++) raw_speeds[i] = v_mag * speed_sign;
    }
    // === 分支 3：混合模式 ===
    else {
        // ... (保持原样) ...
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

    // === 后处理：物理就近原则 + 舵向保护 ===
    for (int i = 0; i < 4; i++) {
        double last_phys_angle = last_steer_angles_[i] - steer_offset_rad_[i];
        double target_phys_angle = raw_angles[i];

        if (i == 2 || i == 3) target_phys_angle += M_PI; 

        double diff = target_phys_angle - last_phys_angle;
        while (diff > M_PI) diff -= 2 * M_PI;
        while (diff < -M_PI) diff += 2 * M_PI;
        
        double final_speed_sign = 1.0;

        // [关键恢复] 必须启用优化！
        // 比如 LF 目标是 135度，优化逻辑发现 >90度，
        // 就会自动把它变成 -45度，并将 final_speed_sign 设为 -1。
        // 这就是你想要的 "左轮反转" 的来源。
        if (std::abs(diff) > M_PI / 2.0) {
            if (diff > 0) diff -= M_PI; else diff += M_PI;
            final_speed_sign = -1.0;
        }
        
        target_angles_[i] = last_phys_angle + diff + steer_offset_rad_[i];
        last_steer_angles_[i] = target_angles_[i];
        
        double wheel_radius = WHEEL_PERIMETER_ / (2 * M_PI);
        double final_speed = raw_speeds[i] / wheel_radius;
        
        final_speed *= final_speed_sign;    
        final_speed *= -1.0;                
        final_speed *= wheel_direction_[i]; 
        
        // 舵向保护
        if (std::abs(diff) > 0.3) final_speed = 0.0; 

        target_velocities_[i] = final_speed;
    }
}

// 普通移动模式
void SentryChassisController::ChassisSeparateGimbalMode() {
  double vx = ramped_vel_.linear.x;
  double vy = ramped_vel_.linear.y;
  double vw = ramped_vel_.angular.z;
  transformVelocity(vx, vy); // 只有按下H键开启 use_world_frame_ 时才进行TF转换
  calculateWheelStates(vx, vy, vw); 
}

// 小陀螺模式
// 逻辑：读取世界坐标指令 -> 强制TF转换 -> 叠加自转 -> 混合解算
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
      tf::Vector3 v_body = transform.getBasis() * v_world; // 旋转矢量
      
      vx = v_body.x();
      vy = v_body.y();
  } catch (tf::TransformException& ex) {
      // 保护措施：TF 失败时禁止平移，只允许自转，防止失控
      ROS_WARN_THROTTLE(2.0, "Spin Mode TF Failure: %s", ex.what());
      vx = 0.0;
      vy = 0.0;
  }

  // 3. 叠加小陀螺自转速度，这里 spin_vw_ 是配置的固定转速
  double vw = spin_vw_; 

  // 4. 进行混合解算 (进入 calculateWheelStates 的分支3)
  calculateWheelStates(vx, vy, vw);
}

void SentryChassisController::rampVelocity(const ros::Duration& period) {

    ramped_vel_ = cmd_vel_;
}

void SentryChassisController::update(const ros::Time& time, const ros::Duration& period) {
  if (pivot_joints_.empty() || wheel_joints_.empty()) return;

  rampVelocity(period);

  // --- 1. 停车与模式判断逻辑 ---
  if (fabs(cmd_vel_.linear.x) < 1e-3 && 
      fabs(cmd_vel_.linear.y) < 1e-3 && 
      fabs(cmd_vel_.angular.z) < 1e-3 &&
      ctrl_mode_ != CHASSIS_SPIN) { 
      
      // 停车指令下无条件重置 PID
      for(int i=0; i<4; i++) wheel_pid_[i].reset();
      
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

  // --- 2. PID 控制核心循环 ---
  for (int i = 0; i < 4; i++) {
    // A. 舵向控制
    double steer_error = target_angles_[i] - pivot_joints_[i].getPosition();
    double steer_effort = pivot_pid_[i].computeCommand(steer_error, period);
    pivot_joints_[i].setCommand(steer_effort);

    // B. 轮速控制
    double wheel_vel_fdb = wheel_joints_[i].getVelocity();
    wheel_vel_fdb *= -1.0; 
    wheel_vel_fdb *= wheel_direction_[i];

    // [修正点 1] 针对后轮，反转反馈给 PID 的速度值
    // 只有这样，PID 才能看到“正反馈”，从而消除过冲
    if (i == 2 || i == 3) {
        wheel_vel_fdb *= -1.0;
    }

    double current_target = target_velocities_[i];
    last_target_velocities_[i] = current_target;

    // 计算误差 (现在 Target 和 Feedback 逻辑一致了)
    double wheel_error = current_target - wheel_vel_fdb;
    double final_effort = 0.0;

    if (ctrl_mode_ == CHASSIS_STOP) {
        double brake_effort = -wheel_vel_fdb * 5.0; 
        brake_effort = std::max(-10.0, std::min(10.0, brake_effort));
        final_effort = brake_effort; 
    } 
    else {
        // PID 计算
        double wheel_effort = wheel_pid_[i].computeCommand(wheel_error, period);

        // 安全限幅
        double safe_limit = 10.0; 
        wheel_effort = std::max(-safe_limit, std::min(safe_limit, wheel_effort));
        
        final_effort = wheel_effort; 
    }

    // [修正点 2] 针对后轮，反转最终输出给电机的力矩
    // 这实现了物理上的反转
    if (i == 2 || i == 3) {
        final_effort *= -1.0;
    }

    wheel_joints_[i].setCommand(final_effort);

    // ------------------------------------------
    // C. 发布调试数据
    // ------------------------------------------
    std_msgs::Float64 msg;
    msg.data = current_target;
    debug_pub_target_[i].publish(msg);
    
    // 发布原始反馈还是处理后的反馈？为了看图直观，建议发布物理真实值(反向的)
    // 这里我们把之前修正过的 wheel_vel_fdb 再反回去，还原成物理状态给图表看
    double debug_actual = wheel_vel_fdb;
    if (i == 2 || i == 3) debug_actual *= -1.0; 
    
    msg.data = debug_actual;
    debug_pub_actual_[i].publish(msg);

    std_msgs::Float64 effort_msg;
    effort_msg.data = final_effort;
    debug_pub_effort_[i].publish(effort_msg);
  }

  calculateOdom(time);
}

void SentryChassisController::calculateOdom(const ros::Time& now) {
  if (wheel_joints_.empty()) return;
  if (now <= last_odom_time_) return;
  double dt = (now - last_odom_time_).toSec();
  last_odom_time_ = now;

  double wheel_radius = WHEEL_PERIMETER_ / (2 * M_PI);
  double vx_base = 0.0;
  double vy_base = 0.0;

  // 正运动学解算 (Forward Kinematics)
  for (int i = 0; i < 4; i++) {
      double raw_vel = wheel_joints_[i].getVelocity();
      raw_vel *= -1.0;
      raw_vel *= wheel_direction_[i];
      
      double wheel_v = raw_vel * wheel_radius; 
      double wheel_a = pivot_joints_[i].getPosition();
      if (i == 2 || i == 3) wheel_a += M_PI; 

      vx_base += wheel_v * std::cos(wheel_a);
      vy_base += wheel_v * std::sin(wheel_a);
  }
  vx_base /= 4.0;
  vy_base /= 4.0;


  // [关键修正] 强制反转里程计的输出方向，解决 "按d(向右)却显示正速度(向左)" 的问题，方案无效

  //vx_base *= -1.0;
  //vy_base *= -1.0;

  double wz = ramped_vel_.angular.z; // 角速度直接取指令值或IMU值
  yaw_ += wz * dt;
  
  double c = cos(yaw_), s = sin(yaw_);
  // 累加计算世界坐标位置
  x_pos_ += (vx_base * c - vy_base * s) * dt;
  y_pos_ += (vx_base * s + vy_base * c) * dt;
  
  // 发布 Odom 消息
  odom_msg_.header.stamp = now;
  odom_msg_.pose.pose.position.x = x_pos_;
  odom_msg_.pose.pose.position.y = y_pos_;
  odom_msg_.pose.pose.orientation = tf::createQuaternionMsgFromYaw(yaw_);
  odom_msg_.twist.twist.linear.x = vx_base;
  odom_msg_.twist.twist.linear.y = vy_base;
  odom_msg_.twist.twist.angular.z = wz;
  odom_pub_.publish(odom_msg_);
  
  // 发布 TF
  tf::Transform transform;
  transform.setOrigin(tf::Vector3(x_pos_, y_pos_, 0.0));
  transform.setRotation(tf::createQuaternionFromYaw(yaw_));
  tf_broadcaster_.sendTransform(tf::StampedTransform(transform, now, "odom", "base_link"));
}

void SentryChassisController::ChassisStopMode() {
    // 停车自锁 (X型锁死)
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