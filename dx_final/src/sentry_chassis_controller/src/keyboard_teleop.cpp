#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <std_msgs/String.h>
#include <termios.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

// 终端设置相关
int kfd = 0;
struct termios cooked, raw;

// 定义步长
double speed_step = 0.5;        // 每次按键增加/减少的线速度 (m/s)
double angular_step = 0.5;      // 每次按键增加/减少的角速度 (rad/s)

geometry_msgs::Twist twist;  

void restoreTerminalSettings() {
    tcsetattr(kfd, TCSANOW, &cooked);
}

void initTerminalSettings() {
    tcgetattr(kfd, &cooked);
    memcpy(&raw, &cooked, sizeof(struct termios));
    raw.c_lflag &= ~(ICANON | ECHO);
    raw.c_cc[VEOL] = 1;
    raw.c_cc[VEOF] = 2;
    tcsetattr(kfd, TCSANOW, &raw);
    atexit(restoreTerminalSettings);
    
    int flags = fcntl(kfd, F_GETFL, 0);
    fcntl(kfd, F_SETFL, flags | O_NONBLOCK);
}

char getKey() {
    char c;
    if (read(kfd, &c, 1) < 0) return 0;
    return c;
}

void printHelp() {
    ROS_INFO("\n=== Sentry Incremental Control ===");
    ROS_INFO("----------------------------------");
    ROS_INFO("   [W] (+0.5 X)                   ");
    ROS_INFO("[A] (+0.5 Y)    [D] (-0.5 Y)      ");
    ROS_INFO("   [S] (-0.5 X)                   ");
    ROS_INFO("----------------------------------");
    ROS_INFO("Turn:   Q (+0.5 Z) / E (-0.5 Z)   ");
    ROS_INFO("STOP:   SPACE (Reset All to 0)    ");
    ROS_INFO("----------------------------------");
    ROS_INFO("Mode:   G (Spin Mode) / H (World) ");
    ROS_INFO("Exit:   ESC                       ");
    ROS_INFO("==================================");
}

int main(int argc, char**argv) {
    ros::init(argc, argv, "keyboard_teleop");
    ros::NodeHandle nh;

    ros::Publisher cmd_vel_pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel", 10);
    ros::Publisher key_pub = nh.advertise<std_msgs::String>("/keyboard/key", 10);

    initTerminalSettings();
    printHelp();

    ros::Rate loop_rate(20); 

    // 初始化为0
    twist.linear.x = 0;
    twist.linear.y = 0;
    twist.linear.z = 0;
    twist.angular.z = 0;

    while (ros::ok()) {
        char c = getKey();
        bool dirty = false; // 标记是否按下了键，用来打印信息
        std_msgs::String key_msg;

        if (c != 0) {
            switch (c) {
                case 'w': case 'W': 
                    twist.linear.x += speed_step; 
                    dirty = true; 
                    break;
                case 's': case 'S': 
                    twist.linear.x -= speed_step; 
                    dirty = true; 
                    break;
                case 'a': case 'A': 
                    twist.linear.y += speed_step; 
                    dirty = true; 
                    break;
                case 'd': case 'D': 
                    twist.linear.y -= speed_step; 
                    dirty = true; 
                    break;
                case 'q': case 'Q': 
                    twist.angular.z += angular_step; 
                    dirty = true; 
                    break;
                case 'e': case 'E': 
                    twist.angular.z -= angular_step; 
                    dirty = true; 
                    break;
                case ' ':           
                    twist = geometry_msgs::Twist(); 
                    ROS_INFO("!!! STOP !!!");
                    dirty = true; 
                    break;

                // === 功能键 ===
                case 'g': case 'G': 
                    key_msg.data = "g"; 
                    key_pub.publish(key_msg); 
                    ROS_INFO("Toggle Spin Mode");
                    break;
                case 'h': case 'H': 
                    key_msg.data = "h"; 
                    key_pub.publish(key_msg); 
                    ROS_INFO("Toggle World Frame");
                    break;

                case 27: return 0; // ESC
            }
            
            if (dirty) {
                ROS_INFO("Current Target -> X: %.1f, Y: %.1f, W: %.1f", twist.linear.x, twist.linear.y, twist.angular.z);
            }
        }
        cmd_vel_pub.publish(twist);
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}