# ROS 1 学习与 RoboMaster 舵轮控制工作区

面向 **ROS 1 Noetic + Gazebo Classic 11** 的团队学习仓库:从 ROS 零基础,到 Gazebo 仿真、tf2、SLAM、ros_control、MoveIt、视觉,最终完成 RoboMaster **四舵轮底盘控制器**。所有第三方依赖以**子模块固定提交**管理,克隆即可复现;每次构建都有 CI 冒烟测试兜底。

## 这个仓库是什么

| | |
| --- | --- |
| **适合谁** | ROS 零基础的新队员;需要可复现环境的老队员;想系统过一遍 ROS1 专题(建模仿真/控制/感知)的同学 |
| **包含什么** | 3 个独立 catkin 工作区(基础/进阶/考核)+ 完整的文档体系 + 14 个固定提交的第三方子模块 + GitHub Actions CI |
| **不包含什么** | ROS 2 / 新 Gazebo(noetic 已 EOL,但本仓库仍以该环境为教学基线,不迁移) |
| **怎么用** | 按下面的三条学习路线走:新手从「路线一」开始,考核队员直奔「路线三」,需要哪块专题知识查「路线二」 |

## 仓库亮点

- **开箱即复现**:第三方依赖全部固定提交(`.gitmodules` + gitlink),CI 在 `ros:noetic` 干净容器里验证「克隆 → 装依赖 → 构建」全链路;
- **学练结合**:每个示例包都有独立 README(功能、话题/参数表、代码导读、练习任务),不只是「能跑」;
- **舵轮控制器深度解析**:逆运动学、8 个 PID、前馈+软启动、交叉耦合、就近转角、虚拟电容功率限制、里程计与 tf,一个控制器吃透 ros_control;
- **专题 + 经典开源导航**:tf2 / URDF / SLAM / ros_control / MoveIt / 视觉六个专题,每篇教程附知名开源项目地址,学完有去处。

## 环境要求

| 项目 | 要求 | 说明 |
| --- | --- | --- |
| 操作系统 | Ubuntu 20.04 LTS(Focal) | Noetic 官方唯一支持版本 |
| ROS | Noetic desktop-full | 含 Gazebo、RViz、rqt 全家桶 |
| 仿真 | Gazebo Classic 11 | 已停止维护,本仓库仍以此为基线 |
| 工具链 | catkin-tools(必装)、rosdep | 统一 `catkin build`,不用 `catkin_make` |
| 磁盘 / 内存 | ≥ 40 GB 空闲 / ≥ 8 GB | ROS + Gazebo + MoveIt 占约 10 GB |

完整安装步骤(含国内镜像、rosdep 初始化与 **noetic EOL 避坑**)见 [docs/00-环境安装.md](docs/00-环境安装.md)。

## 目录结构

```
1021/
├── README.md                    # 本文件:总览 + 路线图
├── .gitmodules                  # 14 个第三方子模块清单(全部固定提交)
├── .github/workflows/ci.yml     # CI:三个工作区分别冒烟构建
├── docs/                        # 学习文档体系
│   ├── 00-环境安装.md            #   Ubuntu20.04 + Noetic + rosdep 避坑
│   ├── 01-ROS核心概念.md         #   节点/话题/服务/参数/TF 速查手册
│   ├── 02-工具与调试.md          #   rqt/rosbag/PlotJuggler/IDE/调试技巧
│   ├── 03-常见问题.md            #   按工作区分组的 FAQ
│   ├── requirements.md          #   舵轮底盘控制器考核原始需求(归档)
│   ├── assets/                  #   参考资料(控制理论中文笔记 PDF 等)
│   └── tutorials/               #   六篇进阶教程(对应 ros1_advanced_ws)
├── ros1_learning_ws/            # 基础工作区:任务1/任务2/综合示例
├── ros1_advanced_ws/            # 进阶工作区:六个专题教程
└── dx_final/                    # 考核工作区:四舵轮底盘控制器
```

三个工作区**相互独立**,各自 `catkin init` + `catkin build`,构建产物均被 `.gitignore` 忽略。

## 快速开始

### 全新环境(第一次接触 ROS)

1. 按 [docs/00-环境安装.md](docs/00-环境安装.md) 装好 Ubuntu 20.04 + Noetic + catkin-tools + rosdep;
2. 拉取仓库(递归子模块):

```bash
git clone --recurse-submodules git@github.com:ABSCISSA921/1021.git
cd 1021
```

3. 一次性装依赖并构建基础工作区:

```bash
source /opt/ros/noetic/setup.bash
rosdep install --from-paths ros1_learning_ws/src ros1_advanced_ws/src dx_final/src --ignore-src -r -y

cd ros1_learning_ws
catkin init && catkin config --extend /opt/ros/noetic
catkin build && source devel/setup.bash
```

