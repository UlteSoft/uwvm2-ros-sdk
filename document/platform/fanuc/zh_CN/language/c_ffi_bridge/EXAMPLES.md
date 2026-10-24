# FANUC / c_ffi_bridge 例子指导

每个目录包含独立 xmake.lua 和真实语言源码。先构建，再使用操作员手动批准的 run 配置执行。读取例子只使用受控 ROS fixture，未接入实体机器人。

| Example | Source | Native flow |
| --- | --- | --- |
| `connection_status` | `main.c` | fanuc_msgs/msg/ConnectionStatus; subscribe once, <=250 polls, 20 ms idle waits, complete decode/re-encode |
| `force_sensor` | `main.c` | fanuc_msgs/msg/ForceSensor; subscribe once, <=250 polls, 20 ms idle waits, complete decode/re-encode |
| `frame` | `main.c` | fanuc_msgs/msg/Frame; subscribe once, <=250 polls, 20 ms idle waits, complete decode/re-encode |

```sh
xmake
# Supply the existing operator-owned native runtime/run configuration.
xmake run
```

别名不是话题 URL；运行配置把别名绑定到真实原始类型、实际端点和 QoS。未知发行版、版本、目标宽度或未绑定身份应在调用前明确报错。

验收必须比较所有字段与独立原生 peer 的数据，再测试坏线值、容量、显式拒绝权限和一次清理。x86_64 与 QEMU 下真实 AArch64 runtime/ROS peer 分开记录；交叉编译不代表 ARM 执行成功。
