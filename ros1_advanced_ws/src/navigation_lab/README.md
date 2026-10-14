# navigation_lab：从轮式底盘到建图、定位与导航

这个包把 [control_lab 的差速底盘、URDF 和 Gazebo 场景](../control_lab/README.md)接入 ROS 1 Noetic 的完整导航链路。可以先用随包地图完成一个导航目标，再亲自建图，最后比较轮式里程计与 EKF 融合结果。三个实验都在 `ros1_advanced_ws` 中运行；`dx_final` 保持独立。

| 项目 | 启动文件 | 输入 → 输出 | 完成标准 |
| --- | --- | --- | --- |
| 激光建图 | `slam.launch` | `/scan` + 里程计 TF → `/map` | 房间轮廓完整，保存得到可重新加载的 YAML + PGM |
| 已知地图导航 | `navigation.launch` | 地图 + AMCL + 目标 → 控制器速度指令 | Action 返回 `SUCCEEDED`，机器人停在目标附近 |
| 轮速与 IMU 融合 | `localization.launch` | 轮速 + IMU 角速度 → `/odometry/filtered` | 唯一 `odom → base_footprint`，转弯时姿态连续 |

适用环境：Ubuntu 20.04、ROS 1 Noetic、Gazebo Classic 11。需要先会话题、launch、TF，并完成控制底盘的直行/转弯实验。本包是学习环境；理想仿真中的 EKF 不一定比轮式里程计误差更小，实际机器人需要重新标定噪声、轮径和传感器外参。

## 1. 安装与构建

在一个**新终端**操作，先进入仓库根目录。以下路径按本仓库当前位置书写，其他机器请替换 `cd` 路径。

```bash
source /opt/ros/noetic/setup.bash
cd /home/abscissa/1021
sudo apt update
sudo apt install python3-catkin-tools python3-rosdep
rosdep update --include-eol-distros --rosdistro noetic
rosdep install --from-paths ros1_advanced_ws/src/control_lab ros1_advanced_ws/src/navigation_lab --ignore-src --rosdistro noetic -r -y
bash scripts/build_learning.sh projects
source ros1_advanced_ws/devel/setup.bash
rospack find control_lab
rospack find navigation_lab
```

如果首次使用 rosdep 提示未初始化，先执行一次 `sudo rosdep init`，然后再执行 `rosdep update --include-eol-distros --rosdistro noetic`。Noetic 已结束支持，更新时需要显式包含该发行版，避免默认跳过它。主要运行依赖包含 `gazebo_ros_control`、`diff_drive_controller`、`gmapping`、`map_server`、`amcl`、`move_base`、`dwa_local_planner`、`robot_localization`、`teleop_twist_keyboard` 和 RViz；完整声明在 [package.xml](package.xml)。

后续每个新终端都先执行：

```bash
source /opt/ros/noetic/setup.bash
source /home/abscissa/1021/ros1_advanced_ws/devel/setup.bash
```

同一终端只加载这个工作区，不叠加 `ros1_learning_ws` 或 `dx_final`。三个实验的入口都默认启动 Gazebo，只运行一个入口；切换实验前对原来的 launch 和遥控节点按 `Ctrl+C`。服务器环境可给所有入口追加 `gui:=false rviz:=false`。

## 2. 先完成一次导航

终端 A：

```bash
roslaunch navigation_lab navigation.launch
```

此命令启动底盘、EKF、地图服务器、AMCL、move_base 和 RViz。等待模型、地图和激光出现。默认出生位置及 AMCL 初始估计都是 `(0, 0, 0)`；这是明确给定的初始化条件，运行中没有读取 Gazebo 真值来定位。

终端 B：

```bash
rostopic echo -n 1 /amcl_pose
rosrun navigation_lab send_goal.py --x 2.5 --y 0 --yaw 0 --timeout 120
echo $?
```

目标单位为米、弧度，坐标系固定为 `map`。成功时脚本输出 `SUCCEEDED` 并返回 `0`；`2` 表示服务器不可用，`3` 表示目标超时并已发出取消，`4` 表示 Action 返回失败，`130` 表示用户中断。超时按实际经过时间计算，仿真时钟暂停也不会无限等候。`SUCCEEDED` 表示 move_base 按定位估计判定目标已进入配置容差（位置 `0.15 m`、角度 `0.15 rad`）；真值误差通过 Gazebo 实体位姿另行计算。

也可以在 RViz 操作：

1. `Fixed Frame` 使用 `map`，检查 `/map` 与 `/scan` 的墙面是否重合。
2. 点 **2D Pose Estimate**，在机器人当前地图位置按住鼠标拖出朝向。这会向 `/initialpose` 发初值，尤其适用于加载自己建的地图或修改出生位置后。
3. 点 **2D Nav Goal**，在空闲区域拖出目标位置与朝向；观察全局路径和机器人运动。
4. 用 `rostopic echo /move_base/result` 观察 `status.status: 3`，确认目标成功。结果话题发布时即可收到消息，使用 RViz 发目标后及时运行该命令。

