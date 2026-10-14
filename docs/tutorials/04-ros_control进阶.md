# 04 · ros_control 框架与控制器进阶

本专题提供框架解释。首次动手建议从进阶工作区的 [control_lab](../../ros1_advanced_ws/src/control_lab/README.md) 入手：单关节 effort PID 和差速底盘各自配有完整 URDF、transmission、控制器 YAML、Gazebo launch 与验收步骤。

也可用下文保留的基础工作区 DiffBot 实验阅读旧示例；两个工作区分别构建，不互相 overlay。

## 学习目标

1. 区分 Controller Manager、Controller、Hardware Interface 和 Transmission。
2. 对照 URDF 与 YAML 找到控制器要求的关节名及接口。
3. 理解速度指令与力矩指令的区别，以及 PID 所在的位置。
4. 能沿 pluginlib 声明找到控制器实现。

## 推荐项目路线

1. 在 control_lab 中把关节指令从 0 改为非零角度，观察 set_point、process_value 与 command，理解位置误差如何变成力矩。
2. 对照 URDF 与控制器 YAML，找到 joint、hardwareInterface、transmission 和 plugin 的对应关系。
3. 切换到移动底盘，观察 Twist 如何变成左右轮速及里程计。
4. 接入[导航与定位项目](07-导航与定位.md)，让同一台底盘执行规划器的指令。
5. 阅读[开源项目指南](../projects/README.md)中的 RRBot 与 Jackal，对照不同机器人的模型和控制配置。

完整安装、构建和启动命令集中在 [control_lab 入手指南](../../ros1_advanced_ws/src/control_lab/README.md)，避免多个入口的参数不一致。

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

这段示例展示 PID 更新逻辑。完整实现还需定义增益、时间间隔、句柄、限幅和生命周期：`dt` 取有效的正时间间隔，积分项与最终输出力矩分别限幅，积分重置按控制器启停和状态切换策略执行。

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
