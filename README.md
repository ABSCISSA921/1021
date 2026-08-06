# ROS 1 学习与 RoboMaster 哨兵控制工作区

本仓库面向 ROS 1 Noetic 学习、Gazebo 仿真和 RoboMaster 哨兵底盘控制。两个工作空间相互独立，生成的构建目录不会提交到 Git。

## 工作空间

| 工作空间 | 内容 | 说明 |
| --- | --- | --- |
| [`ros1_learning_ws`](ros1_learning_ws/README.md) | DiffBot、TurtleBot3、Waterplus、跟随算法 | ROS 基础、Gazebo 和多机器人实验 |
| [`dx_final`](dx_final/README.md) | Sentry 描述、RoboMaster 控制框架、四舵轮控制器 | `catkin build` 工作流和 ros_control 插件 |

## 环境

- Ubuntu 20.04
- ROS 1 Noetic
- Gazebo Classic 11
- Python 3、`catkin-tools`、`rosdep`

Gazebo Classic 已进入维护结束阶段；本仓库仍以 ROS Noetic 的 Gazebo 11 环境为目标，不在本次整理中迁移到 ROS 2 或新 Gazebo。

## 获取源码

首次获取时使用递归子模块：

```bash
git clone --recurse-submodules <repository-url>
cd <repository-directory>
git submodule status --recursive
```

已有副本可恢复子模块：

```bash
git submodule sync --recursive
git submodule update --init --recursive
```

子模块使用固定提交以保证复现；看到 detached HEAD 是正常现象。`dx_final/src/rm_description_for_task` 的仓库目录名与其 ROS 包名 `rm_description` 不同，这是有意保留的。

## 安装依赖

```bash
source /opt/ros/noetic/setup.bash
sudo apt install python3-catkin-tools python3-rosdep
rosdep install --from-paths ros1_learning_ws/src dx_final/src --ignore-src -r -y
```

如果这是系统第一次使用 rosdep，还需要先执行 `sudo rosdep init` 和 `rosdep update`。构建时请始终在工作空间根目录运行 `catkin build`，不要在 `src` 目录中直接运行 CMake。

## 学习顺序

1. 阅读 [`ros1_learning_ws/README.md`](ros1_learning_ws/README.md)，先运行基础 Gazebo 和 TurtleBot3 示例。
2. 阅读 [`dx_final/README.md`](dx_final/README.md)，构建 Sentry 工作空间并检查 URDF、控制器参数和 launch 参数。
3. 最后阅读 `sentry_chassis_controller/README.md`，结合源码理解运动学、PID、功率限制和 ros_control 插件接口。

构建、启动和常见故障排查均写在对应工作空间文档中。
