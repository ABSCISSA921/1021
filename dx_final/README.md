# dx_final：RoboMaster 哨兵底盘控制

这个工作空间使用 ROS 1 Noetic 和 `catkin build`，用于学习 RoboMaster 哨兵四舵轮底盘的 URDF、Gazebo 仿真、ros_control 插件和动态参数配置。

## 依赖组成

- `src/rm_control`：`rm-controls/rm_control`，固定到 `963fb9d977698222f2870671eb0f27f6b5017c26`。
- `src/rm_description_for_task`：DynamicX 的描述仓库，固定到 `43182d28710f7a48dfe6193e74246d798795002d`；ROS 包名为 `rm_description`。
- `src/sentry_chassis_controller`：本仓库的四舵轮控制器和键盘节点。

## 构建

```bash
source /opt/ros/noetic/setup.bash
cd dx_final
catkin init
catkin config --extend /opt/ros/noetic
catkin build
source devel/setup.bash
```

如果依赖尚未安装，从仓库根目录执行：

```bash
rosdep install --from-paths ros1_learning_ws/src dx_final/src --ignore-src -r -y
```

## 启动 Sentry 仿真

默认启动无头模式，只启动 Gazebo server、URDF、控制器和状态发布器：

```bash
roslaunch sentry_chassis_controller sentry_chassis_control.launch
```

桌面环境可以显式打开 Gazebo GUI、键盘节点和调试工具：

```bash
roslaunch sentry_chassis_controller sentry_chassis_control.launch \
  gui:=true keyboard:=true tools:=true
```

主要 launch 参数：

- `gui`：是否启动 `gzclient`，默认 `false`。
- `keyboard`：是否启动键盘速度节点，默认 `false`。
- `tools`：是否启动 rqt、RViz 和 PlotJuggler，默认 `false`。
- `paused`、`load_chassis`、`roller_type`：传递给机器人描述和 Gazebo 的基础参数。

控制器订阅 `/cmd_vel` 和 `/keyboard/key`，发布 `/odom` 及调试话题；控制器实例名为 `sentry_chassis_controller/sentry_chassis_plugin`。

## 依赖和故障排查

- 两个外部仓库是固定提交的子模块；detached HEAD 不需要切换回分支。
- `rm_description_for_task` 是仓库目录名，`rm_description` 是 ROS 包名，二者不要混用。
- 如果 launch 找不到 Gazebo 插件，确认两个子模块已初始化并重新构建工作空间。
- Gazebo Classic 的弃用警告属于上游环境提示，不影响本项目在 ROS Noetic 上运行。
