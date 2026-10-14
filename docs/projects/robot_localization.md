# robot_localization：从轮速和 IMU 到连续里程计

`robot_localization` 提供 EKF / UKF 状态估计和 GPS 相关转换。它是算法库，没有自己的机器人 URDF。先使用本仓库 [control_lab](../../ros1_advanced_ws/src/control_lab/README.md) 的移动底盘提供 wheel odometry、IMU 和传感器 TF，再逐步阅读上游实现。[上游 Noetic 分支](https://github.com/cra-ros-pkg/robot_localization/tree/noetic-devel)

本实验先让一个**不发布 TF 的对比 EKF**接入现有仿真，观察融合 odom；正式导航集成使用本仓库 [navigation_lab](../../ros1_advanced_ws/src/navigation_lab/README.md) 已配好的 TF 切换。这样可以分别理解滤波输出与 TF 发布的职责。

## 版本与独立构建

遵循 [公共环境准备](README.md)，使用 `noetic-devel`；分支、模板与源文件已于 2026-10-02 核验，独立源码构建与运行待完成。Ubuntu 20.04 / Noetic 的上游包可以通过 apt 安装；若要阅读和修改滤波器，按下面的独立工作区构建源码：

```bash
source /opt/ros/noetic/setup.bash
mkdir -p ~/learning_external/robot_localization_ws/src
cd ~/learning_external/robot_localization_ws/src
git clone --depth 1 --branch noetic-devel https://github.com/cra-ros-pkg/robot_localization.git
cd ~/learning_external/robot_localization_ws
rosdep update --include-eol-distros --rosdistro noetic
rosdep install --from-paths src --ignore-src --rosdistro noetic -r -y
catkin init
catkin config --extend /opt/ros/noetic
catkin build
source devel/setup.bash
```

上游有 [`ekf_template.launch`](https://github.com/cra-ros-pkg/robot_localization/blob/noetic-devel/launch/ekf_template.launch) 和 [`ekf_template.yaml`](https://github.com/cra-ros-pkg/robot_localization/blob/noetic-devel/params/ekf_template.yaml)。先将模板中的传感器话题、坐标系和观测项改为本机配置；滤波器收到有效输入后开始输出估计。

## 第一步：启动有数据的机器人

先按本仓库 control_lab 指南安装依赖并构建。**终端 A 加载本仓库 `ros1_advanced_ws/devel/setup.bash`**，运行：

```bash
roslaunch control_lab mobile_base.launch enable_odom_tf:=true
```

确认有 `/diff_drive_controller/odom`、`/imu/data`，以及 `odom → base_footprint → base_link → imu_link`。该阶段由底盘发布 odom TF，下面的对比 EKF 只输出话题。

**终端 B 单独加载上游工作区**。两个工作区的节点通过同一个 ROS Master 通信：

```bash
source ~/learning_external/robot_localization_ws/devel/setup.bash
rostopic echo -n 1 /diff_drive_controller/odom
rostopic echo -n 1 /imu/data
```

如果 topic 名称、frame 或数据有效性不匹配，先修复输入；`publish_tf: false` 仍需要已有的传感器安装 TF，以便把 IMU 测量变换到车体坐标。

## 第二步：配置一个便于理解的平面 EKF

终端 B 创建实验参数：

```bash
cat > ~/learning_external/robot_localization_ws/experiment.yaml <<'YAML'
frequency: 30
sensor_timeout: 0.2
two_d_mode: true
publish_tf: false
print_diagnostics: true
map_frame: map
odom_frame: odom
base_link_frame: base_footprint
world_frame: odom
odom0: /diff_drive_controller/odom
odom0_config: [false, false, false,
               false, false, false,
               true,  true,  false,
               false, false, false,
               false, false, false]
odom0_differential: false
imu0: /imu/data
imu0_config: [false, false, false,
              false, false, false,
              false, false, false,
              false, false, true,
              false, false, false]
imu0_differential: false
imu0_remove_gravitational_acceleration: false
YAML
rosparam load ~/learning_external/robot_localization_ws/experiment.yaml /ekf_compare
rosrun robot_localization ekf_localization_node __name:=ekf_compare odometry/filtered:=/comparison/odometry/filtered
```

每个掩码共 15 项，顺序为 `x, y, z, roll, pitch, yaw, vx, vy, vz, vroll, vpitch, vyaw, ax, ay, az`。这里融合轮速 `vx` 与差速车无侧向速度约束 `vy=0`，同时融合 IMU 的 yaw 角速度。轮里程计的 pose 与 twist 来自同一批编码器，存在相关性；本例选择速度观测。[上游配置教程](https://github.com/cra-ros-pkg/robot_localization/blob/noetic-devel/doc/configuring_robot_localization.rst)

`vy=0` 采用平面、无明显侧滑的模型假设，协方差按这一假设设置；出现明显滑移时重新评估。融合前核对 IMU 的方向、单位、frame、时间戳与协方差。[传感器数据准备](https://github.com/cra-ros-pkg/robot_localization/blob/noetic-devel/doc/preparing_sensor_data.rst)

## 第三步：观察，再交给导航

终端 C 加载任一能找到标准 ROS 消息的 Noetic 环境，检查：

```bash
rostopic hz /comparison/odometry/filtered
rostopic echo -n 1 /comparison/odometry/filtered
rostopic echo -n 1 /diagnostics
rosrun tf tf_echo odom base_footprint
```

输入稳定后，滤波话题应约以配置的 30 Hz 输出；消息的 `header.frame_id` 为 `odom`，`child_frame_id` 为 `base_footprint`。本实验的 TF 仍由差速控制器负责，EKF 不另发同一条变换。

在仿真开阔区域发送低速圆弧命令，数秒后 Ctrl-C：

```bash
rostopic pub -r 10 /diff_drive_controller/cmd_vel geometry_msgs/Twist '{linear: {x: 0.12}, angular: {z: 0.15}}'
```

再下发零速度：

```bash
rostopic pub -1 /diff_drive_controller/cmd_vel geometry_msgs/Twist '{linear: {x: 0.0}, angular: {z: 0.0}}'
```

可在另一个终端提前记录同一段输入与输出，数秒后 Ctrl-C 结束：

```bash
rosbag record -O /tmp/ekf_comparison.bag /diff_drive_controller/odom /imu/data /comparison/odometry/filtered /tf /tf_static /clock
```

对比 yaw、位置轨迹和协方差，分别评价平滑程度与定位误差。误差评价使用独立真值或已知闭环路径；wheel + IMU 的长期漂移也应记录。

完成对比后，停止这组仿真和 `ekf_compare`，在只加载本仓库高级工作区的新终端使用：

```bash
roslaunch navigation_lab simulation.launch use_ekf:=true
```

该入口负责让底盘关闭原始 odom TF，由 EKF 发布 `odom → base_footprint`，输出 `/odometry/filtered`。之后按 navigation_lab 指南选 SLAM 或 AMCL / move_base。AMCL 提供 `map → odom`，本地 EKF 提供连续 `odom → base_footprint`；两者解决的问题不同。[上游 frame / world_frame 说明](https://github.com/cra-ros-pkg/robot_localization/blob/noetic-devel/doc/state_estimation_nodes.rst)

## 源码入口与扩展练习

| 入口 | 阅读重点 |
| --- | --- |
| [params/ekf_template.yaml](https://github.com/cra-ros-pkg/robot_localization/blob/noetic-devel/params/ekf_template.yaml) | 观测掩码、队列、relative / differential、噪声与 frame 参数 |
| [src/ros_filter.cpp](https://github.com/cra-ros-pkg/robot_localization/blob/noetic-devel/src/ros_filter.cpp) | 输入消息到坐标转换、测量队列与输出之间的连接 |
| [src/filter_base.cpp](https://github.com/cra-ros-pkg/robot_localization/blob/noetic-devel/src/filter_base.cpp) | 预测 / 更新调用、时间步长和公共状态 |
| [src/ekf.cpp](https://github.com/cra-ros-pkg/robot_localization/blob/noetic-devel/src/ekf.cpp) | EKF 预测矩阵、创新与校正 |
| [src/navsat_transform.cpp](https://github.com/cra-ros-pkg/robot_localization/blob/noetic-devel/src/navsat_transform.cpp) | 后续 GPS 练习入口；本节不要求 GPS |

1. 使用同一份 bag 分别只融合轮速、轮速加 IMU，保持初始条件与评价区间相同；输出名称分开保存。
2. 有意给某一路输入设置更大协方差，预测滤波权重应如何变化，再从输出验证。实际使用时，按传感器标定或数据统计结果填写协方差。
3. 回放时先停止实时传感器发布，设置 `/use_sim_time=true` 并用 `rosbag play --clock` 产生时钟；回放所需输入和 TF，将新计算的滤波输出另行记录。
4. 接入真实 IMU 前明确 ENU / NED、角速度单位、安装方向和协方差定义。GPS、磁罗盘绝对 yaw 与双 EKF 架构留作后续独立实验。

无输出时按输入存在、时间戳前进、frame 可变换、观测掩码非空的顺序排查；轨迹跳变时检查重复 TF、时间回退、错误协方差和相互矛盾的绝对姿态来源。
