# Jackal：带 URDF 的移动底盘 ros_control 工程

Jackal 展示了真实移动机器人项目的组织方式：四轮 URDF、Gazebo 插件、`diff_drive_controller`、`twist_mux`、`robot_localization` 和导航配置分包协作。适合在理解本仓库 [control_lab](../../ros1_advanced_ws/src/control_lab/README.md) 后，研究完整系统中的命令流和状态估计。[本体仓库](https://github.com/jackal/jackal/tree/noetic-devel)、[仿真仓库](https://github.com/jackal/jackal_simulator/tree/melodic-devel)

## 版本与准备

遵循 [公共环境准备](README.md)，需要 Gazebo 和 RViz 的图形环境。此处运行仿真，不需要 Jackal 实机。

三个仓库按 [Noetic rosdistro](https://github.com/ros/rosdistro/blob/master/noetic/distribution.yaml) 指定的组合选择分支：本体用 `noetic-devel`，仿真和可视化用 `melodic-devel`。源码核验日期、SHA 和运行验证状态见[索引](README.md)。

```bash
source /opt/ros/noetic/setup.bash
mkdir -p ~/learning_external/jackal_ws/src
cd ~/learning_external/jackal_ws/src
git clone --depth 1 --branch noetic-devel https://github.com/jackal/jackal.git
git clone --depth 1 --branch melodic-devel https://github.com/jackal/jackal_simulator.git
git clone --depth 1 --branch melodic-devel https://github.com/jackal/jackal_desktop.git
cd ~/learning_external/jackal_ws
rosdep update --include-eol-distros --rosdistro noetic
rosdep install --from-paths src --ignore-src --rosdistro noetic -r -y
catkin init
catkin config --extend /opt/ros/noetic
catkin build
source devel/setup.bash
```

Jackal 模型需要激光、IMU、Gazebo 插件和 URDF 配件包共同提供依赖。若安装失败，按 rosdep 列出的缺失项补齐后再构建。

## 入手一：控制器、轮速与融合里程计

每个终端按公共准备加载环境，再 source `~/learning_external/jackal_ws/devel/setup.bash`。

终端 A：启用前置激光，关闭不需要的手柄节点。

```bash
roslaunch jackal_gazebo jackal_world.launch config:=front_laser joystick:=false
```

[`jackal_world.launch`](https://github.com/jackal/jackal_simulator/blob/melodic-devel/jackal_gazebo/launch/jackal_world.launch) 默认场景是 `jackal_race.world`；[`front_laser` 配置](https://github.com/jackal/jackal/blob/noetic-devel/jackal_description/urdf/configs/front_laser) 启用激光。模型 spawn 时还会加载 `jackal_control/control.launch`。

终端 B：

```bash
rosservice call /controller_manager/list_controllers "{}"
rostopic echo -n 1 /jackal_velocity_controller/odom
rostopic echo -n 1 /odometry/filtered
rostopic echo -n 1 /front/scan/header
rosrun tf tf_echo odom base_link
```

最后一条持续输出，检查后按 Ctrl-C。预期控制器列表中 `jackal_joint_publisher` 和 `jackal_velocity_controller` 为 `running`，激光和两种 odom 都有更新。

在开阔区域，以低速持续发送命令几秒后 Ctrl-C：

```bash
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist '{linear: {x: 0.15}, angular: {z: 0.0}}'
```

停止持续发布后再发一次零速度：

```bash
rostopic pub -1 /cmd_vel geometry_msgs/Twist '{linear: {x: 0.0}, angular: {z: 0.0}}'
rostopic echo -n 1 /jackal_velocity_controller/cmd_vel_out
```

命令经过 `twist_mux` 的 `/cmd_vel` 输入，送到 `/jackal_velocity_controller/cmd_vel`；控制器还发布限幅后的 `cmd_vel_out`。这里既可观察上层意图，也可观察底盘实际接受的限幅目标。[命令仲裁配置](https://github.com/jackal/jackal/blob/noetic-devel/jackal_control/config/twist_mux.yaml)、[底盘控制配置](https://github.com/jackal/jackal/blob/noetic-devel/jackal_control/config/control.yaml)

## 入手二：在配套地图上定位和导航

保留默认 `jackal_race.world` 仿真；停止终端中的手动速度发布。终端 B：

```bash
roslaunch jackal_navigation amcl_demo.launch
```

终端 C：

```bash
roslaunch jackal_viz view_robot.launch config:=navigation
```

上游 [`amcl_demo.launch`](https://github.com/jackal/jackal/blob/noetic-devel/jackal_navigation/launch/amcl_demo.launch) 默认加载配套 `jackal_race.yaml`，同时启动 AMCL 和 move_base。RViz 中先使用 **2D Pose Estimate** 在真实仿真位置给出初始位置与朝向，再用 **2D Nav Goal** 选择附近空闲区域。

预期：出现 `map → odom → base_link`，激光与地图障碍重合，move_base 发布速度，机器人接近目标。可用以下命令辅助验收：

```bash
rostopic echo -n 1 /amcl_pose
rostopic echo -n 1 /move_base/status
rosrun tf tf_echo map base_link
```

更换 world 后，先建图并通过 `map_file` 加载对应地图。`odom_navigation_demo.launch` 提供基于里程计的导航，`amcl_demo.launch` 提供地图定位导航；每次选择一个入口，保持单一 `/move_base`。

## 源码阅读顺序

| 文件 | 重点 |
| --- | --- |
| [jackal_description/urdf/jackal.urdf.xacro](https://github.com/jackal/jackal/blob/noetic-devel/jackal_description/urdf/jackal.urdf.xacro) | `wheel` 宏、四轮 joint、VelocityJointInterface transmission、传感器和配件 include |
| [jackal_description/urdf/jackal.gazebo](https://github.com/jackal/jackal/blob/noetic-devel/jackal_description/urdf/jackal.gazebo) | gazebo_ros_control、IMU / GPS 插件 |
| [jackal_control/config/control.yaml](https://github.com/jackal/jackal/blob/noetic-devel/jackal_control/config/control.yaml) | 左右两组车轮、轮距修正、速度限制、`cmd_vel_timeout` |
| [jackal_control/launch/control.launch](https://github.com/jackal/jackal/blob/noetic-devel/jackal_control/launch/control.launch) | manager spawner、EKF 和 twist_mux 的连接 |
| [jackal_control/config/robot_localization.yaml](https://github.com/jackal/jackal/blob/noetic-devel/jackal_control/config/robot_localization.yaml) | 原始 odom 与 IMU 各提供哪些观测量 |
| [jackal_navigation/launch/include/move_base.launch](https://github.com/jackal/jackal/blob/noetic-devel/jackal_navigation/launch/include/move_base.launch) | 配置分层、odom remap、全局 / 局部规划器 |

Jackal 的 `enable_odom_tf: false` 避免底盘和 EKF 同时广播同一条 `odom → base_link`；EKF 使用 `/jackal_velocity_controller/odom` 与 `/imu/data`，输出 `/odometry/filtered`。这条连接关系值得迁移到自己的项目中，具体观测掩码需要依据自己的传感器调整。

## 练习与排错

1. 画出 `/cmd_vel → twist_mux → diff_drive_controller → 4 个 wheel joint`，再画出轮速与 IMU 返回 EKF 的反馈链。
2. 修改独立工作区中的速度上限，用同一个输入分别记录输入话题、`cmd_vel_out`、轮速，解释限制发生在哪里。
3. 对照本仓库双驱动轮模型，分析 Jackal 为什么需要两侧各两轮以及轮距倍率；结合接触模型与轮距标定分析转弯滑移。
4. 检查导航时 `/front/scan`、costmap 的 `observation_sources` 与 `front_laser` frame 是否一致；若 AMCL 的激光 remap 改了，还要检查 costmap 中的独立配置。

车不动时先查仲裁输入优先级、控制器状态、命令超时和 Gazebo 时钟；定位跳动时先查重复 TF 发布者、地图是否匹配和初始姿态，再调整 AMCL 参数。
