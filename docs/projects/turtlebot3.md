# TurtleBot3：完整的建图、定位和导航练习

TurtleBot3 的 ROS 1 项目提供机器人 URDF、Gazebo 场景、遥控、Gmapping、AMCL 和 move_base 配置，适合在本仓库 [navigation_lab](../../ros1_advanced_ws/src/navigation_lab/README.md) 之后，对照一个成熟平台完成第二次导航实验。[上游 ROS 1 分支](https://github.com/ROBOTIS-GIT/turtlebot3/tree/noetic)

该版本 Burger 的 Gazebo 模型使用 `libgazebo_ros_diff_drive.so`，底盘不经过 ros_control 的 controller_manager。它适合研究导航集成；关节接口和 controller_manager 请结合 [RRBot](rrbot.md) / [Jackal](jackal.md) 学习。[插件配置证据](https://github.com/ROBOTIS-GIT/turtlebot3/blob/noetic/turtlebot3_description/urdf/turtlebot3_burger.gazebo.xacro)

## 环境与安装

遵循 [公共环境准备](README.md)。三个仓库都选择 ROS 1 的 **`noetic`** 分支；默认主分支面向 ROS 2。核验版本和运行验证状态见公共准备页。

```bash
source /opt/ros/noetic/setup.bash
mkdir -p ~/learning_external/turtlebot3_ws/src
cd ~/learning_external/turtlebot3_ws/src
git clone --depth 1 --branch noetic https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git
git clone --depth 1 --branch noetic https://github.com/ROBOTIS-GIT/turtlebot3.git
git clone --depth 1 --branch noetic https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git
cd ~/learning_external/turtlebot3_ws
rosdep update --include-eol-distros --rosdistro noetic
rosdep install --from-paths src --ignore-src --rosdistro noetic -r -y
sudo apt install ros-noetic-gmapping ros-noetic-navigation ros-noetic-gazebo-ros-pkgs
catkin init
catkin config --extend /opt/ros/noetic
catkin build
source devel/setup.bash
export TURTLEBOT3_MODEL=burger
mkdir -p ~/learning_external/turtlebot3_ws/maps
```

每个后续终端都按公共准备加载环境，再执行：

```bash
source ~/learning_external/turtlebot3_ws/devel/setup.bash
export TURTLEBOT3_MODEL=burger
```

## 第一步：仿真与建图

终端 A：

```bash
roslaunch turtlebot3_gazebo turtlebot3_world.launch
```

终端 B：

```bash
roslaunch turtlebot3_slam turtlebot3_slam.launch slam_methods:=gmapping
```

终端 C：

```bash
roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch
```

按照遥控窗口提示缓慢绕场景运动，让激光多次观察墙面与拐角，尽量闭环回到起点。预期 `/scan`、`/odom` 和 `/map` 持续更新，RViz 中出现机器人轨迹周围的占据栅格。world launch 不启动 Gmapping；SLAM launch 同时加载机器人的 TF 发布与 RViz。[场景入口](https://github.com/ROBOTIS-GIT/turtlebot3_simulations/blob/noetic/turtlebot3_gazebo/launch/turtlebot3_world.launch)、[SLAM 入口](https://github.com/ROBOTIS-GIT/turtlebot3/blob/noetic/turtlebot3_slam/launch/turtlebot3_slam.launch)

终端 D 检查后保存：

```bash
rostopic echo -n 1 /scan/header
rostopic echo -n 1 /map/info
rosrun map_server map_saver -f ~/learning_external/turtlebot3_ws/maps/tb3_world
```

确认生成 `tb3_world.yaml` 和 `tb3_world.pgm`。YAML 引用的图像文件需要一起保留。

## 第二步：AMCL 定位与自主导航

停止 SLAM 和遥控终端，再停止并重新启动终端 A 的仿真，使机器人回到已知起始位置。此时只保留一组仿真和一组导航节点。终端 B：

```bash
roslaunch turtlebot3_navigation turtlebot3_navigation.launch map_file:=$HOME/learning_external/turtlebot3_ws/maps/tb3_world.yaml
```

这个入口会启动 map_server、AMCL、move_base 和 RViz。[导航入口源码](https://github.com/ROBOTIS-GIT/turtlebot3/blob/noetic/turtlebot3_navigation/launch/turtlebot3_navigation.launch)

在 RViz 中先用 **2D Pose Estimate** 指定初始位置和朝向，再用 **2D Nav Goal** 指定空闲区目标。默认 world launch 的初始位置为 `x=-2.0, y=-0.5`；保存的地图坐标由本次建图确定，初始化时根据激光与地图的重合关系填写 map 位姿。

```bash
rostopic echo -n 1 /amcl_pose
rostopic echo -n 1 /move_base/status
rostopic echo -n 1 /cmd_vel
rosrun tf tf_echo map base_footprint
```

预期：TF 有 `map → odom → base_footprint`，AMCL 粒子逐渐集中，局部 costmap 中能看到障碍，机器人沿规划路径接近目标。最后检查 `/move_base/result` 的完成状态，而不只观察机器人是否移动。

## 源码阅读顺序

| 文件 | 学习问题 |
| --- | --- |
| [turtlebot3_description/urdf/turtlebot3_burger.urdf.xacro](https://github.com/ROBOTIS-GIT/turtlebot3/blob/noetic/turtlebot3_description/urdf/turtlebot3_burger.urdf.xacro) | 轮子、激光、IMU 与 base_footprint 的几何关系是什么？ |
| [turtlebot3_slam/launch/turtlebot3_gmapping.launch](https://github.com/ROBOTIS-GIT/turtlebot3/blob/noetic/turtlebot3_slam/launch/turtlebot3_gmapping.launch) | SLAM 的 base / odom / map frame 如何设置？ |
| [turtlebot3_navigation/launch/amcl.launch](https://github.com/ROBOTIS-GIT/turtlebot3/blob/noetic/turtlebot3_navigation/launch/amcl.launch) | 激光模型、里程计模型和粒子数的配置在哪里？ |
| [turtlebot3_navigation/launch/move_base.launch](https://github.com/ROBOTIS-GIT/turtlebot3/blob/noetic/turtlebot3_navigation/launch/move_base.launch) | 为什么使用 DWAPlannerROS？机器人型号如何选择 costmap / DWA 参数？ |
| [turtlebot3_navigation/param](https://github.com/ROBOTIS-GIT/turtlebot3/tree/noetic/turtlebot3_navigation/param) | footprint、膨胀半径、传感器观察源、速度和加速度限制分别属于哪层？ |

## 练习与排错

1. 用同一 world 以慢速和快速遥控各建一张图，对比墙体重影与闭环误差，并保留 rosbag。
2. 固定同一地图和目标，每次只调一个 footprint / inflation 参数，观察狭窄通道能否形成可行路径。
3. 把本仓库移动底盘的 topic / frame 清单与 TurtleBot3 对齐，解释迁移导航配置时哪些必须改，哪些参数可以先保留。
4. 比较 AMCL 的 `map → odom` 与底盘的 `odom → base_footprint`：重定位会影响前者，连续轮速积分决定后者。

地图不更新时先查 `/scan`、时钟与 TF；地图存在却无法定位时查地图是否对应 world、初始姿态和激光 frame。导航时停止 Gmapping，由 AMCL 发布 `map → odom`；测试自动导航前关闭键盘遥控，让速度指令保持单一来源。
