# ros1_learning_ws · 基础学习工作区

面向 ROS 零基础同学的第一个工作区:用三个难度递进的示例掌握**节点、话题、launch、TF、Gazebo 插件**。学完本工作区即可进入 [进阶工作区](../ros1_advanced_ws/README.md)。

## 构成

### 自定义包(学习重点)

| 包 | 对应任务 | 学什么 | 文档 |
| --- | --- | --- | --- |
| `ros_pkg` | 任务 1 | 节点/订阅/发布、状态机、激光数据处理 | [README](src/ros_pkg/README.md) |
| `xp_second_pkg` | 任务 2 | tf2 变换、多机器人命名空间、跟随算法 | [README](src/xp_second_pkg/README.md) |
| `diffbot_sim` | 综合 | URDF、Gazebo 模型插件、ros_control 配置 | [README](src/diffbot_sim/README.md) |

### 第三方子模块(固定提交,不要修改)

| 子模块 | 提交 | 用途 |
| --- | --- | --- |
| `DynamixelSDK` | `f220a1e` | 舵机/电机 SDK(TurtleBot3 依赖) |
| `turtlebot3` | `4ae959e` | TurtleBot3 元包 |
| `turtlebot3_msgs` | `76e78b0` | TurtleBot3 消息定义 |
| `turtlebot3_simulations` | `e9d809c` | TurtleBot3 Gazebo 仿真 |
| `wpr_simulation` | `9c28619` | 场景与工具(6-robot 出品,备查) |

## 环境准备

第一次使用前,完成 [环境安装](../docs/00-环境安装.md),并从仓库根目录安装依赖:

```bash
source /opt/ros/noetic/setup.bash
cd <仓库根目录>
rosdep install --from-paths ros1_learning_ws/src --ignore-src -r -y
```

## 构建

```bash
source /opt/ros/noetic/setup.bash
cd ros1_learning_ws
catkin init
catkin config --extend /opt/ros/noetic
catkin build
source devel/setup.bash
```

- 在**工作区根目录**执行 `catkin build`,不要进 `src/`;
- `build/ devel/ logs/ .catkin_tools/` 是本机生成内容,已被 `.gitignore` 忽略;
- 换路径/发行版后出问题:删除这四个目录重新构建。

## 运行示例

### 1. DiffBot 仿真(建议第一个跑)

```bash
roslaunch diffbot_sim diffbot_gazebo.launch          # 桌面环境
roslaunch diffbot_sim diffbot_gazebo.launch gui:=false  # 无头(服务器/CI)
```

打开新终端发布速度指令(或直接使用 teleop 键盘):

```bash
source devel/setup.bash
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist "linear: {x: 0.3} angular: {z: 0.0}"
```

### 2. TurtleBot3 多机跟随

```bash
export TURTLEBOT3_MODEL=burger
roslaunch xp_second_pkg multi_turtlebot3.launch
```

弹出的 teleop 终端控制领航车 `tb3_0`(WASD 移动),`tb3_1` 会自动跟随并在转弯点抄近路。详细玩法见 [xp_second_pkg README](src/xp_second_pkg/README.md)。

### 3. 基础速度节点(任务 1)

```bash
roslaunch ros_pkg v_node.launch
```

需要先有一个发布 `/odom` 与 `/scan` 的仿真(例如上述 DiffBot 环境)才能看到完整状态机流转。单独启动该节点也可以学习其代码结构。

## 学习建议

1. 三个示例**按表里顺序**学习,难度递进;
2. 跑通一个 → 读对应包 README 的「代码导读」→ 对照源码逐段理解 → 改一改(如改阈值、加日志)再跑;
3. 概念不懂时查 [ROS 核心概念](../docs/01-ROS核心概念.md),调试工具见 [工具与调试](../docs/02-工具与调试.md),报错见 [常见问题](../docs/03-常见问题.md)。

## 常见问题速览

- 子模块为空:仓库根目录 `git submodule update --init --recursive`。
- 找不到模型:先 `export TURTLEBOT3_MODEL=burger`。
- 旧缓存报错:删除 `build/ devel/ logs/ .catkin_tools/` 重新 `catkin build`。
- 其余见 [docs/03-常见问题.md](../docs/03-常见问题.md)。