4. 看到第一台小车:

```bash
roslaunch diffbot_sim diffbot_gazebo.launch
```

### 已有环境(复现 / 换机器)

```bash
git clone --recurse-submodules git@github.com:ABSCISSA921/1021.git && cd 1021
git submodule sync --recursive && git submodule update --init --recursive
source /opt/ros/noetic/setup.bash
rosdep install --from-paths ros1_learning_ws/src ros1_advanced_ws/src dx_final/src --ignore-src -r -y
# 进入任一工作区:catkin init && catkin config --extend /opt/ros/noetic && catkin build
```

### 直奔考核项目(舵轮底盘)

```bash
cd dx_final
catkin init && catkin config --extend /opt/ros/noetic
catkin build && source devel/setup.bash
roslaunch sentry_chassis_controller sentry_chassis_control.launch gui:=true keyboard:=true tools:=true
```

键盘:`W/S` 前后、`A/D` 横移、`Q/E` 旋转、`SPACE` 急停、`G` 小陀螺、`H` 世界坐标系。详见 [dx_final/README.md](dx_final/README.md)。

## 学习路线图

### 路线一:ROS 新手(零基础 → 能写简单节点)

| 步骤 | 内容 | 位置 | 收获 |
| --- | --- | --- | --- |
| 0 | 安装环境 | [docs/00-环境安装.md](docs/00-环境安装.md) | 可运行的 Noetic 环境 |
| 1 | 核心概念速查 | [docs/01-ROS核心概念.md](docs/01-ROS核心概念.md) | 节点/话题/服务/TF 不再陌生 |
| 2 | 任务 1:状态机导航节点 | [ros_pkg](ros1_learning_ws/src/ros_pkg/README.md) | 第一个节点:订阅/发布/状态机 |
| 3 | 任务 2:TurtleBot3 多机跟随 | [xp_second_pkg](ros1_learning_ws/src/xp_second_pkg/README.md) | 命名空间 + tf2 相对位姿查询 |
| 4 | DiffBot 云台自稳插件 | [diffbot_sim](ros1_learning_ws/src/diffbot_sim/README.md) | Gazebo ModelPlugin + ros_control 配置 |
| 5 | 调试工具链 | [docs/02-工具与调试.md](docs/02-工具与调试.md) | rqt/rosbag/PlotJuggler 实战用法 |

### 路线二:进阶专题(配合 `ros1_advanced_ws`)

| 步骤 | 专题 | 教程 | 为什么学 |
| --- | --- | --- | --- |
| 6 | tf2 坐标变换 | [tutorials/01](docs/tutorials/01-tf2坐标变换.md) | ROS 必修;舵轮「世界坐标控制」的基础 |
| 7 | URDF / xacro 建模 | [tutorials/02](docs/tutorials/02-URDF建模.md) | 读懂 rm_description 舵轮模型 |
| 8 | gmapping 激光建图 | [tutorials/03](docs/tutorials/03-SLAM建图.md) | 建图/定位与 `/odom` 接口规范 |
| 9 | ros_control 框架 | [tutorials/04](docs/tutorials/04-ros_control进阶.md) | 舵轮控制器运行的框架,直接前置 |
| 10 | MoveIt 机械臂 | [tutorials/05](docs/tutorials/05-MoveIt机械臂.md) | 规划/执行分离思想 |
| 11 | usb_cam + OpenCV | [tutorials/06](docs/tutorials/06-视觉处理.md) | 图像消息 → cv_bridge → 检测全链路 |

### 路线三:舵轮底盘控制器(考核项目)

| 步骤 | 内容 | 位置 |
| --- | --- | --- |
| 12 | 考核需求与评分细则 | [docs/requirements.md](docs/requirements.md) |
| 13 | 构建并运行底盘仿真 | [dx_final/README.md](dx_final/README.md) |
| 14 | 控制器代码导读(逆运动学/PID/功率限制) | [sentry_chassis_controller](dx_final/src/sentry_chassis_controller/README.md) |

推荐顺序:**路线一 → 路线二 → 路线三**。路线二的 tf2、URDF、ros_control 是读懂舵轮控制器的直接前置知识。

## 三个工作区详解

### `ros1_learning_ws` · 基础入门

任务驱动:三个难度递进的示例掌握 ROS 核心概念。构建与运行见 [工作区 README](ros1_learning_ws/README.md)。

| 包 | 类型 | 学什么 |
| --- | --- | --- |
| `ros_pkg` | 自定义(任务 1) | 节点/订阅/发布、状态机、激光数据处理 |
| `xp_second_pkg` | 自定义(任务 2) | tf2 变换、多机器人命名空间、跟随算法 |
| `diffbot_sim` | 自定义(综合) | URDF、Gazebo 模型插件、ros_control 配置 |
| `DynamixelSDK`、`turtlebot3`、`turtlebot3_msgs`、`turtlebot3_simulations`、`wpr_simulation` | 第三方子模块 | 仿真底座与机器人模型,固定提交 |

