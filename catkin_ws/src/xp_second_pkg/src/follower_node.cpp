#include <ros/ros.h>
#include <tf2_ros/transform_listener.h>
#include <tf2_ros/buffer.h>
#include <geometry_msgs/PointStamped.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <geometry_msgs/TransformStamped.h>
#include <tf2/exceptions.h>
#include <tf2/utils.h>
#include <geometry_msgs/Twist.h>
#include <cmath> 
#include <nav_msgs/Odometry.h>
#include <tf2_ros/transform_broadcaster.h>

// -------------------------- 全局变量 --------------------------
double tb3_0_last_yaw = 0.0;
int turn_count = 0;
std::vector<geometry_msgs::Point> tb3_0_turn_points;
const double TURN_THRESHOLD = 65.0 * M_PI / 180.0;  // 转弯阈值：65
static double tb3_0_yaw_accum = 0.0;  // 累计转角

enum FollowerState { IDLE, GOTO_TURN_POINT, FOLLOW_AFTER_TURNS };
FollowerState current_state = IDLE;
size_t target_turn_idx = 0; // 目标转弯点索引

//1：tb3_0里程计 
void odom0Callback(const nav_msgs::Odometry::ConstPtr& odom) {
    ROS_INFO("[调试] odom0Callback执行：tb3_0坐标 (%.2f, %.2f)", 
             odom->pose.pose.position.x, odom->pose.pose.position.y);

    // TF广播
    static tf2_ros::TransformBroadcaster tf_broadcaster;
    geometry_msgs::TransformStamped ts;
    ts.header.frame_id = "world";
    ts.header.stamp = ros::Time::now();
    ts.child_frame_id = "tb3_0/base_footprint";
    ts.transform.translation.x = odom->pose.pose.position.x;
    ts.transform.translation.y = odom->pose.pose.position.y;
    ts.transform.translation.z = odom->pose.pose.position.z;
    ts.transform.rotation = odom->pose.pose.orientation;
    tf_broadcaster.sendTransform(ts);

    // 转弯检测
    double current_yaw = tf2::getYaw(odom->pose.pose.orientation);
    double yaw_diff_single = current_yaw - tb3_0_last_yaw;
    tb3_0_yaw_accum += fabs(yaw_diff_single);// 累计转弯角度

    // 记录转弯点
    if (tb3_0_yaw_accum >= TURN_THRESHOLD) {
        geometry_msgs::Point current_point = odom->pose.pose.position;
        tb3_0_turn_points.push_back(current_point);//存入数组
        turn_count++;
        tb3_0_yaw_accum = 0.0;// 重置累计
    }

    // 停止转弯重置累计
    if (fabs(yaw_diff_single) < 0.0175) {
        tb3_0_yaw_accum = 0.0;
    }
    tb3_0_last_yaw = current_yaw; // 更新上次角度
}

void odom1Callback(const nav_msgs::Odometry::ConstPtr& odom) {
    static tf2_ros::TransformBroadcaster tf_broadcaster;
    geometry_msgs::TransformStamped ts;
    ts.header.frame_id = "world";
    ts.header.stamp = ros::Time::now();
    ts.child_frame_id = "tb3_1/base_footprint";
    ts.transform.translation.x = odom->pose.pose.position.x;
    ts.transform.translation.y = odom->pose.pose.position.y;
    ts.transform.translation.z = odom->pose.pose.position.z;
    ts.transform.rotation = odom->pose.pose.orientation;
    tf_broadcaster.sendTransform(ts);
}


