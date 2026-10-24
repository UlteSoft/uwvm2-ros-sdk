# Unitree D — API 手册

[完整原始 schema](../NATIVE_SCHEMA.md) · [API 手册](API.md) · [六个例子详解](EXAMPLES.md)

## 公共模块与后端选择

使用 `unitree.d.ros1.observation` 或 `unitree.d.ros2.observation`；门面公开导入公共观察模块与所选记录模块。单独导入 records 可明确表达纯 codec 调用。模块在已准入的 LDC betterC 配置下运行，操作使用 `@nogc nothrow`。

```d
import api = unitree.d.ros1.observation;
import records = unitree.d.ros1.records;
```

上例选择 ROS1；使用 ROS2 时，应选择 ROS2 目标及其对应门面、记录命名空间。Xmake 映射、记录家族与可信运行部署必须一致，观察函数不会回退到另一 ROS 家族。

- ROS1: [facade](../../../../../../include/platform/unitree/d/ros1/observation.d) · [records](../../../../../../include/platform/unitree/d/ros1/records.d)
- ROS2: [facade](../../../../../../include/platform/unitree/d/ros2/observation.d) · [records](../../../../../../include/platform/unitree/d/ros2/records.d)
- [core](../../../../../../include/platform/unitree/d/observation.d) · [wire](../../../../../../include/platform/unitree/d/wire.d)

## 完整记录与标量表示

目录包含 ROS1 的 11 种记录、115 个原始字段，以及 ROS2 的 43 种记录、257 个字段。下表列出全部类型和每一个公开字段标识符，嵌套记录递归采用相同映射。原生 MD5/RIHS 注册身份、规范 codec 身份、线格式字节界限是独立的目录事实；类型或 codec 本身不授予 ROS 权限。

`Text!(N, false)` 拥有 `data` 与 `size`，`Sequence!(Element, N)` 拥有 `items` 与 `size`；固定数组使用 `Element[N]`。记录与有限数组属于 D guest，这些操作在 betterC 配置下不需要 Druntime 或 GC 分配。应显式将浮点字段初始化为准入的有限值：普通 D 浮点默认值可能为 NaN，严格 codec 会拒绝。

无符号、有符号整数保留准确位宽；float32/float64 保留原始宽度，所选有限值规则拒绝 NaN/无穷。字段保留原始拼写、大小写、声明顺序、固定数组项数、计数序列上界及单位。字符串遵循声明的 UTF-8 域，拒绝 NUL 和畸形编码，保留前导 BOM。原声明无界时，SDK 的有限准入配额在 schema 中单独记载。CRC 字段按输入值传递，codec 不建立物理 CRC 或机器人安全有效性。

例如，原字段 `SOC` 映射为 `field_SOC`，`imu_state` 映射为 `field_imu_state`。ROS1 驼峰字段与 ROS2 下划线字段之间迁移时，应保留表中准确的名称。

### ROS1

| 原生完整类型 | 公开完整类型 | 字段数 | 规范字节数 |
| --- | --- | --- | --- |
| `unitree_legged_msgs/BmsCmd` | `Ros1Unitree_legged_msgsBmsCmd` | 2 | 4..4 |
| `unitree_legged_msgs/BmsState` | `Ros1Unitree_legged_msgsBmsState` | 9 | 34..34 |
| `unitree_legged_msgs/Cartesian` | `Ros1Unitree_legged_msgsCartesian` | 3 | 12..12 |
| `unitree_legged_msgs/LED` | `Ros1Unitree_legged_msgsLED` | 3 | 3..3 |
| `unitree_legged_msgs/HighCmd` | `Ros1Unitree_legged_msgsHighCmd` | 20 | 129..129 |
| `unitree_legged_msgs/IMU` | `Ros1Unitree_legged_msgsIMU` | 5 | 53..53 |
| `unitree_legged_msgs/MotorState` | `Ros1Unitree_legged_msgsMotorState` | 10 | 38..38 |
| `unitree_legged_msgs/HighState` | `Ros1Unitree_legged_msgsHighState` | 25 | 1087..1087 |
| `unitree_legged_msgs/MotorCmd` | `Ros1Unitree_legged_msgsMotorCmd` | 7 | 33..33 |
| `unitree_legged_msgs/LowCmd` | `Ros1Unitree_legged_msgsLowCmd` | 11 | 734..734 |
| `unitree_legged_msgs/LowState` | `Ros1Unitree_legged_msgsLowState` | 20 | 1069..1069 |

#### `Ros1Unitree_legged_msgsBmsCmd`

`unitree_legged_msgs/BmsCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `off: uint8` | `field_off` | `ubyte` | — |
| `reserve: uint8[3]` | `field_reserve` | `ubyte[3]` | 恰为 3 项 |

#### `Ros1Unitree_legged_msgsBmsState`

`unitree_legged_msgs/BmsState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `version_h: uint8` | `field_version_h` | `ubyte` | — |
| `version_l: uint8` | `field_version_l` | `ubyte` | — |
| `bms_status: uint8` | `field_bms_status` | `ubyte` | — |
| `SOC: uint8` | `field_SOC` | `ubyte` | — |
| `current: int32` | `field_current` | `int` | — |
| `cycle: uint16` | `field_cycle` | `ushort` | — |
| `BQ_NTC: int8[2]` | `field_BQ_NTC` | `byte[2]` | 恰为 2 项 |
| `MCU_NTC: int8[2]` | `field_MCU_NTC` | `byte[2]` | 恰为 2 项 |
| `cell_vol: uint16[10]` | `field_cell_vol` | `ushort[10]` | 恰为 10 项 |

#### `Ros1Unitree_legged_msgsCartesian`

`unitree_legged_msgs/Cartesian`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `x: float32` | `field_x` | `float` | — |
| `y: float32` | `field_y` | `float` | — |
| `z: float32` | `field_z` | `float` | — |

#### `Ros1Unitree_legged_msgsLED`

`unitree_legged_msgs/LED`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `r: uint8` | `field_r` | `ubyte` | — |
| `g: uint8` | `field_g` | `ubyte` | — |
| `b: uint8` | `field_b` | `ubyte` | — |

#### `Ros1Unitree_legged_msgsHighCmd`

