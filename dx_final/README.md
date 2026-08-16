# dx_final · RoboMaster 舵轮底盘控制(考核项目)

基于 ROS 1 Noetic 与 `catkin build` 的**四舵轮底盘控制器**学习/考核工作区,覆盖 URDF 建模、Gazebo 仿真、ros_control 插件与动态参数配置。考核原始需求与评分细则见 [docs/requirements.md](../docs/requirements.md)。

> 建议先完成 [ros1_learning_ws](../ros1_learning_ws/README.md) 的三个示例,并过一遍进阶教程里的 [tf2](../docs/tutorials/01-tf2坐标变换.md)、[URDF](../docs/tutorials/02-URDF建模.md)、[ros_control](../docs/tutorials/04-ros_control进阶.md),再进入本项目。

## 这个工作区是什么

| | |
| --- | --- |
| **主题** | 四舵轮 (Swerve Drive) 底盘控制器——考核作业的核心 |
| **产出** | 一个可加载进 Gazebo 与真机的 `ros_control` 控制器插件 + 键盘遥控节点 |
| **技术点** | 逆运动学、8 个 PID、前馈+软启动、交叉耦合、就近转角、虚拟电容功率限制、里程计与 tf、dynamic_reconfigure |
| **命名说明** | 包名 `sentry_chassis_controller` 沿用仿真机器人模型名 `sentry`;工作区主题是**四舵轮底盘控制器**,两者指同一个项目 |

## 考核背景速览

考核要求编写舵轮底盘的控制器并在 Gazebo 中控制机器人底盘。必做项:运行 `rm_description_for_task`、理解并运行 simple_chassis_controller(全程 CLion + catkin-tools);选做项:创建包与版本管理、PID 调速、逆运动学、正运动学里程计、tf 世界坐标系控制、特色功能(键盘/加速度/小陀螺/功率控制/自锁)。完整细则与对应实现见 [docs/requirements.md](../docs/requirements.md) 与控制器 README 的「与考核要求的对应」。

## 目录结构

```
dx_final/
├── src/
│   ├── sentry_chassis_controller/   # 本仓库的控制器插件 + 键盘节点(核心作业)
│   ├── rm_control/                  # rm-controls 官方仓库(子模块)
│   └── rm_description_for_task/     # DynamicX 描述仓库(子模块,ROS 包名 rm_description)
└── README.md
```

## 依赖组成

