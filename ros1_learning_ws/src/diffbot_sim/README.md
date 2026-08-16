# diffbot_sim · 差速小车 + 云台跟随 Gazebo 插件

综合示例包:一台带云台的差速小车,内含一个自定义 **Gazebo Model 插件**,演示「云台自稳 + 底盘跟随」的闭环思路——这是理解哨兵「底盘-云台分离控制」的简化版。

## 运行

```bash
roslaunch diffbot_sim diffbot_gazebo.launch            # 桌面
roslaunch diffbot_sim diffbot_gazebo.launch gui:=false # 无头(服务器/CI)
```

发布速度指令控制小车:

```bash
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist "linear: {x: 0.3} angular: {z: 0.5}"
```

也可以装 `teleop_twist_keyboard` 后用键盘控制。观察:云台(炮塔)会**反向补偿底盘自转**保持世界朝向,底盘则**跟随云台偏角**转向。

## 文件结构

```
diffbot_sim/
├── config/diffbot_control.yaml     # ros_control 控制器配置
├── launch/diffbot_gazebo.launch    # 启动 Gazebo + 控制器 + 状态发布
├── src/chassis_follower_plugin.cpp # 自定义 Gazebo 插件(核心)
└── urdf/diffbot.urdf.xacro         # 机器人模型(xacro)
```

## URDF 模型

关节:`wheel_0_joint` / `wheel_1_joint`(驱动轮)、`turret_joint`(云台)、`caster_joint`(万向轮)、`gun_joint`、`tail_joint`。车体基准为 `base_link`。

## ros_control 配置(`config/diffbot_control.yaml`)

| 控制器 | 类型 | 作用 |
| --- | --- | --- |
| `joint_state_controller` | `joint_state_controller/JointStateController` | 发布 `/joint_states`(50Hz) |
| `diffbot_controller` | `diff_drive_controller/DiffDriveController` | 差速底盘:订阅 `/diffbot_controller/cmd_vel`,发布里程计 |
| `turret_controller` | `velocity_controllers/JointVelocityController` | 云台速度环(订阅 `/turret_controller/command`) |

注意 `diffbot_controller` 的名字空间订阅(`/diffbot_controller/cmd_vel`)与常见 `/cmd_vel` 不同,插件正是把用户 `/cmd_vel` 转发到它。

## 插件代码导读(`src/chassis_follower_plugin.cpp`)

插件是 Gazebo 的 **ModelPlugin**,通过 `GZ_REGISTER_MODEL_PLUGIN` 注册,在 URDF 里以 `<gazebo><plugin filename="..."/></gazebo>` 挂载。核心在 `OnUpdate()`(每仿真周期执行):

1. **云台自稳**(逻辑 A):
   ```cpp
   turret_motor_cmd = target_turret_world_vel - chassis_phys_vel;
   ```
   目标世界角速度(有指令时 = 用户指令角速度,否则 = 0)减去底盘实际角速度,得到云台电机需要补偿的转速——这就是「云台稳定在世界系」的本质。
2. **底盘跟随**(逻辑 B):云台偏角 `current_yaw` 乘增益 4.0(限幅 ±3.0)作为底盘转向速度,让底盘「追着云台跑」,实现车体朝云台指向对齐。
3. **超时保护**:`/cmd_vel` 超过 0.5s 未更新则进入「稳定模式」并停止底盘。

## 练习任务(动手改)

1. 把插件增益 4.0 / 限幅 3.0 改成插件 SDF 参数(从 `_sdf` 读取),体验 Gazebo 插件如何带参数;
2. 在 URDF 中给云台加一个 pitch 关节,模仿 roll/pitch 稳定;
3. 用 `rqt_plot` 对比 `/turret_controller/command` 与底盘实际角速度,验证公式 1 的自稳效果。

## 与哨兵项目的关系

哨兵控制器把这里的「云台自稳 + 底盘跟随」换成了「**世界坐标系速度控制**(tf2 变换)+ 四舵轮逆运动学」,ros_control 配置、Gazebo 插件挂载方式完全一致。学完本包可对照 [sentry_chassis_controller](../../../dx_final/src/sentry_chassis_controller/README.md) 找异同。

## 相关教程

- URDF 建模:[docs/tutorials/02-URDF建模.md](../../../docs/tutorials/02-URDF建模.md)
- ros_control:[docs/tutorials/04-ros_control进阶.md](../../../docs/tutorials/04-ros_control进阶.md)