`unitree_legged_msgs/HighCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `head: uint8[2]` | `field_head` | `ubyte[2]` | 恰为 2 项 |
| `levelFlag: uint8` | `field_levelFlag` | `ubyte` | — |
| `frameReserve: uint8` | `field_frameReserve` | `ubyte` | — |
| `SN: uint32[2]` | `field_SN` | `uint[2]` | 恰为 2 项 |
| `version: uint32[2]` | `field_version` | `uint[2]` | 恰为 2 项 |
| `bandWidth: uint16` | `field_bandWidth` | `ushort` | — |
| `mode: uint8` | `field_mode` | `ubyte` | — |
| `gaitType: uint8` | `field_gaitType` | `ubyte` | — |
| `speedLevel: uint8` | `field_speedLevel` | `ubyte` | — |
| `footRaiseHeight: float32` | `field_footRaiseHeight` | `float` | — |
| `bodyHeight: float32` | `field_bodyHeight` | `float` | — |
| `position: float32[2]` | `field_position` | `float[2]` | 恰为 2 项 |
| `euler: float32[3]` | `field_euler` | `float[3]` | 恰为 3 项 |
| `velocity: float32[2]` | `field_velocity` | `float[2]` | 恰为 2 项 |
| `yawSpeed: float32` | `field_yawSpeed` | `float` | — |
| `bms: unitree_legged_msgs/BmsCmd` | `field_bms` | `Ros1Unitree_legged_msgsBmsCmd` | — |
| `led: unitree_legged_msgs/LED[4]` | `field_led` | `Ros1Unitree_legged_msgsLED[4]` | 恰为 4 项 |
| `wirelessRemote: uint8[40]` | `field_wirelessRemote` | `ubyte[40]` | 恰为 40 项 |
| `reserve: uint32` | `field_reserve` | `uint` | — |
| `crc: uint32` | `field_crc` | `uint` | — |

#### `Ros1Unitree_legged_msgsIMU`

`unitree_legged_msgs/IMU`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `quaternion: float32[4]` | `field_quaternion` | `float[4]` | 恰为 4 项 |
| `gyroscope: float32[3]` | `field_gyroscope` | `float[3]` | 恰为 3 项 |
| `accelerometer: float32[3]` | `field_accelerometer` | `float[3]` | 恰为 3 项 |
| `rpy: float32[3]` | `field_rpy` | `float[3]` | 恰为 3 项 |
| `temperature: int8` | `field_temperature` | `byte` | — |

#### `Ros1Unitree_legged_msgsMotorState`

`unitree_legged_msgs/MotorState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `ubyte` | — |
| `q: float32` | `field_q` | `float` | — |
| `dq: float32` | `field_dq` | `float` | — |
| `ddq: float32` | `field_ddq` | `float` | — |
| `tauEst: float32` | `field_tauEst` | `float` | — |
| `q_raw: float32` | `field_q_raw` | `float` | — |
| `dq_raw: float32` | `field_dq_raw` | `float` | — |
| `ddq_raw: float32` | `field_ddq_raw` | `float` | — |
| `temperature: int8` | `field_temperature` | `byte` | — |
| `reserve: uint32[2]` | `field_reserve` | `uint[2]` | 恰为 2 项 |

#### `Ros1Unitree_legged_msgsHighState`

`unitree_legged_msgs/HighState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `head: uint8[2]` | `field_head` | `ubyte[2]` | 恰为 2 项 |
| `levelFlag: uint8` | `field_levelFlag` | `ubyte` | — |
| `frameReserve: uint8` | `field_frameReserve` | `ubyte` | — |
| `SN: uint32[2]` | `field_SN` | `uint[2]` | 恰为 2 项 |
| `version: uint32[2]` | `field_version` | `uint[2]` | 恰为 2 项 |
| `bandWidth: uint16` | `field_bandWidth` | `ushort` | — |
| `imu: unitree_legged_msgs/IMU` | `field_imu` | `Ros1Unitree_legged_msgsIMU` | — |
| `motorState: unitree_legged_msgs/MotorState[20]` | `field_motorState` | `Ros1Unitree_legged_msgsMotorState[20]` | 恰为 20 项 |
| `bms: unitree_legged_msgs/BmsState` | `field_bms` | `Ros1Unitree_legged_msgsBmsState` | — |
| `footForce: int16[4]` | `field_footForce` | `short[4]` | 恰为 4 项 |
| `footForceEst: int16[4]` | `field_footForceEst` | `short[4]` | 恰为 4 项 |
| `mode: uint8` | `field_mode` | `ubyte` | — |
| `progress: float32` | `field_progress` | `float` | — |
| `gaitType: uint8` | `field_gaitType` | `ubyte` | — |
| `footRaiseHeight: float32` | `field_footRaiseHeight` | `float` | — |
| `position: float32[3]` | `field_position` | `float[3]` | 恰为 3 项 |
| `bodyHeight: float32` | `field_bodyHeight` | `float` | — |
| `velocity: float32[3]` | `field_velocity` | `float[3]` | 恰为 3 项 |
| `yawSpeed: float32` | `field_yawSpeed` | `float` | — |
| `rangeObstacle: float32[4]` | `field_rangeObstacle` | `float[4]` | 恰为 4 项 |
| `footPosition2Body: unitree_legged_msgs/Cartesian[4]` | `field_footPosition2Body` | `Ros1Unitree_legged_msgsCartesian[4]` | 恰为 4 项 |
| `footSpeed2Body: unitree_legged_msgs/Cartesian[4]` | `field_footSpeed2Body` | `Ros1Unitree_legged_msgsCartesian[4]` | 恰为 4 项 |
| `wirelessRemote: uint8[40]` | `field_wirelessRemote` | `ubyte[40]` | 恰为 40 项 |
| `reserve: uint32` | `field_reserve` | `uint` | — |
| `crc: uint32` | `field_crc` | `uint` | — |

#### `Ros1Unitree_legged_msgsMotorCmd`

`unitree_legged_msgs/MotorCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `ubyte` | — |
| `q: float32` | `field_q` | `float` | — |
| `dq: float32` | `field_dq` | `float` | — |
| `tau: float32` | `field_tau` | `float` | — |
| `Kp: float32` | `field_Kp` | `float` | — |
| `Kd: float32` | `field_Kd` | `float` | — |
| `reserve: uint32[3]` | `field_reserve` | `uint[3]` | 恰为 3 项 |

#### `Ros1Unitree_legged_msgsLowCmd`

