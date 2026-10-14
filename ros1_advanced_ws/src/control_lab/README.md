# control_lab：带 URDF 的 ros_control 实验

这个包包含两个可以直接运行的 ROS 1 Noetic / Gazebo 11 项目：单关节机械臂的位置 PID 控制，以及带激光和 IMU 的差速底盘。先看清“目标值如何到关节、反馈如何返回”，再把同一底盘交给 [navigation_lab](../navigation_lab/README.md) 做定位、建图和导航。

机器人、惯量、碰撞体、transmission、控制器 YAML、启动文件和室内世界均在本包内。世界使用内联几何体，不需要下载 Gazebo 模型。机械臂用于学习关节控制，底盘用于学习控制与传感器接口；MoveIt、真实电机驱动、轮胎形变和 IMU 漂移留作扩展。

## 1. 环境与构建

前置知识：会在不同终端启动 ROS 节点、查看话题和参数，了解 URDF 中的 `link` / `joint`。运行环境沿用仓库的 Ubuntu 20.04、ROS 1 Noetic、Gazebo Classic 11，环境准备见[环境安装](../../../docs/00-环境安装.md)。

在**仓库根目录**安装依赖，再运行构建脚本：

```bash
source /opt/ros/noetic/setup.bash
sudo apt update
sudo apt install python3-catkin-tools ros-noetic-gazebo-ros-pkgs \
  ros-noetic-gazebo-ros-control ros-noetic-controller-manager \
  ros-noetic-joint-state-controller ros-noetic-effort-controllers \
  ros-noetic-diff-drive-controller ros-noetic-robot-state-publisher \
  ros-noetic-xacro ros-noetic-tf
```

打开一个只加载 `/opt/ros/noetic` 的新终端，从仓库根目录构建：

```bash
# 只选 ros_control 实验；不需要初始化其余专题的子模块。
bash scripts/build_learning.sh advanced control_lab
source ros1_advanced_ws/devel/setup.bash
rospack find control_lab
```

如果还要继续定位和导航，可改用 `bash scripts/build_learning.sh projects`，依赖按 [navigation_lab 指南](../navigation_lab/README.md)补齐。已经初始化的控制器源码子模块可能作为依赖参与构建；未初始化时可使用上述 apt 安装的控制器。

下面每个新终端都需要先回到仓库根目录并加载环境：

```bash
source /opt/ros/noetic/setup.bash
source ros1_advanced_ws/devel/setup.bash
```

## 2. 项目一：单关节机械臂位置 PID

目标：给 `shoulder_joint` 一个弧度目标，观察位置误差、控制器输出和真实关节反馈的关系。

终端 A：

```bash
roslaunch control_lab arm.launch
# 无图形环境使用：roslaunch control_lab arm.launch gui:=false
```

终端 B，确认两个控制器均为 `running` 后发送目标：

```bash
rosservice call /controller_manager/list_controllers "{}"
rostopic pub -1 /arm_position_controller/command std_msgs/Float64 "data: 0.6"
rostopic echo -n 1 /arm_position_controller/state
rostopic echo -n 1 /joint_states
```

应观察到：

- `/arm_position_controller/state` 的 `set_point` 为 `0.6`，`process_value` 接近目标；`error` 是位置误差，`command` 是 PID 输出的力矩，单位 N·m。
- `/joint_states` 中 `shoulder_joint` 的 `position` 接近 `0.6` rad。读取位置时先核对 `name[]` 与 `position[]` 的索引。
- 模型的关节轴为 `+Y`，零位时手臂沿 `+X` 水平伸出，因此正目标会让臂端向下转。

返回零位：

```bash
rostopic pub -1 /arm_position_controller/command std_msgs/Float64 "data: 0.0"
```

模型限位为 `[-1.4, 1.4]` rad、速度上限 `2.0` rad/s、力矩上限 `12` N·m。入门实验先用 `-0.6、0、0.6` rad 的小步进，每次等它稳定。单关节位置控制器直接跟踪位置目标；需要平滑轨迹、速度和加速度约束时，可进一步引入轨迹控制器。

### 控制链与源码入口

```text
std_msgs/Float64 位置目标
  -> effort_controllers/JointPositionController
  -> PID 计算力矩
  -> EffortJointInterface
  -> gazebo_ros_control/DefaultRobotHWSim
  -> Gazebo shoulder_joint
  -> 位置/速度反馈 -> 下一次 PID 更新
```

