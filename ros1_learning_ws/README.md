# ros1_learning_ws

这是一个 ROS 1 Noetic 学习工作空间，包含 Gazebo 仿真、TurtleBot3 多机跟随、DiffBot 底盘插件和基础 ROS 节点。

## 构成

自定义包：

- `diffbot_sim`：带云台跟随插件的差速机器人。
- `xp_second_pkg`：TurtleBot3 多机跟随节点。(任务2)
- `ros_pkg`：基础速度控制示例。(任务1)

第三方子模块：

- `DynamixelSDK`：固定提交 `f220a1e`。
- `turtlebot3`：固定 Noetic 提交 `4ae959e`。
- `turtlebot3_msgs`：固定提交 `76e78b0`。
- `turtlebot3_simulations`：固定 Noetic 提交 `e9d809c`。
- `wpr_simulation`：固定提交 `9c28619`。

## 构建

```bash
source /opt/ros/noetic/setup.bash
cd ros1_learning_ws
catkin init
catkin config --extend /opt/ros/noetic
catkin build
source devel/setup.bash
```

构建目录 `build/`、`devel/`、`logs/` 和 `.catkin_tools/` 都是本机生成内容，不应提交。

## 运行示例

```bash
# DiffBot 仿真；无头检查时使用 gui:=false
roslaunch diffbot_sim diffbot_gazebo.launch
roslaunch diffbot_sim diffbot_gazebo.launch gui:=false

# TurtleBot3 多机跟随
export TURTLEBOT3_MODEL=burger
roslaunch xp_second_pkg multi_turtlebot3.launch

# 基础速度节点
roslaunch ros_pkg v_node.launch
```

启动 Gazebo 时，`gui:=true` 会启动 `gzclient`；容器、远程服务器或 CI 环境使用 `gui:=false`。

## 常见问题

- 子模块目录为空：在仓库根目录执行 `git submodule update --init --recursive`。
- 改动路径或 ROS 发行版后出现旧缓存：删除本机的 `build/`、`devel/`、`logs/`，再重新执行 `catkin build`。
- TurtleBot3 launch 找不到模型：先设置 `TURTLEBOT3_MODEL=burger`、`waffle` 或 `waffle_pi`。