`unitree_legged_msgs/LowCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `head: uint8[2]` | `field_head` | `ubyte[2]` | 恰为 2 项 |
| `levelFlag: uint8` | `field_levelFlag` | `ubyte` | — |
| `frameReserve: uint8` | `field_frameReserve` | `ubyte` | — |
| `SN: uint32[2]` | `field_SN` | `uint[2]` | 恰为 2 项 |
| `version: uint32[2]` | `field_version` | `uint[2]` | 恰为 2 项 |
| `bandWidth: uint16` | `field_bandWidth` | `ushort` | — |
| `motorCmd: unitree_legged_msgs/MotorCmd[20]` | `field_motorCmd` | `Ros1Unitree_legged_msgsMotorCmd[20]` | 恰为 20 项 |
| `bms: unitree_legged_msgs/BmsCmd` | `field_bms` | `Ros1Unitree_legged_msgsBmsCmd` | — |
| `wirelessRemote: uint8[40]` | `field_wirelessRemote` | `ubyte[40]` | 恰为 40 项 |
| `reserve: uint32` | `field_reserve` | `uint` | — |
| `crc: uint32` | `field_crc` | `uint` | — |

#### `Ros1Unitree_legged_msgsLowState`

`unitree_legged_msgs/LowState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `head: uint8[2]` | `field_head` | `ubyte[2]` | 恰为 2 项 |
| `levelFlag: uint8` | `field_levelFlag` | `ubyte` | — |
| `frameReserve: uint8` | `field_frameReserve` | `ubyte` | — |
| `SN: uint32[2]` | `field_SN` | `uint[2]` | 恰为 2 项 |
| `version: uint32[2]` | `field_version` | `uint[2]` | 恰为 2 项 |
| `bandWidth: uint16` | `field_bandWidth` | `ushort` | — |
| `imu: unitree_legged_msgs/IMU` | `field_imu` | `Ros1Unitree_legged_msgsIMU` | — |
| `motorState: unitree_legged_msgs/MotorState[20]` | `field_motorState` | `Ros1Unitree_legged_msgsMotorState[20]` | 恰为 20 项 |
| `bms: unitree_legged_msgs/BmsState` | `field_bms` | `Ros1Unitree_legged_msgsBmsState` | — |
| `footForce: int16[4]` | `field_footForce` | `short[4]` | 恰为 4 项 |
| `footForceEst: int16[4]` | `field_footForceEst` | `short[4]` | 恰为 4 项 |
| `tick: uint32` | `field_tick` | `uint` | — |
| `wirelessRemote: uint8[40]` | `field_wirelessRemote` | `ubyte[40]` | 恰为 40 项 |
| `reserve: uint32` | `field_reserve` | `uint` | — |
| `crc: uint32` | `field_crc` | `uint` | — |
| `eeForceRaw: unitree_legged_msgs/Cartesian[4]` | `field_eeForceRaw` | `Ros1Unitree_legged_msgsCartesian[4]` | 恰为 4 项 |
| `eeForce: unitree_legged_msgs/Cartesian[4]` | `field_eeForce` | `Ros1Unitree_legged_msgsCartesian[4]` | 恰为 4 项 |
| `position: unitree_legged_msgs/Cartesian` | `field_position` | `Ros1Unitree_legged_msgsCartesian` | — |
| `velocity: unitree_legged_msgs/Cartesian` | `field_velocity` | `Ros1Unitree_legged_msgsCartesian` | — |
| `velocity_w: unitree_legged_msgs/Cartesian` | `field_velocity_w` | `Ros1Unitree_legged_msgsCartesian` | — |

### ROS2

| 原生完整类型 | 公开完整类型 | 字段数 | 规范字节数 |
| --- | --- | --- | --- |
| `unitree_api/msg/RequestIdentity` | `Ros2Unitree_apiMsgRequestIdentity` | 2 | 16..16 |
| `unitree_api/msg/RequestLease` | `Ros2Unitree_apiMsgRequestLease` | 1 | 8..8 |
| `unitree_api/msg/RequestPolicy` | `Ros2Unitree_apiMsgRequestPolicy` | 2 | 5..5 |
| `unitree_api/msg/RequestHeader` | `Ros2Unitree_apiMsgRequestHeader` | 3 | 29..29 |
| `unitree_api/msg/Request` | `Ros2Unitree_apiMsgRequest` | 3 | 37..4133 |
| `unitree_api/msg/ResponseStatus` | `Ros2Unitree_apiMsgResponseStatus` | 1 | 4..4 |
| `unitree_api/msg/ResponseHeader` | `Ros2Unitree_apiMsgResponseHeader` | 2 | 20..20 |
| `unitree_api/msg/Response` | `Ros2Unitree_apiMsgResponse` | 3 | 28..2108 |
| `unitree_go/msg/AudioData` | `Ros2Unitree_goMsgAudioData` | 2 | 12..2060 |
| `unitree_go/msg/BmsCmd` | `Ros2Unitree_goMsgBmsCmd` | 2 | 4..4 |
| `unitree_go/msg/BmsState` | `Ros2Unitree_goMsgBmsState` | 9 | 44..44 |
| `unitree_go/msg/Error` | `Ros2Unitree_goMsgError` | 2 | 8..8 |
| `unitree_go/msg/Go2FrontVideoData` | `Ros2Unitree_goMsgGo2FrontVideoData` | 4 | 20..6164 |
| `unitree_go/msg/HeightMap` | `Ros2Unitree_goMsgHeightMap` | 7 | 36..2212 |
| `unitree_go/msg/IMUState` | `Ros2Unitree_goMsgIMUState` | 5 | 53..53 |
| `unitree_go/msg/InterfaceConfig` | `Ros2Unitree_goMsgInterfaceConfig` | 3 | 4..4 |
| `unitree_go/msg/LidarState` | `Ros2Unitree_goMsgLidarState` | 17 | 81..6225 |
| `unitree_go/msg/MotorCmd` | `Ros2Unitree_goMsgMotorCmd` | 7 | 33..33 |
| `unitree_go/msg/LowCmd` | `Ros2Unitree_goMsgLowCmd` | 14 | 749..749 |
| `unitree_go/msg/MotorState` | `Ros2Unitree_goMsgMotorState` | 11 | 42..42 |
| `unitree_go/msg/LowState` | `Ros2Unitree_goMsgLowState` | 22 | 1050..1050 |
| `unitree_go/msg/MotorCmds` | `Ros2Unitree_goMsgMotorCmds` | 1 | 4..1060 |
| `unitree_go/msg/MotorStates` | `Ros2Unitree_goMsgMotorStates` | 1 | 4..1348 |
| `unitree_go/msg/PathPoint` | `Ros2Unitree_goMsgPathPoint` | 7 | 28..28 |
| `unitree_go/msg/Req` | `Ros2Unitree_goMsgReq` | 2 | 8..4104 |
| `unitree_go/msg/Res` | `Ros2Unitree_goMsgRes` | 3 | 12..6156 |
| `unitree_go/msg/SportModeCmd` | `Ros2Unitree_goMsgSportModeCmd` | 11 | 887..887 |
| `unitree_go/msg/TimeSpec` | `Ros2Unitree_goMsgTimeSpec` | 2 | 8..8 |
| `unitree_go/msg/SportModeState` | `Ros2Unitree_goMsgSportModeState` | 15 | 227..227 |
| `unitree_go/msg/UwbState` | `Ros2Unitree_goMsgUwbState` | 17 | 55..55 |
| `unitree_go/msg/UwbSwitch` | `Ros2Unitree_goMsgUwbSwitch` | 1 | 1..1 |
| `unitree_go/msg/WirelessController` | `Ros2Unitree_goMsgWirelessController` | 5 | 18..18 |
| `unitree_hg/msg/BmsCmd` | `Ros2Unitree_hgMsgBmsCmd` | 2 | 41..41 |
| `unitree_hg/msg/BmsState` | `Ros2Unitree_hgMsgBmsState` | 13 | 161..161 |
| `unitree_hg/msg/MotorCmd` | `Ros2Unitree_hgMsgMotorCmd` | 7 | 25..25 |
| `unitree_hg/msg/HandCmd` | `Ros2Unitree_hgMsgHandCmd` | 2 | 20..820 |
| `unitree_hg/msg/MotorState` | `Ros2Unitree_hgMsgMotorState` | 10 | 53..53 |
| `unitree_hg/msg/PressSensorState` | `Ros2Unitree_hgMsgPressSensorState` | 4 | 104..104 |
| `unitree_hg/msg/IMUState` | `Ros2Unitree_hgMsgIMUState` | 5 | 54..54 |
| `unitree_hg/msg/HandState` | `Ros2Unitree_hgMsgHandState` | 9 | 94..5118 |
| `unitree_hg/msg/LowCmd` | `Ros2Unitree_hgMsgLowCmd` | 5 | 897..897 |
| `unitree_hg/msg/LowState` | `Ros2Unitree_hgMsgLowState` | 9 | 1983..1983 |
| `unitree_hg/msg/MainBoardState` | `Ros2Unitree_hgMsgMainBoardState` | 4 | 72..72 |

