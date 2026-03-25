#2026/03/25
# 1021 Repository

本仓库包含了两个主要的 ROS 项目空间：一个是用于 ROS 基础算法测试与移动机器人仿真的工作空间 `catkin_ws`，另一个是基于 RoboMaster 框架的哨兵机器人底盘控制开发项目 `dx_final`
---
## 1. `catkin_ws`: 基础仿真与跟随算法工作空间

这是一个使用标准 `catkin_make` 编译的工作空间，主要包含了多款机器人的仿真环境搭建以及自定义的跟随控制算法。

### 主要自定义功能包
* **`diffbot_sim`**
    * **功能**：自定义差速机器人的仿真包。
    * **核心内容**：包含了机器人的 URDF 模型（`diffbot.urdf.xacro`）以及一个用于实现底盘跟随的 Gazebo 插件（`chassis_follower_plugin.cpp`）。
* **`xp_second_pkg`**
    * **功能**：跟随节点与多机协同测试包。
    * **核心内容**：包含核心的跟随算法逻辑节点（`follower_node.cpp`）以及用于拉起多个 Turtlebot3 的启动文件（`multi_turtlebot3.launch`）。
* **`ros_pkg`**
    * 包含用于基础测试的节点（如 `v_node.cpp`）。

### 第三方开源依赖包（Submodules）
空间内还集成了多个用于学习和测试的开源包源码：
* **`turtlebot3` 及其相关组件**：标准的 Turtlebot3 描述、消息与仿真环境。
* **`wpr_simulation`**：Waterplus 机器人的综合仿真包，包含大量视觉与雷达的基础 Demo（如 `demo_cv_follow`，`demo_lidar_behavior` 等）
* **`DynamixelSDK`**：用于驱动数字舵机的通信协议库。

### 编译与使用
```bash
cd catkin_ws
catkin_make
source devel/setup.bash


## 2. dx_final 工作空间

该空间基于 RoboMaster 开源框架开发，用于哨兵机器人 (Sentry) 的底盘控制。项目中集成了完整的 `rm_control` 元级包架构，因此**必须使用 `catkin build` 进行编译**。

### 核心自定义包：`sentry_chassis_controller`
基于 `ros_control` 框架实现的自定义底盘控制器。
* **`src/`**: 包含底盘控制器的核心计算逻辑（`sentry_chassis_controller.cpp`）与用于测试的键盘遥控节点（`keyboard_teleop.cpp`）。
* **`config/` & `cfg/`**: 包含静态参数配置（`chassis_params.yaml`, `controllers.yaml`）以及支持 `dynamic_reconfigure` 的动态参数配置（`ChassisOps.cfg`）。
* **`launch/`**: 包含主启动文件 `sentry_chassis_control.launch`，用于一键加载参数和启动控制器。

### 框架依赖包 (rm_control 系列)
工作空间内包含了 RoboMaster 官方框架的相关组件，用于提供底层的硬件接口、消息定义和基础控制器支撑：
* `rm_common`, `rm_control`, `rm_dbus`, `rm_description`
* `rm_gazebo`, `rm_hw`, `rm_msgs`, `rm_referee`, `rm_vt`

### 编译说明
```bash
cd dx_final
catkin build
source devel/setup.bash
