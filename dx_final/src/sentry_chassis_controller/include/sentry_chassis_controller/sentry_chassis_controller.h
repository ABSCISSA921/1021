#ifndef SENTRY_CHASSIS_CONTROLLER_SENTRY_CHASSIS_CONTROLLER_H
#define SENTRY_CHASSIS_CONTROLLER_SENTRY_CHASSIS_CONTROLLER_H

// === ROS 标准头文件 ===
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

// === 工具库 ===
#include <control_toolbox/pid.h> // ROS自带的PID工具箱
#include <std_msgs/String.h>
#include <std_msgs/Float64.h> 
#include <cmath>
#include <vector>

// === 动态调参 (Dynamic Reconfigure) ===
#include <dynamic_reconfigure/server.h>
#include <sentry_chassis_controller/ChassisOpsConfig.h>

namespace sentry_chassis_controller {

// 底盘控制模式枚举
enum ChassisCtrlMode {
  CHASSIS_STOP = 0,            // 0: 停止/锁车模式 (内八字 + 强力刹车)
  CHASSIS_SEPARATE_GIMBAL,     // 1: 底盘云台分离 (普通全向移动)
  CHASSIS_SPIN,                // 2: 小陀螺模式 (边跑边转)
  CHASSIS_TEST,                // 3: 测试模式 (保留)
  CHASSIS_RELAX                // 4: 放松模式 (电机无力)
};

// 继承自 controller_interface，使用 Effort (力矩) 接口控制电机
class SentryChassisController : public controller_interface::Controller<hardware_interface::EffortJointInterface> {
 public:
  SentryChassisController() ;
  ~SentryChassisController() override = default;

  // === 标准 Controller 生命周期函数 ===
  bool init(hardware_interface::EffortJointInterface* hw, ros::NodeHandle& nh) override; // 初始化
  void starting(const ros::Time& time) override; // 控制器启动时执行一次
  void update(const ros::Time& time, const ros::Duration& period) override; // 主循环 (1kHz)
  void stopping(const ros::Time& time) override; // 控制器停止时执行

 private:
  // ROS 句柄
  ros::NodeHandle nh_;
  
  // === 硬件接口 Handle ===
  // pivot: 舵向电机 (控制轮子朝向)
  std::vector<hardware_interface::JointHandle> pivot_joints_;
  // wheel: 驱动电机 (控制轮子转速)
  std::vector<hardware_interface::JointHandle> wheel_joints_;

  // === PID 控制器 ===
  control_toolbox::Pid pivot_pid_[4]; // 4个舵向PID
  control_toolbox::Pid wheel_pid_[4]; // 4个轮速PID

  // 动态调参服务指针
  std::shared_ptr<dynamic_reconfigure::Server<sentry_chassis_controller::ChassisOpsConfig>> dr_server_;
  // 动态调参回调函数
  void reconfigCallback(sentry_chassis_controller::ChassisOpsConfig& config, uint32_t level);

  // === 物理参数 ===
  const double WHEEL_PERIMETER_ = 0.3456; // 轮子周长 (用于计算轮速和里程计)

  // === 里程计校准系数 (从参数服务器加载) ===
  double odom_linear_scale_ = 1.0;   // 线速度修正
  double odom_angular_scale_ = 1.0;  // 角速度修正

  double wheel_max_effort_ = 1.5; // 默认值设为 1.5
  
  // === 平滑控制参数 ===
  double acc_linear_limit_ = 1.0;  // 线加速度限制 (m/s^2)
  double acc_angular_limit_ = 1.0; // 角加速度限制 (rad/s^2)

  // === 功率控制相关变量 ===
  double buffer_energy_ = 60.0; // 虚拟电容能量 (焦耳)
  
  // [优化] 功率控制参数 (从参数服务器加载)
  double power_constant_loss_ = 10.0; // 基础电路功耗 (W)
  double power_max_input_ = 50.0;     // 最大输入功率 (W)

