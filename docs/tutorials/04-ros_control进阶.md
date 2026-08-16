# 04 · ros_control 框架与控制器进阶

> 对应工作区:`ros1_advanced_ws`,子模块 `ros_controllers`(ros-controls/ros_controllers,noetic-devel,固定提交 `c2348e8`)与 `control_toolbox`(noetic-devel,固定提交 `de05a5c`)。

ros_control 是 ROS 的机器人控制抽象层:统一「算法控制器」与「硬件/仿真」之间的接口。舵轮控制器、DiffBot 底盘、任何关节机器人都在这个框架上跑。本教程是**读懂 sentry_chassis_controller 的直接前置**。

## 学习目标

1. 理解 Controller Manager / Controller / Hardware Interface / Transmission 四层结构;
2. 会用 `diff_drive_controller` 快速驱动一个差速底盘;
3. 掌握 `control_toolbox::Pid` 的用法(舵轮控制器 8 个 PID 用的就是它);
4. 理解 pluginlib 插件加载机制。

## 前置依赖

```bash
cd <仓库根目录>
rosdep install --from-paths ros1_advanced_ws/src --ignore-src -r -y
cd ros1_advanced_ws && catkin build ros_controllers control_toolbox && source devel/setup.bash
```

## 架构

```text
┌─────────────────────────────────────────────┐
│ ros_control                                  │
│  Controller Manager(controller_manager)      │
│   ├─ joint_state_controller(发布状态)        │
│   ├─ diff_drive_controller / PID 控制器 ...  │
│   └─ 你的 sentry_chassis_controller(插件)    │
│            │ 读写 JointHandle(位置/速度/力矩) │
│  Hardware Interface(EffortJointInterface)     │
└──────────────┬──────────────────────────────┘
               │ 机器人硬件抽象层(ros_control 插件)
    ┌──────────┴──────────┐
    │ Gazebo(gazebo_ros_control)│   实际电机驱动(rm_hw 等)
```

- **Controller**:只关心「给多少力矩」,不关心力矩给了谁;
- **Hardware Interface**:把关节句柄接到仿真或真实硬件上;
- **`gazebo_ros_control` 插件**:让 Gazebo 模拟硬件接口,控制器代码一行不改即可仿真/实机切换——这正是考核要求里「理解控制器怎么被加载进模拟器和实际机器人」的答案。

## 动手 1:用现成控制器驱动 DiffBot

`ros1_learning_ws/src/diffbot_sim/config/diffbot_control.yaml` 就是标准样例:

```yaml
diffbot_controller:
  type: "diff_drive_controller/DiffDriveController"
  left_wheel: 'wheel_0_joint'
  right_wheel: 'wheel_1_joint'
  wheel_separation: 0.3
  wheel_radius: 0.1
```

```bash
roslaunch diffbot_sim diffbot_gazebo.launch
rosrun controller_manager controller_manager list      # 查看已加载控制器
rosrun controller_manager controller_manager status
rostopic pub -r 10 /diffbot_controller/cmd_vel geometry_msgs/Twist "linear: {x: 0.3}"
```

要点:

