#include <ros/ros.h>
#include <tf2_ros/transform_listener.h>
#include <tf2_ros/buffer.h>
#include <geometry_msgs/PointStamped.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <geometry_msgs/TransformStamped.h>
#include <tf2/exceptions.h>
#include <geometry_msgs/Twist.h>
#include <cmath> 
#include <nav_msgs/Odometry.h>
#include <tf2_ros/transform_broadcaster.h>

// 订阅里程计 广播tb3_0的TF
void odom0Callback(const nav_msgs::Odometry::ConstPtr& odom) {
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
}

// 订阅里程计 广播tb3_1的TF
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

int main(int argc, char**argv)
{
    setlocale(LC_ALL,"");
    ros::init(argc, argv, "follower_node"); 
    ros::NodeHandle nh;

    tf2_ros::Buffer buffer(ros::Duration(10.0));
    tf2_ros::TransformListener sub(buffer);
    
    ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("/tb3_1/cmd_vel", 100);
    ros::Subscriber odom_sub0 = nh.subscribe<nav_msgs::Odometry>(
        "tb3_0/odom", 
        100, 
        odom0Callback
    );
    ros::Subscriber odom_sub1 = nh.subscribe<nav_msgs::Odometry>(
        "tb3_1/odom", 
        100, 
        odom1Callback
    );

    double target_distance;
    nh.param<double>("target_distance", target_distance, 1.0); 
    double start_delay = 3.0; 
    ros::Time start_time = ros::Time::now(); // 记录启动时间
    const double dist_deadzone = 0.3; // 距离容忍度
    const double angle_deadzone = 0.2; // 角度容忍度
    const double angular_gain = 0.6; // 转向灵敏度
    const double linear_gain = 0.3; // 移动灵敏度
    double relative_angle; // 存储tb3_1与tb3_0的角度偏差
    ros::Rate rate(10); 
    
    while (ros::ok())
    {
        if ((ros::Time::now() - start_time).toSec() < start_delay) {
            geometry_msgs::Twist stop_twist;
            pub.publish(stop_twist);
            rate.sleep();
            ros::spinOnce(); 
            continue;
        }
        try
        {   
            geometry_msgs::TransformStamped tb3_0Totb3_1 = buffer.lookupTransform(
                "tb3_1/base_footprint",
                "tb3_0/base_footprint",
                ros::Time(0),
                ros::Duration(0.5)
            );
            
            double manhattan_dist = fabs(tb3_0Totb3_1.transform.translation.x) + fabs(tb3_0Totb3_1.transform.translation.y);
            geometry_msgs::Twist twist; 
            // 计算角度偏差
            relative_angle = atan2(tb3_0Totb3_1.transform.translation.y, tb3_0Totb3_1.transform.translation.x);  
            // 调整角度
            if (fabs(relative_angle) > angle_deadzone) {
                twist.angular.z = angular_gain * relative_angle;
            } else {
                twist.angular.z = 0;  
            }
            // 调整距离
            double dist_error = manhattan_dist - target_distance;
            if (fabs(dist_error) > dist_deadzone) {  
                twist.linear.x = linear_gain * dist_error;
            } else {
                twist.linear.x = 0;
            }

            pub.publish(twist);
        }
        // TF查询异常处理
        catch (tf2::TransformException &ex)
        {
            ROS_WARN("%s", ex.what());
            geometry_msgs::Twist stop_twist;
            pub.publish(stop_twist);
        }
        rate.sleep(); 
        ros::spinOnce();
    }
    return 0;
}
            
            