#include <ros/ros.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/Twist.h>
#include <sensor_msgs/LaserScan.h>
#include <cmath>
#include <algorithm>
#include <limits>


const double A_X = 0.55, A_Y = -0.49;         // A点坐标
const double POS_TOLERANCE = 0.05;            // 位置容错
const double RADAR_STOP_DIST = 0.35;          // 停车容错
const double RADAR_DECEL_DIST = 1.0;          // 减速触发距离
const double TURN_SPEED = 0.03;               // 转弯角速度
const double ANGLE_TOLERANCE = 0.02;          // 角度容错
const double NORMAL_SPEED = 0.15;             // 远距离固定速度
const double SLOW_SPEED = 0.05;               // 减速距离内固定速度
const double FRONT_ANGLE_RANGE = M_PI/18;     // 正前方检测角度（±10度）

// 状态
enum RobotState { GO_TO_A, TURN_TO_B, RADAR_STOP, STOP };
RobotState current_state = GO_TO_A;// 初始状态：前往A点

double current_x = 0.0, current_y = 0.0, current_yaw = 0.0;
sensor_msgs::LaserScan::ConstPtr g_scan_msg;

// 里程计
void odomCallback(const nav_msgs::Odometry::ConstPtr& msg) {
    current_x = msg->pose.pose.position.x;
    current_y = msg->pose.pose.position.y;
    ROS_INFO("当前位置: (%.2f, %.2f)", current_x, current_y);
    
    double qx = msg->pose.pose.orientation.x;
    double qy = msg->pose.pose.orientation.y;
    double qz = msg->pose.pose.orientation.z;
    double qw = msg->pose.pose.orientation.w;
    current_yaw = atan2(2*(qw*qz + qx*qy), 1 - 2*(qy*qy + qz*qz));
}

// 雷达
void scanCallback(const sensor_msgs::LaserScan::ConstPtr& msg) {
    g_scan_msg = msg;
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "turtlebot3_nav_node");
    ros::NodeHandle nh;
    ros::Subscriber odom_sub = nh.subscribe("/odom", 20, odomCallback);
    ros::Subscriber scan_sub = nh.subscribe("/scan", 20, scanCallback);
    ros::Publisher cmd_vel_pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel", 20);

    ros::Rate rate(20); // 简化减速逻辑
    geometry_msgs::Twist twist; //初始化geometry_msgs::Twist类型的消息 

    while (ros::ok()) {
        ros::spinOnce();

        switch (current_state) {
            case GO_TO_A: {
                //直行到A点
                double dx = A_X - current_x, dy = A_Y - current_y;
                double dist = sqrt(dx*dx + dy*dy);
                ROS_INFO("arrived A: %.2f m", dist);
                
                if (dist < POS_TOLERANCE) {
                    current_state = TURN_TO_B;
                    twist.linear.x = 0.0;
                    twist.angular.z = 0.0;
                    ROS_INFO("turning right...");
                } else {
                    twist.linear.x = 0.15;
                    twist.angular.z = 0.0;
                }
                break;
            }
            case TURN_TO_B: {
                double target_yaw = -M_PI_2;
                double yaw_diff = target_yaw - current_yaw;
                yaw_diff = fmod(yaw_diff + M_PI, 2*M_PI) - M_PI;
                ROS_INFO("has turned: %.2f 弧度，for turn: %.2f 弧度", current_yaw, yaw_diff);

                if (fabs(yaw_diff) > ANGLE_TOLERANCE) {
                    twist.linear.x = 0.0;
                    twist.angular.z = -TURN_SPEED;
                    ROS_INFO("turning right...");
                } else {
                    current_state = RADAR_STOP;
                    twist.angular.z = 0.0;
                    twist.linear.x = NORMAL_SPEED;
                    ROS_INFO("turned，start moving straight (radar control)...");
                }
                break;
            }
            case RADAR_STOP: {
                if (!g_scan_msg) {
                    ROS_WARN("park");
                    twist.linear.x = 0.0;
                    break;//没有雷达数据，停车
                }
                int scan_size = g_scan_msg->ranges.size();
                if (scan_size == 0) {
                    ROS_WARN("park");
                    twist.linear.x = 0.0;
                    break;//雷达数据为空，停车
                }
                //只取正前方±FRONT_ANGLE_RANGE内的雷达数据
                double front_dist = std::numeric_limits<double>::max();
                for (int i = 0; i < scan_size; ++i) {
                    // 计算当前索引对应的雷达角度
                    double radar_angle = g_scan_msg->angle_min + i * g_scan_msg->angle_increment;
                    // 只保留正前方（-FRONT_ANGLE_RANGE ~ +FRONT_ANGLE_RANGE）的点
                    if (fabs(radar_angle) <= FRONT_ANGLE_RANGE) {
                        double d = g_scan_msg->ranges[i];
                        // 过滤无效数据
                        if (!std::isnan(d) && !std::isinf(d) && d >= g_scan_msg->range_min && d <= g_scan_msg->range_max) {
                            front_dist = std::min(front_dist, d); // 取该区域内最近距离
                        }
                    }
                }
                if(front_dist = (front_dist == std::numeric_limits<double>::max())) { 
                    g_scan_msg->range_max ;} 
                    else{
                        front_dist;}
                ROS_INFO("正前方最近距离: %.2f m | 当前速度: %.2f m/s", front_dist, twist.linear.x);

                if (front_dist <= RADAR_STOP_DIST) {
                    current_state = STOP;
                    twist.linear.x = 0.0;
                    ROS_INFO("距离墙%.2fm，停车！", RADAR_STOP_DIST);
                } else if (front_dist <= RADAR_DECEL_DIST) {
                    twist.linear.x = SLOW_SPEED;
                    ROS_INFO("slowing...");
                } else {
                    twist.linear.x = NORMAL_SPEED;
                }
                break;
            }
            case STOP:
                twist.linear.x = 0.0;
                twist.angular.z = 0.0;
                ROS_INFO("已停车，距离墙≤%.2fm", RADAR_STOP_DIST);
                break;
        }

        cmd_vel_pub.publish(twist);//发布消息
        rate.sleep();
    }

    return 0;
}