#### `Ros2Unitree_apiMsgRequestIdentity`

`unitree_api/msg/RequestIdentity`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `id: int64` | `field_id` | `long` | — |
| `api_id: int64` | `field_api_id` | `long` | — |

#### `Ros2Unitree_apiMsgRequestLease`

`unitree_api/msg/RequestLease`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `id: int64` | `field_id` | `long` | — |

#### `Ros2Unitree_apiMsgRequestPolicy`

`unitree_api/msg/RequestPolicy`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `priority: int32` | `field_priority` | `int` | — |
| `noreply: bool` | `field_noreply` | `bool` | — |

#### `Ros2Unitree_apiMsgRequestHeader`

`unitree_api/msg/RequestHeader`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `identity: unitree_api/msg/RequestIdentity` | `field_identity` | `Ros2Unitree_apiMsgRequestIdentity` | — |
| `lease: unitree_api/msg/RequestLease` | `field_lease` | `Ros2Unitree_apiMsgRequestLease` | — |
| `policy: unitree_api/msg/RequestPolicy` | `field_policy` | `Ros2Unitree_apiMsgRequestPolicy` | — |

#### `Ros2Unitree_apiMsgRequest`

`unitree_api/msg/Request`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `header: unitree_api/msg/RequestHeader` | `field_header` | `Ros2Unitree_apiMsgRequestHeader` | — |
| `parameter: string` | `field_parameter` | `Text!(2048, false)` | SDK UTF-8 字节数 ≤2048 |
| `binary: uint8[]` | `field_binary` | `Sequence!(ubyte, 2048)` | SDK 有效项数 ≤2048 |

#### `Ros2Unitree_apiMsgResponseStatus`

`unitree_api/msg/ResponseStatus`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `code: int32` | `field_code` | `int` | — |

#### `Ros2Unitree_apiMsgResponseHeader`

`unitree_api/msg/ResponseHeader`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `identity: unitree_api/msg/RequestIdentity` | `field_identity` | `Ros2Unitree_apiMsgRequestIdentity` | — |
| `status: unitree_api/msg/ResponseStatus` | `field_status` | `Ros2Unitree_apiMsgResponseStatus` | — |

#### `Ros2Unitree_apiMsgResponse`

`unitree_api/msg/Response`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `header: unitree_api/msg/ResponseHeader` | `field_header` | `Ros2Unitree_apiMsgResponseHeader` | — |
| `data: string` | `field_data` | `Text!(2048, false)` | SDK UTF-8 字节数 ≤2048 |
| `binary: int8[]` | `field_binary` | `Sequence!(byte, 32)` | SDK 有效项数 ≤32 |

#### `Ros2Unitree_goMsgAudioData`

`unitree_go/msg/AudioData`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `time_frame: uint64` | `field_time_frame` | `ulong` | — |
| `data: uint8[]` | `field_data` | `Sequence!(ubyte, 2048)` | SDK 有效项数 ≤2048 |

#### `Ros2Unitree_goMsgBmsCmd`

`unitree_go/msg/BmsCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `off: uint8` | `field_off` | `ubyte` | — |
| `reserve: uint8[3]` | `field_reserve` | `ubyte[3]` | 恰为 3 项 |

#### `Ros2Unitree_goMsgBmsState`

`unitree_go/msg/BmsState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `version_high: uint8` | `field_version_high` | `ubyte` | — |
| `version_low: uint8` | `field_version_low` | `ubyte` | — |
| `status: uint8` | `field_status` | `ubyte` | — |
| `soc: uint8` | `field_soc` | `ubyte` | — |
| `current: int32` | `field_current` | `int` | — |
| `cycle: uint16` | `field_cycle` | `ushort` | — |
| `bq_ntc: int8[2]` | `field_bq_ntc` | `byte[2]` | 恰为 2 项 |
| `mcu_ntc: int8[2]` | `field_mcu_ntc` | `byte[2]` | 恰为 2 项 |
| `cell_vol: uint16[15]` | `field_cell_vol` | `ushort[15]` | 恰为 15 项 |

#### `Ros2Unitree_goMsgError`

`unitree_go/msg/Error`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `source: uint32` | `field_source` | `uint` | — |
| `state: uint32` | `field_state` | `uint` | — |

#### `Ros2Unitree_goMsgGo2FrontVideoData`

`unitree_go/msg/Go2FrontVideoData`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `time_frame: uint64` | `field_time_frame` | `ulong` | — |
| `video720p: uint8[]` | `field_video720p` | `Sequence!(ubyte, 2048)` | SDK 有效项数 ≤2048 |
| `video360p: uint8[]` | `field_video360p` | `Sequence!(ubyte, 2048)` | SDK 有效项数 ≤2048 |
| `video180p: uint8[]` | `field_video180p` | `Sequence!(ubyte, 2048)` | SDK 有效项数 ≤2048 |

#### `Ros2Unitree_goMsgHeightMap`

`unitree_go/msg/HeightMap`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `stamp: float64` | `field_stamp` | `double` | — |
| `frame_id: string` | `field_frame_id` | `Text!(2048, false)` | SDK UTF-8 字节数 ≤2048 |
| `resolution: float32` | `field_resolution` | `float` | — |
| `width: uint32` | `field_width` | `uint` | — |
| `height: uint32` | `field_height` | `uint` | — |
| `origin: float32[2]` | `field_origin` | `float[2]` | 恰为 2 项 |
| `data: float32[]` | `field_data` | `Sequence!(float, 32)` | SDK 有效项数 ≤32 |

#### `Ros2Unitree_goMsgIMUState`

