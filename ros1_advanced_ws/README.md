# ros1_advanced_ws · 进阶教程工作区

按**专题**组织的 ROS 1 Noetic 进阶学习工作区,包含通用专题、配套 URDF 的控制实验，以及从建图到定位导航的项目。建议先完成 [基础工作区](../ros1_learning_ws/README.md) 再进入；各专题可独立选择。

## 这个工作区是什么

| | |
| --- | --- |
| **适合谁** | 已跑通基础示例,想系统补 tf2 / 建模 / 建图 / 控制 / 机械臂 / 视觉的同学 |
| **包含什么** | 7 个第三方子模块 + `control_lab`、`navigation_lab`、`vision_demo`,具体包列表见 catkin list |
| **学完能做什么** | 自己搭建 TF、模型、控制、SLAM 或视觉链路，上手 MoveIt |
| **用法特点** | **按专题单独构建**,不用一次编译全部(见「按专题构建」) |

## 目录结构

```
ros1_advanced_ws/
├── src/
│   ├── control_lab/           # 自有:单关节 PID + 差速底盘 URDF/Gazebo
│   ├── navigation_lab/        # 自有:gmapping / AMCL / move_base / EKF
│   ├── geometry_tutorials/    # 子模块:tf2 官方演示(turtle_tf2)
│   ├── urdf_tutorial/         # 子模块:URDF/xacro 官方教程
│   ├── slam_gmapping/         # 子模块:2D 激光建图 gmapping
│   ├── ros_controllers/       # 子模块:标准控制器合集(12 个包)
│   ├── control_toolbox/       # 子模块:PID 等控制工具箱
│   ├── panda_moveit_config/   # 子模块:MoveIt 的 Panda 机械臂配置
│   ├── usb_cam/               # 子模块:USB 摄像头驱动(ROS1 最终版 0.3.7)
│   └── vision_demo/           # 自定义包:cv_bridge + OpenCV 红色物体检测
└── README.md
```

## 专题详解

| 专题 | 依赖 | 教程 | 入门命令 |
| --- | --- | --- | --- |
| tf2 坐标变换 | `geometry_tutorials`(子模块) | [01-tf2坐标变换](../docs/tutorials/01-tf2坐标变换.md) | `roslaunch turtle_tf2 turtle_tf2_demo.launch` |
| URDF/xacro 建模 | `urdf_tutorial`(子模块) | [02-URDF建模](../docs/tutorials/02-URDF建模.md) | `roslaunch urdf_tutorial display.launch model:="$(rospack find urdf_tutorial)/urdf/08-macroed.urdf.xacro"` |
| SLAM 建图 | `navigation_lab` + gmapping；子模块供源码阅读 | [03-SLAM建图](../docs/tutorials/03-SLAM建图.md) | `roslaunch navigation_lab slam.launch` |
| ros_control | `control_lab` + 标准控制器 | [04-ros_control进阶](../docs/tutorials/04-ros_control进阶.md) / [入手指南](src/control_lab/README.md) | 见项目指南中的单关节与底盘实验 |
| 导航与定位 | `navigation_lab` + Navigation / robot_localization | [07-导航与定位](../docs/tutorials/07-导航与定位.md) / [入手指南](src/navigation_lab/README.md) | `roslaunch navigation_lab navigation.launch` |
| MoveIt 机械臂 | `panda_moveit_config`(子模块)+ apt `moveit` | [05-MoveIt机械臂](../docs/tutorials/05-MoveIt机械臂.md) | `roslaunch panda_moveit_config demo.launch` |
| 视觉处理 | `usb_cam`(子模块)+ 自定义 `vision_demo` | [06-视觉处理](../docs/tutorials/06-视觉处理.md) | `rosrun vision_demo red_detector ~image:=/usb_cam/image_raw` |

专题按学习目标、运行实验、原理与源码、练习和参考资料组织。

### 子模块固定提交

