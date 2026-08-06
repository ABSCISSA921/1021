#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <std_msgs/Float64.h>

namespace gazebo
{
  class ChassisFollowerPlugin : public ModelPlugin
  {
  public:
    void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
    {
      this->model_ = _parent;
      // 确保获取的是名为 turret_joint 的关节
      this->turret_joint_ = this->model_->GetJoint("turret_joint");

      if (!ros::isInitialized()) {
        int argc = 0;
        char **argv = NULL;
        ros::init(argc, argv, "chassis_follower_plugin", ros::init_options::NoSigintHandler);
      }
      this->ros_node_.reset(new ros::NodeHandle("chassis_follower_plugin"));

      // 订阅用户的高层指令 (通常来自键盘或手柄)
      this->user_cmd_sub_ = this->ros_node_->subscribe<geometry_msgs::Twist>(
          "/cmd_vel", 1, &ChassisFollowerPlugin::UserCmdCallback, this);

      // 发布到底盘控制器的指令话题
      this->chassis_pub_ = this->ros_node_->advertise<geometry_msgs::Twist>("/diffbot_controller/cmd_vel", 1);
      // 发布到云台控制器的指令话题
      this->turret_pub_ = this->ros_node_->advertise<std_msgs::Float64>("/turret_controller/command", 1);

      this->update_connection_ = event::Events::ConnectWorldUpdateBegin(
          std::bind(&ChassisFollowerPlugin::OnUpdate, this));

      cmd_linear_x_ = 0.0;
      cmd_angular_z_ = 0.0;
      last_cmd_time_ = common::Time(0); 
      was_cmd_active_ = false;

      ROS_INFO("RM Chassis Follower Plugin Loaded!");
    }

    // 回调：接收 /cmd_vel
    void UserCmdCallback(const geometry_msgs::Twist::ConstPtr& msg)
    {
      cmd_linear_x_ = msg->linear.x;
      cmd_angular_z_ = msg->angular.z;
      last_cmd_time_ = this->model_->GetWorld()->SimTime();
    }

// 修改 OnUpdate 函数
void OnUpdate()
    {
      if(!this->turret_joint_) return;
      
      // 1. 安全检查：没人听就不说，防止报错
      if (this->turret_pub_.getNumSubscribers() == 0) return;

      common::Time current_time = this->model_->GetWorld()->SimTime();
      bool is_cmd_active = (current_time - last_cmd_time_).Double() < 0.5;

      // === 修改点 1：更稳健的速度获取方式 ===
      // 不直接问模型，而是直接问 base_link (底盘)
      // 注意：确保你的 URDF 里底盘叫 "base_link"
      physics::LinkPtr base_link = this->model_->GetLink("base_link");
      double chassis_phys_vel = 0.0;
      if(base_link) {
          chassis_phys_vel = base_link->RelativeAngularVel().Z();
      } else {
          // 如果找不到 base_link，回退到模型速度
          chassis_phys_vel = this->model_->RelativeAngularVel().Z();
      }

      // === 逻辑 A: 云台自稳计算 ===
      double target_turret_world_vel = 0.0;
      if (is_cmd_active) {
          target_turret_world_vel = cmd_angular_z_;
      } else {
          target_turret_world_vel = 0.0;
      }
      
      // 核心公式
      double turret_motor_cmd = target_turret_world_vel - chassis_phys_vel;

      // === 修改点 2：调试打印 (至关重要) ===
      // 每 0.5 秒打印一次，观察数值。
      // 如果 chassis_phys_vel 一直是 0，说明获取速度的代码有 bug。
      // 如果 turret_motor_cmd 有值但云台不转，说明 PID 太弱。
      ROS_INFO_THROTTLE(0.5, "Mode: %s | ChassisVel: %.2f | CmdToTurret: %.2f", 
          is_cmd_active ? "Follow" : "Stabilize", 
          chassis_phys_vel, 
          turret_motor_cmd);

      std_msgs::Float64 turret_msg;
      turret_msg.data = turret_motor_cmd;
      this->turret_pub_.publish(turret_msg);

      // === 逻辑 B: 底盘跟随逻辑 (保持不变) ===
      if (is_cmd_active) {
          double current_yaw = this->turret_joint_->Position(0);
          double chassis_follow_vel = 4.0 * current_yaw; 
          // 限幅
          if (chassis_follow_vel > 3.0) chassis_follow_vel = 3.0;
          if (chassis_follow_vel < -3.0) chassis_follow_vel = -3.0;

          geometry_msgs::Twist chassis_msg;
          chassis_msg.linear.x = cmd_linear_x_;
          chassis_msg.angular.z = chassis_follow_vel;
          this->chassis_pub_.publish(chassis_msg);
          was_cmd_active_ = true;
      } 
      else {
          if (was_cmd_active_) {
              geometry_msgs::Twist stop_msg;
              stop_msg.linear.x = 0.0;
              stop_msg.angular.z = 0.0;
              this->chassis_pub_.publish(stop_msg);
              was_cmd_active_ = false;
          }
      }
    }

  private:
    physics::ModelPtr model_;
    physics::JointPtr turret_joint_;
    event::ConnectionPtr update_connection_;
    std::unique_ptr<ros::NodeHandle> ros_node_;
    
    ros::Subscriber user_cmd_sub_;
    ros::Publisher chassis_pub_;
    ros::Publisher turret_pub_;

    double cmd_linear_x_;
    double cmd_angular_z_;
    common::Time last_cmd_time_;
    bool was_cmd_active_{false};
  };

  GZ_REGISTER_MODEL_PLUGIN(ChassisFollowerPlugin)
}
