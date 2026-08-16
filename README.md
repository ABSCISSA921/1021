# ROS 1 学习与 RoboMaster 舵轮控制工作区

面向 **ROS 1 Noetic + Gazebo Classic 11** 的团队学习仓库:从 ROS 零基础,到 Gazebo 仿真、tf2、SLAM、ros_control,最终完成 RoboMaster 哨兵四舵轮底盘控制器。所有第三方依赖以子模块固定提交管理,克隆即可复现。

> Gazebo Classic 已进入维护结束阶段;本仓库仍以 ROS Noetic 的 Gazebo 11 环境为目标,暂不迁移 ROS 2 / 新 Gazebo。

## 仓库结构

```
.
├── docs/                   # 学习文档(环境、概念、工具、FAQ、教程)
│   ├── 00-环境安装.md
│   ├── 01-ROS核心概念.md
│   ├── 02-工具与调试.md
│   ├── 03-常见问题.md
│   ├── requirements.md     # 哨兵考核原始需求与评分细则
│   ├── assets/             # 参考资料(控制理论笔记等)
│   └── tutorials/          # 进阶教程(对应 ros1_advanced_ws)
├── ros1_learning_ws/       # 基础学习工作区(任务 1、任务 2)
├── ros1_advanced_ws/       # 进阶教程工作区(tf2/URDF/SLAM/ros_control/MoveIt/视觉)
└── dx_final/               # 哨兵项目工作区(考核作业)
```

## 快速开始

```bash
# 1. 环境:Ubuntu 20.04 + ROS Noetic desktop-full(详见 docs/00-环境安装.md)

# 2. 获取源码(递归子模块)
git clone --recurse-submodules git@github.com:ABSCISSA921/1021.git
cd 1021

# 3. 安装依赖
source /opt/ros/noetic/setup.bash
rosdep install --from-paths ros1_learning_ws/src ros1_advanced_ws/src dx_final/src --ignore-src -r -y

# 4. 构建并运行第一个示例
cd ros1_learning_ws
catkin init && catkin config --extend /opt/ros/noetic
catkin build && source devel/setup.bash
roslaunch diffbot_sim diffbot_gazebo.launch
```

构建、启动和排查的完整说明在各工作区 README 中。

## 学习路线图

### 路线一:ROS 新手(从零开始)

| 步骤 | 内容 | 位置 |
| --- | --- | --- |
| 0 | 安装环境 | [docs/00-环境安装.md](docs/00-环境安装.md) |
| 1 | 核心概念速查(节点/话题/服务/TF) | [docs/01-ROS核心概念.md](docs/01-ROS核心概念.md) |
| 2 | 任务 1:基础速度节点 + 状态机 | [ros1_learning_ws/src/ros_pkg](ros1_learning_ws/src/ros_pkg/README.md) |
| 3 | 任务 2:TurtleBot3 多机跟随 + tf2 | [ros1_learning_ws/src/xp_second_pkg](ros1_learning_ws/src/xp_second_pkg/README.md) |
| 4 | DiffBot 仿真与 Gazebo 插件 | [ros1_learning_ws/src/diffbot_sim](ros1_learning_ws/src/diffbot_sim/README.md) |
| 5 | 调试工具链(rqt/rosbag/PlotJuggler) | [docs/02-工具与调试.md](docs/02-工具与调试.md) |

### 路线二:进阶专题(配合 `ros1_advanced_ws`)

| 步骤 | 专题 | 教程 |
| --- | --- | --- |
| 6 | tf2 坐标变换(ROS 必修) | [docs/tutorials/01-tf2坐标变换.md](docs/tutorials/01-tf2坐标变换.md) |
| 7 | URDF / xacro 机器人建模 | [docs/tutorials/02-URDF建模.md](docs/tutorials/02-URDF建模.md) |
| 8 | gmapping 激光建图 | [docs/tutorials/03-SLAM建图.md](docs/tutorials/03-SLAM建图.md) |
| 9 | ros_control 框架与控制器 | [docs/tutorials/04-ros_control进阶.md](docs/tutorials/04-ros_control进阶.md) |
| 10 | MoveIt 机械臂运动规划 | [docs/tutorials/05-MoveIt机械臂.md](docs/tutorials/05-MoveIt机械臂.md) |
| 11 | usb_cam + cv_bridge + OpenCV | [docs/tutorials/06-视觉处理.md](docs/tutorials/06-视觉处理.md) |

### 路线三:哨兵考核项目

| 步骤 | 内容 | 位置 |
| --- | --- | --- |
| 12 | 考核需求与评分细则 | [docs/requirements.md](docs/requirements.md) |
| 13 | 构建并运行 Sentry 仿真 | [dx_final/README.md](dx_final/README.md) |
| 14 | 控制器代码导读(逆运动学/PID/功率限制) | [dx_final/src/sentry_chassis_controller](dx_final/src/sentry_chassis_controller/README.md) |
| 15 | 历史实验代码(仅查阅) | `dx_final/legacy/` |

推荐顺序:**路线一 → 路线二 → 路线三**。路线二的 tf2、URDF、ros_control 是读懂哨兵控制器的直接前置知识。

## 三个工作区

| 工作区 | 定位 | 内容 |
| --- | --- | --- |
| [`ros1_learning_ws`](ros1_learning_ws/README.md) | 基础入门 | 自定义包:ros_pkg(任务1)、xp_second_pkg(任务2)、diffbot_sim;子模块:DynamixelSDK、turtlebot3 系列、wpr_simulation |
| [`ros1_advanced_ws`](ros1_advanced_ws/README.md) | 进阶专题 | 子模块:geometry_tutorials、urdf_tutorial、slam_gmapping、ros_controllers、control_toolbox、panda_moveit_config、usb_cam;自定义包:vision_demo |
| [`dx_final`](dx_final/README.md) | 哨兵考核 | 子模块:rm_control、rm_description_for_task;自定义包:sentry_chassis_controller |

三个工作区**相互独立**,分别 `catkin build`。构建目录均被 `.gitignore` 忽略,不会提交。

## 子模块管理

- 首次克隆:`git clone --recurse-submodules <url>`;
- 已有副本恢复子模块:`git submodule sync --recursive && git submodule update --init --recursive`;
- 子模块全部固定提交,处于 detached HEAD 是正常现象;
- `dx_final/src/rm_description_for_task` 的目录名与 ROS 包名 `rm_description` 不同,是有意保留;
- 子模块清单见 [.gitmodules](.gitmodules)。

## 贡献与 CI

本仓库使用 GitHub Actions 冒烟测试(见 [.github/workflows/ci.yml](.github/workflows/ci.yml)):每次推送都会在 `ros:noetic` 容器中分别构建三个工作区。

提交规范:合理的 commit 粒度与清晰的 message(参考哨兵考核「完善的版本管理」一项,见 [docs/requirements.md](docs/requirements.md))。文档有错或示例跑不通,欢迎提 Issue / PR。

## 参考链接

- [ROS Wiki 官方教程](http://wiki.ros.org/ROS/Tutorials)
- [catkin-tools 文档](https://catkin-tools.readthedocs.io/)
- [ros_control wiki](https://github.com/ros-controls/ros_control/wiki)
- [Gazebo ROS Control 教程](http://gazebosim.org/tutorials/?tut=ros_control)
- 控制理论学习:[docs/assets/Control_Theory_Note_cn.pdf](docs/assets/Control_Theory_Note_cn.pdf)
