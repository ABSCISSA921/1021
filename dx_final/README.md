# dx_final · RoboMaster 哨兵底盘控制(考核项目)

基于 ROS 1 Noetic 与 `catkin build` 的哨兵四舵轮底盘学习/考核工作区,覆盖 URDF 建模、Gazebo 仿真、ros_control 插件与动态参数配置。考核原始需求与评分细则见 [docs/requirements.md](../docs/requirements.md)。

> 建议先完成 [ros1_learning_ws](../ros1_learning_ws/README.md) 的三个示例,并过一遍进阶教程里的 [tf2](../docs/tutorials/01-tf2坐标变换.md)、[URDF](../docs/tutorials/02-URDF建模.md)、[ros_control](../docs/tutorials/04-ros_control进阶.md),再进入本项目。

## 目录结构

```
dx_final/
├── src/
│   ├── sentry_chassis_controller/   # 本仓库的控制器插件 + 键盘节点(核心作业)
│   ├── rm_control/                  # rm-controls 官方仓库(子模块)
│   └── rm_description_for_task/     # DynamicX 描述仓库(子模块,ROS 包名 rm_description)
├── legacy/                          # 整理前的历史实验代码,不参与构建,仅查阅
└── README.md
```

## 依赖组成

| 依赖 | 来源 | 固定提交 |
| --- | --- | --- |
| `src/rm_control` | [rm-controls/rm_control](https://github.com/rm-controls/rm_control) | `963fb9d977698222f2870671eb0f27f6b5017c26` |
| `src/rm_description_for_task` | DynamicX 描述仓库 | `43182d28710f7a48dfe6193e74246d798795002d` |
| `src/sentry_chassis_controller` | 本仓库 | — |

`rm_description_for_task` 是仓库目录名,ROS 包名为 `rm_description`,launch 中一律使用包名。

## 构建

```bash
source /opt/ros/noetic/setup.bash
cd dx_final
catkin init
catkin config --extend /opt/ros/noetic
catkin build
source devel/setup.bash
```

依赖安装(在仓库根目录执行):

```bash
rosdep install --from-paths dx_final/src --ignore-src -r -y
```

## 启动 Sentry 仿真

默认无头模式(只启动 Gazebo server、URDF、控制器、状态发布器),适合服务器/容器:

```bash
roslaunch sentry_chassis_controller sentry_chassis_control.launch
```

桌面环境显式打开 Gazebo GUI、键盘节点与全套调试工具:

```bash
roslaunch sentry_chassis_controller sentry_chassis_control.launch \
  gui:=true keyboard:=true tools:=true
```

launch 参数一览:

| 参数 | 默认 | 说明 |
| --- | --- | --- |
| `gui` | `false` | 是否启动 `gzclient`(Gazebo 界面) |
| `keyboard` | `false` | 是否启动键盘遥控节点 `keyboard_teleop` |
| `tools` | `false` | 是否启动 rqt_reconfigure / rqt_plot / RViz / PlotJuggler |
| `paused` | `false` | Gazebo 是否暂停启动 |
| `load_chassis` | `true` | 是否加载底盘(传给 URDF xacro) |
| `roller_type` | `realistic` | 麦轮/舵轮辊子类型(传给 URDF xacro) |
| `keyboard_prefix` | `xterm -e` | 键盘节点所在终端前缀(无 xterm 时改为 `gnome-terminal --`) |

启动成功后,键盘操作:

- `W/S` 前进/后退,`A/D` 左移/右移,`Q/E` 逆时针/顺时针旋转;
- `SPACE` 急停,`G` 小陀螺模式开关,`H` 世界/车体坐标系切换,`ESC` 退出。

控制器订阅 `/cmd_vel` 与 `/keyboard/key`,发布 `/odom`、`odom→base_link` 的 TF 及 `/debug/*` 调试话题。**完整的参数表、话题表与代码导读见 [sentry_chassis_controller README](src/sentry_chassis_controller/README.md)。**

## 调参工作流(推荐)

1. `gui:=true keyboard:=true tools:=true` 一键拉起环境;
2. 在 `rqt_reconfigure` 中在线调 8 个 PID 与加速度限制;
3. `rqt_plot` / PlotJuggler 观察 `/debug/*_wheel/target`(期望)与 `actual`(实际)的跟踪曲线;
4. 效果满意后把参数抄回 `config/chassis_params.yaml`,重启 launch 验证可复现;
5. 详细方法与指标含义见 [工具与调试](../docs/02-工具与调试.md)。

## 学习资料

- 控制器原理讲解:[sentry_chassis_controller README](src/sentry_chassis_controller/README.md)
- 控制理论入门:[docs/assets/Control_Theory_Note_cn.pdf](../docs/assets/Control_Theory_Note_cn.pdf)
- 考核要求:[docs/requirements.md](../docs/requirements.md)

## 故障排查

- 两个外部仓库是固定提交的子模块,detached HEAD 正常,不要切分支;
- launch 找不到 Gazebo 插件:确认子模块已初始化,并重新 `catkin build`;
- Gazebo Classic 弃用警告属上游提示,不影响本项目在 Noetic 上运行;
- 其余见 [docs/03-常见问题.md](../docs/03-常见问题.md) 的 dx_final 一节。