| 子模块 | 分支/tag | 固定提交 |
| --- | --- | --- |
| `geometry_tutorials` | noetic-devel | `d365875776b154ead3150faae9f47d591c20a9d1` |
| `urdf_tutorial` | master | `21a6ecdff0146ad93852cf32e8f494439fd99065` |
| `slam_gmapping` | melodic-devel(Noetic 实际发布分支) | `eec86068ceb92ebc433b435fe482db14c562f268` |
| `ros_controllers` | noetic-devel | `c2348e85abf35cf33cf654a84d61db206abe9a73` |
| `control_toolbox` | noetic-devel | `de05a5c282f98f761fb162cc4206a94f7003c9a3` |
| `panda_moveit_config` | noetic-devel | `a86da56ab1c756a851d8ee2a06dd04266d1653d6` |
| `usb_cam` | tag 0.3.7(ROS1 最终版) | `addab4a65fdf65c460fec2cc3eee8fab94699370` |

### 自定义包

- `control_lab`：配套 URDF、transmission、Gazebo 场景和控制器配置，见[入手指南](src/control_lab/README.md)。
- `navigation_lab`：复用 control_lab 的移动机器人，完成 EKF、建图、AMCL 和导航，见[入手指南](src/navigation_lab/README.md)。

- `vision_demo`:cv_bridge + OpenCV 红色物体检测示例 + 无摄像头测试图像源,详见 [包 README](src/vision_demo/README.md)。

## 新项目快速开始

这两个项目不要求初始化第三方子模块。在仓库根目录的新终端执行：

```bash
source /opt/ros/noetic/setup.bash
rosdep update --include-eol-distros --rosdistro noetic
rosdep install --from-paths ros1_advanced_ws/src/control_lab ros1_advanced_ws/src/navigation_lab --ignore-src --rosdistro noetic -y
bash scripts/build_learning.sh projects
source ros1_advanced_ws/devel/setup.bash
```

从[控制实验](src/control_lab/README.md)开始，再进入[导航与定位](src/navigation_lab/README.md)。切换仿真实验时关闭上一组 launch。以下全量依赖安装只在需要其余专题时执行。

## 环境准备与构建

```bash
source /opt/ros/noetic/setup.bash
cd <仓库根目录>
git submodule update --init --recursive -- ros1_advanced_ws/src

# 全部专题依赖(会拉取 moveit,体积较大;按需可选装,见下表)
rosdep update --include-eol-distros --rosdistro noetic
rosdep install --from-paths ros1_advanced_ws/src --ignore-src --rosdistro noetic -r -y
```

```bash
cd ros1_advanced_ws
catkin init
catkin config --extend /opt/ros/noetic
catkin build          # 全量构建(需要全部依赖已装)
source devel/setup.bash
```

### 按专题构建(推荐)

| 想学 | 构建命令 | 额外 apt 依赖 |
| --- | --- | --- |
| 控制与导航项目 | `catkin build control_lab navigation_lab` | 见新项目的 rosdep 命令 |
| tf2 | `catkin build turtle_tf2` | `ros-noetic-turtlesim` |
| URDF | `catkin build urdf_tutorial` | — |
| SLAM | `catkin build gmapping` | `ros-noetic-openslam-gmapping` |
| ros_control | `catkin build ros_controllers control_toolbox` | — |
| MoveIt | `catkin build panda_moveit_config` | `ros-noetic-moveit`(体积大) |
| 视觉 | `catkin build usb_cam vision_demo` | `libopencv-dev` |

## 学习顺序建议

- **基础专题**:tf2 → URDF → ros_control,按此顺序;
- **选学**:SLAM(建图)、视觉(图像处理)、MoveIt(机械臂规划),按兴趣;
- 每个专题学完做教程里的「练习任务」,再用「经典开源项目」扩展视野。

## 常见问题

- rosdep 无法解析的 key:按上表手动 `apt install` 对应包;
- usb_cam 打不开设备:见 [视觉教程](../docs/tutorials/06-视觉处理.md) 第 1 节(`/dev/video*` 与虚拟机直通);
- gmapping 等 TF 超时:先起仿真、后起 gmapping;
- 更多见 [docs/03-常见问题.md](../docs/03-常见问题.md)。

## 学完去哪

- 按[学习路线](../docs/05-学习路线与实验.md)选择综合实验，使用[模板](../docs/templates/实验记录.md)记录复现步骤和结果。

## 开源项目扩展

[开源项目指南](../docs/projects/README.md)提供 RRBot、Jackal、TurtleBot3 和 robot_localization 的 ROS 1 分支、真实入口、运行验证与阅读顺序。外部项目独立构建，避免把另一台机器人的同名话题混入当前实验。
