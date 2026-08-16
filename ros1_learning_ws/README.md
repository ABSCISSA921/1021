# ros1_learning_ws · 基础学习工作区

面向 **ROS 零基础**同学的第一个工作区:三个难度递进的示例,掌握**节点、话题、launch、TF、Gazebo 插件与 ros_control 配置**。学完本工作区即可进入 [进阶工作区](../ros1_advanced_ws/README.md) 或直接冲击 [舵轮考核项目](../dx_final/README.md)。

## 这个工作区是什么

| | |
| --- | --- |
| **适合谁** | 刚装好 Noetic 的新队员;想补 ROS 基础的老队员 |
| **包含什么** | 3 个自定义示例包 + 5 个第三方子模块,共 18 个 catkin 包 |
| **学完能做什么** | 独立写简单节点、读懂别人 launch/URDF、用 rqt 排查连接问题 |
| **不包含什么** | 进阶专题(tf2/SLAM/MoveIt 等在进阶工作区)、舵轮控制器代码(在 dx_final) |

## 目录结构

```
ros1_learning_ws/
├── src/
│   ├── ros_pkg/            # 任务1:状态机导航节点(自定义)
│   ├── xp_second_pkg/      # 任务2:TurtleBot3 多机跟随(自定义)
│   ├── diffbot_sim/        # 综合示例:云台自稳 Gazebo 插件(自定义)
│   ├── DynamixelSDK/       # 子模块:舵机 SDK(TurtleBot3 依赖)
│   ├── turtlebot3/         # 子模块:TurtleBot3 元包
│   ├── turtlebot3_msgs/    # 子模块:消息定义
│   ├── turtlebot3_simulations/  # 子模块:Gazebo 仿真
│   └── wpr_simulation/     # 子模块:6-robot 场景与工具
└── README.md
```

## 包详解

### 自定义包(学习重点)

| 包 | 任务 | 学什么 | 文档 | 一键运行 |
| --- | --- | --- | --- | --- |
| `ros_pkg` | 任务 1 | 节点/订阅/发布、状态机、激光数据处理 | [README](src/ros_pkg/README.md) | `roslaunch ros_pkg v_node.launch` |
| `xp_second_pkg` | 任务 2 | tf2 相对位姿查询、多机器人命名空间、跟随算法 | [README](src/xp_second_pkg/README.md) | `roslaunch xp_second_pkg multi_turtlebot3.launch` |
| `diffbot_sim` | 综合 | URDF、Gazebo ModelPlugin、ros_control 配置 | [README](src/diffbot_sim/README.md) | `roslaunch diffbot_sim diffbot_gazebo.launch` |

三个示例的关系:**任务 1** 学会「写一个节点」;**任务 2** 学会「用 TF 让两台机器人协作」;**diffbot_sim** 学会「模型 + 插件 + 控制器」的完整套路——这正是舵轮控制器项目的缩小版。

### 第三方子模块(固定提交,不要修改)

| 子模块 | 固定提交 | 用途 |
| --- | --- | --- |
| `DynamixelSDK` | `f220a1e` | TurtleBot3 电机 SDK |
| `turtlebot3` | `4ae959e` | TurtleBot3 元包(description/bringup/teleop/... ) |
| `turtlebot3_msgs` | `76e78b0` | TurtleBot3 消息定义 |
| `turtlebot3_simulations` | `e9d809c` | TurtleBot3 Gazebo 仿真(fake/gazebo/slam/navigation) |
| `wpr_simulation` | `9c28619` | 6-robot 出品的场景与示例(备查) |

## 环境准备

```bash
source /opt/ros/noetic/setup.bash
cd <仓库根目录>
rosdep install --from-paths ros1_learning_ws/src --ignore-src -r -y

# wpr_simulation 漏声明 image_transport 依赖,需手动补装(FAQ 有说明)
sudo apt install ros-noetic-image-transport
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
- `build/ devel/ logs/ .catkin_tools/` 是本机生成内容,已 gitignore;
- 换路径/发行版后报错:删除这四个目录重新构建。

## 运行示例

### 1. DiffBot 仿真(建议第一个跑)

```bash
roslaunch diffbot_sim diffbot_gazebo.launch          # 桌面环境
roslaunch diffbot_sim diffbot_gazebo.launch gui:=false  # 无头(服务器/CI)
```

新终端发速度指令(或用 `rosrun teleop_twist_keyboard teleop_twist_keyboard`):

```bash
source devel/setup.bash
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist "linear: {x: 0.3} angular: {z: 0.5}"
```

**验证点**:小车动起来后,云台会自动反向补偿底盘自转(保持世界朝向),底盘会追着云台偏角转向。想读懂原理看 [diffbot_sim README](src/diffbot_sim/README.md)。

### 2. TurtleBot3 多机跟随

```bash
export TURTLEBOT3_MODEL=burger        # 必设,可选 burger/waffle/waffle_pi
roslaunch xp_second_pkg multi_turtlebot3.launch
```

弹出的 xterm 里用键盘控制领航车 `tb3_0`(WASD),`tb3_1` 自动跟随并在转弯点「抄近路」。没有 xterm 时另开终端 `rosrun turtlebot3_teleop turtlebot3_teleop_key` 手动控 `tb3_0`。

**验证点**:`rostopic list` 应看到 `/tb3_0/*`、`/tb3_1/*` 两套命名空间;`rosrun tf2_tools view_frames.py` 应看到 `world → tb3_x/base_footprint` 的 TF 链。细节见 [xp_second_pkg README](src/xp_second_pkg/README.md)。

### 3. 基础速度节点(任务 1)

```bash
# 需要环境中已有发布 /odom 与 /scan 的仿真(如上面的 DiffBot 环境)
roslaunch ros_pkg v_node.launch
```

**验证点**:观察终端日志里状态机的流转(前往 A 点 → 右转 → 雷达减速 → 停车),`rostopic echo /cmd_vel` 看它发布的速度。状态机图与代码导读见 [ros_pkg README](src/ros_pkg/README.md)。

## 学习建议

1. 按表中顺序学习即可,但 **diffbot 最先跑**(环境验证最快);
2. 每跑通一个示例:读对应包 README 的「代码导读」→ 对照源码逐段理解 → 完成「练习任务」里的改动;
3. 概念卡壳查 [ROS 核心概念](../docs/01-ROS核心概念.md);调试技巧查 [工具与调试](../docs/02-工具与调试.md);命令忘了查 [命令速查](../docs/04-常用命令速查.md);报错先查 [常见问题](../docs/03-常见问题.md)。

## 常见问题速览

- 子模块为空:仓库根目录 `git submodule update --init --recursive`;
- TurtleBot3 找不到模型:先 `export TURTLEBOT3_MODEL=burger`;
- 构建报找不到 `image_transport`:`sudo apt install ros-noetic-image-transport`(wpr_simulation 漏声明);
- 旧缓存报错:删除 `build/ devel/ logs/ .catkin_tools/` 重新构建;
- 更多见 [docs/03-常见问题.md](../docs/03-常见问题.md)。

## 学完去哪

- 补专题知识(必学 tf2/URDF/ros_control):[进阶工作区](../ros1_advanced_ws/README.md);
- 直接做考核:[dx_final 舵轮底盘控制器](../dx_final/README.md)。
