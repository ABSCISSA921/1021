# 03 · SLAM 建图：从激光到可重复使用的地图

本课使用 [navigation_lab](../../ros1_advanced_ws/src/navigation_lab/README.md) 的 gmapping 配置，以及 [control_lab](../../ros1_advanced_ws/src/control_lab/README.md) 的带激光差速底盘。首次学习按包内指南完成安装、构建和传感器验证。

## 学习目标

1. 找到建图依赖的激光数据、机器人运动估计与 TF。
2. 通过遥控探索生成地图，保存 YAML/PGM。
3. 关闭 SLAM，使用保存地图和 AMCL 完成一次导航。
4. 区分地图、里程计、定位和规划的职责。

## 运行入口

在仓库根目录的新终端，已完成项目构建后：

```bash
source /opt/ros/noetic/setup.bash
source ros1_advanced_ws/devel/setup.bash
roslaunch navigation_lab slam.launch
```

该 launch 包含机器人仿真和建图节点，不需要另起一次 control_lab 仿真。无桌面环境可传 `gui:=false rviz:=false`。遥控、保存地图和重新加载的完整命令见 [navigation_lab 入手指南](../../ros1_advanced_ws/src/navigation_lab/README.md)。

若希望阅读 gmapping 源码，可另行初始化进阶工作区的 slam_gmapping 子模块。目录名与包名不同：算法节点位于 `gmapping` 包，运行命令是 `rosrun gmapping slam_gmapping`。`slam.launch` 已启动建图节点，阅读源码时可沿用该入口。

## 必要的数据链路

```text
/scan + laser 相对 base_footprint 的变换
                    +
       odom → base_footprint 的运动估计
                    ↓
                gmapping
                    ↓
           /map + map → odom
```

本项目的激光与 IMU 安装位置在 URDF 中；odom TF 默认由 EKF 发布。仿真各节点使用 `/use_sim_time=true`，Gazebo 提供 `/clock`。

| 变换 / 数据 | 发布者 | 作用 |
| --- | --- | --- |
| map → odom | 建图时 gmapping；加载地图定位时 AMCL | 将局部运动估计修正到地图坐标 |
| odom → base_footprint | EKF 或 diff_drive_controller，二选一 | 连续局部运动估计，仍可能漂移 |
| base_footprint → base_link → laser | robot_state_publisher | 机器人内部的几何关系 |
| /map | gmapping 或 map_server | 占据栅格数据；机器人位姿由定位节点提供 |

每条 TF 选择一个发布者：建图时由 gmapping 发布 `map → odom`，导航时由 AMCL 发布；`odom → base_footprint` 根据 EKF 开关选择对应来源。

## 建图时观察什么

下面的命令依次运行；`rostopic hz` 和 `tf_echo` 持续输出，观察后按 `Ctrl+C` 再运行下一条。

```bash
rostopic hz /scan
rostopic echo /scan/header -n 1
rostopic echo /odometry/filtered/header -n 1
rostopic echo /map/info -n 1
rosrun tf tf_echo odom base_footprint
rosrun tf tf_echo map odom
```

慢速转动以观察周围墙面，然后沿安全路线移动。RViz 中应能看到激光、地图和机器人位姿相互对齐。地图缺块可能只是尚未探索；重复墙面、明显拉伸或运动方向错误则需要检查时间、TF、轮径和里程计。

## 保存与重新定位

map_saver 的输出前缀指定文件保存路径。先创建存放目录，为本次实验使用新的文件名。地图通常由两部分组成：

- PGM：像素占据值。
- YAML：图像相对路径、米/像素分辨率、地图原点和占据阈值。

完成保存后先关闭 slam.launch，再运行 navigation.launch 并把 `map_file` 指向新 YAML。这时 map_server 提供地图，AMCL 根据激光和里程计定位。必要时在 RViz 用 2D Pose Estimate 设置初值。

本项目附带的教学地图由场景几何生成。它适合先验证导航链路；独立完成本课应保留自己探索得到的地图与建图记录。

## gmapping 参数学习

参数集中在 [gmapping.yaml](../../ros1_advanced_ws/src/navigation_lab/config/gmapping.yaml)，修改后重新启动节点。

| 参数 | 观察方向 |
| --- | --- |
| linearUpdate / angularUpdate | 累计运动到什么程度处理新扫描 |
| particles | 粒子数量与计算量、估计稳定性的关系 |
| delta | 地图分辨率与内存、细节的关系 |
| maxUrange | 参与建图的有效激光范围 |

这些参数通过 launch 加载，修改后重启 gmapping，使新配置生效。

## 验收与扩展

- 保存一份建图结果，记录场景、轮径、控制器参数、地图分辨率和行驶路线。
- 用自己的地图启动 AMCL，完成一次返回 SUCCEEDED 的导航任务。
- 固定其余参数，每次调整一个参数，比较相同路线的地图效果。
- 用 bag 重放建图输入时记录 /scan、/tf、/tf_static 等所需话题；独立启动回放 Master，设置仿真时间并使用 `rosbag play --clock`，停止其他时钟和原始传感器发布者。

继续阅读[导航与定位](07-导航与定位.md)，或按 [TurtleBot3 开源指南](../projects/README.md)在另一套模型上复现实验。

## 原始资料

- [slam_gmapping ROS 1 源码](https://github.com/ros-perception/slam_gmapping/tree/melodic-devel)
- [OpenSLAM GMapping](https://openslam-org.github.io/gmapping.html)
- [REP 105 坐标系约定](https://www.ros.org/reps/rep-0105.html)
