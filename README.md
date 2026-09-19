# ROS 1 学习仓库

以 **Ubuntu 20.04 + ROS 1 Noetic + catkin-tools** 为基线，从可运行的小例子开始，逐步学习通信、调试、机器人仿真与专题开发。

学习主线是 `ros1_learning_ws` 和 `ros1_advanced_ws`。**[dx_final](dx_final/README.md) 是同仓库内独立维护的舵轮控制项目**，有自己的需求、文档、依赖和 CI，不属于课程或默认构建范围。

> Noetic 已于 2025-05-31 结束官方支持，见 [ROS 官方说明](https://www.ros.org/blog/noetic-eol/)。本仓库用于学习与复现既有 ROS 1 代码，环境按上述版本准备。

## 从哪里开始

| 你的情况 | 入口 | 完成标志 |
| --- | --- | --- |
| 尚未安装 ROS | [环境安装](docs/00-环境安装.md) | `roscore` 能启动 |
| 刚接触 ROS | [通信基础 ros_basics](ros1_learning_ws/src/ros_basics/README.md) | 能发布消息、调用服务、取消 Action |
| 想读 C++ 与仿真代码 | [基础工作区](ros1_learning_ws/README.md) | 解释传感器 → 节点 → 控制指令的数据流 |
| 想学某个专题 | [进阶工作区](ros1_advanced_ws/README.md) | 完成运行验证与练习 |
| 想安排系统学习 | [学习路线与实验](docs/05-学习路线与实验.md) | 每阶段留下可复现的实验记录 |
| 报错或忘了命令 | [常见问题](docs/03-常见问题.md) / [命令速查](docs/04-常用命令速查.md) | 能定位具体节点、话题或参数 |

## 目录约定

```text
1021/
├── docs/                       # 通用 ROS 文档、专题和实验模板
│   ├── README.md               # 文档索引
│   ├── tutorials/              # tf2 / URDF / SLAM / 控制 / MoveIt / 视觉
│   ├── templates/              # 实验记录模板
│   └── assets/                 # 通用参考资料
├── ros1_learning_ws/           # 通信基础 + C++ 示例 + Gazebo 仿真
│   └── src/ros_basics/         # 无 GUI、无机器人依赖的入门示例
├── ros1_advanced_ws/           # 按专题选择构建
├── scripts/                    # 学习工作区构建、仓库结构检查
└── dx_final/                   # 独立项目：src + docs + README
```

保留原工作区和 ROS 包路径，避免让已有 catkin 缓存、子模块和 `package://` 引用失效。各工作区仅扩展 `/opt/ros/noetic`，在不同终端分别 source，不将它们串成 overlay。

## 第一个例子：不需要 Gazebo

以下命令假设已按[环境安装](docs/00-环境安装.md)安装 ROS、rosdep 和 catkin-tools。

```bash
git clone https://github.com/ABSCISSA921/1021.git
cd 1021
source /opt/ros/noetic/setup.bash

# ros_basics 没有第三方源码依赖，暂时不用下载子模块。
rosdep install --from-paths ros1_learning_ws/src/ros_basics --ignore-src --rosdistro noetic -y
bash scripts/build_learning.sh basics
source ros1_learning_ws/devel/setup.bash
roslaunch ros_basics topics.launch
```

另开一个终端，进入仓库根目录：

```bash
source ros1_learning_ws/devel/setup.bash
rostopic echo /basics/counter -n 3
rostopic hz /basics/counter
```

应看到 `label: hello_ros`、递增的 `count` 和约 2 Hz 的消息。服务、Action、命名空间和 rosbag 实验见 [ros_basics README](ros1_learning_ws/src/ros_basics/README.md)。

## 按需扩展学习环境

只学习通信基础时，无需执行本节。开始仿真或进阶专题时，分别初始化该工作区的子模块：

```bash
# 仓库根目录，二选一；需要两类内容时分别执行。
git submodule update --init --recursive -- ros1_learning_ws/src
git submodule update --init --recursive -- ros1_advanced_ws/src
```

然后按对应工作区 README 安装依赖。构建入口分别是：

```bash
bash scripts/build_learning.sh basics                  # 仅通信教学包
bash scripts/build_learning.sh simulation              # 基础工作区全部包
bash scripts/build_learning.sh advanced turtle_tf2     # 指定进阶包及其依赖
```

脚本不安装系统依赖，也不自动下载或更新子模块。子模块版本由 Git 中的 gitlink 固定；`.gitmodules` 的 branch 只是元数据。不要用 `--remote` 更新来解决普通构建问题。

## 学习与维护

- [文档总索引](docs/README.md)：概念、工具、专题和实验入口。
- [仓库维护约定](docs/06-仓库维护约定.md)：新增课程、依赖声明、文档和项目边界。
- [实验记录模板](docs/templates/实验记录.md)：目标、命令、现象、证据与结论。
- `python3 scripts/check_repo.py`：检查本仓库 Markdown 本地文件链接、XML 和工作区依赖边界。
- [学习 CI](.github/workflows/ci.yml)：通信包测试、两个学习工作区构建；[独立项目 CI](.github/workflows/dx-final.yml)：只处理 `dx_final`。

CI 配置表示自动验证的范围；修改后的实际结果以工作流日志为准。
