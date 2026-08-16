# ros_pkg · 基础速度节点(任务 1)

第一个 ROS 练习包:一个基于**状态机**的简单导航节点。机器人先直行到 A 点,右转,再直行并依靠激光雷达在墙前停车。

## 任务目标(原始要求)

1. 学习 ROS 基本概念:节点、话题、消息;
2. 创建自己的包,写第一个 C++ 节点;
3. 让机器人完成「走一段 → 转向 → 遇墙停下」的流程。

## 运行

需要环境中已有发布 `/odom` 与 `/scan` 的机器人仿真(本仓库可用 diffbot_sim 或 TurtleBot3 仿真):

```bash
# 终端 1:启动仿真(二选一)
roslaunch diffbot_sim diffbot_gazebo.launch
# 或
export TURTLEBOT3_MODEL=burger
roslaunch turtlebot3_gazebo turtlebot3_world.launch

# 终端 2:运行本节点
source devel/setup.bash
roslaunch ros_pkg v_node.launch
```

## 订阅/发布

| 方向 | 话题 | 类型 | 用途 |
| --- | --- | --- | --- |
| 订阅 | `/odom` | `nav_msgs/Odometry` | 获取当前位置与偏航角 |
| 订阅 | `/scan` | `sensor_msgs/LaserScan` | 获取正前方障碍距离 |
| 发布 | `/cmd_vel` | `geometry_msgs/Twist` | 输出速度指令 |

## 状态机设计

```mermaid
graph LR
    A[GO_TO_A<br/>直行至 A 点] -->|距离 < 0.05m| B[TURN_TO_B<br/>右转 90°]
    B -->|角度误差 < 0.02rad| C[RADAR_STOP<br/>直行,雷达减速]
    C -->|前方 < 0.35m| D[STOP<br/>停车]
```

| 状态 | 逻辑 |
| --- | --- |
| `GO_TO_A` | 直行到固定点 A(0.55, -0.49),距离小于 `POS_TOLERANCE` 进入下一状态 |
| `TURN_TO_B` | 原地右转到 -90°,角度误差小于 `ANGLE_TOLERANCE` 后直行 |
| `RADAR_STOP` | 取正前方 ±10° 内雷达最近点:<1.0m 减速,<0.35m 停车 |
| `STOP` | 速度置零,打印日志 |

## 代码导读(`src/v_node.cpp`)

- **全局状态变量**:`current_state` 枚举 + 里程计/雷达缓存,回调只存数据,主循环做决策——这是 ROS 节点最常见的「回调收数据、循环算逻辑」结构。
- **四元数转偏航角**(`odomCallback`):

```cpp
double yaw = atan2(2*(qw*qz + qx*qy), 1 - 2*(qy*qy + qz*qz));
```

- **雷达正前方筛选**:遍历 `ranges`,用 `angle_min + i * angle_increment` 算出每个点的角度,只保留 ±10° 内的有效点(过滤 `nan`/`inf`)取最近值。
- **状态切换**都在 `switch (current_state)` 中显式完成,每次切换清零对应速度分量。

## 练习任务(动手改)

1. 把目标点 A 改成命令行参数 `roslaunch ros_pkg v_node.launch target_x:=...`(提示:launch 里 `<param>`,节点里 `nh.param`);
2. 把「遇墙停车」改成「遇墙倒车再左转」(加一个状态);
3. 用 `rqt_plot` 观察 `front_dist` 与 `linear.x` 的关系(需要先把它们发布成话题,或直接 `rostopic echo /cmd_vel`)。

## 注意

- 代码里的雷达分支有一处笔误(`if (front_dist = (...))`),不影响功能,建议自己发现并改正——这也是读代码练习的一部分;
- 节点名 `turtlebot3_nav_node` 是历史遗留,与 TurtleBot3 无耦合,可改成任意名字。
