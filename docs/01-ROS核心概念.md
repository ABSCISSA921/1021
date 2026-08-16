# 01 · ROS 核心概念

本章是 ROS 1 的「速查手册」,写给刚接触 ROS 的同学。不需要一次背完,遇到看不懂的名词回来查即可。更系统的学习推荐 [ROS Wiki 官方教程](http://wiki.ros.org/ROS/Tutorials)。

## 1. 计算图(Computation Graph)

ROS 程序的最小单元是**节点 (Node)**,节点之间通过**话题 (Topic)**、**服务 (Service)**、**动作 (Action)** 通信,全部由 **Master (roscore)** 管理。一个正在运行的 ROS 系统就是一张计算图,用 `rqt_graph` 可以可视化。

```text
roscore (Master + 参数服务器 + rosout 日志)

node A ──/chatter──> node B        # 话题:单向、多对多、持续
node C ──/add_two_ints──> node D   # 服务:请求/应答、一问一答
node E <──/fibonacci──> node F     # 动作:带反馈和取消的长时间任务
```

## 2. 节点 (Node)

- 每个节点是一个进程,有唯一名字,可带命名空间:`tb3_0/robot_state_publisher`。
- 节点间不关心对方如何实现(C++/Python/Simulink 都可以),只通过消息接口对话。
- **解耦**是 ROS 的核心思想:传感器、算法、控制器各是一个节点,可以单独重启/调试/替换。

常用命令:

```bash
rosrun <package> <executable>          # 运行某个包里的节点
roslaunch <package> <file.launch>      # 按 launch 文件一次启动多个节点
rosnode list                           # 列出所有节点
rosnode info <node>                    # 查看节点的话题/服务
rosnode kill <node>                    # 杀死节点
```

## 3. 话题 (Topic)

节点间**发布/订阅 (pub/sub)** 的通道,单向持续通信。

```bash
rostopic list                          # 列出所有话题
rostopic info /cmd_vel                 # 查看消息类型和收发双方
rostopic echo /odom                    # 实时打印消息内容
rostopic hz /odom                      # 查看发布频率
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist \
  "linear: {x: 0.2} angular: {z: 0.0}"  # 以 10Hz 持续发布速度指令
```

本仓库的重要话题:

| 话题 | 类型 | 含义 |
| --- | --- | --- |
| `/cmd_vel` | `geometry_msgs/Twist` | 速度指令(x 前进、y 横移、angular.z 转向) |
| `/odom` | `nav_msgs/Odometry` | 里程计(位姿+速度) |
| `/scan` | `sensor_msgs/LaserScan` | 激光雷达数据 |
| `/joint_states` | `sensor_msgs/JointState` | 关节状态(位置/速度/力矩) |
| `/debug/lf_wheel/target` | `std_msgs/Float64` | 哨兵控制器调试话题(左前轮目标转速) |

## 4. 服务 (Service) 与动作 (Action)

- **服务**:一问一答,如 `rosservice call /gazebo/reset_simulation` 重置仿真。
- **动作**:长任务的异步服务,可反馈进度、可取消。MoveIt 规划、导航都基于 action。

```bash
rosservice list                        # 列出服务
rosservice call /gazebo/pause_physics  # 暂停物理引擎
```

## 5. 参数服务器 (Parameter Server)

全局共享的键值对,`launch` 文件和节点都可以读写。YAML 配置文件就是通过它加载的(如 `chassis_params.yaml`)。

```bash
rosparam list                          # 列出参数
rosparam get /sentry_chassis_controller/sentry_chassis_plugin/wheel_track
rosparam set <name> <value>            # 临时改参数(重启节点后失效)
rosparam dump params.yaml              # 导出全部参数
```

**dynamic_reconfigure** 是对参数服务器的增强:运行时改参数会触发节点回调,立即生效(哨兵控制器的 PID、轮距等都在线可调)。用 `rqt_reconfigure` 图形化操作。

## 6. 消息 (Message) 与 TF

- 消息定义在 `.msg` 文件中,生成类型后可在任何语言使用。`rosmsg show geometry_msgs/Twist` 查看结构。
- **TF (tf2)**:坐标系树,维护任意两坐标系间的变换关系,如 `map → odom → base_link → wheel_link`。里程计、激光数据、速度指令的坐标转换都靠它:

```bash
rosrun tf2_ros tf2_echo map base_link       # 查看两坐标系变换
rosrun tf2_tools view_frames.py             # 生成 frames.pdf 查看整棵 TF 树
```

哨兵控制器的「世界坐标系控制」就是先把 `odom` 系下的速度指令用 TF 变换到 `base_link` 系再执行,见 [tf2 教程](tutorials/01-tf2坐标变换.md)。

## 7. launch 文件

XML 格式的「多节点启动脚本」:声明参数、include 其他 launch、按条件启动节点。

```xml
<launch>
  <arg name="gui" default="true"/>                        <!-- 外部可覆盖的参数 -->
  <param name="robot_description" command="$(find xacro)/xacro ..."/>  <!-- 加载参数 -->
  <node pkg="robot_state_publisher" type="robot_state_publisher" name="rsp"/>  <!-- 启动节点 -->
  <group if="$(arg gui)">...</group>                      <!-- 条件启动 -->
</launch>
```

常用技巧:

```bash
roslaunch pkg file.launch gui:=false     # 命令行覆盖 arg
roslaunch --screen pkg file.launch       # 把输出打到当前终端
# 自定义参数需在 launch 内声明:<arg name="x" default="1.0"/>
roslaunch pkg file.launch x:=1.5
```

## 8. 时间与坐标系约定

- **ROS 时间** `ros::Time::now()`:仿真中必须用仿真的 `/clock`(即 `use_sim_time=true`),否则时间会错乱。本仓库所有 launch 都设置了 `use_sim_time`。
- **坐标系**:世界 `world/map/odom` → 车体 `base_link/base_footprint` → 部件 `wheel_link`。发布 TF 时父子关系要构成**一棵树**,不能有环。

## 9. 推荐的系统学习方法

1. 跑通本仓库 `ros1_learning_ws` 的三个示例,先建立感性认识;
2. 每个示例结合其包级 README 读一遍源码,弄清楚节点、话题、参数是怎么串起来的;
3. 需要系统补课时,把 [ROS Wiki Tutorials](http://wiki.ros.org/ROS/Tutorials) 的 Beginner Level 过一遍;
4. 回到进阶工作区,按教程顺序做 tf2 → URDF → SLAM → ros_control → MoveIt → 视觉。