| 文件 | 要关注的内容 |
| --- | --- |
| [one_joint_arm.urdf.xacro](urdf/one_joint_arm.urdf.xacro) | 关节轴、限位、惯量、`EffortJointInterface` 和 transmission |
| [arm_controllers.yaml](config/arm_controllers.yaml) | 控制器 `type`、关节名、PID 和积分限幅 |
| [arm.launch](launch/arm.launch) | 生成 `robot_description`、载入参数、生成模型、启动控制器 |

`joint_state_controller` 读取并发布关节反馈；`robot_state_publisher` 根据 URDF 和 `/joint_states` 发布各连杆之间的 TF。电机力矩由前述位置控制器计算并通过硬件接口输出。

### PID 练习

1. 记录默认参数下 `0 -> 0.6 -> 0` 的响应：稳定时间、最大超调、稳态误差和最大力矩。
2. 退出终端 A 的 launch，复制保存原 YAML，将 `i` 改为 `0.0` 后重新启动。比较重力负载下的稳态误差。
3. 固定其余参数，一次只改 `p` 或 `d`，重新运行同一组目标。同时比较关节反馈、误差和输出力矩。
4. 在实验记录中解释 `i_clamp` 为什么以力矩量级理解，以及达到力矩上限后增大 `p` 是否还能线性加快响应。

可以记录响应供离线比较；`rosbag record` 持续运行时在另一个终端发目标：

```bash
mkdir -p /tmp/ros-control-lab
rosbag record -O /tmp/ros-control-lab/arm_step.bag \
  /arm_position_controller/command /arm_position_controller/state /joint_states
```

## 3. 项目二：带传感器的差速底盘

先用 `Ctrl+C` 关闭机械臂 launch，再运行本实验。两个示例共用全局 ROS 名称，各自的 Gazebo 实验按顺序运行。

终端 A：

```bash
roslaunch control_lab mobile_base.launch
# 无图形环境：roslaunch control_lab mobile_base.launch gui:=false
```

终端 B，确认控制器和传感器：

```bash
rosservice call /controller_manager/list_controllers "{}"
rostopic echo -n 1 /scan/header
rostopic echo -n 1 /imu/data
rostopic echo -n 1 /diff_drive_controller/odom
rosrun tf tf_echo odom base_footprint
```

`tf_echo` 持续输出，按 `Ctrl+C` 结束后再输入其他命令。`/scan` 的 frame 为 `laser`，`/imu/data` 的 frame 为 `imu_link`。

发送低速直行命令，运行约 3 秒后按 `Ctrl+C` 停止发布：

```bash
rostopic pub -r 10 /diff_drive_controller/cmd_vel geometry_msgs/Twist \
  "{linear: {x: 0.15}, angular: {z: 0.0}}"
```

停止发布后 `cmd_vel_timeout: 0.5` 会使目标速度归零，减速还受加速度限制。也可以显式发送零速度：

```bash
rostopic pub -1 /diff_drive_controller/cmd_vel geometry_msgs/Twist \
  "{linear: {x: 0.0}, angular: {z: 0.0}}"
```

重新启动仿真恢复原点，然后用 `linear.x: 0.0, angular.z: 0.3` 进行短时间原地旋转实验。预期轮里程计的 yaw 变化，IMU 的 `angular_velocity.z` 与旋转方向一致。使用 `/joint_states` 查看两轮速度：正向直行时同号，原地旋转时反号。

### 模型与接口

| 项目 | 本包约定 |
| --- | --- |
| 车体 / 总占地 | 长 `0.42` m，车体宽 `0.28` m，含轮总宽 `0.40` m |
| 支撑结构 | 两驱动轮和一个后脚轮；车体质心沿 `X` 后移 `0.03` m |
| 轮半径 / 轮距 | `0.08` m / `0.36` m |
| 轮关节 | `left_wheel_joint`、`right_wheel_joint`，轴向均为 `+Y` |
| 控制接口 | `hardware_interface/VelocityJointInterface` |
| 速度命令 | `/diff_drive_controller/cmd_vel`，`geometry_msgs/Twist` |
| 编码器里程计 | `/diff_drive_controller/odom`，`nav_msgs/Odometry`，50 Hz 目标频率 |
| 激光 | `/scan`，360 个采样点，范围 `0.12..8.0` m，10 Hz 目标频率 |
| IMU | `/imu/data`，50 Hz 目标频率，角速度方差为 `0.002² = 0.000004` |
| 仿真时钟 | `/clock`，`use_sim_time=true` |