int main(int argc, char** argv)
{
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "follower_node");
    ros::NodeHandle nh;

    tf2_ros::Buffer buffer(ros::Duration(10.0));
    tf2_ros::TransformListener sub(buffer);

    ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("/tb3_1/cmd_vel", 100);
    ros::Subscriber odom_sub0 = nh.subscribe<nav_msgs::Odometry>(
        "/tb3_0/odom", 100, odom0Callback
    );
    ros::Subscriber odom_sub1 = nh.subscribe<nav_msgs::Odometry>(
        "/tb3_1/odom", 100, odom1Callback
    );


    double target_distance;
    nh.param<double>("target_distance", target_distance, 0.8); 
    double start_delay = 3.0;
    ros::Time start_time = ros::Time::now();
    const double dist_deadzone = 0.05; //距离容忍度
    const double angle_deadzone = 0.25;  //角度容忍度
    const double angular_gain = 0.8;    
    const double linear_gain_dist = 0.6;  
    const double max_linear_speed = 0.4;  // 最大线速度
    const double turn_point_arrival_dist = 0.15;  // 到达转弯点判定距离
    const double initial_dist_buffer = 0.2;  // 初始距离缓冲
    double relative_angle;
    ros::Rate rate(10);

    // 标记状态是否已初始化
    static bool state_initialized = false;
    // 标记是否完成初始距离校准
    static bool initial_dist_calibrated = false;

    while (ros::ok())
    {
        if ((ros::Time::now() - start_time).toSec() < start_delay) {
            geometry_msgs::Twist stop_twist;
            pub.publish(stop_twist);
            rate.sleep();
            ros::spinOnce();
            continue;
        }

        // 实时检测转弯点，动态切换状态
        if (current_state == FOLLOW_AFTER_TURNS && !tb3_0_turn_points.empty() && target_turn_idx < tb3_0_turn_points.size()) {
            current_state = GOTO_TURN_POINT;
        } else if (current_state == GOTO_TURN_POINT && target_turn_idx >= tb3_0_turn_points.size()) {
            current_state = FOLLOW_AFTER_TURNS;
        }

        // 初始化状态机
        if (!state_initialized) {
            current_state = tb3_0_turn_points.empty() ? FOLLOW_AFTER_TURNS : GOTO_TURN_POINT;
            state_initialized = true;
        }

        try
        {
            // 查询tb3_0相对于tb3_1的位置
            geometry_msgs::TransformStamped tb3_0_rel_tb3_1 = buffer.lookupTransform(
                "tb3_1/base_footprint",
                "tb3_0/base_footprint",
                ros::Time(0),
                ros::Duration(0.5)
            );
            double rel_x = tb3_0_rel_tb3_1.transform.translation.x;
            double rel_y = tb3_0_rel_tb3_1.transform.translation.y;
            double manhattan_dist = fabs(rel_x) + fabs(rel_y);
            double dist_error = manhattan_dist - target_distance;  
            geometry_msgs::Twist twist;

            // 初始距离校准阶段
            if (!initial_dist_calibrated) {
                if (fabs(dist_error) > initial_dist_buffer) {
                    twist.linear.x = linear_gain_dist * dist_error * 0.5;
                    twist.angular.z = 0;
                    pub.publish(twist);
                    rate.sleep();
                    ros::spinOnce();
                    continue;
                } else {
                    initial_dist_calibrated = true;
                }
            }

            // 状态1：前往转弯点
            if (current_state == GOTO_TURN_POINT && target_turn_idx < tb3_0_turn_points.size() && initial_dist_calibrated) {
                geometry_msgs::Point turn_point = tb3_0_turn_points[target_turn_idx];

                // 查询tb3_1的绝对位置
                geometry_msgs::TransformStamped tb3_1_abs = buffer.lookupTransform(
                    "world", "tb3_1/base_footprint", ros::Time(0), ros::Duration(0.5)
                );
                double tb3_1_x = tb3_1_abs.transform.translation.x;
                double tb3_1_y = tb3_1_abs.transform.translation.y;

                // 计算到转弯点的方向角
                double target_angle = atan2(turn_point.y - tb3_1_y, turn_point.x - tb3_1_x);
                double current_angle = tf2::getYaw(tb3_1_abs.transform.rotation);
                double angle_error = target_angle - current_angle;
                angle_error = atan2(sin(angle_error), cos(angle_error));
                double dist_to_turn = sqrt(pow(turn_point.x - tb3_1_x, 2) + pow(turn_point.y - tb3_1_y, 2));

                // 转向控制：始终对准转弯点
                if (fabs(angle_error) > angle_deadzone) {
                    twist.angular.z = angular_gain * angle_error;
                } else {
                    twist.angular.z = 0;
                }

                // 线速度控制
                if (fabs(angle_error) < 0.5) {  
                    twist.linear.x = linear_gain_dist * dist_error;
                    twist.linear.x = std::min(std::max(twist.linear.x, -0.2), max_linear_speed);
                    // 到达转弯点
                    if (dist_to_turn < turn_point_arrival_dist) {
                        twist.linear.x = 0;
                    }
                } else {
                    // 角度误差较大时，减速前进
                    twist.linear.x = 0;
                }

                // 到达转弯点：切换下一个或跟随模式
                if (dist_to_turn < turn_point_arrival_dist) {
                    // 转向tb3_0以准备跟随
                    relative_angle = atan2(rel_y, rel_x);
                    twist.angular.z = angular_gain * relative_angle * 0.8;
                    pub.publish(twist);
                    ros::Duration(1.0).sleep();
                    target_turn_idx++;
                    continue;
                }
            }
            // 状态2：跟随tb3_0
            else if (current_state == FOLLOW_AFTER_TURNS && initial_dist_calibrated) {
                relative_angle = atan2(rel_y, rel_x);
                if (fabs(relative_angle) > angle_deadzone) {
                    twist.angular.z = angular_gain * relative_angle;
                } else {
                    twist.angular.z = 0;
                }

                if (fabs(dist_error) > dist_deadzone) {
                    twist.linear.x = linear_gain_dist * dist_error;
                    twist.linear.x = std::min(std::max(twist.linear.x, -0.2), max_linear_speed);
                } else {
                    twist.linear.x = 0;
                }
            }
            pub.publish(twist);
        }
        catch (tf2::TransformException &ex)
        {
            ROS_WARN("TF查询异常：%s", ex.what());
            geometry_msgs::Twist stop_twist;
            pub.publish(stop_twist);
        }

        rate.sleep();
        ros::spinOnce();
    }
    return 0;
}