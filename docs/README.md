# 学习文档索引

先跑一个实验，再查概念和源码；每个阶段都用可观察的结果验收。

| 文档 | 用途 |
| --- | --- |
| [00 环境安装](00-环境安装.md) | Ubuntu 20.04、Noetic、rosdep、catkin-tools |
| [01 ROS 核心概念](01-ROS核心概念.md) | 节点、话题、服务、Action、参数、TF |
| [02 工具与调试](02-工具与调试.md) | 计算图、日志、曲线、录包与调试器 |
| [03 常见问题](03-常见问题.md) | 环境、编译、命名空间与仿真排错 |
| [04 常用命令速查](04-常用命令速查.md) | 日常查询与运行命令 |
| [05 学习路线与实验](05-学习路线与实验.md) | 分阶段练习、验收和综合任务 |
| [06 仓库维护约定](06-仓库维护约定.md) | 内容边界、包结构、依赖和检查 |
| [07 项目验证记录](07-项目验证记录.md) | 控制、导航、建图的实际运行结果与复验命令 |
| [开源项目入手指南](projects/README.md) | RRBot、Jackal、TurtleBot3、robot_localization 的分支、运行与源码入口 |
| [实验记录模板](templates/实验记录.md) | 记录操作、结果与问题 |

## 专题与代码入口

| 专题 | 文档 | 对应代码 |
| --- | --- | --- |
| 通信基础 | [可运行实验](../ros1_learning_ws/src/ros_basics/README.md) | `ros_basics` |
| 状态机 | [代码导读](../ros1_learning_ws/src/ros_pkg/README.md) | `ros_pkg` |
| 多机跟随 | [代码导读](../ros1_learning_ws/src/xp_second_pkg/README.md) | `xp_second_pkg` |
| 建模与仿真 | [代码导读](../ros1_learning_ws/src/diffbot_sim/README.md) | `diffbot_sim` |
| tf2 | [01 坐标变换](tutorials/01-tf2坐标变换.md) | `turtle_tf2` |
| URDF/xacro | [02 建模](tutorials/02-URDF建模.md) | `urdf_tutorial` |
| SLAM | [03 建图](tutorials/03-SLAM建图.md) | `gmapping` |
| ros_control | [04 控制框架](tutorials/04-ros_control进阶.md) / [项目指南](../ros1_advanced_ws/src/control_lab/README.md) | `control_lab`、`ros_controllers`、`control_toolbox` |
| 导航与定位 | [07 项目路线](tutorials/07-导航与定位.md) / [入手指南](../ros1_advanced_ws/src/navigation_lab/README.md) | `navigation_lab`、AMCL、move_base、EKF |
| MoveIt | [05 机械臂](tutorials/05-MoveIt机械臂.md) | `panda_moveit_config` |
| 视觉 | [06 图像处理](tutorials/06-视觉处理.md) | `usb_cam`、`vision_demo` |

[控制理论中文笔记](assets/Control_Theory_Note_cn.pdf)可作补充阅读。项目专用需求和说明由各项目自己的 `docs/` 维护。