- YAML 里控制器名 = 话题命名空间前缀(所以是 `/diffbot_controller/cmd_vel` 而不是 `/cmd_vel`);
- `diff_drive_controller` 内部就是:订阅 Twist → 差速运动学解算两轮目标转速 → **每个轮一个 `control_toolbox::Pid`** 做速度环 → 输出力矩;
- 看它的[源码](https://github.com/ros-controls/ros_controllers/blob/noetic-devel/diff_drive_controller/src/diff_drive_controller.cpp)是学习「标准控制器怎么写」的最佳范本。

## 动手 2:control_toolbox::Pid

```cpp
#include <control_toolbox/pid.h>

control_toolbox::Pid pid;
pid.initPid(p, i, d, i_max, i_min);     // 或用 setGains(...)
pid.reset();                            // 清积分,模式切换/起步时必须
double effort = pid.computeCommand(error, dt);
```

- `computeCommand` 内部:`P·error + I·∫error + D·d(error)/dt`,输出可限幅(`i_max/i_min` 与 `cmd_max`);
- **每次起步/换模式先 `reset()`**——舵轮控制器的「软启动」正是靠起步阶段 reset + 前馈单独发力,防止积分项憋出暴冲。

舵轮控制器 8 个 PID 的 `setGains` 调用见 `sentry_chassis_controller.cpp` 的 `reconfigCallback`,与本小节代码一一对应。

## 动手 3:pluginlib 插件加载

控制器是**编译期未知、运行期按名加载**的插件:

1. 写类:继承 `controller_interface::Controller<T>`,实现 `init/starting/update/stopping`;
2. 注册:`PLUGINLIB_EXPORT_CLASS(...)`(sentry_chassis_controller.cpp 最后一行);
3. 声明 XML:库名 + 类名 + base class(见 `sentry_chassis_controller_plugin.xml`);
4. package.xml `<export>` 指向 XML;
5. `controller_manager` 按 YAML 里的 `type:` 名字动态 `dlopen` 出控制器实例。

验证:

```bash
rospack plugins --attrib=plugin controller_interface   # 列出所有已注册的控制器插件
# 应能看到 sentry_chassis_controller/SentryChassisController
```

## 练习任务

1. 把 `diffbot_control.yaml` 换成 `velocity_controllers/JointVelocityController` 直接驱动一个轮子,体会 Effort 接口 vs Velocity 接口的差异;
2. 给 DiffBot 写一个 20 行的「匀速自转」控制器插件,按上面 5 步注册并加载,替换 `diffbot_controller`;
3. 读 `diff_drive_controller` 源码,找它发布 `/odom` 的代码段,与舵轮控制器的 `calculateOdom` 对比异同。

## 与舵轮项目的关联

舵轮控制器就是本教程的「毕业设计」:

| 概念 | 舵轮控制器中的位置 |
| --- | --- |
| Controller 插件 | `SentryChassisController`(继承 `Controller<EffortJointInterface>`) |
| 加载配置 | `config/controllers.yaml` + `sentry_chassis_controller_plugin.xml` |
| JointHandle 握手 | `init()` 里按关节名 `hw->getHandle(name)` |
| 1kHz 主循环 | `update()` |
| PID | 8 个 `control_toolbox::Pid` |
| Gazebo 硬件接口 | `rm_gazebo` 子模块提供的插件 |

## 延伸阅读

- [ros_control 论文](http://www.theoj.org/joss-papers/joss.00456/10.21105.joss.00456.pdf)(考核指定)
- [ros_control wiki](https://github.com/ros-controls/ros_control/wiki)
- [Gazebo ROS Control 教程](http://gazebosim.org/tutorials/?tut=ros_control)
- [pluginlib 文档](http://wiki.ros.org/pluginlib)

## 经典开源项目

- [ros-controls/ros_control](https://github.com/ros-controls/ros_control):框架核心(controller_manager、hardware_interface),官方 wiki 与论文的配套仓库;
- [ros-controls/ros_controllers](https://github.com/ros-controls/ros_controllers):标准控制器合集(本教程子模块源);
- [ros-controls/control_toolbox](https://github.com/ros-controls/control_toolbox):PID 等控制工具箱(本教程子模块源);
- [ros-controls/realtime_tools](https://github.com/ros-controls/realtime_tools):实时循环与 RealtimePublisher;
- [ros-simulation/gazebo_ros_pkgs](https://github.com/ros-simulation/gazebo_ros_pkgs):`gazebo_ros_control` 插件所在,仿真与 ros_control 的桥梁;
- [rm-controls/rm_control](https://github.com/rm-controls/rm_control):RoboMaster 开源控制器工程,本仓库 `dx_final` 的直接参考。
