#ifndef SENTRY_CHASSIS_CONTROLLER_SENTRY_CHASSIS_CONTROLLER_H
#define SENTRY_CHASSIS_CONTROLLER_SENTRY_CHASSIS_CONTROLLER_H

#include <controller_interface/controller.h>
#include <hardware_interface/joint_command_interface.h>
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <nav_msgs/Odometry.h>
#include <tf/transform_broadcaster.h>
#include <tf/transform_listener.h>
#include <control_toolbox/pid.h>
#include <std_msgs/String.h>
#include <std_msgs/Float64.h> 
#include <cmath>
#include <vector>

#include <dynamic_reconfigure/server.h>
#include <sentry_chassis_controller/ChassisOpsConfig.h>

namespace sentry_chassis_controller {

/**
 * @brief 底盘控制模式枚举
 * 定义底盘的不同工作模式，用于模式切换逻辑
 */
enum ChassisCtrlMode {
  CHASSIS_STOP = 0,               // 停止模式（锁死底盘）
  CHASSIS_SEPARATE_GIMBAL,        // 独立云台模式（普通移动模式）
  CHASSIS_SPIN,                   // 小陀螺模式（自转模式）
  CHASSIS_TEST,                   // 测试模式（预留）
  CHASSIS_RELAX                   // 放松模式（释放动力）
};

/**
 * @brief 哨兵底盘控制器类
 * 继承自EffortJointInterface的控制器，实现底盘的运动控制、模式切换、里程计计算等功能
 */
class SentryChassisController : public controller_interface::Controller<hardware_interface::EffortJointInterface> {
 public:
  SentryChassisController() = default;  ///< 默认构造函数
  ~SentryChassisController() override = default;  ///< 默认析构函数

  /**
   * @brief 控制器初始化函数
   * 初始化关节句柄、订阅者、发布者、动态配置服务器等
   * @param hw 硬件接口（力控制关节接口）
   * @param nh 节点句柄
   * @return 初始化成功返回true，否则返回false
   */
  bool init(hardware_interface::EffortJointInterface* hw, ros::NodeHandle& nh) override;

  /**
   * @brief 控制器启动函数
   * 在控制器启动时调用，初始化PID、关节指令、时间戳等
   * @param time 启动时刻的时间
   */
  void starting(const ros::Time& time) override;

  /**
   * @brief 控制器周期更新函数
   * 核心控制逻辑，处理模式切换、速度斜坡、运动学解算、PID控制、里程计计算等
   * @param time 当前时刻时间
   * @param period 控制周期
   */
  void update(const ros::Time& time, const ros::Duration& period) override;

  /**
   * @brief 控制器停止函数
   * 在控制器停止时调用，停止所有关节动力输出
   * @param time 停止时刻的时间
   */
  void stopping(const ros::Time& time) override;

 private:
  ros::NodeHandle nh_;  ///< 节点句柄，用于参数获取和话题通信

  std::vector<hardware_interface::JointHandle> pivot_joints_;  ///< 转向关节句柄数组（4个轮子的转向关节）
  std::vector<hardware_interface::JointHandle> wheel_joints_;  ///< 车轮关节句柄数组（4个轮子的驱动关节）

  control_toolbox::Pid pivot_pid_[4];  ///< 转向关节PID控制器数组（4个轮子分别对应）
  control_toolbox::Pid wheel_pid_[4];  ///< 车轮驱动PID控制器数组（4个轮子分别对应）

  /** 动态参数配置服务器 */
  std::shared_ptr<dynamic_reconfigure::Server<sentry_chassis_controller::ChassisOpsConfig>> dr_server_;
  /**
   * @brief 动态参数配置回调函数
   * 处理动态参数更新（如PID参数、轮距、轴距等），并重新计算运动学参数
   * @param config 动态配置参数对象
   * @param level 配置级别（未使用）
   */
  void reconfigCallback(sentry_chassis_controller::ChassisOpsConfig& config, uint32_t level);

  const double WHEEL_PERIMETER_ = 0.3456;  ///< 车轮周长（单位：m），固定参数

  double wheel_track_ = 0.362;  ///< 轮距（左右轮间距，单位：m）
  double wheel_base_ = 0.362;   ///< 轴距（前后轮间距，单位：m）
  double radius_ = 0.0;         ///< 旋转半径（底盘中心到轮子的距离，单位：m），由轮距和轴距计算得到
  double steer_offset_rad_[4] = {0.0};  ///< 转向零位偏差（单位：rad），4个轮子分别对应

  std::vector<double> wheel_direction_;  ///< 车轮方向修正系数（用于修正轮子旋转方向）

  double spin_vw_ = 2.0;  ///< 小陀螺模式下的自转角速度（单位：rad/s）
  bool use_world_frame_ = false;  ///< 是否使用世界坐标系指令（true：世界坐标系；false：车体坐标系）

  ChassisCtrlMode ctrl_mode_ = CHASSIS_STOP;  ///< 当前底盘控制模式
  geometry_msgs::Twist cmd_vel_;              ///< 接收的速度指令（vx, vy, vw）
  geometry_msgs::Twist ramped_vel_;           ///< 经过斜坡处理后的速度指令（平滑加速减速）