  // [优化] 停车模式参数 (从参数服务器加载)
  double stop_mode_kp_ = 30.0;        // 停车刹车力度
  double stop_mode_max_force_ = 3.0;  // 停车最大刹车力矩

  // === 几何尺寸 ===
  double wheel_track_ = 0.362; // 轮距 (宽)
  double wheel_base_ = 0.362;  // 轴距 (长)
  double radius_ = 0.0;        // 底盘旋转半径 (几何中心到轮子的距离)
  
  // 舵机零偏 (安装误差校准)
  double steer_offset_rad_[4] = {0.0};
  
  // 轮子转动方向 (根据电机安装方向可能是 1.0 或 -1.0)
  std::vector<double> wheel_direction_;

  // === 运行状态变量 ===
  double spin_vw_ = 2.0;         // 小陀螺预设转速
  bool use_world_frame_ = false; // 是否开启世界坐标系控制
  
  ChassisCtrlMode ctrl_mode_ = CHASSIS_STOP; // 当前控制模式
  geometry_msgs::Twist cmd_vel_;      // 原始指令 (键盘/导航发来的)
  geometry_msgs::Twist ramped_vel_;   // 平滑后的指令 (经过梯形加减速处理的)

  // === 期望与中间变量 ===
  double target_angles_[4] = {0.0};     // 期望舵角
  double target_velocities_[4] = {0.0}; // 期望轮速
  double last_steer_angles_[4] = {0.0}; // 上一帧舵角 (用于就近转角计算)
  double last_target_velocities_[4] = {0.0}; 
  
  // 圈数记录 (处理舵机无限旋转 0-2PI 问题)
  double motor_circle_[4] = {0.0};
  double motor_target_circle_[4] = {0.0};
  
  // === ROS 通信 ===
  ros::Subscriber cmd_vel_sub_; // 订阅速度指令
  ros::Subscriber key_sub_;     // 订阅键盘按键
  ros::Publisher odom_pub_;     // 发布里程计
  
  // 调试话题 (发布给 rqt_plot 看曲线)
  ros::Publisher debug_pub_target_[4]; 
  ros::Publisher debug_pub_actual_[4]; 
  ros::Publisher debug_pub_effort_[4];

  // === TF 坐标变换 ===
  tf2_ros::TransformBroadcaster tf_broadcaster_; // 发布 TF (Odom -> Base_link)
  tf2_ros::Buffer tf_buffer_;                    // 缓存 TF 数据
  tf2_ros::TransformListener tf_listener_;       // 监听 TF (用于世界坐标系转换)

  // === 里程计数据 ===
  nav_msgs::Odometry odom_msg_;
  ros::Time last_odom_time_; // 上次计算里程计的时间
  double x_pos_ = 0.0;       // 全局 X 坐标
  double y_pos_ = 0.0;       // 全局 Y 坐标
  double yaw_ = 0.0;         // 全局 偏航角

  // === 内部功能函数 ===
  void cmdVelCallback(const geometry_msgs::Twist::ConstPtr& msg);
  void keyCallback(const std_msgs::String::ConstPtr& msg);
  
  void snapInput(double& vx, double& vy, double& vw); // 输入死区过滤
  
  // 逆运动学解算 (底盘速度 -> 轮子速度/角度)
  void calculateWheelStates(double vx, double vy, double vw);
  
  void calculateRoundCnt();       // 计算当前圈数
  void calculateTargetRoundCnt(); // 计算目标圈数
  
  // 模式执行函数
  void ChassisSpinMode();           // 小陀螺模式
  void ChassisStopMode();           // 停车模式
  void ChassisSeparateGimbalMode(); // 普通模式
  
  // 核心算法函数
  void calculateOdom(const ros::Time& now); // 正运动学 (里程计)
  void calculateKinematicsParams();         // 计算几何参数
  void transformVelocity(double& vx, double& vy); // 世界坐标系转换
  void rampVelocity(const ros::Duration& period); // 梯形加减速
  
  // 功率限制函数
  void limitPower(double period_dt);
};

} 
#endif