导航期间关闭键盘遥控，避免两个节点同时给 `/diff_drive_controller/cmd_vel` 发指令。取消当前目标可执行：

```bash
rostopic pub -1 /move_base/cancel actionlib_msgs/GoalID '{}'
```

### 随包地图的来源

[maps/learning_room.yaml](maps/learning_room.yaml) 对应 `control_lab/worlds/learning_room.world`：房间内部为 `-4 < x,y < 4`，两个障碍物中心分别为 `(1.25, 0.85)`、`(-1.5, -1.1)`。地图分辨率为 `0.05 m`，原点为 `(-4.5, -4.5)`。

它是由世界文件的碰撞几何生成的**已知地图**，用于先学习 AMCL 和规划；下一节再通过激光 SLAM 生成自己的地图。地图生成脚本读取墙体和障碍物的实际尺寸，并由测试校验地图像素与世界一致。修改世界后需重新建图，或在新的目录重新生成对应练习地图：

```bash
training_map_dir="$(mktemp -d /tmp/navigation-lab-map.XXXXXX)"
rosrun navigation_lab generate_training_map.py --output-dir "$training_map_dir"
```

生成器仅支持当前轴对齐矩形训练场景；已有同名地图会拒绝覆盖。改动房间边界、障碍物数量或形状后，需要相应修改生成器并通过测试，或直接使用下一节 SLAM。

## 3. 自己建图、保存，再加载导航

先结束上一节的全部进程。终端 A：

```bash
roslaunch navigation_lab slam.launch
```

终端 B：

```bash
rosrun teleop_twist_keyboard teleop_twist_keyboard.py cmd_vel:=/diff_drive_controller/cmd_vel _speed:=0.20 _turn:=0.50
```

按照键盘节点屏幕提示遥控，保持该终端获得键盘焦点。绕房间和两个障碍物缓慢走一圈，适当转向观察被遮挡区域，完成探索后再保存地图。按空格或 `k` 停车。RViz 中应看到已知区域逐渐扩展、墙体连续，未观察区域仍为灰色。

终端 C 保存地图。下列命令每次创建新目录，避免覆盖之前的实验数据：

```bash
mkdir -p "$HOME/ros_maps"
mapping_dir="$(mktemp -d "$HOME/ros_maps/control_lab_XXXXXX")"
timeout 30s rosrun map_server map_saver -f "$mapping_dir/room"
ls -l "$mapping_dir/room.yaml" "$mapping_dir/room.pgm"
printf '地图路径：%s\n' "$mapping_dir/room.yaml"
```

看到两个文件且 `map_saver` 成功退出后，记下打印的绝对 YAML 路径。退出建图和遥控；在保留 `mapping_dir` 变量的终端启动：

```bash
roslaunch navigation_lab navigation.launch map_file:="$mapping_dir/room.yaml"
```

如果换了终端，用刚才打印的实际路径替换参数，例如 `map_file:=/home/你的用户名/ros_maps/control_lab_ABC123/room.yaml`。YAML 内的 `image:` 与 PGM 相互关联，移动地图时两个文件一起移动。

先用 **2D Pose Estimate** 对齐激光与地图，再发一个地图内的空闲目标。SLAM 地图的 `map` 原点由建图过程确定，可能与 Gazebo 世界原点不同。根据新地图选择可达目标，并核对其物理位置。

`slam.launch` 与 `navigation.launch` 每次选择一个：前者由 gmapping 发布 `map → odom`，后者由 AMCL 发布。进阶用法可以先单独运行 `simulation.launch`，随后给上层 launch 传 `start_sim:=false`，复用仿真；此时 `use_ekf` 必须与仿真启动时一致，且仍需在 SLAM/AMCL 两种上层模式间二选一。

## 4. 轮速 + IMU：学习局部定位

先结束其他实验。终端 A：

```bash
roslaunch navigation_lab localization.launch
```

终端 B 运行同样的键盘遥控，画一个矩形并回到起点。终端 C 查看输入输出：

```bash
rostopic echo -n 1 /diff_drive_controller/odom
rostopic echo -n 1 /imu/data
rostopic echo -n 1 /odometry/filtered
rosrun tf tf_echo odom base_footprint
```

RViz 的固定坐标系为 `odom`，橙色箭头显示原始轮式里程计，青色箭头显示融合里程计。可以记录一组数据供复盘，录包时按 `Ctrl+C` 正常结束：

```bash
mkdir -p "$HOME/ros_bags"
localization_bag_dir="$(mktemp -d "$HOME/ros_bags/localization_XXXXXX")"
rosbag record -O "$localization_bag_dir/run.bag" /clock /tf /tf_static /scan /imu/data /diff_drive_controller/odom /odometry/filtered
```

