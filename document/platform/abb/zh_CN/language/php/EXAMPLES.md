# ABB / php 例子指导

每个目录包含独立 xmake.lua 和真实语言源码。先构建，再使用操作员手动批准的 run 配置执行。读取例子只使用受控 ROS fixture，未接入实体机器人。

| Example | Source | Native flow |
| --- | --- | --- |
| `mechanical_unit_state` | `main.php` | abb_robot_msgs/msg/MechanicalUnitState; subscribe once, <=250 polls, 20 ms idle waits, complete decode/re-encode |
| `rapid_task_state` | `main.php` | abb_robot_msgs/msg/RAPIDTaskState; subscribe once, <=250 polls, 20 ms idle waits, complete decode/re-encode |
| `ros1/egm_state` | `main.php` | abb_egm_msgs/EGMState; ROS1 exact typed subscription; RuntimeState requires the StateMachine Add-In |
| `ros1/runtime_state` | `main.php` | abb_rapid_sm_addin_msgs/RuntimeState; ROS1 exact typed subscription; RuntimeState requires the StateMachine Add-In |
| `ros1/system_state` | `main.php` | abb_robot_msgs/SystemState; ROS1 exact typed subscription; RuntimeState requires the StateMachine Add-In |
| `system_state` | `main.php` | SystemState topic; complete header/flags/RAPID tasks/mechanical units |

```sh
xmake
# Supply the existing operator-owned native runtime/run configuration.
xmake run
```

别名不是话题 URL；运行配置把别名绑定到真实原始类型、实际端点和 QoS。未知发行版、版本、目标宽度或未绑定身份应在调用前明确报错。

验收必须比较所有字段与独立原生 peer 的数据，再测试坏线值、容量、显式拒绝权限和一次清理。x86_64 与 QEMU 下真实 AArch64 runtime/ROS peer 分开记录；交叉编译不代表 ARM 执行成功。