实际墙钟频率受机器性能和仿真实时率影响。IMU 插件使用简化高斯噪声，协方差按该仿真噪声设置；接入真实传感器时使用其标定结果。

```text
odom                 <- diff_drive_controller 默认发布
  └── base_footprint
        └── base_link
              ├── left_wheel / right_wheel
              ├── rear_caster
              ├── laser
              └── imu_link
```

`base_footprint` 表示底盘地面投影，`base_link` 在其上方 `0.14` m。底盘的 `odom` 从轮里程计自身零点开始，Gazebo 世界坐标则由模型出生位姿确定。使用 launch 的 `x/y/yaw` 改变出生位置后，AMCL 的初始位姿也应对应修改。

差速计算为：

```text
left_wheel_speed  = (linear_x - angular_z * wheel_separation / 2) / wheel_radius
right_wheel_speed = (linear_x + angular_z * wheel_separation / 2) / wheel_radius
```

轮速单位为 rad/s。`diff_drive_controller` 从轮反馈积分里程计，配置中 `open_loop: false`；这里没有另外使用 `gazebo_ros_diff_drive` 直接驱动轮子。Gazebo 的硬件适配器接收速度接口命令，通过 ODE 的速度电机约束执行，力矩上限由 URDF 的关节 limit 提供。底盘没有配置 Gazebo 内部的轮速 PID；项目一的机械臂位置 PID 是另一个独立实验。

模型使用“两驱动轮 + 一个后脚轮”的三点支撑，后置质心位于支撑三角形内。轮子与后脚轮的接触参数都显式设为 `kp=1000000`、`kd=500`、`minDepth=0`，后脚轮摩擦为零。接触阻尼抑制落地和行驶中的俯仰振荡，使驱动轮持续承重。这些接触参数属于 Gazebo 碰撞模型。修改质量、惯量、支撑位置或接触参数后，对照实际车体位姿和编码器里程计，检查车轮运动与车体位移是否一致。

| 文件 | 要关注的内容 |
| --- | --- |
| [mobile_base.urdf.xacro](urdf/mobile_base.urdf.xacro) | 轮参数、`VelocityJointInterface`、接触参数、激光与 IMU 插件 |
| [mobile_controllers.yaml](config/mobile_controllers.yaml) | 轮距/半径、速度限制、超时、里程计协方差和 TF 开关 |
| [mobile_base.launch](launch/mobile_base.launch) | `enable_odom_tf` 参数在载入 YAML 后覆盖，供 EKF 集成使用 |
| [learning_room.world](worlds/learning_room.world) | 内侧墙面为 `x/y = ±4` m；两个不对称障碍提供定位特征 |

修改轮距或轮半径时要同步 URDF 和控制器配置。只改控制器参数可以作为“里程计标定错误”的对照实验，但要在记录中明确它是故意引入的误差。

### 从控制到定位的练习

1. 发出 `0.15 m/s` 直行目标，检查两轮速度是否接近 `0.15 / 0.08 = 1.875 rad/s`；说明加速度限制和起步过程为什么会使短时间平均值偏低。
2. 发出 `0.3 rad/s` 原地旋转目标，计算预期左右轮速，再比较 `/joint_states` 与 `/imu/data`。
3. 停止发布速度，测量停止过程，区分命令超时和物理减速时间。
4. 使用 [navigation_lab](../navigation_lab/README.md) 的统一启动入口，启用 EKF 后验证只有 EKF 发布 `odom -> base_footprint`；底盘控制器仍持续发布原始轮里程计。

## 4. 常见问题

| 现象 | 检查路径 |
| --- | --- |
| 找不到 `control_lab` | 新终端加载 `ros1_advanced_ws/devel/setup.bash`，再运行 `rospack find control_lab` |
| `Could not load controller` | 检查控制器插件 apt 包是否已安装、YAML 的 `type` 是否正确，以及启动日志中第一个错误 |
| `Could not find resource ...` | 对照 URDF/transmission/YAML 中的关节名称和硬件接口；位置 PID 本例要求 Effort 接口 |
| 等待 `/controller_manager` | 检查 `spawn_model` 是否成功，以及 Gazebo 是否加载 `libgazebo_ros_control.so`；按首个错误修复模型或插件配置 |
| 底盘启动显示 `No p gain specified for pid` | 本例使用 ODE 速度电机模式，`/gazebo_ros_control/pid_gains` 留空；继续检查控制器为 `running` 及实体运动正常。配置轮速 PID 会切换适配器的执行方式，需作为独立实验调试 |
| 仿真没有推进，话题无反馈 | 检查 `/clock` 和暂停状态；`paused:=true` 时要在 Gazebo 点播放或调用 `/gazebo/unpause_physics` |
| 底盘不响应 `/cmd_vel` | 本包实际订阅 `/diff_drive_controller/cmd_vel`；导航入口已经做对应 remap |
| 机器人抖动或里程计比例不对 | 核对惯量、轮半径、轮距、摩擦；对照 Gazebo 实体位姿、轮反馈与里程计 |
| TF 重复发布或 RViz 抖动 | EKF 模式设置 `enable_odom_tf:=false`，保留一组仿真和对应的定位入口 |

