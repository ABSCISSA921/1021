# ros1_advanced_ws · 进阶教程工作区

按**专题**组织的 ROS 1 Noetic 进阶学习工作区,六个专题各配一篇教程与一个(或两个)固定提交的子模块。建议先完成 [基础工作区](../ros1_learning_ws/README.md) 再进入;tf2、URDF、ros_control 三个专题是读懂 [舵轮控制器](../dx_final/README.md) 的直接前置。

## 这个工作区是什么

| | |
| --- | --- |
| **适合谁** | 已跑通基础示例,想系统补 tf2 / 建模 / 建图 / 控制 / 机械臂 / 视觉的同学 |
| **包含什么** | 7 个第三方子模块 + 1 个自定义包 `vision_demo`,共 24 个 catkin 包 |
| **学完能做什么** | 读懂舵轮控制器全部代码;自己搭 SLAM/视觉链路;上手 MoveIt |
| **用法特点** | **按专题单独构建**,不用一次编译全部(见「按专题构建」) |

## 目录结构

```
ros1_advanced_ws/
├── src/
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
| URDF/xacro 建模 | `urdf_tutorial`(子模块) | [02-URDF建模](../docs/tutorials/02-URDF建模.md) | `roslaunch urdf_tutorial display.launch model:=urdf/08-macroed.urdf.xacro` |
| SLAM 建图 | `slam_gmapping`(子模块)+ apt `openslam_gmapping` | [03-SLAM建图](../docs/tutorials/03-SLAM建图.md) | `rosrun gmapping slam_gmapping scan:=scan` |
| ros_control | `ros_controllers` + `control_toolbox`(子模块) | [04-ros_control进阶](../docs/tutorials/04-ros_control进阶.md) | `roslaunch diffbot_sim diffbot_gazebo.launch`(基础工作区) |
| MoveIt 机械臂 | `panda_moveit_config`(子模块)+ apt `moveit` | [05-MoveIt机械臂](../docs/tutorials/05-MoveIt机械臂.md) | `roslaunch panda_moveit_config demo.launch` |
| 视觉处理 | `usb_cam`(子模块)+ 自定义 `vision_demo` | [06-视觉处理](../docs/tutorials/06-视觉处理.md) | `rosrun vision_demo red_detector ~image:=/usb_cam/image_raw` |

每篇教程都包含:**学习目标 → 运行步骤 → 原理要点 → 代码导读 → 练习任务 → 与舵轮项目的关联 → 经典开源项目**。

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

- `vision_demo`:cv_bridge + OpenCV 红色物体检测示例 + 无摄像头测试图像源,详见 [包 README](src/vision_demo/README.md)。

## 环境准备与构建

```bash
source /opt/ros/noetic/setup.bash
cd <仓库根目录>

# 全部专题依赖(会拉取 moveit,体积较大;按需可选装,见下表)
rosdep install --from-paths ros1_advanced_ws/src --ignore-src -r -y
```

```bash
cd ros1_advanced_ws
catkin init
catkin config --extend /opt/ros/noetic
catkin build          # 全量构建(24 个包,需要全部依赖已装)
source devel/setup.bash
```

### 按专题构建(推荐)

| 想学 | 构建命令 | 额外 apt 依赖 |
| --- | --- | --- |
| tf2 | `catkin build geometry_tutorials` | `ros-noetic-turtlesim` |
| URDF | `catkin build urdf_tutorial` | — |
| SLAM | `catkin build slam_gmapping` | `ros-noetic-openslam-gmapping` |
| ros_control | `catkin build ros_controllers control_toolbox` | — |
| MoveIt | `catkin build panda_moveit_config` | `ros-noetic-moveit`(体积大) |
| 视觉 | `catkin build usb_cam vision_demo` | `libopencv-dev` |

## 学习顺序建议

- **必学**(与舵轮考核强相关):tf2 → URDF → ros_control,按此顺序;
- **选学**:SLAM(场地感知)、视觉(自动瞄准)、MoveIt(云台/机械臂轨迹),按兴趣;
- 每个专题学完做教程里的「练习任务」,再用「经典开源项目」扩展视野。

## 常见问题

- rosdep 无法解析的 key:按上表手动 `apt install` 对应包;
- usb_cam 打不开设备:见 [视觉教程](../docs/tutorials/06-视觉处理.md) 第 1 节(`/dev/video*` 与虚拟机直通);
- gmapping 等 TF 超时:先起仿真、后起 gmapping;
- 更多见 [docs/03-常见问题.md](../docs/03-常见问题.md)。

## 学完去哪

- 做考核项目:[dx_final 舵轮底盘控制器](../dx_final/README.md)——tf2/URDF/ros_control 三个专题的知识在控制器 README 里逐条对应。