`unitree_go/msg/IMUState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `quaternion: float32[4]` | `field_quaternion` | `float[4]` | 恰为 4 项 |
| `gyroscope: float32[3]` | `field_gyroscope` | `float[3]` | 恰为 3 项 |
| `accelerometer: float32[3]` | `field_accelerometer` | `float[3]` | 恰为 3 项 |
| `rpy: float32[3]` | `field_rpy` | `float[3]` | 恰为 3 项 |
| `temperature: int8` | `field_temperature` | `byte` | — |

#### `Ros2Unitree_goMsgInterfaceConfig`

`unitree_go/msg/InterfaceConfig`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `ubyte` | — |
| `value: uint8` | `field_value` | `ubyte` | — |
| `reserve: uint8[2]` | `field_reserve` | `ubyte[2]` | 恰为 2 项 |

#### `Ros2Unitree_goMsgLidarState`

`unitree_go/msg/LidarState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `stamp: float64` | `field_stamp` | `double` | — |
| `firmware_version: string` | `field_firmware_version` | `Text!(2048, false)` | SDK UTF-8 字节数 ≤2048 |
| `software_version: string` | `field_software_version` | `Text!(2048, false)` | SDK UTF-8 字节数 ≤2048 |
| `sdk_version: string` | `field_sdk_version` | `Text!(2048, false)` | SDK UTF-8 字节数 ≤2048 |
| `sys_rotation_speed: float32` | `field_sys_rotation_speed` | `float` | — |
| `com_rotation_speed: float32` | `field_com_rotation_speed` | `float` | — |
| `error_state: uint8` | `field_error_state` | `ubyte` | — |
| `cloud_frequency: float32` | `field_cloud_frequency` | `float` | — |
| `cloud_packet_loss_rate: float32` | `field_cloud_packet_loss_rate` | `float` | — |
| `cloud_size: uint32` | `field_cloud_size` | `uint` | — |
| `cloud_scan_num: uint32` | `field_cloud_scan_num` | `uint` | — |
| `imu_frequency: float32` | `field_imu_frequency` | `float` | — |
| `imu_packet_loss_rate: float32` | `field_imu_packet_loss_rate` | `float` | — |
| `imu_rpy: float32[3]` | `field_imu_rpy` | `float[3]` | 恰为 3 项 |
| `serial_recv_stamp: float64` | `field_serial_recv_stamp` | `double` | — |
| `serial_buffer_size: uint32` | `field_serial_buffer_size` | `uint` | — |
| `serial_buffer_read: uint32` | `field_serial_buffer_read` | `uint` | — |

#### `Ros2Unitree_goMsgMotorCmd`

`unitree_go/msg/MotorCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `ubyte` | — |
| `q: float32` | `field_q` | `float` | — |
| `dq: float32` | `field_dq` | `float` | — |
| `tau: float32` | `field_tau` | `float` | — |
| `kp: float32` | `field_kp` | `float` | — |
| `kd: float32` | `field_kd` | `float` | — |
| `reserve: uint32[3]` | `field_reserve` | `uint[3]` | 恰为 3 项 |

#### `Ros2Unitree_goMsgLowCmd`

`unitree_go/msg/LowCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `head: uint8[2]` | `field_head` | `ubyte[2]` | 恰为 2 项 |
| `level_flag: uint8` | `field_level_flag` | `ubyte` | — |
| `frame_reserve: uint8` | `field_frame_reserve` | `ubyte` | — |
| `sn: uint32[2]` | `field_sn` | `uint[2]` | 恰为 2 项 |
| `version: uint32[2]` | `field_version` | `uint[2]` | 恰为 2 项 |
| `bandwidth: uint16` | `field_bandwidth` | `ushort` | — |
| `motor_cmd: unitree_go/msg/MotorCmd[20]` | `field_motor_cmd` | `Ros2Unitree_goMsgMotorCmd[20]` | 恰为 20 项 |
| `bms_cmd: unitree_go/msg/BmsCmd` | `field_bms_cmd` | `Ros2Unitree_goMsgBmsCmd` | — |
| `wireless_remote: uint8[40]` | `field_wireless_remote` | `ubyte[40]` | 恰为 40 项 |
| `led: uint8[12]` | `field_led` | `ubyte[12]` | 恰为 12 项 |
| `fan: uint8[2]` | `field_fan` | `ubyte[2]` | 恰为 2 项 |
| `gpio: uint8` | `field_gpio` | `ubyte` | — |
| `reserve: uint32` | `field_reserve` | `uint` | — |
| `crc: uint32` | `field_crc` | `uint` | — |

#### `Ros2Unitree_goMsgMotorState`

`unitree_go/msg/MotorState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `ubyte` | — |
| `q: float32` | `field_q` | `float` | — |
| `dq: float32` | `field_dq` | `float` | — |
| `ddq: float32` | `field_ddq` | `float` | — |
| `tau_est: float32` | `field_tau_est` | `float` | — |
| `q_raw: float32` | `field_q_raw` | `float` | — |
| `dq_raw: float32` | `field_dq_raw` | `float` | — |
| `ddq_raw: float32` | `field_ddq_raw` | `float` | — |
| `temperature: int8` | `field_temperature` | `byte` | — |
| `lost: uint32` | `field_lost` | `uint` | — |
| `reserve: uint32[2]` | `field_reserve` | `uint[2]` | 恰为 2 项 |

#### `Ros2Unitree_goMsgLowState`

`unitree_go/msg/LowState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `head: uint8[2]` | `field_head` | `ubyte[2]` | 恰为 2 项 |
| `level_flag: uint8` | `field_level_flag` | `ubyte` | — |
| `frame_reserve: uint8` | `field_frame_reserve` | `ubyte` | — |
| `sn: uint32[2]` | `field_sn` | `uint[2]` | 恰为 2 项 |
| `version: uint32[2]` | `field_version` | `uint[2]` | 恰为 2 项 |
| `bandwidth: uint16` | `field_bandwidth` | `ushort` | — |
| `imu_state: unitree_go/msg/IMUState` | `field_imu_state` | `Ros2Unitree_goMsgIMUState` | — |
| `motor_state: unitree_go/msg/MotorState[20]` | `field_motor_state` | `Ros2Unitree_goMsgMotorState[20]` | 恰为 20 项 |
| `bms_state: unitree_go/msg/BmsState` | `field_bms_state` | `Ros2Unitree_goMsgBmsState` | — |
| `foot_force: int16[4]` | `field_foot_force` | `short[4]` | 恰为 4 项 |
| `foot_force_est: int16[4]` | `field_foot_force_est` | `short[4]` | 恰为 4 项 |
| `tick: uint32` | `field_tick` | `uint` | — |
| `wireless_remote: uint8[40]` | `field_wireless_remote` | `ubyte[40]` | 恰为 40 项 |
| `bit_flag: uint8` | `field_bit_flag` | `ubyte` | — |
| `adc_reel: float32` | `field_adc_reel` | `float` | — |
| `temperature_ntc1: int8` | `field_temperature_ntc1` | `byte` | — |
| `temperature_ntc2: int8` | `field_temperature_ntc2` | `byte` | — |
| `power_v: float32` | `field_power_v` | `float` | — |
| `power_a: float32` | `field_power_a` | `float` | — |
| `fan_frequency: uint16[4]` | `field_fan_frequency` | `ushort[4]` | 恰为 4 项 |
| `reserve: uint32` | `field_reserve` | `uint` | — |
| `crc: uint32` | `field_crc` | `uint` | — |

