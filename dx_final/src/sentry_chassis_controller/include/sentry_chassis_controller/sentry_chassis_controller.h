#ifndef SENTRY_CHASSIS_CONTROLLER_SENTRY_CHASSIS_CONTROLLER_H
#define SENTRY_CHASSIS_CONTROLLER_SENTRY_CHASSIS_CONTROLLER_H

#include <controller_interface/controller.h>
#include <hardware_interface/joint_command_interface.h>
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <nav_msgs/Odometry.h>
#include <tf2_ros/transform_broadcaster.h>
#include <tf2_ros/transform_listener.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <geometry_msgs/TransformStamped.h>
#include <tf2/LinearMath/Quaternion.h>
#include <control_toolbox/pid.h> 
#include <std_msgs/String.h>
#include <std_msgs/Float64.h> 
#include <cmath>
#include <vector>
#include <dynamic_reconfigure/server.h>
#include <sentry_chassis_controller/ChassisOpsConfig.h>

namespace sentry_chassis_controller {

// 底盘控制模式枚举
enum ChassisCtrlMode {
  CHASSIS_STOP = 0,            // 0: 停车
  CHASSIS_SEPARATE_GIMBAL,     // 1: 全向移动
  CHASSIS_SPIN,                // 2: 小陀螺模式 
  CHASSIS_TEST,               
  CHASSIS_RELAX              
};

// 继承自 controller_interface，使用 Effort接口控制电机
class SentryChassisController : public controller_interface::Controller<hardware_interface::EffortJointInterface> {
 public:
  SentryChassisController() ;
  ~SentryChassisController() override = default;

  // 标准 Controller 生命周期函数
  bool init(hardware_interface::EffortJointInterface* hw, ros::NodeHandle& nh) override; // 初始化
  void starting(const ros::Time& time) override; // 控制器启动时执行一次
  void update(const ros::Time& time, const ros::Duration& period) override; // 主循环 (1kHz)
  void stopping(const ros::Time& time) override; // 控制器停止时执行

 private:
  // ROS 句柄
  ros::NodeHandle nh_;
  
  // 硬件接口
  // pivot: 舵向电机
  std::vector<hardware_interface::JointHandle> pivot_joints_;
  // wheel: 驱动电机
  std::vector<hardware_interface::JointHandle> wheel_joints_;

  //PID 控制器 
  control_toolbox::Pid pivot_pid_[4]; // 4个舵向PID
  control_toolbox::Pid wheel_pid_[4]; // 4个轮速PID
  control_toolbox::Pid yaw_pid_; // 专门修航向
  double yaw_correction_ = 0.0;  // 存储计算出来的修正值
  // 动态调参服务指针
  std::shared_ptr<dynamic_reconfigure::Server<sentry_chassis_controller::ChassisOpsConfig>> dr_server_;
  // 动态调参回调函数
  void reconfigCallback(sentry_chassis_controller::ChassisOpsConfig& config, uint32_t level);

  const double WHEEL_PERIMETER_ = 0.3456; // 轮子周长

  //里程计校准系数
  double odom_linear_scale_ = 1.0;   // 线速度修正
  double odom_angular_scale_ = 1.0;  // 角速度修正

  double wheel_max_effort_ = 1.0; 
  
  double acc_linear_limit_ = 1.0;  // 线加速度限制 (m/s^2)
  double acc_angular_limit_ = 1.0; // 角加速度限制 (rad/s^2)
  double sync_kp_ = 0.0;          // 轮子交叉耦合增益 
  double kv_spin_ = 0.0;         // 小陀螺侧向摩擦力矩补偿 

  double buffer_energy_ = 60.0; // 虚拟电容能量
  double power_constant_loss_ = 10.0; // 基础电路功耗 (W)
  double power_max_input_ = 50.0;     // 最大输入功率 (W)

  // 停车模式参数
  double stop_mode_kp_ = 30.0;        // 停车刹车力度
  double stop_mode_max_force_ = 3.0;  // 停车最大刹车力矩

  double wheel_track_ = 0.362; // 轮距 (宽)
  double wheel_base_ = 0.362;  // 轴距 (长)
  double radius_ = 0.0;        // 底盘旋转半径 (几何中心到轮子的距离)
  
  // 舵机零偏
  double steer_offset_rad_[4] = {0.0};
  
  // 轮子转动方向
  std::vector<double> wheel_direction_;

  double spin_vw_ = 10.0;         // 小陀螺预设转速
  bool use_world_frame_ = false; // 是否开启世界坐标系控制
  
  ChassisCtrlMode ctrl_mode_ = CHASSIS_STOP; // 当前控制模式
  geometry_msgs::Twist cmd_vel_;      // 原始指令 
  geometry_msgs::Twist ramped_vel_;   // 加速度函数处理后的指令

  //期望与中间变量
  double target_angles_[4] = {0.0};     // 期望舵角
  double target_velocities_[4] = {0.0}; // 期望轮速
  double last_steer_angles_[4] = {0.0}; // 上一帧舵角 (用于就近转角计算)
  double last_target_velocities_[4] = {0.0}; // 上一帧轮速
  
  // 圈数记录 (处理舵机无限旋转 0-2PI 问题)
  double motor_circle_[4] = {0.0};
  double motor_target_circle_[4] = {0.0};
  
  // ROS通信
  ros::Subscriber cmd_vel_sub_; // 订阅速度指令
  ros::Subscriber key_sub_;     // 订阅键盘按键
  ros::Publisher odom_pub_;     // 发布里程计
  
  // 调试话题
  ros::Publisher debug_pub_target_[4]; 
  ros::Publisher debug_pub_actual_[4]; 
  ros::Publisher debug_pub_effort_[4];

  // TF坐标变换
  tf2_ros::TransformBroadcaster tf_broadcaster_; // 发布 TF (Odom -> Base_link)
  tf2_ros::Buffer tf_buffer_;                    // 缓存 TF 数据
  tf2_ros::TransformListener tf_listener_;       // 监听 TF (用于世界坐标系转换)

  //里程计数据
  nav_msgs::Odometry odom_msg_;
  ros::Time last_odom_time_; // 上次计算里程计的时间
  double x_pos_ = 0.0;       // 全局 X 坐标
  double y_pos_ = 0.0;       // 全局 Y 坐标
  double yaw_ = 0.0;         // 全局 偏航角

  //内部功能函数
  void cmdVelCallback(const geometry_msgs::Twist::ConstPtr& msg);
  void keyCallback(const std_msgs::String::ConstPtr& msg);
  
  void snapInput(double& vx, double& vy, double& vw); 
  
  // 逆运动学解算
  void calculateWheelStates(double vx, double vy, double vw);
  
  void calculateRoundCnt();       // 计算当前圈数
  void calculateTargetRoundCnt(); // 计算目标圈数
  
  // 模式执行函数
  void ChassisSpinMode();           // 小陀螺模式
  void ChassisStopMode();           // 停车模式
  void ChassisSeparateGimbalMode(); // 普通模式
  
  // 核心算法函数
  void calculateOdom(const ros::Time& now); // 里程计
  void calculateKinematicsParams();        
  void transformVelocity(double& vx, double& vy); // 世界坐标系转换
  void rampVelocity(const ros::Duration& period); // 加减速
  
  // 功率限制函数
  void limitPower(double period_dt);
};

} 
#endif