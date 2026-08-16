# 03 · SLAM 建图教程(gmapping)

> 对应工作区:`ros1_advanced_ws`,子模块 `slam_gmapping`(ros-perception/slam_gmapping,melodic-devel 分支即 Noetic 实际发布分支,固定提交 `eec8606`)。

gmapping 是经典的**2D 激光 SLAM**(粒子滤波),轻量、依赖少,与 TurtleBot3 仿真现成对接,是入门建图的最佳选择。

## 学习目标

1. 理解建图所需的传感器与 TF 前提;
2. 跑通「建图 → 存图 → 加载导航」完整流程;
3. 认识 gmapping 的关键参数(粒子数、更新距离);
4. 了解 map / odom / base_link 三者的职责分工。

## 前置依赖

```bash
source /opt/ros/noetic/setup.bash
cd <仓库根目录>
rosdep install --from-paths ros1_advanced_ws/src --ignore-src -r -y
cd ros1_advanced_ws && catkin build slam_gmapping && source devel/setup.bash
```

> `slam_gmapping` 依赖 `openslam_gmapping`(apt 包 `ros-noetic-openslam-gmapping`),rosdep 会自动装。

## 完整流程

### 1. 启动 TurtleBot3 仿真

```bash
export TURTLEBOT3_MODEL=burger
roslaunch turtlebot3_gazebo turtlebot3_house.launch
```

### 2. 启动 gmapping

```bash
rosrun gmapping slam_gmapping scan:=scan
```

- `slam_gmapping` 节点订阅 `/scan` 与 `/tf`,发布 `/map`(占据栅格地图)、`/map_metadata` 与 `map → odom` 的 TF;
- 若报 `Timed out waiting for transform`,说明 `odom → base_link` 还没就绪——等仿真完全起来,或先 `rostopic echo /odom` 确认里程计在发。

### 3. 键盘遥控建图

```bash
rosrun turtlebot3_teleop turtlebot3_teleop_key
```

开慢一点、多转几圈、把每个房间都扫到,观察 RViz:

```bash
rosrun rviz rviz -d $(rospack find turtlebot3_slam)/rviz/turtlebot3_slam.rviz
```

### 4. 保存地图

```bash
rosrun map_server map_saver -f ~/map/house
# 生成 house.pgm(图像)与 house.yaml(元数据:分辨率、原点、占用阈值)
```

### 5. 加载地图(脱离 SLAM)

```bash
roslaunch turtlebot3_gazebo turtlebot3_house.launch
rosrun map_server map_server ~/map/house.yaml
```

此时 `/map` 由 map_server 发布,`map → odom` 由 **AMCL 定位**提供。若还想看定位效果:

```bash
roslaunch turtlebot3_navigation amcl.launch initial_pose_x:=0 initial_pose_y:=0
```

## 核心概念

### 1. 三个坐标系的分工(REP 105)

| 坐标系 | 谁发布变换 | 含义 |
| --- | --- | --- |
| `map` | gmapping / map_server+AMCL | 世界固定系,漂移不累积 |
| `odom` | 里程计(机器人) | 连续平滑,但**会漂移** |
| `base_link` | robot_state_publisher | 机器人本体 |

- `map → odom`:定位结果,把「漂移的 odom」修正回「不漂移的 map」;
- `odom → base_link`:里程计原始估计;
- SLAM 的本质就是**估计 map → odom 的修正变换**。

### 2. gmapping 关键参数

```bash
# 常用调参(动态参数,rqt_reconfigure 也可)
rosrun dynamic_reconfigure dynparam set /slam_gmapping linearUpdate 0.5   # 平移多少米处理一帧
rosrun dynamic_reconfigure dynparam set /slam_gmapping angularUpdate 0.2  # 旋转多少弧度处理一帧
rosrun dynamic_reconfigure dynparam set /slam_gmapping particles 80       # 粒子数(精度/算力权衡)
```

- `particles` 太小地图易错位,太大 CPU 吃紧;
- 环境特征少(长走廊)时可适当提高粒子数并降低更新阈值。

### 3. 地图格式

`house.yaml` 里的 `resolution`(米/像素)、`origin`(左下角像素的世界坐标)、`negate` 与 `occupied_thresh` 决定了 pgm 图像如何映射为占据栅格。看懂它,才能自己动手改地图。

## 练习任务

1. 用 `wpr_simulation` 的场景(本仓库已有子模块)跑一遍 gmapping,对比两个环境的效果;
2. 把建图结果喂给 `turtlebot3_navigation` 的 move_base,实现「给目标点自动导航」(需要 apt 装 `ros-noetic-turtlebot3-navigation`,属于下一阶段内容);
3. 录制建图过程的 bag,离线用 `rosbag play` 重放给 gmapping,验证可复现性。

## 与舵轮项目的关联

- 舵轮底盘在比赛场地常用激光雷达 + 里程计定位,`map → odom → base_link` 链条与 gmapping 完全一致;
- 舵轮控制器的 `/odom` 发布与 `odom → base_link` TF 广播,正是下游 SLAM/定位模块依赖的标准接口——接口规范比算法本身更重要。

## 延伸阅读

- [gmapping wiki](http://wiki.ros.org/gmapping)
- [GMapping 原始论文(OpenSLAM)](https://openslam-org.github.io/gmapping.html)
- [REP 105 坐标系约定](https://www.ros.org/reps/rep-0105.html)

## 经典开源项目

- [ros-perception/slam_gmapping](https://github.com/ros-perception/slam_gmapping):本教程子模块源,2D 激光粒子滤波建图;
- [cartographer-project/cartographer_ros](https://github.com/cartographer-project/cartographer_ros):Google 出品,图优化 2D/3D SLAM,精度高、资源占用大;
- [tu-darmstadt-ros-pkg/hector_slam](https://github.com/tu-darmstadt-ros-pkg/hector_slam):无需里程计即可建图,适合手持/无人机雷达;
- [introlab/rtabmap](https://github.com/introlab/rtabmap):RGB-D 视觉 SLAM,带回环检测与稠密建图;
- [UZ-SLAMLab/ORB_SLAM3](https://github.com/UZ-SLAMLab/ORB_SLAM3):视觉特征 SLAM 的学术经典;
- [hku-mars/FAST_LIO](https://github.com/hku-mars/FAST_LIO):激光-惯性紧耦合,高速运动下的主流方案。