#### `Ros2Unitree_goMsgMotorCmds`

`unitree_go/msg/MotorCmds`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `cmds: unitree_go/msg/MotorCmd[]` | `field_cmds` | `Sequence!(Ros2Unitree_goMsgMotorCmd, 32)` | SDK 有效项数 ≤32 |

#### `Ros2Unitree_goMsgMotorStates`

`unitree_go/msg/MotorStates`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `states: unitree_go/msg/MotorState[]` | `field_states` | `Sequence!(Ros2Unitree_goMsgMotorState, 32)` | SDK 有效项数 ≤32 |

#### `Ros2Unitree_goMsgPathPoint`

`unitree_go/msg/PathPoint`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `t_from_start: float32` | `field_t_from_start` | `float` | — |
| `x: float32` | `field_x` | `float` | — |
| `y: float32` | `field_y` | `float` | — |
| `yaw: float32` | `field_yaw` | `float` | — |
| `vx: float32` | `field_vx` | `float` | — |
| `vy: float32` | `field_vy` | `float` | — |
| `vyaw: float32` | `field_vyaw` | `float` | — |

#### `Ros2Unitree_goMsgReq`

`unitree_go/msg/Req`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `uuid: string` | `field_uuid` | `Text!(2048, false)` | SDK UTF-8 字节数 ≤2048 |
| `body: string` | `field_body` | `Text!(2048, false)` | SDK UTF-8 字节数 ≤2048 |

#### `Ros2Unitree_goMsgRes`

`unitree_go/msg/Res`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `uuid: string` | `field_uuid` | `Text!(2048, false)` | SDK UTF-8 字节数 ≤2048 |
| `data: uint8[]` | `field_data` | `Sequence!(ubyte, 2048)` | SDK 有效项数 ≤2048 |
| `body: string` | `field_body` | `Text!(2048, false)` | SDK UTF-8 字节数 ≤2048 |

#### `Ros2Unitree_goMsgSportModeCmd`

`unitree_go/msg/SportModeCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `ubyte` | — |
| `gait_type: uint8` | `field_gait_type` | `ubyte` | — |
| `speed_level: uint8` | `field_speed_level` | `ubyte` | — |
| `foot_raise_height: float32` | `field_foot_raise_height` | `float` | — |
| `body_height: float32` | `field_body_height` | `float` | — |
| `position: float32[2]` | `field_position` | `float[2]` | 恰为 2 项 |
| `euler: float32[3]` | `field_euler` | `float[3]` | 恰为 3 项 |
| `velocity: float32[2]` | `field_velocity` | `float[2]` | 恰为 2 项 |
| `yaw_speed: float32` | `field_yaw_speed` | `float` | — |
| `bms_cmd: unitree_go/msg/BmsCmd` | `field_bms_cmd` | `Ros2Unitree_goMsgBmsCmd` | — |
| `path_point: unitree_go/msg/PathPoint[30]` | `field_path_point` | `Ros2Unitree_goMsgPathPoint[30]` | 恰为 30 项 |

#### `Ros2Unitree_goMsgTimeSpec`

`unitree_go/msg/TimeSpec`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `sec: int32` | `field_sec` | `int` | — |
| `nanosec: uint32` | `field_nanosec` | `uint` | — |

#### `Ros2Unitree_goMsgSportModeState`

`unitree_go/msg/SportModeState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `stamp: unitree_go/msg/TimeSpec` | `field_stamp` | `Ros2Unitree_goMsgTimeSpec` | — |
| `error_code: uint32` | `field_error_code` | `uint` | — |
| `imu_state: unitree_go/msg/IMUState` | `field_imu_state` | `Ros2Unitree_goMsgIMUState` | — |
| `mode: uint8` | `field_mode` | `ubyte` | — |
| `progress: float32` | `field_progress` | `float` | — |
| `gait_type: uint8` | `field_gait_type` | `ubyte` | — |
| `foot_raise_height: float32` | `field_foot_raise_height` | `float` | — |
| `position: float32[3]` | `field_position` | `float[3]` | 恰为 3 项 |
| `body_height: float32` | `field_body_height` | `float` | — |
| `velocity: float32[3]` | `field_velocity` | `float[3]` | 恰为 3 项 |
| `yaw_speed: float32` | `field_yaw_speed` | `float` | — |
| `range_obstacle: float32[4]` | `field_range_obstacle` | `float[4]` | 恰为 4 项 |
| `foot_force: int16[4]` | `field_foot_force` | `short[4]` | 恰为 4 项 |
| `foot_position_body: float32[12]` | `field_foot_position_body` | `float[12]` | 恰为 12 项 |
| `foot_speed_body: float32[12]` | `field_foot_speed_body` | `float[12]` | 恰为 12 项 |

#### `Ros2Unitree_goMsgUwbState`

`unitree_go/msg/UwbState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `version: uint8[2]` | `field_version` | `ubyte[2]` | 恰为 2 项 |
| `channel: uint8` | `field_channel` | `ubyte` | — |
| `joy_mode: uint8` | `field_joy_mode` | `ubyte` | — |
| `orientation_est: float32` | `field_orientation_est` | `float` | — |
| `pitch_est: float32` | `field_pitch_est` | `float` | — |
| `distance_est: float32` | `field_distance_est` | `float` | — |
| `yaw_est: float32` | `field_yaw_est` | `float` | — |
| `tag_roll: float32` | `field_tag_roll` | `float` | — |
| `tag_pitch: float32` | `field_tag_pitch` | `float` | — |
| `tag_yaw: float32` | `field_tag_yaw` | `float` | — |
| `base_roll: float32` | `field_base_roll` | `float` | — |
| `base_pitch: float32` | `field_base_pitch` | `float` | — |
| `base_yaw: float32` | `field_base_yaw` | `float` | — |
| `joystick: float32[2]` | `field_joystick` | `float[2]` | 恰为 2 项 |
| `error_state: uint8` | `field_error_state` | `ubyte` | — |
| `buttons: uint8` | `field_buttons` | `ubyte` | — |
| `enabled_from_app: uint8` | `field_enabled_from_app` | `ubyte` | — |

#### `Ros2Unitree_goMsgUwbSwitch`

`unitree_go/msg/UwbSwitch`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `enabled: uint8` | `field_enabled` | `ubyte` | — |

#### `Ros2Unitree_goMsgWirelessController`

`unitree_go/msg/WirelessController`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `lx: float32` | `field_lx` | `float` | — |
| `ly: float32` | `field_ly` | `float` | — |
| `rx: float32` | `field_rx` | `float` | — |
| `ry: float32` | `field_ry` | `float` | — |
| `keys: uint16` | `field_keys` | `ushort` | — |

#### `Ros2Unitree_hgMsgBmsCmd`

`unitree_hg/msg/BmsCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `cmd: uint8` | `field_cmd` | `ubyte` | — |
| `reserve: uint8[40]` | `field_reserve` | `ubyte[40]` | 恰为 40 项 |