  double target_angles_[4] = {0.0};       ///< 转向关节目标角度（单位：rad），4个轮子分别对应
  double target_velocities_[4] = {0.0};   ///< 车轮目标速度（单位：rad/s），4个轮子分别对应
  double last_steer_angles_[4] = {0.0};   ///< 上一时刻转向角度（用于就近转向逻辑）
  double last_target_velocities_[4] = {0.0};  ///< 上一时刻车轮目标速度

  double motor_circle_[4] = {0.0};        ///< 转向电机累计圈数（用于处理角度跳变）
  double motor_target_circle_[4] = {0.0}; ///< 转向目标角度累计圈数（用于处理角度跳变）

  ros::Subscriber cmd_vel_sub_;  ///< 速度指令订阅者（订阅/cmd_vel话题）
  ros::Subscriber key_sub_;      ///< 键盘指令订阅者（订阅/keyboard/key话题）
  ros::Publisher odom_pub_;      ///< 里程计发布者（发布/odom话题）

  ros::Publisher debug_pub_target_[4];  ///< 调试用：车轮目标速度发布者（4个轮子分别对应）
  ros::Publisher debug_pub_actual_[4];  ///< 调试用：车轮实际速度发布者（4个轮子分别对应）
  ros::Publisher debug_pub_effort_[4];  ///< 调试用：车轮输出力发布者（4个轮子分别对应）

  tf::TransformBroadcaster tf_broadcaster_;  ///< TF广播器（发布odom到base_link的变换）
  tf::TransformListener tf_listener_;        ///< TF监听器（用于坐标系转换）
  nav_msgs::Odometry odom_msg_;              ///< 里程计消息对象
  ros::Time last_odom_time_;                 ///< 上一次计算里程计的时间
  double x_pos_ = 0.0;                       ///< 底盘在世界坐标系下的x坐标（单位：m）
  double y_pos_ = 0.0;                       ///< 底盘在世界坐标系下的y坐标（单位：m）
  double yaw_ = 0.0;                         ///< 底盘在世界坐标系下的偏航角（单位：rad）

  /**
   * @brief 速度指令回调函数
   * 接收/cmd_vel话题的速度指令并保存
   * @param msg 速度指令消息
   */
  void cmdVelCallback(const geometry_msgs::Twist::ConstPtr& msg);

  /**
   * @brief 键盘指令回调函数
   * 接收/keyboard/key话题的键盘指令，处理模式切换（小陀螺模式、世界坐标系切换）
   * @param msg 键盘指令消息
   */
  void keyCallback(const std_msgs::String::ConstPtr& msg);
  
  /**
   * @brief 速度指令小值过滤
   * 对微小的速度指令进行归零处理，避免机械抖动
   * @param vx x方向线速度（引用，会被修改）
   * @param vy y方向线速度（引用，会被修改）
   * @param vw 角速度（引用，会被修改）
   */
  void snapInput(double& vx, double& vy, double& vw);

  /**
   * @brief 计算车轮状态
   * 根据速度指令（vx, vy, vw）解算4个轮子的目标转向角度和目标速度
   * @param vx x方向线速度（车体坐标系）
   * @param vy y方向线速度（车体坐标系）
   * @param vw 角速度
   */
  void calculateWheelStates(double vx, double vy, double vw);
  
  // [修复] 补上了这个缺失的声明
  /**
   * @brief 计算转向电机累计圈数
   * 处理转向角度的跳变（超过±180度），累计圈数用于准确计算绝对角度
   */
  void calculateRoundCnt();

  /**
   * @brief 计算转向目标角度累计圈数
   * 处理目标转向角度的跳变，累计圈数用于准确跟踪目标角度
   */
  void calculateTargetRoundCnt(); 
  
  /**
   * @brief 小陀螺模式控制逻辑
   * 处理小陀螺模式下的速度转换（世界坐标系→车体坐标系）和运动学解算，叠加自转角速度
   */
  void ChassisSpinMode();

  /**
   * @brief 停止模式控制逻辑
   * 控制底盘进入X型锁死状态，所有轮子转向特定角度实现机械锁死
   */
  void ChassisStopMode();

  /**
   * @brief 独立云台模式控制逻辑
   * 普通移动模式，根据坐标系设置处理速度转换并解算车轮状态
   */
  void ChassisSeparateGimbalMode();

  /**
   * @brief 计算里程计
   * 根据车轮速度和转向角度，通过正运动学计算底盘的位置、姿态和速度，并发布里程计消息和TF
   * @param now 当前时刻时间
   */
  void calculateOdom(const ros::Time& now);

  /**
   * @brief 计算运动学参数
   * 根据轮距和轴距计算旋转半径（底盘中心到轮子的距离）
   */
  void calculateKinematicsParams();

  /**
   * @brief 速度坐标系转换
   * 当使用世界坐标系时，将世界坐标系下的速度指令转换为车体坐标系下的速度
   * @param vx x方向线速度（引用，会被修改）
   * @param vy y方向线速度（引用，会被修改）
   */
  void transformVelocity(double& vx, double& vy);

  /**
   * @brief 速度斜坡处理
   * 对速度指令进行平滑处理，限制加速度，避免急加速急减速
   * @param period 控制周期
   */
  void rampVelocity(const ros::Duration& period);
};

} 
#endif