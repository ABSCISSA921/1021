# ros_basics · ROS 1 通信基础

六个 Python 3 节点演示话题、服务和 Action；配合自定义接口、参数、命名空间、remap 与 rosbag，建立通信入门实验。无需 Gazebo、摄像头、机器人或第三方源码。之后可读同工作区的 C++ 示例。

## 0. 构建与终端约定

以下所有终端均从**仓库根目录**开始。第一次使用：

```bash
source /opt/ros/noetic/setup.bash
rosdep install --from-paths ros1_learning_ws/src/ros_basics --ignore-src --rosdistro noetic -y
bash scripts/build_learning.sh basics
source ros1_learning_ws/devel/setup.bash
```

每个新终端执行 `source ros1_learning_ws/devel/setup.bash`。`roslaunch` 可自动启动 Master；只使用 `rosrun` 时需另开终端运行 `roscore`。在独立的学习 ROS Master 上运行，保持 `/use_sim_time=false`；本组实验不提供 `/clock`。

## 1. 话题与自定义消息

终端 A：

```bash
roslaunch ros_basics topics.launch
```

终端 B：

```bash
rosnode list
rostopic info /basics/counter
rosmsg show ros_basics/Counter
rostopic echo /basics/counter -n 3
rostopic hz /basics/counter
```

预期：`/basics/talker` 发布、`/basics/listener` 订阅；`count` 递增，`label` 为 `hello_ros`，频率约 2 Hz。刚订阅时计数不一定从 0 开始，因为话题不保存订阅前的历史消息。

阅读顺序：[Counter.msg](msg/Counter.msg) → [talker.py](scripts/talker.py) → [listener.py](scripts/listener.py) → [topics.launch](launch/topics.launch)。消息定义经 CMake 生成 Python 类型；修改 `.msg` 源文件后重新构建即可更新 `devel/` 内的生成文件。

## 2. 参数、命名空间和 remap

停止终端 A 的 launch 后重新启动：

```bash
roslaunch ros_basics topics.launch namespace:=robot_a topic:=telemetry rate:=5 label:=robot_a
```

另一个终端：

```bash
rostopic echo /robot_a/telemetry -n 1
rosparam get /robot_a/talker/rate
rostopic hz /robot_a/telemetry
```

预期：消息位于 `/robot_a/telemetry`，频率约 5 Hz。源代码中的 `counter` 是相对名，`~rate` 是节点私有参数；`group ns` 和 `remap` 让代码无需写死机器人名称。

参数加载顺序是 YAML → launch 中的 param；launch 参数会覆盖 YAML 同名值。`rate` 范围为 0.1～100 Hz，只在启动时读取。执行 `rosparam set /robot_a/talker/rate 8` 后，参数服务器的值变为 8，当前发布频率保持原值。停止节点并用 `rate:=8` 重启后，新频率生效。这与 dynamic_reconfigure 的回调更新不同。

练习：同时启动 `robot_a` 和 `robot_b`，各用不同频率；用 `rostopic info` 证明发布订阅关系互不串线。

## 3. 服务：一次请求，一次响应

终端 A（可先停止话题实验）：

```bash
roslaunch ros_basics services.launch
```

终端 B：

```bash
rossrv show ros_basics/AddTwoInts
rosservice call /basics/add_two_ints "{a: 2, b: 3}"
rosrun ros_basics add_client.py __ns:=/basics _a:=-7 _b:=4
```

预期：第一次返回 `sum: 5`，客户端打印 `-7 + 4 = -3`。请求为两个 int32，结果为 int64，避免合法输入相加溢出。客户端等待服务最多 5 秒；关闭服务端后运行客户端，观察非零退出状态。

阅读：[AddTwoInts.srv](srv/AddTwoInts.srv)、[服务端](scripts/add_server.py)、[客户端](scripts/add_client.py)。`---` 分隔请求和响应；服务适合快速完成的计算与查询。

## 4. Action：目标、反馈、结果、取消

终端 A：

```bash
roslaunch ros_basics actions.launch
```

终端 B：

```bash
# 正常完成：倒计时 3 秒
rosrun ros_basics countdown_client.py __ns:=/basics _start:=3
# 主动取消：10 秒任务在约 2 秒时取消
rosrun ros_basics countdown_client.py __ns:=/basics _start:=10 _cancel_after:=2
```

预期：持续打印 `remaining`；正常结果为 `state=3, completed=True`（SUCCEEDED），运行中取消通常为 `state=2, completed=False`（PREEMPTED）。客户端通过 Action API 发出取消请求，并读取服务端返回的任务状态。

`start` 接受 0～60；0 立即完成，非法目标由服务端 ABORTED。服务端每约 50 ms 检查取消；倒计时采用墙上时间，不受仿真暂停影响。客户端等待 API 仍使用 ROS 时间，因此本实验要求 `/use_sim_time=false`。

阅读：[Countdown.action](action/Countdown.action) → [服务端](scripts/countdown_server.py) → [客户端](scripts/countdown_client.py)。两个 `---` 依次分隔 goal、result、feedback。概念参考 [actionlib 官方 API](https://docs.ros.org/en/noetic/api/actionlib/html/classactionlib_1_1SimpleActionServer.html)。

## 5. rosbag：留下可复现的消息

重新运行默认的 `topics.launch`，另开终端录制约 5 秒：

```bash
rosbag record -O /tmp/ros_basics.bag /basics/counter
# Ctrl+C 结束录制
rosbag info /tmp/ros_basics.bag
```

停止 `topics.launch`，保留或重新启动 `roscore`，再用两个终端运行：

```bash
# 终端 A：仅启动订阅者
rosrun ros_basics listener.py __ns:=/basics
```

```bash
# 终端 B：把 bag 里的消息重新发到原话题
rosbag play /tmp/ros_basics.bag
```

验收：发布者进程已经停止，listener 仍收到录制时的计数和时间戳。回放前关闭原发布者，避免两个数据源混在同一个话题里。本实验无需 `--clock`。

## 接口速查

| 接口 | 默认名称 | 类型 |
| --- | --- | --- |
| 话题 | `/basics/counter` | `ros_basics/Counter` |
| 服务 | `/basics/add_two_ints` | `ros_basics/AddTwoInts` |
| Action | `/basics/countdown` | `ros_basics/CountdownAction` |
| 私有参数 | `/basics/talker/rate`、`label` | double、string |
| 客户端私有参数 | `~a`、`~b` / `~start`、`~cancel_after` | 请求输入 / 目标与取消时间 |

## 自动验收

```bash
cd ros1_learning_ws
catkin run_tests ros_basics --no-deps
catkin_test_results build/ros_basics
```

测试使用独立 rostest Master，覆盖命名空间/remap、消息时间戳与计数、启动参数、正负整数及边界求和、Action 成功/非法目标/反馈/取消，以及客户端输出、退出状态与服务缺失超时。它不验证 Gazebo 或其他教学包。

完成后用[实验记录模板](../../../docs/templates/实验记录.md)记下结果，再按[学习路线](../../../docs/05-学习路线与实验.md)进入 C++ 与仿真。
