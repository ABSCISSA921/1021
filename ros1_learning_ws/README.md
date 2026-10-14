# ros1_learning_ws · 基础学习工作区

从无仿真的通信实验开始，再阅读 C++ 状态机、多机器人跟随和 Gazebo 插件。各包的学习目标与运行环境不同，按下面顺序选择。

| 顺序 | 包 | 内容 | 运行条件 |
| --- | --- | --- | --- |
| 1 | [ros_basics](src/ros_basics/README.md) | 自定义消息、话题、服务、Action、参数、remap、rosbag | ROS 核心环境，无 GUI |
| 2 | [ros_pkg](src/ros_pkg/README.md) | C++ 节点、传感器回调、状态机 | 有 /odom、/scan、/cmd_vel 的机器人仿真 |
| 3 | [xp_second_pkg](src/xp_second_pkg/README.md) | tf2、多机命名空间、跟随 | TurtleBot3 + Gazebo |
| 4 | [diffbot_sim](src/diffbot_sim/README.md) | URDF、Gazebo 插件、ros_control | Gazebo；模型没有激光雷达 |

## 只构建通信基础

在仓库根目录：

```bash
source /opt/ros/noetic/setup.bash
rosdep install --from-paths ros1_learning_ws/src/ros_basics --ignore-src --rosdistro noetic -y
bash scripts/build_learning.sh basics
source ros1_learning_ws/devel/setup.bash
roslaunch ros_basics topics.launch
```

完整实验和验收见 [ros_basics README](src/ros_basics/README.md)。

## 准备仿真环境

在新终端进入仓库根目录，仅初始化本工作区子模块：

```bash
git submodule update --init --recursive -- ros1_learning_ws/src
source /opt/ros/noetic/setup.bash
rosdep install --from-paths ros1_learning_ws/src --ignore-src --rosdistro noetic -y
# wpr_simulation 的 package.xml 未声明此依赖
sudo apt install ros-noetic-image-transport
bash scripts/build_learning.sh simulation
source ros1_learning_ws/devel/setup.bash
```

第三方目录：`DynamixelSDK`、`turtlebot3`、`turtlebot3_msgs`、`turtlebot3_simulations`、`wpr_simulation`。版本以 `git submodule status` 和 gitlink 为准，不直接修改上游源码。

## 运行与验证

每个新终端在仓库根目录执行 `source ros1_learning_ws/devel/setup.bash`。一次只运行一个仿真实验。

### C++ 状态机

```bash
# 终端 A：WPR 场景；需要桌面环境
roslaunch wpr_simulation wpb_simple.launch
```

```bash
# 终端 B：先检查必要输入
rostopic echo /odom -n 1
rostopic echo /scan -n 1
roslaunch ros_pkg v_node.launch
```

节点使用固定目标坐标，运行前核对场景初始位姿，实验中记录状态转换并结合[包文档](src/ros_pkg/README.md)解释结果。雷达停车练习需要 `/scan`，可使用 WPR 或 TurtleBot3；DiffBot 未配备激光雷达。

### TurtleBot3 多机跟随

```bash
export TURTLEBOT3_MODEL=burger
roslaunch xp_second_pkg multi_turtlebot3.launch
```

在 teleop 终端控制 `tb3_0`，观察 `tb3_1` 的跟随。验收：查看 `/tb3_0/*`、`/tb3_1/*` 话题，并用 TF 工具检查两个机器人之间的变换。终端及命名空间细节见[包文档](src/xp_second_pkg/README.md)。

### DiffBot 模型与插件

```bash
roslaunch diffbot_sim diffbot_gazebo.launch
# 无显示器时可加 gui:=false
```

另一个终端：

```bash
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist "linear: {x: 0.3} angular: {z: 0.5}"
```

`/cmd_vel` 先由 Gazebo 插件接收，插件再输出到底盘和云台；底盘控制话题是 `/diffbot_controller/cmd_vel`，里程计在 `/diffbot_controller/odom`。用 `rostopic info` 核实链路，统一向插件的 `/cmd_vel` 输入发送命令。

## 下一步

完成[学习路线](../docs/05-学习路线与实验.md)中的通信与仿真验收，进入[进阶工作区](../ros1_advanced_ws/README.md)。排错见[常见问题](../docs/03-常见问题.md)，记录见[实验模板](../docs/templates/实验记录.md)。
