# ros1_advanced_ws · 进阶教程工作区

按主题组织的 ROS 1 Noetic 进阶学习工作区,每个主题对应一篇教程(见 [docs/tutorials](../docs/tutorials/))。建议先完成 [基础工作区](../ros1_learning_ws/README.md) 再进入本工作区。

## 主题与构成

| 专题 | 依赖 | 教程 |
| --- | --- | --- |
| tf2 坐标变换 | `geometry_tutorials`(子模块) | [01-tf2坐标变换](../docs/tutorials/01-tf2坐标变换.md) |
| URDF/xacro 建模 | `urdf_tutorial`(子模块) | [02-URDF建模](../docs/tutorials/02-URDF建模.md) |
| SLAM 建图 | `slam_gmapping`(子模块)+ apt `openslam_gmapping` | [03-SLAM建图](../docs/tutorials/03-SLAM建图.md) |
| ros_control 进阶 | `ros_controllers`、`control_toolbox`(子模块) | [04-ros_control进阶](../docs/tutorials/04-ros_control进阶.md) |
| MoveIt 机械臂 | `panda_moveit_config`(子模块)+ apt `moveit` | [05-MoveIt机械臂](../docs/tutorials/05-MoveIt机械臂.md) |
| 视觉处理 | `usb_cam`(子模块)+ 自定义包 `vision_demo` | [06-视觉处理](../docs/tutorials/06-视觉处理.md) |

### 子模块固定提交

| 子模块 | 分支/tag | 固定提交 |
| --- | --- | --- |
| `geometry_tutorials` | noetic-devel | `d365875776b154ead3150faae9f47d591c20a9d1` |
| `urdf_tutorial` | master | `21a6ecdff0146ad93852cf32e8f494439fd99065` |
| `slam_gmapping` | melodic-devel(Noetic 实际发布分支) | `eec86068ceb92ebc433b435fe482db14c562f268` |
| `ros_controllers` | noetic-devel | `c2348e85abf35cf33cf654a84d61db206abe9a73` |
| `control_toolbox` | noetic-devel | `de05a5c282f98f761fb162cc4206a94f7003c9a3` |
| `panda_moveit_config` | noetic-devel | `a86da56ab1c756a851d8ee2a06dd04266d1653d6` |
| `usb_cam` | tag 0.3.7(ROS1 最终版) | `addab4a65fdf65c460fec2cc3eee8fab94699370` |

### 自定义包

- `vision_demo`:cv_bridge + OpenCV 红色物体检测示例 + 测试图像源,见 [包 README](src/vision_demo/README.md)。

## 构建

```bash
source /opt/ros/noetic/setup.bash
cd ros1_advanced_ws
catkin init
catkin config --extend /opt/ros/noetic
catkin build
source devel/setup.bash
```

依赖安装(仓库根目录,建议按主题选择性安装):

```bash
# 全部
rosdep install --from-paths ros1_advanced_ws/src --ignore-src -r -y

# MoveIt 专题额外需要(体积较大)
sudo apt install ros-noetic-moveit
```

也可以**按主题单独构建**,比如只想学 tf2:

```bash
catkin build geometry_tutorials
```

## 专题构建提示

| 想构建 | 命令 | 额外 apt 依赖 |
| --- | --- | --- |
| tf2 | `catkin build geometry_tutorials` | `ros-noetic-turtlesim` |
| URDF | `catkin build urdf_tutorial` | — |
| SLAM | `catkin build slam_gmapping` | `ros-noetic-openslam-gmapping` |
| ros_control | `catkin build ros_controllers control_toolbox` | — |
| MoveIt | `catkin build panda_moveit_config` | `ros-noetic-moveit` |
| 视觉 | `catkin build usb_cam vision_demo` | `libopencv-dev` |

## 学习顺序建议

**tf2 → URDF → ros_control** 是与舵轮项目强相关的必修项;SLAM、MoveIt、视觉按兴趣选学。每篇教程都包含:运行步骤 → 原理要点 → 代码导读 → 练习任务 → 与舵轮项目的关联。

## 常见问题

- `rosdep` 无法解析的 key:按上表手动 `apt install` 对应包;
- usb_cam 打不开设备:见 [视觉教程](../docs/tutorials/06-视觉处理.md) 第 1 节;
- gmapping 等 TF 超时:先起仿真、后起 gmapping;
- 其余见 [docs/03-常见问题.md](../docs/03-常见问题.md)。
