# ROS 1 开源项目进阶指南

这里精选 4 组可逐步拆解的上游项目：先读关节控制链，再看完整底盘，随后完成建图、定位和导航，最后研究多传感器融合。每篇都包含独立工作区、启动顺序、验收现象、源码入口和练习。

本仓库的第一遍实验从 [control_lab](../../ros1_advanced_ws/src/control_lab/README.md) 和 [navigation_lab](../../ros1_advanced_ws/src/navigation_lab/README.md) 开始；上游项目用于第二遍阅读和迁移。`dx_final` 与这些实验保持独立。

| 项目 | 学习重点 | 机器人描述 / 控制方式 | 入手指南 |
| --- | --- | --- | --- |
| Gazebo ROS Demos / RRBot | transmission、effort 接口、关节位置 PID、controller_manager | 双关节 URDF；gazebo_ros_control | [RRBot](rrbot.md) |
| Clearpath Jackal | 四轮底盘、速度接口、命令仲裁、EKF、导航的完整集成 | Jackal URDF + 传感器宏；diff_drive_controller | [Jackal](jackal.md) |
| ROBOTIS TurtleBot3 | Gmapping 建图 → 地图保存 → AMCL → move_base / DWA | Burger URDF；Gazebo 原生差速插件 | [TurtleBot3](turtlebot3.md) |
| robot_localization | wheel odometry / IMU 融合、协方差、TF 所有权 | 算法库无 URDF；复用本仓库移动底盘 | [robot_localization](robot_localization.md) |

## 环境与验证范围

基线是 **Ubuntu 20.04 + ROS 1 Noetic + Gazebo Classic 11 + Python 3**。Noetic 的维护周期已于 2025 年 5 月结束；Gazebo Classic 于 2025 年 1 月结束维护。这些指南服务于既有 ROS 1 学习环境，安装时需要仍可访问的 Focal / Noetic 软件源。[ROS REP 3](https://github.com/ros-infrastructure/rep/blob/master/rep-0003.rst)、[Gazebo 官方生命周期说明](https://classic.gazebosim.org/)

**上游源码核验日期：2026-10-02。** 已核对分支、入口文件、URDF、控制器类型和话题配置，Gazebo 端到端运行待完成。下表记录本次核验的提交；复现时以这些提交为参照，记录所用版本与运行结果。

| 上游仓库 | 核验分支 | 核验提交（短 SHA） |
| --- | --- | --- |
| [gazebo_ros_demos](https://github.com/ros-simulation/gazebo_ros_demos/tree/kinetic-devel) | `kinetic-devel` | `bc1f5a5bc6c2` |
| [jackal](https://github.com/jackal/jackal/tree/noetic-devel) | `noetic-devel` | `4ddf9b578bb7` |
| [jackal_simulator](https://github.com/jackal/jackal_simulator/tree/melodic-devel) | `melodic-devel` | `f72ffe1c160d` |
| [jackal_desktop](https://github.com/jackal/jackal_desktop/tree/melodic-devel) | `melodic-devel` | `5dbf81c6266c` |
| [turtlebot3](https://github.com/ROBOTIS-GIT/turtlebot3/tree/noetic) | `noetic` | `4ae959ea6a52` |
| [turtlebot3_msgs](https://github.com/ROBOTIS-GIT/turtlebot3_msgs/tree/noetic) | `noetic` | `76e78b0a34e07` |
| [turtlebot3_simulations](https://github.com/ROBOTIS-GIT/turtlebot3_simulations/tree/noetic) | `noetic` | `e9d809ca8e3bf` |
| [robot_localization](https://github.com/cra-ros-pkg/robot_localization/tree/noetic-devel) | `noetic-devel` | `9ef26a57fafd9` |

Jackal 的 simulator / desktop 按上游 [Noetic rosdistro 配置](https://github.com/ros/rosdistro/blob/master/noetic/distribution.yaml)使用 `melodic-devel`。RRBot 使用历史 ROS 1 分支，在 Noetic 上练习兼容性适配。TurtleBot3 按本次核验选择 ROS 1 的 `noetic` 分支；其默认分支面向 ROS 2。

## 公共准备

外部项目在独立的 Noetic 工作区下载、安装和构建。先确认已有 `/opt/ros/noetic/setup.bash`，再安装常用开发工具：

```bash
sudo apt update
sudo apt install git build-essential python3-rosdep python3-catkin-tools
```

若机器从未初始化 rosdep，先执行一次 `sudo rosdep init`；已初始化则跳过。Noetic 已结束维护，更新时显式包含它：

```bash
rosdep update --include-eol-distros --rosdistro noetic
```

每组项目使用专用目录 `~/learning_external/<项目>_ws`，与学习仓库分别管理包和依赖。各指南统一使用 catkin-tools，并通过 `catkin config --extend /opt/ros/noetic` 指定基础环境。

打开未加载自定义工作区的新终端，检查终端初始化配置中只有 ROS 基础环境。先加载 Noetic，再按各指南 source 选定工作区：

```bash
source /opt/ros/noetic/setup.bash
```

`bash --noprofile --norc` 会继承父进程中的 `PYTHONPATH`、`LD_LIBRARY_PATH` 等环境变量；切换工作区时，从桌面或登录会话另开终端。

启动、控制和检查终端分别加载同一个选定工作区，执行各指南给出的 `source ~/learning_external/.../devel/setup.bash`。结束当前项目的 launch / teleop 后再启动下一个，使 `/robot_description`、`/cmd_vel`、TF 和 Gazebo 节点归属于同一组实验。

将环境和结果记入 [实验记录模板](../templates/实验记录.md)：记录 Git SHA、启动参数、控制器状态、话题频率、TF 链、地图与 rosbag 文件路径，并完成各项目列出的验收项。

## 建议学习顺序与交付物

1. RRBot：画出“位置目标 → PID → effort command → Gazebo 关节反馈”的链路，保存一个阶跃响应 bag。
2. Jackal：找到四个车轮的 transmission、左右轮分组和最终速度命令，解释 `enable_odom_tf: false`。
3. TurtleBot3：保存自己生成的地图，重启仿真后完成一次 AMCL 初始化和导航到点。
4. robot_localization：在同一份轮速 / IMU 数据上比较原始 odom 与融合 odom，记录误差定义和协方差来源。

修改上游项目时，在独立工作区试验并保留许可证及来源。将接口迁移回本仓库时，提交自己的小模型、配置和实验记录，第三方源码继续通过依赖管理。
