# 05 · MoveIt 机械臂运动规划教程

> 对应工作区:`ros1_advanced_ws`,子模块 `panda_moveit_config`(ros-planning/panda_moveit_config,noetic-devel,固定提交 `a86da56`)。

MoveIt 是 ROS 的机械臂运动规划框架(规划、碰撞检测、正逆解、轨迹执行)。本教程选用 **Franka Panda** 七轴机械臂官方配置包作为入口演示:配置齐全、无硬件也能跑(虚拟控制器),是 Noetic 上最省事的 MoveIt 入门路径。

## 学习目标

1. 理解 MoveIt 的 MoveGroup / Planning Scene / 规划器结构;
2. 跑通 RViz 拖拽规划与代码规划(Planning Scene Interface);
3. 认识 SRDF、kinematics 配置与 fake controller;
4. 了解「规划」与「执行」的分离,以及如何在真实机器人上替换执行端。

## 前置依赖

MoveIt 本体较大,从 apt 安装:

```bash
sudo apt install ros-noetic-moveit
cd <仓库根目录>
rosdep install --from-paths ros1_advanced_ws/src --ignore-src -r -y
cd ros1_advanced_ws && catkin build panda_moveit_config && source devel/setup.bash
```

## 运行演示

### 1. RViz 交互规划(虚拟控制器)

```bash
roslaunch panda_moveit_config demo.launch
```

在 RViz 中:

1. **MotionPlanning** 面板 → Planning → 选中 `panda_arm` 规划组;
2. 拖动机械臂末端小球到目标位姿;
3. **Plan** → 观察规划路径动画 → **Execute** 执行(fake controller 直接「播放」轨迹)。

> 报 `robot model not loaded` 时点 RViz 左侧 Displays 里 RobotModel 的刷新,或确认 launch 里 `robot_description` 参数正常。

### 2. 代码规划(Planning Scene Interface)

```bash
rosrun moveit_tutorials ... # 需要 moveit_tutorials(可选,体量大)
```

不想装 moveit_tutorials 的话,最小代码骨架(存为 `plan_demo.cpp`,放进自己的包):

```cpp
#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>

int main(int argc, char** argv) {
  ros::init(argc, argv, "plan_demo");
  ros::AsyncSpinner spinner(1); spinner.start();

  moveit::planning_interface::MoveGroupInterface group("panda_arm");
  group.setPoseTarget(/* geometry_msgs::Pose 目标 */);

  moveit::planning_interface::MoveGroupInterface::Plan plan;
  bool ok = (group.plan(plan) == moveit::planning_interface::MoveItErrorCode::SUCCESS);
  if (ok) group.execute(plan);
  return 0;
}
```

## 核心概念

### 1. 配置文件分工

| 文件 | 作用 |
| --- | --- |
| `config/panda.srdf` | 规划组、碰撞矩阵(哪些 link 永不碰撞检测)、预设位姿 |
| `config/kinematics.yaml` | 运动学求解器(KDL / IKFast)与参数 |
| `config/fake_controllers.yaml` | 虚拟执行器:把规划轨迹直接「发布为 joint_states」 |
| `launch/demo.launch` | 总启动:RViz + move_group + robot_state_publisher |

SRDF 里的 `<group name="panda_arm">` 决定了代码里 `MoveGroupInterface("panda_arm")` 这个名字。

### 2. 规划流程

```text
目标位姿 → MoveGroup
         → 规划器(OMPL:采样算法 RRT 等)
         → 碰撞检测(FCL + Planning Scene 里的物体)
         → 轨迹(joint_trajectory)
         → 执行:FollowJointTrajectory action
                    ├─ fake controller(演示,直接模拟)
                    └─ 真实控制器(如 joint_trajectory_controller,ros_control)
```

**规划与执行分离**是 MoveIt 的设计精髓:换真机时只替换执行端 action server,规划端不动。

### 3. Planning Scene(规划场景)

碰撞检测不仅看机械臂自身,还要看**环境物体**。Planning Scene Interface 可以在线添加障碍:

```bash
# 在 RViz 的 Scene Objects 面板添加 Box/Sphere 物体,再规划一次,观察绕障
```

## 练习任务

1. 在 Panda 面前加一个 Box 障碍,RViz 里手动绕障规划;
2. 用代码给 `panda_arm` 设置多个关节目标(顺序执行 3 个位姿);
3. 把 `fake_controllers.yaml` 换成 ros_control 的 `joint_trajectory_controller`,在 Gazebo 里执行(进阶,参考 [ros_control 教程](04-ros_control进阶.md))。

## 与舵轮项目的关联

- 舵轮底盘用不上 MoveIt,但**云台/发射机构**的轨迹控制思路相通:规划层(算法)与执行层(ros_control)分离;
- `FollowJointTrajectory` action 是机械臂生态的标准接口,读懂它对理解 `rm_control` 里的轨迹控制有帮助;
- 若后续做云台自动瞄准,「目标跟踪 + 运动学 + 控制器」的组合与 MoveIt 流水线同构。

## 延伸阅读

- [MoveIt 官方文档](https://moveit.picknik.ai/)
- [moveit_tutorials 仓库](https://github.com/ros-planning/moveit_tutorials)(更系统的教程,构建较慢)
- [OMPL 规划器](https://ompl.kavrakilab.org/)(规划算法原理)

## 经典开源项目

- [moveit/moveit](https://github.com/moveit/moveit):MoveIt 本体;
- [ros-planning/moveit_tutorials](https://github.com/ros-planning/moveit_tutorials):官方教程仓库(代码 + 文档,构建较慢);
- [ros-planning/panda_moveit_config](https://github.com/ros-planning/panda_moveit_config):本教程子模块源,Panda 的标准配置;
- [ompl/ompl](https://github.com/ompl/ompl):MoveIt 默认规划算法库 OMPL 的本体;
- [frankaemika/franka_ros](https://github.com/frankaemika/franka_ros):Panda 官方驱动,真机执行端参考。
