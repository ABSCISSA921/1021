#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <std_msgs/String.h>
#include <termios.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

// 终端文件描述符（0表示标准输入）
int kfd = 0;
// 终端配置结构体（保存原始和修改后的终端设置）
struct termios cooked, raw;

// 速度缩放系数（用于调整线速度和角速度的倍率）
double linear_scale = 1.0;
double angular_scale = 1.0;
// 基础速度参数（默认线速度和角速度）
double base_linear_speed = 1.0;
double base_angular_speed = 1.0;

// 速度指令消息（用于发布到底盘控制器）
geometry_msgs::Twist twist;

/**
 * @brief 恢复终端设置
 * 在程序退出时调用，将终端恢复为原始配置（ cooked 模式）
 */
void restoreTerminalSettings() {
    tcsetattr(kfd, TCSANOW, &cooked);
}

/**
 * @brief 初始化终端设置
 * 将终端设置为 raw 模式（非规范模式，无回显），并设置为非阻塞读取
 */
void initTerminalSettings() {
    tcgetattr(kfd, &cooked);  // 获取当前终端配置（保存为cooked模式）
    memcpy(&raw, &cooked, sizeof(struct termios));  // 复制配置到raw结构体
    raw.c_lflag &= ~(ICANON | ECHO);  // 关闭规范模式和回显
    raw.c_cc[VEOL] = 1;  // 行结束符
    raw.c_cc[VEOF] = 2;  // 文件结束符
    tcsetattr(kfd, TCSANOW, &raw);  // 应用raw模式配置
    atexit(restoreTerminalSettings);  // 注册程序退出时的终端恢复函数
    
    // 设置终端为非阻塞模式（读取操作不会阻塞）
    int flags = fcntl(kfd, F_GETFL, 0);
    fcntl(kfd, F_SETFL, flags | O_NONBLOCK);
}

/**
 * @brief 获取键盘输入
 * 非阻塞读取键盘按键，返回读取到的字符（无输入时返回0）
 * @return 读取到的字符
 */
char getKey() {
    char c;
    if (read(kfd, &c, 1) < 0) return 0;  // 非阻塞读取，失败返回0
    return c;
}

/**
 * @brief 打印帮助信息
 * 在终端打印键盘控制说明（按键功能、模式切换等）
 */
void printHelp() {
    ROS_INFO("\n=== Sentry Keyboard Control ===");
    ROS_INFO("Move:   W/S (X-axis), A/D (Y-axis)");
    ROS_INFO("Turn:   Q/E");
    ROS_INFO("Stop:   Space");
    ROS_INFO("-------------------------------");
    ROS_INFO("Speed:  I/K (+/- Linear Speed)");
    ROS_INFO("        U/J (+/- Angular Speed)");
    ROS_INFO("Mode:   G   (Toggle Spin/Gyro)");
    ROS_INFO("        H   (Toggle World Frame)");
    ROS_INFO("Exit:   ESC");
    ROS_INFO("===============================");
}

/**
 * @brief 主函数
 * 初始化节点，设置发布者，循环读取键盘输入并发布速度指令或模式切换消息
 * @param argc 命令行参数数量
 * @param argv 命令行参数数组
 * @return 程序退出码（0表示正常退出）
 */
int main(int argc, char**argv) {
    ros::init(argc, argv, "keyboard_teleop");  // 初始化节点，节点名为"keyboard_teleop"
    ros::NodeHandle nh;  // 创建节点句柄

    // 创建速度指令发布者（发布到/cmd_vel话题，队列长度10）
    ros::Publisher cmd_vel_pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel", 10);
    // 创建键盘指令发布者（发布到/keyboard/key话题，用于模式切换）
    ros::Publisher key_pub = nh.advertise<std_msgs::String>("/keyboard/key", 10);

    initTerminalSettings();  // 初始化终端设置
    printHelp();  // 打印帮助信息

    ros::Rate loop_rate(20);  // 控制循环频率为20Hz

    while (ros::ok()) {  // 当节点正常运行时循环
        char c = getKey();  // 获取键盘输入
        bool dirty = false;  // 标记速度指令是否有更新
        std_msgs::String key_msg;  // 键盘模式切换消息

        if (c != 0) {  // 如果有按键输入
            switch (c) {
                // 运动控制
                case 'w': case 'W': twist.linear.x = base_linear_speed * linear_scale; dirty=true; break;
                case 's': case 'S': twist.linear.x = -base_linear_speed * linear_scale; dirty=true; break;
                case 'a': case 'A': twist.linear.y = base_linear_speed * linear_scale; dirty=true; break;
                case 'd': case 'D': twist.linear.y = -base_linear_speed * linear_scale; dirty=true; break;
                case 'q': case 'Q': twist.angular.z = base_angular_speed * angular_scale; dirty=true; break;
                case 'e': case 'E': twist.angular.z = -base_angular_speed * angular_scale; dirty=true; break;
                case ' ':           twist = geometry_msgs::Twist(); dirty=true; break;

                // 速度调整
                case 'i': case 'I': 
                    linear_scale += 0.1; 
                    ROS_INFO("Linear Scale: %.1f", linear_scale); 
                    // [新增] 立即刷新当前速度
                    if (twist.linear.x > 0) twist.linear.x = base_linear_speed * linear_scale;
                    if (twist.linear.x < 0) twist.linear.x = -base_linear_speed * linear_scale;
                    if (twist.linear.y > 0) twist.linear.y = base_linear_speed * linear_scale;
                    if (twist.linear.y < 0) twist.linear.y = -base_linear_speed * linear_scale;
                    break;

                case 'k': case 'K': 
                    linear_scale = std::max(0.1, linear_scale - 0.1); 
                    ROS_INFO("Linear Scale: %.1f", linear_scale); 
                    // [新增] 立即刷新当前速度
                    if (twist.linear.x > 0) twist.linear.x = base_linear_speed * linear_scale;
                    if (twist.linear.x < 0) twist.linear.x = -base_linear_speed * linear_scale;
                    if (twist.linear.y > 0) twist.linear.y = base_linear_speed * linear_scale;
                    if (twist.linear.y < 0) twist.linear.y = -base_linear_speed * linear_scale;
                    break;

                case 'u': case 'U': 
                    angular_scale += 0.1; 
                    ROS_INFO("Angular Scale: %.1f", angular_scale); 
                    // [新增] 立即刷新当前角速度
                    if (twist.angular.z > 0) twist.angular.z = base_angular_speed * angular_scale;
                    if (twist.angular.z < 0) twist.angular.z = -base_angular_speed * angular_scale;
                    break;

                case 'j': case 'J': 
                    angular_scale = std::max(0.1, angular_scale - 0.1); 
                    ROS_INFO("Angular Scale: %.1f", angular_scale); 
                    // [新增] 立即刷新当前角速度
                    if (twist.angular.z > 0) twist.angular.z = base_angular_speed * angular_scale;
                    if (twist.angular.z < 0) twist.angular.z = -base_angular_speed * angular_scale;
                    break;

                // 模式切换
                case 'g': case 'G': 
                    key_msg.data = "g"; key_pub.publish(key_msg); 
                    break;
                case 'h': case 'H': 
                    key_msg.data = "h"; key_pub.publish(key_msg); 
                    break;

                case 27: return 0; // ESC键退出程序
            }
            
            if (dirty) {
                twist.linear.z = 0; // 保险（确保z方向线速度为0）
            }
        }

        cmd_vel_pub.publish(twist);  // 发布速度指令
        ros::spinOnce();  // 处理回调函数
        loop_rate.sleep();  // 按照循环频率休眠
    }
    return 0;
}