# 04 · ros_control 框架与控制器进阶

本专题阅读进阶工作区的 `ros_controllers`、`control_toolbox`，以基础工作区的 DiffBot 运行实验。两者分别构建、在不同终端使用，不需要其他项目代码。

## 学习目标

1. 区分 Controller Manager、Controller、Hardware Interface 和 Transmission。
2. 对照 URDF 与 YAML 找到控制器要求的关节名及接口。
3. 理解速度指令与力矩指令的区别，以及 PID 所在的位置。
4. 能沿 pluginlib 声明找到控制器实现。

## 准备

先按[基础工作区](../../ros1_learning_ws/README.md)安装和构建 DiffBot。源码阅读使用[进阶工作区](../../ros1_advanced_ws/README.md)的子模块。

```text
controller_manager
  ├── joint_state_controller：发布关节状态
  ├── diff_drive_controller：底盘速度 → 左右轮速度
  └── velocity_controllers/JointVelocityController：单关节速度转发
                ↓ 关节句柄
hardware_interface
                ↓
Gazebo 的 RobotHWSim 或真实硬件的 RobotHW
```

控制器通过关节句柄读状态、写命令。底层负责将命令应用到仿真或电机；控制器支持的接口必须与底层暴露的接口相匹配。

## 实验 1：确认运行中的控制器

在仓库根目录的新终端：

```bash
source ros1_learning_ws/devel/setup.bash
roslaunch diffbot_sim diffbot_gazebo.launch
```

另一终端使用相同工作区：

```bash
source ros1_learning_ws/devel/setup.bash
rosrun controller_manager controller_manager list
rosservice call /controller_manager/list_controller_types "{}"
rostopic info /diffbot_controller/cmd_vel
rostopic echo /diffbot_controller/odom -n 1
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist "linear: {x: 0.3} angular: {z: 0.0}"
```

DiffBot 自带的 Gazebo 插件订阅 /cmd_vel，并向 /diffbot_controller/cmd_vel 和 /turret_controller/command 输出。直接向下游控制器发布时会与插件竞争，因此本实验只向插件输入发命令。

对照 [diffbot_control.yaml](../../ros1_learning_ws/src/diffbot_sim/config/diffbot_control.yaml)：

```yaml
diffbot_controller:
  type: "diff_drive_controller/DiffDriveController"
  left_wheel: 'wheel_0_joint'
  right_wheel: 'wheel_1_joint'
  wheel_separation: 0.3
  wheel_radius: 0.1
```

在 [URDF](../../ros1_learning_ws/src/diffbot_sim/urdf/diffbot.urdf.xacro) 中找对应 transmission。关节名、接口、轮距和轮径需要一致。

## 实验 2：PID 应放在哪里

Noetic 的 `diff_drive_controller` 使用 `VelocityJointInterface`，将左右轮目标角速度写入关节句柄；它本身不为每个轮子计算 PID 力矩。可在[本仓库固定版本源码](../../ros1_advanced_ws/src/ros_controllers/diff_drive_controller/src/diff_drive_controller.cpp)查找 `setCommand(vel_left)`。

使用 effort 接口实现速度闭环时，可以通过 `control_toolbox::Pid` 把速度误差换算为力矩：

```cpp
control_toolbox::Pid pid;
pid.initPid(p, i, d, i_max, i_min);
double effort = pid.computeCommand(target_velocity - measured_velocity, dt);
```

这里是逻辑片段，完整实现还要定义增益、时间间隔、句柄、限幅和生命周期。`dt` 必须为有效的正时间间隔；积分限幅不等于最终输出力矩限幅。是否重置积分由控制器启停与状态切换策略决定，不应在每次更新时无条件 reset。

DiffBot 的 `gazebo_ros_control/pid_gains` 是仿真硬件层配置，与上层 diff_drive_controller 分属不同层。追踪接口比看到配置中有“PID”就推断计算位置更可靠。

## 实验 3：插件是怎么被找到的

1. 控制器类继承 `controller_interface::Controller<Interface>`。
2. 实现 init、starting、update、stopping 生命周期。
3. 用 `PLUGINLIB_EXPORT_CLASS` 导出类型。
4. 插件 XML 声明库、类与基类，package.xml 的 export 指向该 XML。
5. controller_manager 根据 YAML 的 type 加载实例并申请关节资源。

```bash
rospack plugins --attrib=plugin controller_interface
```

此命令显示包与插件 XML 路径；运行中的可加载类型通过 `/controller_manager/list_controller_types` 查看。

## 练习与验收

- 画出 DiffBot 从 Twist 到轮子关节命令的链路，标注每一步的单位。
- 比较 `velocity_controllers/JointVelocityController` 和 `effort_controllers/JointVelocityController` 的硬件接口与 PID 用法。
- 阅读 diff_drive_controller 的里程计实现，说明反馈里程计与命令积分的区别。
- 解释为什么同一关节不能同时被两个控制器以冲突的方式占用。

## 参考

- [ros_control 官方 wiki](https://github.com/ros-controls/ros_control/wiki)
- [ros_controllers 源码](https://github.com/ros-controls/ros_controllers/tree/noetic-devel)
- [control_toolbox 源码](https://github.com/ros-controls/control_toolbox/tree/noetic-devel)
- [Gazebo ROS Control 教程](http://gazebosim.org/tutorials/?tut=ros_control)
