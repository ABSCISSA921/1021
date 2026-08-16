# 02 · URDF / xacro 机器人建模教程

> 对应工作区:`ros1_advanced_ws`,子模块 `urdf_tutorial`(ros/urdf_tutorial,master,固定提交 `21a6ecd`)。

URDF 是 ROS 描述机器人**几何、关节、运动学链**的标准格式;xacro 是其宏扩展版,支持变量、数学表达式与模块复用。哨兵的 `rm_description`、本仓库的 `diffbot.urdf.xacro` 都是 xacro。

## 学习目标

1. 读懂 link / joint / transmission / gazebo 标签;
2. 会用 RViz 可视化 URDF 并排查模型问题;
3. 掌握 xacro 变量、宏(macro)与文件 include;
4. 能对照读懂 `rm_description` 的哨兵模型。

## 前置依赖

```bash
cd <仓库根目录>
rosdep install --from-paths ros1_advanced_ws/src --ignore-src -r -y
cd ros1_advanced_ws && catkin build urdf_tutorial && source devel/setup.bash
```

## 运行官方演示

```bash
# RViz 中显示 R2D2 模型(带关节控制滑条)
roslaunch urdf_tutorial display.launch model:=urdf/08-macroed.urdf.xacro
```

拖动 `gui:=true` 弹出的滑条,观察关节运动。逐个把 `model` 换成 `urdf/01-myfirst.urdf`、`urdf/03-optional.urdf`、`urdf/06-flexible.urdf` 等,对照源码体会每个版本**新增了什么**。

## 核心概念

### 1. link 与 joint

```xml
<link name="base_link">
  <visual>      <!-- 显示用:几何 + 材质 -->
    <geometry><box size="0.5 0.3 0.2"/></geometry>
  </visual>
  <collision>   <!-- 物理碰撞用:必须简单几何,否则仿真炸 -->
    <geometry><box size="0.5 0.3 0.2"/></geometry>
  </collision>
  <inertial>    <!-- 惯性参数:质量 + 惯性矩阵 -->
    <mass value="5.0"/>
    <inertia ixx="0.1" iyy="0.1" izz="0.1" ixy="0" ixz="0" iyz="0"/>
  </inertial>
</link>

<joint name="wheel_joint" type="continuous">
  <parent link="base_link"/>
  <child  link="wheel_link"/>
  <origin xyz="0 0 -0.05" rpy="0 0 0"/>   <!-- 子相对父的位姿 -->
  <axis xyz="0 1 0"/>                     <!-- 旋转轴 -->
  <limit effort="100" velocity="10"/>     <!-- 力矩/速度上限 -->
</joint>
```

- `type`:固定 `fixed` / 旋转 `revolute`(有限角度)/ 无限旋转 `continuous` / 平动 `prismatic` / 自由 `floating`;
- **坐标系链**:`origin` 定义子 link 在父 link 下的位姿,串起来就是 TF 树;
- 与 TF 的关系:`robot_state_publisher` 读 `/joint_states` + URDF,自动发布所有 link 的 TF。

### 2. xacro:URDF 的宏语言

```xml
<xacro:property name="wheel_radius" value="0.05"/>
<xacro:macro name="wheel" params="name prefix">
  <link name="${prefix}_${name}_wheel">
    <visual><geometry><cylinder radius="${wheel_radius}" length="0.02"/></geometry></visual>
  </link>
</xacro:macro>
<xacro:wheel name="lf" prefix="left"/>
<xacro:include filename="$(find pkg)/urdf/common.xacro"/>
```

- 变量集中定义,改一处全局生效(`rm_description` 里整车尺寸就是一堆 property);
- macro 让「四个轮子」只写一遍;
- `$(find pkg)` 在 xacro 中解析为包路径,配合 include 实现模块拆分。

### 3. transmission 与 gazebo 标签

- `<transmission>`:把关节映射到 ros_control 硬件接口(见 [ros_control 教程](04-ros_control进阶.md));
- `<gazebo>`:指定物理属性(摩擦、阻尼)与**插件挂载**,如:

```xml
<gazebo>
  <plugin name="my_plugin" filename="libmy_plugin.so">
    <param>...</param>
  </plugin>
</gazebo>
```

`diffbot_sim` 的云台插件、`rm_gazebo` 的哨兵插件都是这样挂进模型的。

## 检查与排错工具

```bash
# 语法与结构检查(带 xacro 展开)
check_urdf <(xacro model.urdf.xacro)

# 查看 TF 树是否与 URDF 一致
roslaunch urdf_tutorial display.launch model:=... &
rosrun tf2_tools view_frames.py

# 单独看模型
rosrun xacro xacro model.urdf.xacro   # 展开为纯 URDF,排查宏问题
```

常见问题:

- 模型在 Gazebo 里「碎一地」:collision 几何写错或 inertial 缺失;
- 模型在 RViz 里不显示:没有 `robot_state_publisher` 或 `/joint_states`;
- 编译不过:`xacro` 未安装(`ros-noetic-xacro`)或 `$(find)` 的包没 source。

## 练习任务

1. 用 xacro 宏把 `urdf/05-visual.urdf` 的单轮模型改成 4 轮车(左右各二);
2. 给轮子加 `<transmission>` 和 `<gazebo>` 标签,让 `diff_drive_controller` 能驱动它(参考 `diffbot_sim`);
3. 阅读 `dx_final/src/rm_description_for_task/urdf/sentry/sentry.urdf.xacro`:找出底盘 8 个关节(pivot/wheel)的 transmission 定义,对照 [sentry_chassis_controller README](../../dx_final/src/sentry_chassis_controller/README.md) 的关节名清单。

## 与哨兵项目的关联

- 控制器的 `wheel_track`/`wheel_base` 必须与 URDF 几何一致,否则逆运动学解算错误;
- launch 里 `robot_description` 参数由 `xacro` 命令生成,`load_chassis`、`roller_type` 等参数传入 xacro 决定模型形态;
- 新增/删除关节时,要同步改 URDF、`controllers.yaml` 的 joints 列表与控制器代码的握手逻辑。

## 延伸阅读

- [URDF 官方教程](http://wiki.ros.org/urdf/Tutorials)
- [xacro 文档](http://wiki.ros.org/xacro)
- [REP 103 单位与坐标约定](https://www.ros.org/reps/rep-0103.html)(米/弧度/右手系)