## 5. 开源实现与进一步阅读

本包围绕标准 ROS 1 接口编写，以下上游是理解实现的直接入口：

- [ros_control（noetic-devel）](https://github.com/ros-controls/ros_control/tree/noetic-devel)：从 `hardware_interface` 和 `controller_manager` 看接口注册、控制器加载与资源管理。
- [ros_controllers（noetic-devel）](https://github.com/ros-controls/ros_controllers/tree/noetic-devel)：对照 `effort_controllers/src/joint_position_controller.cpp` 和 `diff_drive_controller/src/diff_drive_controller.cpp` 追踪 PID、速度约束和轮里程计。
- [Gazebo 官方 ros_control 教程](https://classic.gazebosim.org/tutorials?cat=connect_ros&tut=ros_control)：对照 URDF transmission 与 `gazebo_ros_control` 插件的关系。
- [Gazebo IMU 插件源码](https://github.com/ros-simulation/gazebo_ros_pkgs/blob/noetic-devel/gazebo_plugins/src/gazebo_ros_imu_sensor.cpp)：核对本例的噪声与协方差行为，理解为何导航融合选用角速度而不直接把仿真真值姿态当作实机观测。

更完整的机器人项目和配套 URDF、入手顺序见[进阶工作区入口](../../README.md)。外部项目按指南在独立工作区准备，`dx_final` 继续独立维护。

## 6. 验收记录

先做结构检查：

```bash
rosrun xacro xacro "$(rospack find control_lab)/urdf/one_joint_arm.urdf.xacro" > /tmp/control_lab_arm.urdf
rosrun xacro xacro "$(rospack find control_lab)/urdf/mobile_base.urdf.xacro" > /tmp/control_lab_mobile.urdf
check_urdf /tmp/control_lab_arm.urdf
check_urdf /tmp/control_lab_mobile.urdf
```

`check_urdf` 由 Ubuntu 的 `liburdfdom-tools` 提供，用于检查 URDF 结构。运行验收记录机械臂目标误差、底盘实际移动、控制器状态、激光/IMU 数据、TF 发布者和退出后的进程清理；导航验收见 `navigation_lab`。图形界面、真实硬件和长期稳定性列为后续验证项。

本次仓库扩展已在隔离的 ROS Master 上完成无图形 Gazebo 机械臂验收：两个控制器均为 `running`，发送 `0.6 rad` 目标后采集约 904 条控制器状态，约 9 秒墙钟时间后的关节位置为 `0.60343 rad`，误差约 `-0.00343 rad`，力矩约 `-1.222 N·m`。这次记录覆盖默认参数下的一次位置响应。两套 xacro 均通过 `check_urdf` 和 Gazebo SDF 转换检查，移动模型转换后保留两轮关节、激光和 IMU，且 launch 的 `enable_odom_tf:=false` 参数覆盖已通过解析检查。

最终底盘配置也在隔离的无图形 Gazebo 中完成实际位姿与轮里程计对照，测试从静止开始分别发布直行 `0.2 m/s` 和原地旋转 `0.3 rad/s` 的短时命令：

| 验收项 | Gazebo 实际车体 | 编码器里程计 |
| --- | --- | --- |
| 直行位移 | `0.8017847 m` | `0.8017845 m` |
| 原地旋转角 | `1.303386 rad` | `1.342932 rad` |

旋转角差约 `0.03955 rad`，约 `2.27°`；这组差异包含接触仿真的影响；轮里程计由关节反馈计算，Gazebo 真值用于对照。停止速度发布约 2 秒后，实际线速度约 `1.6e-6 m/s`、偏航角速度约 `-0.000472 rad/s`，俯仰角约 `3.5e-5 rad`。上述数据只覆盖最终默认模型的一组直行、旋转和停止工况；改变参数后需重新验收。