### `ros1_advanced_ws` · 进阶专题

按主题组织,每个主题一篇教程 + 一个子模块,可**按专题单独构建**(`catkin build <pkg>`)。详见 [工作区 README](ros1_advanced_ws/README.md)。

| 专题 | 依赖 | 教程 |
| --- | --- | --- |
| tf2 | geometry_tutorials(子模块) | [tutorials/01](docs/tutorials/01-tf2坐标变换.md) |
| URDF/xacro | urdf_tutorial(子模块) | [tutorials/02](docs/tutorials/02-URDF建模.md) |
| SLAM 建图 | slam_gmapping(子模块)+ apt openslam | [tutorials/03](docs/tutorials/03-SLAM建图.md) |
| ros_control | ros_controllers + control_toolbox(子模块) | [tutorials/04](docs/tutorials/04-ros_control进阶.md) |
| MoveIt | panda_moveit_config(子模块)+ apt moveit | [tutorials/05](docs/tutorials/05-MoveIt机械臂.md) |
| 视觉 | usb_cam(子模块)+ 自定义 `vision_demo` | [tutorials/06](docs/tutorials/06-视觉处理.md) |

> MoveIt 依赖体积较大,只学视觉/tf2 等专题时可跳过 `ros-noetic-moveit`,工作区 README 里有按专题的依赖清单。

### `dx_final` · 舵轮底盘控制器(考核)

| 包 | 类型 | 说明 |
| --- | --- | --- |
| `sentry_chassis_controller` | 自定义(核心作业) | 四舵轮控制器插件 + 键盘节点,约 800 行核心实现 |
| `rm_control` | 第三方子模块 | rm-controls 官方控制器工程(Gazebo 插件、硬件接口) |
| `rm_description_for_task` | 第三方子模块 | 机器人 URDF/xacro 描述(ROS 包名 `rm_description`) |

> 命名说明:包名沿用仿真机器人模型名 `sentry`,工作区主题是**四舵轮底盘控制器**,两者指同一个项目。

## 文档导航

| 文档 | 内容 | 什么时候看 |
| --- | --- | --- |
| [00-环境安装](docs/00-环境安装.md) | 安装步骤、镜像、rosdep EOL 避坑 | 装环境 / 换机器 |
| [01-ROS核心概念](docs/01-ROS核心概念.md) | 计算图、话题、服务、参数、TF、launch | 概念卡壳随时查 |
| [02-工具与调试](docs/02-工具与调试.md) | rqt/rosbag/PlotJuggler/CLion/Gazebo 调试 | 跑起来了想调参调试 |
| [03-常见问题](docs/03-常见问题.md) | 按工作区分组的高频问题 | 报错先来这里 |
| [requirements](docs/requirements.md) | 舵轮考核原始需求与评分细则 | 考核队员必读 |
| [tutorials/](docs/tutorials/) | 六篇进阶教程(含经典开源项目) | 路线二 |

## 子模块管理

- 首次克隆:**必须** `git clone --recurse-submodules`;
- 已有副本恢复:`git submodule sync --recursive && git submodule update --init --recursive`;
- 子模块全部**固定提交**保证可复现,`git submodule status` 看到 detached HEAD 是正常现象,**不要**随意升级提交;
- 清单与分支信息见 [.gitmodules](.gitmodules);
- `dx_final/src/rm_description_for_task` 是仓库目录名,ROS 包名为 `rm_description`,launch 中用包名。

## 贡献与 CI

- **CI**:推送到工作区源码、子模块或 CI 配置时,会在 `ros:noetic-ros-base-focal` 容器中分别构建三个工作区(纯文档改动不触发);流程见 [.github/workflows/ci.yml](.github/workflows/ci.yml);
- **提交规范**:合理的 commit 粒度与清晰 message(参考舵轮考核「完善的版本管理」一项,见 [docs/requirements.md](docs/requirements.md));
- **反馈**:文档有错、示例跑不通、教程有更好的开源项目推荐,欢迎提 Issue / PR。

## 参考链接

- [ROS Wiki 官方教程](http://wiki.ros.org/ROS/Tutorials)
- [catkin-tools 文档](https://catkin-tools.readthedocs.io/)
- [ros_control wiki](https://github.com/ros-controls/ros_control/wiki)
- [Gazebo ROS Control 教程](http://gazebosim.org/tutorials/?tut=ros_control)
- 控制理论学习:[docs/assets/Control_Theory_Note_cn.pdf](docs/assets/Control_Theory_Note_cn.pdf)