完成后退出，再启动无 EKF 对照：

```bash
roslaunch navigation_lab localization.launch use_ekf:=false
```

此时 `/odometry/filtered` 不存在，RViz 对应显示没有数据是预期现象；底盘控制器直接发布 `odom → base_footprint`。导航与建图入口也通过 `use_ekf` 开关统一切换 TF 发布者。

[config/ekf.yaml](config/ekf.yaml) 的状态顺序是 `x, y, z, roll, pitch, yaw, vx, vy, vz, vroll, vpitch, vyaw, ax, ay, az`。轮式输入选择 `vx`、`vy=0` 的非完整约束及 `vyaw`；IMU 输入只选择 `vyaw`，不把仿真器提供的世界姿态当作独立航向测量。同一轮编码器已经积分得到的位置、航向没有再次融合，避免重复使用相关信息。此配置依据 [robot_localization 官方传感器配置说明](https://github.com/cra-ros-pkg/robot_localization/blob/noetic-devel/doc/configuring_robot_localization.rst)。

## 5. 理解完整数据链

```text
wheel joints ── diff_drive_controller ── /diff_drive_controller/odom ─┐
IMU ────────────────────────────────── /imu/data ──────────────────┤
                                                                   ↓
                                                  EKF: /odometry/filtered
                                                  TF: odom → base_footprint
laser + odom TF ── gmapping 或 AMCL ──────────────── TF: map → odom
map + TF + laser + goal ── move_base ── /diff_drive_controller/cmd_vel
                                              ↓
                                  ros_control → wheel joints
```

| 变换/数据 | 唯一来源 | 含义 |
| --- | --- | --- |
| `map → odom` | SLAM 时 gmapping；导航时 AMCL | 使用环境观测修正长期漂移；校正时可跳变 |
| `odom → base_footprint` | `use_ekf=true` 为 EKF；否则 diff_drive_controller | 短期连续的运动估计，允许长期漂移 |
| `base_footprint → base_link → laser/imu_link` | URDF + robot_state_publisher | 机器人结构和传感器外参 |
| `/amcl_pose` | AMCL | 地图中的机器人位姿估计 |
| `/odometry/filtered` | EKF | 轮速与 IMU 融合后的局部里程计 |

EKF 用轮速和角速度提供连续的局部里程计，长期运行仍会积累漂移；AMCL 在已有地图中定位；move_base 使用定位结果规划并发送速度。各节点的具体 TF 行为可对照 [robot_localization 官方状态估计节点说明](https://github.com/cra-ros-pkg/robot_localization/blob/noetic-devel/doc/state_estimation_nodes.rst)。

| 文件 | 入手修改点 | 观察什么 |
| --- | --- | --- |
| [config/gmapping.yaml](config/gmapping.yaml) | `linearUpdate`、`angularUpdate`、`particles` | 地图更新频率、计算量、墙体一致性 |
| [config/amcl.yaml](config/amcl.yaml) | 粒子数、初值协方差、激光模型 | 粒子云收敛，激光与地图对齐 |
| [config/ekf.yaml](config/ekf.yaml) | 15 维输入选择、协方差 | 融合输入是否独立，滤波是否产生漂移 |
| [config/costmap_common.yaml](config/costmap_common.yaml) | 真实 footprint、膨胀半径 | 路径距障碍物的余量 |
| [config/global_costmap.yaml](config/global_costmap.yaml) | `map` + 静态层/障碍层/膨胀层 | 长距离路径是否连通 |
| [config/local_costmap.yaml](config/local_costmap.yaml) | `odom` + 滚动窗口 | 近距离避障、障碍标记和清除 |
| [config/dwa.yaml](config/dwa.yaml) | 速度、加速度、采样数 | 转弯是否平顺、是否无法采样合法速度 |

代价地图 footprint 覆盖车体和车轮，半尺寸为 `0.21 × 0.20 m`，另加 `0.02 m` padding。激光同时标记和清除障碍，清除距离大于标记距离，并低于传感器 `8 m` 量程。DWA 读取与当前 TF 来源相匹配的里程计话题；速度和加速度限制还需要与控制器限制一起检查。

## 6. 排错顺序

| 现象 | 先检查 |
| --- | --- |
| 一直等 `/clock` 或机器人不动 | Gazebo 是否暂停；`rostopic hz /clock`；`rosservice call /gazebo/unpause_physics` |
| 有地图但无机器人，TF 超时 | `rosrun tf tf_echo map base_footprint`；`rostopic hz /scan`；是否加载了正确工作区 |
| TF 抖动或重复数据 | 是否同时跑了两个仿真、SLAM 与 AMCL，或同时开启控制器和 EKF 的 odom TF |
| 激光与墙不重合 | 在 `map` 下重新设 2D Pose Estimate；检查地图是否对应当前 world，激光外参是否正确 |
| AMCL 有位姿却无法发目标 | `rostopic info /move_base/goal`；等待 costmap 获取 TF；目标需位于可通行区域 |
| DWA 报无合法轨迹 | 检查机器人和目标是否处于可通行区域，footprint 与实体尺寸是否一致 |
| 地图保存只有文件路径没有结果 | `/map` 是否存在并持续更新；机器人是否完成扫描；检查 `map_saver` 退出码 |
| EKF 不更新或漂移异常 | 输入时间戳、`frame_id`、角速度单位、协方差及 `imu_link` 外参，查看 `/diagnostics` |

TF 在启动最初几秒出现暂时等待可继续观察；持续错误按数据源、时间戳、TF 发布者的顺序定位，恢复由 gmapping 或 AMCL 提供的 `map → odom`。

## 7. 自测与进阶练习

不启动 Gazebo即可运行配置测试和 Action 客户端测试：

```bash
cd /home/abscissa/1021
python3 ros1_advanced_ws/src/navigation_lab/test/test_configuration.py
rostest navigation_lab goal_client.test
```

前者验证融合输入、TF 归属、恢复行为对应的代价地图层、地图方向及像素与碰撞几何一致、生成器不会覆盖文件；后者用测试 Action 服务覆盖成功、失败、超时取消，以及仿真时钟停止时的目标超时和服务发现超时。路径执行另通过本指南的 Gazebo 导航、建图与融合实验验收。

需要自动运行真实无 GUI 仿真验收时，可使用可选脚本 [smoke_projects.py](../../../scripts/smoke_projects.py)。先 source 已构建的进阶工作区，在仓库根目录选择一个 case：

```bash
python3 scripts/smoke_projects.py --case arm
python3 scripts/smoke_projects.py --case motion
python3 scripts/smoke_projects.py --case navigation --use-ekf true
python3 scripts/smoke_projects.py --case navigation --use-ekf false --goal-x 2.5 --goal-y 2.0
python3 scripts/smoke_projects.py --case slam --use-ekf true
```

这些命令应逐条运行，每次只执行一个 case。脚本默认使用 ROS 端口 `11431`、Gazebo 端口 `11432`，可用 `--ros-port`、`--gazebo-port` 指定其他空闲端口；端口被占用时拒绝启动。每次创建独立临时 `ROS_HOME` 和结果目录，输出 JSON、退出码和日志路径，并在结束或异常时清理自己启动的进程组。`--timeout 240` 是测试墙钟截止时间，退出清理另有有限等待；`--goal-timeout 90` 控制导航目标的墙钟超时。`--use-ekf` 用于 navigation/slam，motion 验证原始轮式里程计与控制器超时停止。

单臂保持目标、底盘直行/转向及停止等待按仿真秒计时，避免低实时率机器因实际仿真运动时间不足而误报；每阶段同时限制墙钟等待，暂停的时钟不会无限挂起。机器较慢时，导航可同时提高 `--goal-timeout` 与 `--timeout`；如果日志显示仿真时钟停止，应先排查 Gazebo。

导航 case 检查控制器运行、传感器数据、TF 唯一来源、Action 成功与地图内终点误差；motion case 对照 Gazebo 物理位姿与轮里程计，检查车体运动；slam case 验证真实 gmapping 更新、保存到新目录并重载地图。真值仅用于验收，不进入控制器或 EKF。这个脚本不纳入默认 CI，需要本机 ROS/Gazebo 环境。

建议每次只改一个变量并保存参数、录包和实验记录：

1. 用随包地图完成 `(2.5, 0)`、`(-2.5, 2.0)` 两个目标，解释哪一段需要绕障。
2. 亲自建图后导航到同一物理位置，比较地图原点、未知区域和 AMCL 初值的区别。
3. 修改 IMU/轮式里程计协方差，对比滤波输出与原始输入，分别评价平滑程度和相对真值的轨迹误差。
4. 适当增加膨胀半径，记录全局路径距墙变化；保持真实 footprint 不变。
5. 阅读 [Navigation Noetic 源码](https://github.com/ros-planning/navigation/tree/noetic-devel) 中的 `amcl`、`move_base`、`costmap_2d`、`dwa_local_planner`；从话题和插件入口追踪一条目标。
6. 对照 [gmapping 上游](https://github.com/ros-perception/slam_gmapping/tree/melodic-devel) 的激光与 TF 输入，再读 [robot_localization Noetic 源码](https://github.com/cra-ros-pkg/robot_localization/tree/noetic-devel) 的滤波入口。上游默认分支可能已经转向 ROS 2，按这里的 ROS 1 分支阅读。

更多开源项目与学习路线见仓库的[文档索引](../../../docs/README.md)。
