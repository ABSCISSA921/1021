# RRBot：从 URDF 读懂 ros_control 关节控制

RRBot 是 Gazebo ROS 官方示例仓库中的双关节机器人。它把 URDF transmission、Gazebo 的硬件仿真、控制器 YAML 和 controller spawner 放在几个很小的文件里，适合在完成本仓库 [control_lab](../../ros1_advanced_ws/src/control_lab/README.md) 后阅读。[上游仓库](https://github.com/ros-simulation/gazebo_ros_demos/tree/kinetic-devel)

## 版本与前置条件

遵循 [公共环境准备](README.md)。使用已核验的 ROS 1 示例分支 `kinetic-devel`，在 Noetic / Gazebo 11 上练习兼容性适配；版本和运行验证状态见公共准备页。图形桌面用于 Gazebo / RViz，控制相关验收可以使用 `gui:=false`；模型还包含 GPU 激光和相机，相关渲染可能受显卡环境影响。

```bash
source /opt/ros/noetic/setup.bash
mkdir -p ~/learning_external/rrbot_ws/src
cd ~/learning_external/rrbot_ws/src
git clone --depth 1 --branch kinetic-devel https://github.com/ros-simulation/gazebo_ros_demos.git
cd ~/learning_external/rrbot_ws
rosdep update --include-eol-distros --rosdistro noetic
rosdep install --from-paths src/gazebo_ros_demos/rrbot_description src/gazebo_ros_demos/rrbot_gazebo src/gazebo_ros_demos/rrbot_control --ignore-src --rosdistro noetic -r -y
sudo apt install ros-noetic-gazebo-ros-control ros-noetic-ros-controllers ros-noetic-robot-state-publisher ros-noetic-xacro
catkin init
catkin config --extend /opt/ros/noetic
catkin build rrbot_description rrbot_gazebo rrbot_control
source devel/setup.bash
git -C src/gazebo_ros_demos rev-parse HEAD
```

只构建 RRBot 的三个包；仓库中的其他历史教程不属于这条实验链。`rosdep -r` 会继续处理其余依赖，输出中的失败项需补齐后再编译。

## 入手：启动模型，再启动控制器

每个终端按公共准备加载环境，再 source `~/learning_external/rrbot_ws/devel/setup.bash`。

终端 A：

```bash
roslaunch rrbot_gazebo rrbot_world.launch
```

终端 B：

```bash
roslaunch rrbot_control rrbot_control.launch
```

这两个入口分工明确：`rrbot_world.launch` 中加载控制器的 include 被注释，所以仅启动 Gazebo 不会自动启动 PID 控制器。[模型入口](https://github.com/ros-simulation/gazebo_ros_demos/blob/kinetic-devel/rrbot_gazebo/launch/rrbot_world.launch)、[控制器入口](https://github.com/ros-simulation/gazebo_ros_demos/blob/kinetic-devel/rrbot_control/launch/rrbot_control.launch)

终端 C 先检查，再下发目标角度（rad）：

```bash
rosservice call /rrbot/controller_manager/list_controllers "{}"
rostopic echo -n 1 /rrbot/joint_states
rostopic pub -1 /rrbot/joint1_position_controller/command std_msgs/Float64 'data: 0.4'
rostopic pub -1 /rrbot/joint2_position_controller/command std_msgs/Float64 'data: -0.5'
rostopic echo -n 1 /rrbot/joint1_position_controller/state
```

预期：`joint_state_controller` 和两个位置控制器均为 `running`；`joint_states.name` 中有 `joint1` / `joint2`，角度随目标改变；控制器 `state` 的 `set_point` 与目标相符，`process_value` 逐渐接近。记录所用 Gazebo 参数及对应的振荡、误差和到达时间。

## 源码阅读顺序

| 文件 | 带着什么问题读 |
| --- | --- |
| [rrbot_description/urdf/rrbot.xacro](https://github.com/ros-simulation/gazebo_ros_demos/blob/kinetic-devel/rrbot_description/urdf/rrbot.xacro) | 关节轴、惯性、限位、`tran1` / `tran2` 和 `EffortJointInterface` 如何对应？ |
| [rrbot_description/urdf/rrbot.gazebo](https://github.com/ros-simulation/gazebo_ros_demos/blob/kinetic-devel/rrbot_description/urdf/rrbot.gazebo) | `libgazebo_ros_control.so` 和 `/rrbot` namespace 从哪里来？ |
| [rrbot_control/config/rrbot_control.yaml](https://github.com/ros-simulation/gazebo_ros_demos/blob/kinetic-devel/rrbot_control/config/rrbot_control.yaml) | 为什么位置目标使用 `effort_controllers/JointPositionController`？PID 最终写出的是什么？ |
| [rrbot_control/launch/rrbot_control.launch](https://github.com/ros-simulation/gazebo_ros_demos/blob/kinetic-devel/rrbot_control/launch/rrbot_control.launch) | spawner 连接哪个 manager？robot_state_publisher 订阅哪个 joint_states？ |

“位置控制器”描述闭环目标；`EffortJointInterface` 描述写给关节的控制量。本例通过 PID 将角度误差转换为关节力矩。

## 练习与验收

1. 记录 `/rrbot/joint1_position_controller/command`、`/rrbot/joint1_position_controller/state`、`/rrbot/joint_states`，计算一次小阶跃的超调和稳态误差。
2. 在自己的分支中每次只改一个 PID 参数，重启控制 launch，检查实际加载的 `rosparam get /rrbot/joint1_position_controller/pid`，再重复同一阶跃。
3. 对照本仓库单关节模型，标出两个模型共同需要的 URDF、transmission、插件、YAML 和 spawner；解释为什么只有 URDF 还不足以运行控制器。

## 常见卡点

- manager 服务不存在：先确认模型成功 spawn、Gazebo 的 `gazebo_ros_control` 插件加载，以及服务 namespace 是否为 `/rrbot`。
- 状态有输出但关节不动：检查控制器是否 `running`、仿真是否暂停、命令的 joint 名称和话题是否一致。
- RViz 模型不随动：检查 `/rrbot/joint_states` 和控制 launch 内的 remap；关节状态使用仿真反馈，关闭向相同关节发布虚拟数据的 `joint_state_publisher`。
- 不需要视觉传感器时，可先完成关节控制验收；GPU laser 的渲染错误单独检查显卡和渲染日志。