#### `Ros2Unitree_hgMsgBmsState`

`unitree_hg/msg/BmsState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `version_high: uint8` | `field_version_high` | `ubyte` | — |
| `version_low: uint8` | `field_version_low` | `ubyte` | — |
| `fn: uint8` | `field_fn` | `ubyte` | — |
| `cell_vol: uint16[40]` | `field_cell_vol` | `ushort[40]` | 恰为 40 项 |
| `bmsvoltage: uint32[3]` | `field_bmsvoltage` | `uint[3]` | 恰为 3 项 |
| `current: int32` | `field_current` | `int` | — |
| `soc: uint8` | `field_soc` | `ubyte` | — |
| `soh: uint8` | `field_soh` | `ubyte` | — |
| `temperature: int16[12]` | `field_temperature` | `short[12]` | 恰为 12 项 |
| `cycle: uint16` | `field_cycle` | `ushort` | — |
| `manufacturer_date: uint16` | `field_manufacturer_date` | `ushort` | — |
| `bmsstate: uint32[5]` | `field_bmsstate` | `uint[5]` | 恰为 5 项 |
| `reserve: uint32[3]` | `field_reserve` | `uint[3]` | 恰为 3 项 |

#### `Ros2Unitree_hgMsgMotorCmd`

`unitree_hg/msg/MotorCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `ubyte` | — |
| `q: float32` | `field_q` | `float` | — |
| `dq: float32` | `field_dq` | `float` | — |
| `tau: float32` | `field_tau` | `float` | — |
| `kp: float32` | `field_kp` | `float` | — |
| `kd: float32` | `field_kd` | `float` | — |
| `reserve: uint32` | `field_reserve` | `uint` | — |

#### `Ros2Unitree_hgMsgHandCmd`

`unitree_hg/msg/HandCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `motor_cmd: unitree_hg/msg/MotorCmd[]` | `field_motor_cmd` | `Sequence!(Ros2Unitree_hgMsgMotorCmd, 32)` | SDK 有效项数 ≤32 |
| `reserve: uint32[4]` | `field_reserve` | `uint[4]` | 恰为 4 项 |

#### `Ros2Unitree_hgMsgMotorState`

`unitree_hg/msg/MotorState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `ubyte` | — |
| `q: float32` | `field_q` | `float` | — |
| `dq: float32` | `field_dq` | `float` | — |
| `ddq: float32` | `field_ddq` | `float` | — |
| `tau_est: float32` | `field_tau_est` | `float` | — |
| `temperature: int16[2]` | `field_temperature` | `short[2]` | 恰为 2 项 |
| `vol: float32` | `field_vol` | `float` | — |
| `sensor: uint32[2]` | `field_sensor` | `uint[2]` | 恰为 2 项 |
| `motorstate: uint32` | `field_motorstate` | `uint` | — |
| `reserve: uint32[4]` | `field_reserve` | `uint[4]` | 恰为 4 项 |

#### `Ros2Unitree_hgMsgPressSensorState`

`unitree_hg/msg/PressSensorState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `pressure: float32[12]` | `field_pressure` | `float[12]` | 恰为 12 项 |
| `temperature: float32[12]` | `field_temperature` | `float[12]` | 恰为 12 项 |
| `lost: uint32` | `field_lost` | `uint` | — |
| `reserve: uint32` | `field_reserve` | `uint` | — |

#### `Ros2Unitree_hgMsgIMUState`

`unitree_hg/msg/IMUState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `quaternion: float32[4]` | `field_quaternion` | `float[4]` | 恰为 4 项 |
| `gyroscope: float32[3]` | `field_gyroscope` | `float[3]` | 恰为 3 项 |
| `accelerometer: float32[3]` | `field_accelerometer` | `float[3]` | 恰为 3 项 |
| `rpy: float32[3]` | `field_rpy` | `float[3]` | 恰为 3 项 |
| `temperature: int16` | `field_temperature` | `short` | — |

#### `Ros2Unitree_hgMsgHandState`

`unitree_hg/msg/HandState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `motor_state: unitree_hg/msg/MotorState[]` | `field_motor_state` | `Sequence!(Ros2Unitree_hgMsgMotorState, 32)` | SDK 有效项数 ≤32 |
| `press_sensor_state: unitree_hg/msg/PressSensorState[]` | `field_press_sensor_state` | `Sequence!(Ros2Unitree_hgMsgPressSensorState, 32)` | SDK 有效项数 ≤32 |
| `imu_state: unitree_hg/msg/IMUState` | `field_imu_state` | `Ros2Unitree_hgMsgIMUState` | — |
| `power_v: float32` | `field_power_v` | `float` | — |
| `power_a: float32` | `field_power_a` | `float` | — |
| `system_v: float32` | `field_system_v` | `float` | — |
| `device_v: float32` | `field_device_v` | `float` | — |
| `error: uint32[2]` | `field_error` | `uint[2]` | 恰为 2 项 |
| `reserve: uint32[2]` | `field_reserve` | `uint[2]` | 恰为 2 项 |

#### `Ros2Unitree_hgMsgLowCmd`

`unitree_hg/msg/LowCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `mode_pr: uint8` | `field_mode_pr` | `ubyte` | — |
| `mode_machine: uint8` | `field_mode_machine` | `ubyte` | — |
| `motor_cmd: unitree_hg/msg/MotorCmd[35]` | `field_motor_cmd` | `Ros2Unitree_hgMsgMotorCmd[35]` | 恰为 35 项 |
| `reserve: uint32[4]` | `field_reserve` | `uint[4]` | 恰为 4 项 |
| `crc: uint32` | `field_crc` | `uint` | — |

#### `Ros2Unitree_hgMsgLowState`

`unitree_hg/msg/LowState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `version: uint32[2]` | `field_version` | `uint[2]` | 恰为 2 项 |
| `mode_pr: uint8` | `field_mode_pr` | `ubyte` | — |
| `mode_machine: uint8` | `field_mode_machine` | `ubyte` | — |
| `tick: uint32` | `field_tick` | `uint` | — |
| `imu_state: unitree_hg/msg/IMUState` | `field_imu_state` | `Ros2Unitree_hgMsgIMUState` | — |
| `motor_state: unitree_hg/msg/MotorState[35]` | `field_motor_state` | `Ros2Unitree_hgMsgMotorState[35]` | 恰为 35 项 |
| `wireless_remote: uint8[40]` | `field_wireless_remote` | `ubyte[40]` | 恰为 40 项 |
| `reserve: uint32[4]` | `field_reserve` | `uint[4]` | 恰为 4 项 |
| `crc: uint32` | `field_crc` | `uint` | — |

#### `Ros2Unitree_hgMsgMainBoardState`

`unitree_hg/msg/MainBoardState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `fan_state: uint16[6]` | `field_fan_state` | `ushort[6]` | 恰为 6 项 |
| `temperature: int16[6]` | `field_temperature` | `short[6]` | 恰为 6 项 |
| `value: float32[6]` | `field_value` | `float[6]` | 恰为 6 项 |
| `state: uint32[6]` | `field_state` | `uint[6]` | 恰为 6 项 |