| 依赖 | 来源 | 固定提交 | 作用 |
| --- | --- | --- | --- |
| `src/rm_control` | [rm-controls/rm_control](https://github.com/rm-controls/rm_control) | `963fb9d977698222f2870671eb0f27f6b5017c26` | Gazebo 插件、硬件接口等控制器工程 |
| `src/rm_description_for_task` | DynamicX 描述仓库 | `43182d28710f7a48dfe6193e74246d798795002d` | 机器人 URDF/xacro 模型与 Gazebo 配置 |
| `src/sentry_chassis_controller` | 本仓库 | — | 考核作业:控制器插件 + 键盘节点 |

> `rm_description_for_task` 是仓库目录名,ROS 包名为 `rm_description`,launch 中一律使用包名。

## 环境准备与构建

```bash
source /opt/ros/noetic/setup.bash
cd <仓库根目录>
rosdep install --from-paths dx_final/src --ignore-src -r -y
```

```bash
cd dx_final
catkin init
catkin config --extend /opt/ros/noetic
catkin build
source devel/setup.bash
```

构建产物共 11 个包;`build/ devel/ logs/` 已 gitignore。

## 启动底盘仿真

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
| `roller_type` | `realistic` | 辊子类型(传给 URDF xacro) |
| `keyboard_prefix` | `xterm -e` | 键盘节点终端前缀(无 xterm 时改为 `gnome-terminal --`) |

### 启动后验证清单

按顺序检查,全部通过即环境正常:

```bash
rosnode list                                # 应有 controller_manager_spawner、robot_state_publisher 等
rosparam get /sentry_chassis_controller/sentry_chassis_plugin/wheel_track   # 0.362
rostopic echo /odom -n 1                    # 有里程计输出
rosrun tf2_ros tf2_echo odom base_link      # TF 链正常
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist "linear: {x: 0.3}"   # 车开始动
```

### 键盘操作

| 按键 | 功能 |
| --- | --- |
| `W` / `S` | 前进 / 后退(每次 ±0.5 m/s) |
| `A` / `D` | 左移 / 右移(每次 ±0.5 m/s) |
| `Q` / `E` | 逆时针 / 顺时针旋转(每次 ±0.5 rad/s) |
| `SPACE` | 急停(清零) |
| `G` | 小陀螺模式 ↔ 普通模式 |
| `H` | 世界坐标系 ↔ 车体坐标系控制 |
| `ESC` | 退出键盘节点 |

## 数据流速览

| 方向 | 名称 | 类型 | 说明 |
| --- | --- | --- | --- |
| 订阅 | `/cmd_vel` | `geometry_msgs/Twist` | 速度指令 |
| 订阅 | `/keyboard/key` | `std_msgs/String` | 模式切换按键 |
| 发布 | `/odom` | `nav_msgs/Odometry` | 里程计 |
| 发布 | `/debug/{lf,rf,lb,rb}_wheel/{target,actual,effort}` | `std_msgs/Float64` | 各轮期望/实际转速与输出力矩(调参用) |
| TF | `odom → base_link` | — | 广播里程计位姿;世界坐标系模式时监听 |

**完整的参数表、话题表与代码导读见 [sentry_chassis_controller README](src/sentry_chassis_controller/README.md)。**

## 调参工作流(推荐)

1. `gui:=true keyboard:=true tools:=true` 一键拉起环境;
2. 在 `rqt_reconfigure` 中在线调 8 个 PID 与加速度限制;
3. `rqt_plot` / PlotJuggler 观察 `/debug/*_wheel/target`(期望)与 `actual`(实际)的跟踪曲线;
4. 效果满意后把参数抄回 `config/chassis_params.yaml`,重启 launch 验证可复现;
5. 详细方法与指标含义见 [工具与调试](../docs/02-工具与调试.md),命令速查见 [常用命令速查](../docs/04-常用命令速查.md)。

## 考核项对照(实现位置见控制器 README)

| 考核项 | 对应实现 |
| --- | --- |
| PID 控制轮速(8 个 PID) | `pivot_pid_` / `wheel_pid_` + dynamic_reconfigure |
| 逆运动学 | `calculateWheelStates` |
| 正运动学里程计 | `calculateOdom` |
| tf 世界坐标速度控制 | `transformVelocity` + `use_world_frame` |
| 键盘/加速度/小陀螺/功率/自锁 | `keyboard_teleop` / `rampVelocity` / `ChassisSpinMode` / `limitPower` / `ChassisStopMode` |

## 学习资料

- 控制器原理讲解:[sentry_chassis_controller README](src/sentry_chassis_controller/README.md)
- 控制理论入门:[docs/assets/Control_Theory_Note_cn.pdf](../docs/assets/Control_Theory_Note_cn.pdf)
- 考核要求:[docs/requirements.md](../docs/requirements.md)

## 故障排查

- 两个外部仓库是固定提交的子模块,detached HEAD 正常,不要切分支;
- launch 找不到 Gazebo 插件:确认子模块已初始化,并重新 `catkin build`;
- Gazebo Classic 弃用警告属上游提示,不影响本项目在 Noetic 上运行;
- 更多见 [docs/03-常见问题.md](../docs/03-常见问题.md) 的 dx_final 一节。

## 提交要求提醒

考核对版本管理有明确要求(合理的 commit、清晰的 message、冲突处理、分工可追溯),提交前对照 [docs/requirements.md](../docs/requirements.md) 的「完善的版本管理」一节自查。