## 纯完整 codec

对每个完整类型符号 `T`，将准确名称代入以下真实 API 模式。ROS1 的 `Ros1Unitree_legged_msgsBmsCmd` 示例恰有 4 个规范字节。

`uint encodeT(ref T value, ubyte[] output, out size_t written) @nogc nothrow`; `uint decodeT(const(ubyte)[] bytes, out T value) @nogc nothrow`

0 表示成功，规范编码拒绝返回 22。仅成功后读取 `written` 和编码字节。解码先构造私有候选值，完整消耗输入后才发布；非零状态的 out 值不能当作成功记录使用。

以下纯 ROS1 辅助函数使用上文导入，并传递实际 codec 结果：先编码完整 BmsCmd，再仅解码其有效的 4 字节区间。此文档调用片段与六个原生通信入口分别说明。

```d
uint bmsCommandRoundTrip(out records.Ros1Unitree_legged_msgsBmsCmd decoded)
    @nogc nothrow
{
    auto value = records.Ros1Unitree_legged_msgsBmsCmd.init;
    ubyte[4] output;
    size_t written;
    auto code = records.encodeRos1Unitree_legged_msgsBmsCmd(value, output[], written);
    if (code != 0)
    {
        return code;
    }
    return records.decodeRos1Unitree_legged_msgsBmsCmd(output[0 .. written], decoded);
}
```

提供输出区间的编码调用要求记录独占访问，并使用独立、可写的输出存储；失败后应忽略已写入的局部前缀。成功解码完整消耗有界输入、拒绝尾随字节，并返回普通的完整语言值。codec 不执行 capability open、订阅或原生序列化调用，只有原字段域、嵌套记录、文本/计数限制及原始标量位均通过后，才公开完整成功结果。

## 带完整类型的观察函数

| 后端/场景 | 公开函数 | 返回的完整记录 |
| --- | --- | --- |
| ROS1 `motion_state` | `waitMotionState(alias, attempts)` | `Ros1Unitree_legged_msgsHighState` |
| ROS1 `low_state` | `waitLowState(alias, attempts)` | `Ros1Unitree_legged_msgsLowState` |
| ROS1 `motor_state` | `waitMotorState(alias, attempts)` | `Ros1Unitree_legged_msgsMotorState` |
| ROS2 `motion_state` | `waitMotionState(alias, attempts)` | `Ros2Unitree_goMsgSportModeState` |
| ROS2 `low_state` | `waitLowState(alias, attempts)` | `Ros2Unitree_goMsgLowState` |
| ROS2 `wireless_controller` | `waitWirelessController(alias, attempts)` | `Ros2Unitree_goMsgWirelessController` |

Haskell 观察函数返回 `IO (Observation T)`，其他前端直接返回对应自有观察值。alias 必须为 1..255 字节的严格 UTF-8，不含 NUL，同步调用期间保持有效。attempts 须为 1..250，包含立即执行的第一次 poll。一次打开 owner、一次订阅；仅 idle 11 允许在内部 WASI 单调时钟等待 20ms 后继续 poll。容量、权限、协议、关闭或解码拒绝均不触发自动重试或后端切换。

结果类型为 `Observation!Record`.

| 实际字段 | 含义及有效性 |
| --- | --- |
| `primary` | 首个校验/打开/订阅/poll/等待/codec 状态；0 表示无主操作错误。 |
| `cleanup`, `cleanupPresent` | 独立关闭状态，以及获取成功后是否尝试了一次关闭。 |
| `rpc`, `rpcPresent`, `polls` | 最后一次原始 poll 状态、是否执行过 poll、实际次数；本地解码失败不改写原始 RPC 事实。 |
| `length` | 完整 uint64 原生输出槽；UINT64_MAX 保留未写入哨兵，即使失败也保留原值。 |
| `responsePresent` | 完整响应存在标记；读取负载或默认记录存储前必须检查。 |
| `value`, `bytes[0 .. size]` | 完整自有记录及重编码规范字节，仅完整响应存在时可用。 |

每条正常获取成功的路径都在返回前关闭一次。返回的记录、字节在关闭后仍有效，复制它们不创建原生 owner；共享可变值须串行访问。致命陷阱、不可恢复分配失败及进程终止可能绕过正常清理，须由外层回收实例。

## 输出与进程状态

`api.report(value) -> uint`

输出是一条 JSON 对象，包含 `primary`、`cleanup`、布尔 `cleanup_present`、原始 `rpc_status`、布尔 `rpc_present`、布尔 `length_present`、准确十进制字符串 `length`、布尔 `response_present`、`polls` 和完整小写 `wire_hex`。`length_present` 仅表示原始槽不同于 UINT64_MAX 哨兵，本身不证明完整响应成功；无响应时 `wire_hex` 为空。

report 返回值依次选择主操作错误、独立关闭错误、stdout 错误 5，均无错误时为 0。仅命令/进程边界将大于 125 的非零状态钳制到 125。C 标量适配器提供参数、原始传输、时钟等待及 stdout，完整记录、codec 遍历与生命周期决策由真实语言完成。Haskell 的 `command` 负责 getArgs 中的一个参数、UTF-8 转换、输出和最终退出；其他入口使用包含程序名的原始 WASI 参数计数。

状态 11 表示 idle；本地校验/codec 拒绝为 22，ABI 版本不兼容为 95，原生容量拒绝 90 保留为传输事实。其他 owner/权限/连接/超时/撤销状态均按原值保留。应检查独立清理和响应存在标记，不能把默认填充的记录当作响应。

## 验收范围

支持的命令配置为 wasm32 WASI Preview 1、noeh、单线程，使用 Noetic/Jazzy 原始原生接口。随 SDK 的源码编译工具链已在 Linux x86_64 验收；同 SHA 产物的 AArch64 原生通信通过 x86_64 内核上的 QEMU user mode 单独验收，不代表 ARM 编译宿主或物理硬件。x86 源码、codec、构建证据记载于 [native-source-qualification.json](../../../../../../share/platform/unitree/native-source-qualification.json)，固定前端出处见 [原始编译器版本及源码闭包](../../../../../../share/platform/unitree/native-compiler-sources.json)。54 种完整记录的 codec 覆盖与六种观察类型的实时传输分别计数。Memory64、Preview 2、线程、Wasm EH、其他发行版、物理控制及机器人 CRC/安全行为不在本路线验收范围内。
