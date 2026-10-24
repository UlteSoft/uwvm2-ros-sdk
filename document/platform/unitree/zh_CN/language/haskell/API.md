# Unitree Haskell — API 手册

[完整原始 schema](../NATIVE_SCHEMA.md) · [API 手册](API.md) · [六个例子详解](EXAMPLES.md)

## 公共模块与后端选择

`Unitree.Ros1.Observation`、`Unitree.Ros2.Observation` 提供带完整类型的 IO 观察函数；完整记录及 codec 位于 `Unitree.Ros1.Records`、`Unitree.Ros2.Records`。`Unitree.Observation` 提供 `Observation`、`command`、`report`、`argumentBytes`，Xmake 为真实 WASI GHC 配置公共模块搜索路径。

```haskell
import Unitree.Observation (command)
import qualified Unitree.Ros1.Observation as Unitree
import qualified Unitree.Ros1.Records as Records
```

上例选择 ROS1；使用 ROS2 时，应选择 ROS2 目标及其对应门面、记录命名空间。Xmake 映射、记录家族与可信运行部署必须一致，观察函数不会回退到另一 ROS 家族。

- ROS1: [facade](../../../../../../include/platform/unitree/haskell/Unitree/Ros1/Observation.hs) · [records](../../../../../../include/platform/unitree/haskell/Unitree/Ros1/Records.hs)
- ROS2: [facade](../../../../../../include/platform/unitree/haskell/Unitree/Ros2/Observation.hs) · [records](../../../../../../include/platform/unitree/haskell/Unitree/Ros2/Records.hs)
- [core](../../../../../../include/platform/unitree/haskell/Unitree/Observation.hs) · [wire](../../../../../../include/platform/unitree/haskell/Unitree/Wire.hs)

## 完整记录与标量表示

目录包含 ROS1 的 11 种记录、115 个原始字段，以及 ROS2 的 43 种记录、257 个字段。下表列出全部类型和每一个公开字段标识符，嵌套记录递归采用相同映射。原生 MD5/RIHS 注册身份、规范 codec 身份、线格式字节界限是独立的目录事实；类型或 codec 本身不授予 ROS 权限。

字符串使用 UTF-8 `[Word8]`；固定/可变数组使用有类型列表，并由生成代码检查准确长度或有限上界。原始标量宽度使用 `Word8/16/32/64`、`Int8/16/32/64`、`Float`、`Double`、`Bool`。不可变值可以共享普通纯数据结构，解码器不会泄漏借用的外部指针或原生 ROS owner。

无符号、有符号整数保留准确位宽；float32/float64 保留原始宽度，所选有限值规则拒绝 NaN/无穷。字段保留原始拼写、大小写、声明顺序、固定数组项数、计数序列上界及单位。字符串遵循声明的 UTF-8 域，拒绝 NUL 和畸形编码，保留前导 BOM。原声明无界时，SDK 的有限准入配额在 schema 中单独记载。CRC 字段按输入值传递，codec 不建立物理 CRC 或机器人安全有效性。

Haskell 选择器由首字母小写的完整记录符号、`_` 和保持原样的原字段组成。例如 BmsState 的 `SOC` 对应 `ros1Unitree_legged_msgsBmsState_SOC`。该规则区分不同完整记录的同名字段，并保留规范字段顺序。

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
| `off: uint8` | `ros1Unitree_legged_msgsBmsCmd_off` | `Word8` | — |
| `reserve: uint8[3]` | `ros1Unitree_legged_msgsBmsCmd_reserve` | `[Word8]` | 恰为 3 项 |

#### `Ros1Unitree_legged_msgsBmsState`

`unitree_legged_msgs/BmsState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `version_h: uint8` | `ros1Unitree_legged_msgsBmsState_version_h` | `Word8` | — |
| `version_l: uint8` | `ros1Unitree_legged_msgsBmsState_version_l` | `Word8` | — |
| `bms_status: uint8` | `ros1Unitree_legged_msgsBmsState_bms_status` | `Word8` | — |
| `SOC: uint8` | `ros1Unitree_legged_msgsBmsState_SOC` | `Word8` | — |
| `current: int32` | `ros1Unitree_legged_msgsBmsState_current` | `Int32` | — |
| `cycle: uint16` | `ros1Unitree_legged_msgsBmsState_cycle` | `Word16` | — |
| `BQ_NTC: int8[2]` | `ros1Unitree_legged_msgsBmsState_BQ_NTC` | `[Int8]` | 恰为 2 项 |
| `MCU_NTC: int8[2]` | `ros1Unitree_legged_msgsBmsState_MCU_NTC` | `[Int8]` | 恰为 2 项 |
| `cell_vol: uint16[10]` | `ros1Unitree_legged_msgsBmsState_cell_vol` | `[Word16]` | 恰为 10 项 |

#### `Ros1Unitree_legged_msgsCartesian`

`unitree_legged_msgs/Cartesian`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `x: float32` | `ros1Unitree_legged_msgsCartesian_x` | `Float` | — |
| `y: float32` | `ros1Unitree_legged_msgsCartesian_y` | `Float` | — |
| `z: float32` | `ros1Unitree_legged_msgsCartesian_z` | `Float` | — |

#### `Ros1Unitree_legged_msgsLED`

`unitree_legged_msgs/LED`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `r: uint8` | `ros1Unitree_legged_msgsLED_r` | `Word8` | — |
| `g: uint8` | `ros1Unitree_legged_msgsLED_g` | `Word8` | — |
| `b: uint8` | `ros1Unitree_legged_msgsLED_b` | `Word8` | — |

#### `Ros1Unitree_legged_msgsHighCmd`

`unitree_legged_msgs/HighCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `head: uint8[2]` | `ros1Unitree_legged_msgsHighCmd_head` | `[Word8]` | 恰为 2 项 |
| `levelFlag: uint8` | `ros1Unitree_legged_msgsHighCmd_levelFlag` | `Word8` | — |
| `frameReserve: uint8` | `ros1Unitree_legged_msgsHighCmd_frameReserve` | `Word8` | — |
| `SN: uint32[2]` | `ros1Unitree_legged_msgsHighCmd_SN` | `[Word32]` | 恰为 2 项 |
| `version: uint32[2]` | `ros1Unitree_legged_msgsHighCmd_version` | `[Word32]` | 恰为 2 项 |
| `bandWidth: uint16` | `ros1Unitree_legged_msgsHighCmd_bandWidth` | `Word16` | — |
| `mode: uint8` | `ros1Unitree_legged_msgsHighCmd_mode` | `Word8` | — |
| `gaitType: uint8` | `ros1Unitree_legged_msgsHighCmd_gaitType` | `Word8` | — |
| `speedLevel: uint8` | `ros1Unitree_legged_msgsHighCmd_speedLevel` | `Word8` | — |
| `footRaiseHeight: float32` | `ros1Unitree_legged_msgsHighCmd_footRaiseHeight` | `Float` | — |
| `bodyHeight: float32` | `ros1Unitree_legged_msgsHighCmd_bodyHeight` | `Float` | — |
| `position: float32[2]` | `ros1Unitree_legged_msgsHighCmd_position` | `[Float]` | 恰为 2 项 |
| `euler: float32[3]` | `ros1Unitree_legged_msgsHighCmd_euler` | `[Float]` | 恰为 3 项 |
| `velocity: float32[2]` | `ros1Unitree_legged_msgsHighCmd_velocity` | `[Float]` | 恰为 2 项 |
| `yawSpeed: float32` | `ros1Unitree_legged_msgsHighCmd_yawSpeed` | `Float` | — |
| `bms: unitree_legged_msgs/BmsCmd` | `ros1Unitree_legged_msgsHighCmd_bms` | `Ros1Unitree_legged_msgsBmsCmd` | — |
| `led: unitree_legged_msgs/LED[4]` | `ros1Unitree_legged_msgsHighCmd_led` | `[Ros1Unitree_legged_msgsLED]` | 恰为 4 项 |
| `wirelessRemote: uint8[40]` | `ros1Unitree_legged_msgsHighCmd_wirelessRemote` | `[Word8]` | 恰为 40 项 |
| `reserve: uint32` | `ros1Unitree_legged_msgsHighCmd_reserve` | `Word32` | — |
| `crc: uint32` | `ros1Unitree_legged_msgsHighCmd_crc` | `Word32` | — |

#### `Ros1Unitree_legged_msgsIMU`

`unitree_legged_msgs/IMU`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `quaternion: float32[4]` | `ros1Unitree_legged_msgsIMU_quaternion` | `[Float]` | 恰为 4 项 |
| `gyroscope: float32[3]` | `ros1Unitree_legged_msgsIMU_gyroscope` | `[Float]` | 恰为 3 项 |
| `accelerometer: float32[3]` | `ros1Unitree_legged_msgsIMU_accelerometer` | `[Float]` | 恰为 3 项 |
| `rpy: float32[3]` | `ros1Unitree_legged_msgsIMU_rpy` | `[Float]` | 恰为 3 项 |
| `temperature: int8` | `ros1Unitree_legged_msgsIMU_temperature` | `Int8` | — |

#### `Ros1Unitree_legged_msgsMotorState`

`unitree_legged_msgs/MotorState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `mode: uint8` | `ros1Unitree_legged_msgsMotorState_mode` | `Word8` | — |
| `q: float32` | `ros1Unitree_legged_msgsMotorState_q` | `Float` | — |
| `dq: float32` | `ros1Unitree_legged_msgsMotorState_dq` | `Float` | — |
| `ddq: float32` | `ros1Unitree_legged_msgsMotorState_ddq` | `Float` | — |
| `tauEst: float32` | `ros1Unitree_legged_msgsMotorState_tauEst` | `Float` | — |
| `q_raw: float32` | `ros1Unitree_legged_msgsMotorState_q_raw` | `Float` | — |
| `dq_raw: float32` | `ros1Unitree_legged_msgsMotorState_dq_raw` | `Float` | — |
| `ddq_raw: float32` | `ros1Unitree_legged_msgsMotorState_ddq_raw` | `Float` | — |
| `temperature: int8` | `ros1Unitree_legged_msgsMotorState_temperature` | `Int8` | — |
| `reserve: uint32[2]` | `ros1Unitree_legged_msgsMotorState_reserve` | `[Word32]` | 恰为 2 项 |

#### `Ros1Unitree_legged_msgsHighState`

`unitree_legged_msgs/HighState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `head: uint8[2]` | `ros1Unitree_legged_msgsHighState_head` | `[Word8]` | 恰为 2 项 |
| `levelFlag: uint8` | `ros1Unitree_legged_msgsHighState_levelFlag` | `Word8` | — |
| `frameReserve: uint8` | `ros1Unitree_legged_msgsHighState_frameReserve` | `Word8` | — |
| `SN: uint32[2]` | `ros1Unitree_legged_msgsHighState_SN` | `[Word32]` | 恰为 2 项 |
| `version: uint32[2]` | `ros1Unitree_legged_msgsHighState_version` | `[Word32]` | 恰为 2 项 |
| `bandWidth: uint16` | `ros1Unitree_legged_msgsHighState_bandWidth` | `Word16` | — |
| `imu: unitree_legged_msgs/IMU` | `ros1Unitree_legged_msgsHighState_imu` | `Ros1Unitree_legged_msgsIMU` | — |
| `motorState: unitree_legged_msgs/MotorState[20]` | `ros1Unitree_legged_msgsHighState_motorState` | `[Ros1Unitree_legged_msgsMotorState]` | 恰为 20 项 |
| `bms: unitree_legged_msgs/BmsState` | `ros1Unitree_legged_msgsHighState_bms` | `Ros1Unitree_legged_msgsBmsState` | — |
| `footForce: int16[4]` | `ros1Unitree_legged_msgsHighState_footForce` | `[Int16]` | 恰为 4 项 |
| `footForceEst: int16[4]` | `ros1Unitree_legged_msgsHighState_footForceEst` | `[Int16]` | 恰为 4 项 |
| `mode: uint8` | `ros1Unitree_legged_msgsHighState_mode` | `Word8` | — |
| `progress: float32` | `ros1Unitree_legged_msgsHighState_progress` | `Float` | — |
| `gaitType: uint8` | `ros1Unitree_legged_msgsHighState_gaitType` | `Word8` | — |
| `footRaiseHeight: float32` | `ros1Unitree_legged_msgsHighState_footRaiseHeight` | `Float` | — |
| `position: float32[3]` | `ros1Unitree_legged_msgsHighState_position` | `[Float]` | 恰为 3 项 |
| `bodyHeight: float32` | `ros1Unitree_legged_msgsHighState_bodyHeight` | `Float` | — |
| `velocity: float32[3]` | `ros1Unitree_legged_msgsHighState_velocity` | `[Float]` | 恰为 3 项 |
| `yawSpeed: float32` | `ros1Unitree_legged_msgsHighState_yawSpeed` | `Float` | — |
| `rangeObstacle: float32[4]` | `ros1Unitree_legged_msgsHighState_rangeObstacle` | `[Float]` | 恰为 4 项 |
| `footPosition2Body: unitree_legged_msgs/Cartesian[4]` | `ros1Unitree_legged_msgsHighState_footPosition2Body` | `[Ros1Unitree_legged_msgsCartesian]` | 恰为 4 项 |
| `footSpeed2Body: unitree_legged_msgs/Cartesian[4]` | `ros1Unitree_legged_msgsHighState_footSpeed2Body` | `[Ros1Unitree_legged_msgsCartesian]` | 恰为 4 项 |
| `wirelessRemote: uint8[40]` | `ros1Unitree_legged_msgsHighState_wirelessRemote` | `[Word8]` | 恰为 40 项 |
| `reserve: uint32` | `ros1Unitree_legged_msgsHighState_reserve` | `Word32` | — |
| `crc: uint32` | `ros1Unitree_legged_msgsHighState_crc` | `Word32` | — |

#### `Ros1Unitree_legged_msgsMotorCmd`

`unitree_legged_msgs/MotorCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `mode: uint8` | `ros1Unitree_legged_msgsMotorCmd_mode` | `Word8` | — |
| `q: float32` | `ros1Unitree_legged_msgsMotorCmd_q` | `Float` | — |
| `dq: float32` | `ros1Unitree_legged_msgsMotorCmd_dq` | `Float` | — |
| `tau: float32` | `ros1Unitree_legged_msgsMotorCmd_tau` | `Float` | — |
| `Kp: float32` | `ros1Unitree_legged_msgsMotorCmd_Kp` | `Float` | — |
| `Kd: float32` | `ros1Unitree_legged_msgsMotorCmd_Kd` | `Float` | — |
| `reserve: uint32[3]` | `ros1Unitree_legged_msgsMotorCmd_reserve` | `[Word32]` | 恰为 3 项 |

#### `Ros1Unitree_legged_msgsLowCmd`

`unitree_legged_msgs/LowCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `head: uint8[2]` | `ros1Unitree_legged_msgsLowCmd_head` | `[Word8]` | 恰为 2 项 |
| `levelFlag: uint8` | `ros1Unitree_legged_msgsLowCmd_levelFlag` | `Word8` | — |
| `frameReserve: uint8` | `ros1Unitree_legged_msgsLowCmd_frameReserve` | `Word8` | — |
| `SN: uint32[2]` | `ros1Unitree_legged_msgsLowCmd_SN` | `[Word32]` | 恰为 2 项 |
| `version: uint32[2]` | `ros1Unitree_legged_msgsLowCmd_version` | `[Word32]` | 恰为 2 项 |
| `bandWidth: uint16` | `ros1Unitree_legged_msgsLowCmd_bandWidth` | `Word16` | — |
| `motorCmd: unitree_legged_msgs/MotorCmd[20]` | `ros1Unitree_legged_msgsLowCmd_motorCmd` | `[Ros1Unitree_legged_msgsMotorCmd]` | 恰为 20 项 |
| `bms: unitree_legged_msgs/BmsCmd` | `ros1Unitree_legged_msgsLowCmd_bms` | `Ros1Unitree_legged_msgsBmsCmd` | — |
| `wirelessRemote: uint8[40]` | `ros1Unitree_legged_msgsLowCmd_wirelessRemote` | `[Word8]` | 恰为 40 项 |
| `reserve: uint32` | `ros1Unitree_legged_msgsLowCmd_reserve` | `Word32` | — |
| `crc: uint32` | `ros1Unitree_legged_msgsLowCmd_crc` | `Word32` | — |

#### `Ros1Unitree_legged_msgsLowState`

`unitree_legged_msgs/LowState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `head: uint8[2]` | `ros1Unitree_legged_msgsLowState_head` | `[Word8]` | 恰为 2 项 |
| `levelFlag: uint8` | `ros1Unitree_legged_msgsLowState_levelFlag` | `Word8` | — |
| `frameReserve: uint8` | `ros1Unitree_legged_msgsLowState_frameReserve` | `Word8` | — |
| `SN: uint32[2]` | `ros1Unitree_legged_msgsLowState_SN` | `[Word32]` | 恰为 2 项 |
| `version: uint32[2]` | `ros1Unitree_legged_msgsLowState_version` | `[Word32]` | 恰为 2 项 |
| `bandWidth: uint16` | `ros1Unitree_legged_msgsLowState_bandWidth` | `Word16` | — |
| `imu: unitree_legged_msgs/IMU` | `ros1Unitree_legged_msgsLowState_imu` | `Ros1Unitree_legged_msgsIMU` | — |
| `motorState: unitree_legged_msgs/MotorState[20]` | `ros1Unitree_legged_msgsLowState_motorState` | `[Ros1Unitree_legged_msgsMotorState]` | 恰为 20 项 |
| `bms: unitree_legged_msgs/BmsState` | `ros1Unitree_legged_msgsLowState_bms` | `Ros1Unitree_legged_msgsBmsState` | — |
| `footForce: int16[4]` | `ros1Unitree_legged_msgsLowState_footForce` | `[Int16]` | 恰为 4 项 |
| `footForceEst: int16[4]` | `ros1Unitree_legged_msgsLowState_footForceEst` | `[Int16]` | 恰为 4 项 |
| `tick: uint32` | `ros1Unitree_legged_msgsLowState_tick` | `Word32` | — |
| `wirelessRemote: uint8[40]` | `ros1Unitree_legged_msgsLowState_wirelessRemote` | `[Word8]` | 恰为 40 项 |
| `reserve: uint32` | `ros1Unitree_legged_msgsLowState_reserve` | `Word32` | — |
| `crc: uint32` | `ros1Unitree_legged_msgsLowState_crc` | `Word32` | — |
| `eeForceRaw: unitree_legged_msgs/Cartesian[4]` | `ros1Unitree_legged_msgsLowState_eeForceRaw` | `[Ros1Unitree_legged_msgsCartesian]` | 恰为 4 项 |
| `eeForce: unitree_legged_msgs/Cartesian[4]` | `ros1Unitree_legged_msgsLowState_eeForce` | `[Ros1Unitree_legged_msgsCartesian]` | 恰为 4 项 |
| `position: unitree_legged_msgs/Cartesian` | `ros1Unitree_legged_msgsLowState_position` | `Ros1Unitree_legged_msgsCartesian` | — |
| `velocity: unitree_legged_msgs/Cartesian` | `ros1Unitree_legged_msgsLowState_velocity` | `Ros1Unitree_legged_msgsCartesian` | — |
| `velocity_w: unitree_legged_msgs/Cartesian` | `ros1Unitree_legged_msgsLowState_velocity_w` | `Ros1Unitree_legged_msgsCartesian` | — |

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
| `id: int64` | `ros2Unitree_apiMsgRequestIdentity_id` | `Int64` | — |
| `api_id: int64` | `ros2Unitree_apiMsgRequestIdentity_api_id` | `Int64` | — |

#### `Ros2Unitree_apiMsgRequestLease`

`unitree_api/msg/RequestLease`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `id: int64` | `ros2Unitree_apiMsgRequestLease_id` | `Int64` | — |

#### `Ros2Unitree_apiMsgRequestPolicy`

`unitree_api/msg/RequestPolicy`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `priority: int32` | `ros2Unitree_apiMsgRequestPolicy_priority` | `Int32` | — |
| `noreply: bool` | `ros2Unitree_apiMsgRequestPolicy_noreply` | `Bool` | — |

#### `Ros2Unitree_apiMsgRequestHeader`

`unitree_api/msg/RequestHeader`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `identity: unitree_api/msg/RequestIdentity` | `ros2Unitree_apiMsgRequestHeader_identity` | `Ros2Unitree_apiMsgRequestIdentity` | — |
| `lease: unitree_api/msg/RequestLease` | `ros2Unitree_apiMsgRequestHeader_lease` | `Ros2Unitree_apiMsgRequestLease` | — |
| `policy: unitree_api/msg/RequestPolicy` | `ros2Unitree_apiMsgRequestHeader_policy` | `Ros2Unitree_apiMsgRequestPolicy` | — |

#### `Ros2Unitree_apiMsgRequest`

`unitree_api/msg/Request`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `header: unitree_api/msg/RequestHeader` | `ros2Unitree_apiMsgRequest_header` | `Ros2Unitree_apiMsgRequestHeader` | — |
| `parameter: string` | `ros2Unitree_apiMsgRequest_parameter` | `[Word8]` | SDK UTF-8 字节数 ≤2048 |
| `binary: uint8[]` | `ros2Unitree_apiMsgRequest_binary` | `[Word8]` | SDK 有效项数 ≤2048 |

#### `Ros2Unitree_apiMsgResponseStatus`

`unitree_api/msg/ResponseStatus`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `code: int32` | `ros2Unitree_apiMsgResponseStatus_code` | `Int32` | — |

#### `Ros2Unitree_apiMsgResponseHeader`

`unitree_api/msg/ResponseHeader`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `identity: unitree_api/msg/RequestIdentity` | `ros2Unitree_apiMsgResponseHeader_identity` | `Ros2Unitree_apiMsgRequestIdentity` | — |
| `status: unitree_api/msg/ResponseStatus` | `ros2Unitree_apiMsgResponseHeader_status` | `Ros2Unitree_apiMsgResponseStatus` | — |

#### `Ros2Unitree_apiMsgResponse`

`unitree_api/msg/Response`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `header: unitree_api/msg/ResponseHeader` | `ros2Unitree_apiMsgResponse_header` | `Ros2Unitree_apiMsgResponseHeader` | — |
| `data: string` | `ros2Unitree_apiMsgResponse_data` | `[Word8]` | SDK UTF-8 字节数 ≤2048 |
| `binary: int8[]` | `ros2Unitree_apiMsgResponse_binary` | `[Int8]` | SDK 有效项数 ≤32 |

#### `Ros2Unitree_goMsgAudioData`

`unitree_go/msg/AudioData`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `time_frame: uint64` | `ros2Unitree_goMsgAudioData_time_frame` | `Word64` | — |
| `data: uint8[]` | `ros2Unitree_goMsgAudioData_data` | `[Word8]` | SDK 有效项数 ≤2048 |

#### `Ros2Unitree_goMsgBmsCmd`

`unitree_go/msg/BmsCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `off: uint8` | `ros2Unitree_goMsgBmsCmd_off` | `Word8` | — |
| `reserve: uint8[3]` | `ros2Unitree_goMsgBmsCmd_reserve` | `[Word8]` | 恰为 3 项 |

#### `Ros2Unitree_goMsgBmsState`

`unitree_go/msg/BmsState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `version_high: uint8` | `ros2Unitree_goMsgBmsState_version_high` | `Word8` | — |
| `version_low: uint8` | `ros2Unitree_goMsgBmsState_version_low` | `Word8` | — |
| `status: uint8` | `ros2Unitree_goMsgBmsState_status` | `Word8` | — |
| `soc: uint8` | `ros2Unitree_goMsgBmsState_soc` | `Word8` | — |
| `current: int32` | `ros2Unitree_goMsgBmsState_current` | `Int32` | — |
| `cycle: uint16` | `ros2Unitree_goMsgBmsState_cycle` | `Word16` | — |
| `bq_ntc: int8[2]` | `ros2Unitree_goMsgBmsState_bq_ntc` | `[Int8]` | 恰为 2 项 |
| `mcu_ntc: int8[2]` | `ros2Unitree_goMsgBmsState_mcu_ntc` | `[Int8]` | 恰为 2 项 |
| `cell_vol: uint16[15]` | `ros2Unitree_goMsgBmsState_cell_vol` | `[Word16]` | 恰为 15 项 |

#### `Ros2Unitree_goMsgError`

`unitree_go/msg/Error`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `source: uint32` | `ros2Unitree_goMsgError_source` | `Word32` | — |
| `state: uint32` | `ros2Unitree_goMsgError_state` | `Word32` | — |

#### `Ros2Unitree_goMsgGo2FrontVideoData`

`unitree_go/msg/Go2FrontVideoData`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `time_frame: uint64` | `ros2Unitree_goMsgGo2FrontVideoData_time_frame` | `Word64` | — |
| `video720p: uint8[]` | `ros2Unitree_goMsgGo2FrontVideoData_video720p` | `[Word8]` | SDK 有效项数 ≤2048 |
| `video360p: uint8[]` | `ros2Unitree_goMsgGo2FrontVideoData_video360p` | `[Word8]` | SDK 有效项数 ≤2048 |
| `video180p: uint8[]` | `ros2Unitree_goMsgGo2FrontVideoData_video180p` | `[Word8]` | SDK 有效项数 ≤2048 |

#### `Ros2Unitree_goMsgHeightMap`

`unitree_go/msg/HeightMap`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `stamp: float64` | `ros2Unitree_goMsgHeightMap_stamp` | `Double` | — |
| `frame_id: string` | `ros2Unitree_goMsgHeightMap_frame_id` | `[Word8]` | SDK UTF-8 字节数 ≤2048 |
| `resolution: float32` | `ros2Unitree_goMsgHeightMap_resolution` | `Float` | — |
| `width: uint32` | `ros2Unitree_goMsgHeightMap_width` | `Word32` | — |
| `height: uint32` | `ros2Unitree_goMsgHeightMap_height` | `Word32` | — |
| `origin: float32[2]` | `ros2Unitree_goMsgHeightMap_origin` | `[Float]` | 恰为 2 项 |
| `data: float32[]` | `ros2Unitree_goMsgHeightMap_data` | `[Float]` | SDK 有效项数 ≤32 |

#### `Ros2Unitree_goMsgIMUState`

`unitree_go/msg/IMUState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `quaternion: float32[4]` | `ros2Unitree_goMsgIMUState_quaternion` | `[Float]` | 恰为 4 项 |
| `gyroscope: float32[3]` | `ros2Unitree_goMsgIMUState_gyroscope` | `[Float]` | 恰为 3 项 |
| `accelerometer: float32[3]` | `ros2Unitree_goMsgIMUState_accelerometer` | `[Float]` | 恰为 3 项 |
| `rpy: float32[3]` | `ros2Unitree_goMsgIMUState_rpy` | `[Float]` | 恰为 3 项 |
| `temperature: int8` | `ros2Unitree_goMsgIMUState_temperature` | `Int8` | — |

#### `Ros2Unitree_goMsgInterfaceConfig`

`unitree_go/msg/InterfaceConfig`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `mode: uint8` | `ros2Unitree_goMsgInterfaceConfig_mode` | `Word8` | — |
| `value: uint8` | `ros2Unitree_goMsgInterfaceConfig_value` | `Word8` | — |
| `reserve: uint8[2]` | `ros2Unitree_goMsgInterfaceConfig_reserve` | `[Word8]` | 恰为 2 项 |

#### `Ros2Unitree_goMsgLidarState`

`unitree_go/msg/LidarState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `stamp: float64` | `ros2Unitree_goMsgLidarState_stamp` | `Double` | — |
| `firmware_version: string` | `ros2Unitree_goMsgLidarState_firmware_version` | `[Word8]` | SDK UTF-8 字节数 ≤2048 |
| `software_version: string` | `ros2Unitree_goMsgLidarState_software_version` | `[Word8]` | SDK UTF-8 字节数 ≤2048 |
| `sdk_version: string` | `ros2Unitree_goMsgLidarState_sdk_version` | `[Word8]` | SDK UTF-8 字节数 ≤2048 |
| `sys_rotation_speed: float32` | `ros2Unitree_goMsgLidarState_sys_rotation_speed` | `Float` | — |
| `com_rotation_speed: float32` | `ros2Unitree_goMsgLidarState_com_rotation_speed` | `Float` | — |
| `error_state: uint8` | `ros2Unitree_goMsgLidarState_error_state` | `Word8` | — |
| `cloud_frequency: float32` | `ros2Unitree_goMsgLidarState_cloud_frequency` | `Float` | — |
| `cloud_packet_loss_rate: float32` | `ros2Unitree_goMsgLidarState_cloud_packet_loss_rate` | `Float` | — |
| `cloud_size: uint32` | `ros2Unitree_goMsgLidarState_cloud_size` | `Word32` | — |
| `cloud_scan_num: uint32` | `ros2Unitree_goMsgLidarState_cloud_scan_num` | `Word32` | — |
| `imu_frequency: float32` | `ros2Unitree_goMsgLidarState_imu_frequency` | `Float` | — |
| `imu_packet_loss_rate: float32` | `ros2Unitree_goMsgLidarState_imu_packet_loss_rate` | `Float` | — |
| `imu_rpy: float32[3]` | `ros2Unitree_goMsgLidarState_imu_rpy` | `[Float]` | 恰为 3 项 |
| `serial_recv_stamp: float64` | `ros2Unitree_goMsgLidarState_serial_recv_stamp` | `Double` | — |
| `serial_buffer_size: uint32` | `ros2Unitree_goMsgLidarState_serial_buffer_size` | `Word32` | — |
| `serial_buffer_read: uint32` | `ros2Unitree_goMsgLidarState_serial_buffer_read` | `Word32` | — |

#### `Ros2Unitree_goMsgMotorCmd`

`unitree_go/msg/MotorCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `mode: uint8` | `ros2Unitree_goMsgMotorCmd_mode` | `Word8` | — |
| `q: float32` | `ros2Unitree_goMsgMotorCmd_q` | `Float` | — |
| `dq: float32` | `ros2Unitree_goMsgMotorCmd_dq` | `Float` | — |
| `tau: float32` | `ros2Unitree_goMsgMotorCmd_tau` | `Float` | — |
| `kp: float32` | `ros2Unitree_goMsgMotorCmd_kp` | `Float` | — |
| `kd: float32` | `ros2Unitree_goMsgMotorCmd_kd` | `Float` | — |
| `reserve: uint32[3]` | `ros2Unitree_goMsgMotorCmd_reserve` | `[Word32]` | 恰为 3 项 |

#### `Ros2Unitree_goMsgLowCmd`

`unitree_go/msg/LowCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `head: uint8[2]` | `ros2Unitree_goMsgLowCmd_head` | `[Word8]` | 恰为 2 项 |
| `level_flag: uint8` | `ros2Unitree_goMsgLowCmd_level_flag` | `Word8` | — |
| `frame_reserve: uint8` | `ros2Unitree_goMsgLowCmd_frame_reserve` | `Word8` | — |
| `sn: uint32[2]` | `ros2Unitree_goMsgLowCmd_sn` | `[Word32]` | 恰为 2 项 |
| `version: uint32[2]` | `ros2Unitree_goMsgLowCmd_version` | `[Word32]` | 恰为 2 项 |
| `bandwidth: uint16` | `ros2Unitree_goMsgLowCmd_bandwidth` | `Word16` | — |
| `motor_cmd: unitree_go/msg/MotorCmd[20]` | `ros2Unitree_goMsgLowCmd_motor_cmd` | `[Ros2Unitree_goMsgMotorCmd]` | 恰为 20 项 |
| `bms_cmd: unitree_go/msg/BmsCmd` | `ros2Unitree_goMsgLowCmd_bms_cmd` | `Ros2Unitree_goMsgBmsCmd` | — |
| `wireless_remote: uint8[40]` | `ros2Unitree_goMsgLowCmd_wireless_remote` | `[Word8]` | 恰为 40 项 |
| `led: uint8[12]` | `ros2Unitree_goMsgLowCmd_led` | `[Word8]` | 恰为 12 项 |
| `fan: uint8[2]` | `ros2Unitree_goMsgLowCmd_fan` | `[Word8]` | 恰为 2 项 |
| `gpio: uint8` | `ros2Unitree_goMsgLowCmd_gpio` | `Word8` | — |
| `reserve: uint32` | `ros2Unitree_goMsgLowCmd_reserve` | `Word32` | — |
| `crc: uint32` | `ros2Unitree_goMsgLowCmd_crc` | `Word32` | — |

#### `Ros2Unitree_goMsgMotorState`

`unitree_go/msg/MotorState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `mode: uint8` | `ros2Unitree_goMsgMotorState_mode` | `Word8` | — |
| `q: float32` | `ros2Unitree_goMsgMotorState_q` | `Float` | — |
| `dq: float32` | `ros2Unitree_goMsgMotorState_dq` | `Float` | — |
| `ddq: float32` | `ros2Unitree_goMsgMotorState_ddq` | `Float` | — |
| `tau_est: float32` | `ros2Unitree_goMsgMotorState_tau_est` | `Float` | — |
| `q_raw: float32` | `ros2Unitree_goMsgMotorState_q_raw` | `Float` | — |
| `dq_raw: float32` | `ros2Unitree_goMsgMotorState_dq_raw` | `Float` | — |
| `ddq_raw: float32` | `ros2Unitree_goMsgMotorState_ddq_raw` | `Float` | — |
| `temperature: int8` | `ros2Unitree_goMsgMotorState_temperature` | `Int8` | — |
| `lost: uint32` | `ros2Unitree_goMsgMotorState_lost` | `Word32` | — |
| `reserve: uint32[2]` | `ros2Unitree_goMsgMotorState_reserve` | `[Word32]` | 恰为 2 项 |

#### `Ros2Unitree_goMsgLowState`

`unitree_go/msg/LowState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `head: uint8[2]` | `ros2Unitree_goMsgLowState_head` | `[Word8]` | 恰为 2 项 |
| `level_flag: uint8` | `ros2Unitree_goMsgLowState_level_flag` | `Word8` | — |
| `frame_reserve: uint8` | `ros2Unitree_goMsgLowState_frame_reserve` | `Word8` | — |
| `sn: uint32[2]` | `ros2Unitree_goMsgLowState_sn` | `[Word32]` | 恰为 2 项 |
| `version: uint32[2]` | `ros2Unitree_goMsgLowState_version` | `[Word32]` | 恰为 2 项 |
| `bandwidth: uint16` | `ros2Unitree_goMsgLowState_bandwidth` | `Word16` | — |
| `imu_state: unitree_go/msg/IMUState` | `ros2Unitree_goMsgLowState_imu_state` | `Ros2Unitree_goMsgIMUState` | — |
| `motor_state: unitree_go/msg/MotorState[20]` | `ros2Unitree_goMsgLowState_motor_state` | `[Ros2Unitree_goMsgMotorState]` | 恰为 20 项 |
| `bms_state: unitree_go/msg/BmsState` | `ros2Unitree_goMsgLowState_bms_state` | `Ros2Unitree_goMsgBmsState` | — |
| `foot_force: int16[4]` | `ros2Unitree_goMsgLowState_foot_force` | `[Int16]` | 恰为 4 项 |
| `foot_force_est: int16[4]` | `ros2Unitree_goMsgLowState_foot_force_est` | `[Int16]` | 恰为 4 项 |
| `tick: uint32` | `ros2Unitree_goMsgLowState_tick` | `Word32` | — |
| `wireless_remote: uint8[40]` | `ros2Unitree_goMsgLowState_wireless_remote` | `[Word8]` | 恰为 40 项 |
| `bit_flag: uint8` | `ros2Unitree_goMsgLowState_bit_flag` | `Word8` | — |
| `adc_reel: float32` | `ros2Unitree_goMsgLowState_adc_reel` | `Float` | — |
| `temperature_ntc1: int8` | `ros2Unitree_goMsgLowState_temperature_ntc1` | `Int8` | — |
| `temperature_ntc2: int8` | `ros2Unitree_goMsgLowState_temperature_ntc2` | `Int8` | — |
| `power_v: float32` | `ros2Unitree_goMsgLowState_power_v` | `Float` | — |
| `power_a: float32` | `ros2Unitree_goMsgLowState_power_a` | `Float` | — |
| `fan_frequency: uint16[4]` | `ros2Unitree_goMsgLowState_fan_frequency` | `[Word16]` | 恰为 4 项 |
| `reserve: uint32` | `ros2Unitree_goMsgLowState_reserve` | `Word32` | — |
| `crc: uint32` | `ros2Unitree_goMsgLowState_crc` | `Word32` | — |

#### `Ros2Unitree_goMsgMotorCmds`

`unitree_go/msg/MotorCmds`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `cmds: unitree_go/msg/MotorCmd[]` | `ros2Unitree_goMsgMotorCmds_cmds` | `[Ros2Unitree_goMsgMotorCmd]` | SDK 有效项数 ≤32 |

#### `Ros2Unitree_goMsgMotorStates`

`unitree_go/msg/MotorStates`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `states: unitree_go/msg/MotorState[]` | `ros2Unitree_goMsgMotorStates_states` | `[Ros2Unitree_goMsgMotorState]` | SDK 有效项数 ≤32 |

#### `Ros2Unitree_goMsgPathPoint`

`unitree_go/msg/PathPoint`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `t_from_start: float32` | `ros2Unitree_goMsgPathPoint_t_from_start` | `Float` | — |
| `x: float32` | `ros2Unitree_goMsgPathPoint_x` | `Float` | — |
| `y: float32` | `ros2Unitree_goMsgPathPoint_y` | `Float` | — |
| `yaw: float32` | `ros2Unitree_goMsgPathPoint_yaw` | `Float` | — |
| `vx: float32` | `ros2Unitree_goMsgPathPoint_vx` | `Float` | — |
| `vy: float32` | `ros2Unitree_goMsgPathPoint_vy` | `Float` | — |
| `vyaw: float32` | `ros2Unitree_goMsgPathPoint_vyaw` | `Float` | — |

#### `Ros2Unitree_goMsgReq`

`unitree_go/msg/Req`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `uuid: string` | `ros2Unitree_goMsgReq_uuid` | `[Word8]` | SDK UTF-8 字节数 ≤2048 |
| `body: string` | `ros2Unitree_goMsgReq_body` | `[Word8]` | SDK UTF-8 字节数 ≤2048 |

#### `Ros2Unitree_goMsgRes`

`unitree_go/msg/Res`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `uuid: string` | `ros2Unitree_goMsgRes_uuid` | `[Word8]` | SDK UTF-8 字节数 ≤2048 |
| `data: uint8[]` | `ros2Unitree_goMsgRes_data` | `[Word8]` | SDK 有效项数 ≤2048 |
| `body: string` | `ros2Unitree_goMsgRes_body` | `[Word8]` | SDK UTF-8 字节数 ≤2048 |

#### `Ros2Unitree_goMsgSportModeCmd`

`unitree_go/msg/SportModeCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `mode: uint8` | `ros2Unitree_goMsgSportModeCmd_mode` | `Word8` | — |
| `gait_type: uint8` | `ros2Unitree_goMsgSportModeCmd_gait_type` | `Word8` | — |
| `speed_level: uint8` | `ros2Unitree_goMsgSportModeCmd_speed_level` | `Word8` | — |
| `foot_raise_height: float32` | `ros2Unitree_goMsgSportModeCmd_foot_raise_height` | `Float` | — |
| `body_height: float32` | `ros2Unitree_goMsgSportModeCmd_body_height` | `Float` | — |
| `position: float32[2]` | `ros2Unitree_goMsgSportModeCmd_position` | `[Float]` | 恰为 2 项 |
| `euler: float32[3]` | `ros2Unitree_goMsgSportModeCmd_euler` | `[Float]` | 恰为 3 项 |
| `velocity: float32[2]` | `ros2Unitree_goMsgSportModeCmd_velocity` | `[Float]` | 恰为 2 项 |
| `yaw_speed: float32` | `ros2Unitree_goMsgSportModeCmd_yaw_speed` | `Float` | — |
| `bms_cmd: unitree_go/msg/BmsCmd` | `ros2Unitree_goMsgSportModeCmd_bms_cmd` | `Ros2Unitree_goMsgBmsCmd` | — |
| `path_point: unitree_go/msg/PathPoint[30]` | `ros2Unitree_goMsgSportModeCmd_path_point` | `[Ros2Unitree_goMsgPathPoint]` | 恰为 30 项 |

#### `Ros2Unitree_goMsgTimeSpec`

`unitree_go/msg/TimeSpec`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `sec: int32` | `ros2Unitree_goMsgTimeSpec_sec` | `Int32` | — |
| `nanosec: uint32` | `ros2Unitree_goMsgTimeSpec_nanosec` | `Word32` | — |

#### `Ros2Unitree_goMsgSportModeState`

`unitree_go/msg/SportModeState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `stamp: unitree_go/msg/TimeSpec` | `ros2Unitree_goMsgSportModeState_stamp` | `Ros2Unitree_goMsgTimeSpec` | — |
| `error_code: uint32` | `ros2Unitree_goMsgSportModeState_error_code` | `Word32` | — |
| `imu_state: unitree_go/msg/IMUState` | `ros2Unitree_goMsgSportModeState_imu_state` | `Ros2Unitree_goMsgIMUState` | — |
| `mode: uint8` | `ros2Unitree_goMsgSportModeState_mode` | `Word8` | — |
| `progress: float32` | `ros2Unitree_goMsgSportModeState_progress` | `Float` | — |
| `gait_type: uint8` | `ros2Unitree_goMsgSportModeState_gait_type` | `Word8` | — |
| `foot_raise_height: float32` | `ros2Unitree_goMsgSportModeState_foot_raise_height` | `Float` | — |
| `position: float32[3]` | `ros2Unitree_goMsgSportModeState_position` | `[Float]` | 恰为 3 项 |
| `body_height: float32` | `ros2Unitree_goMsgSportModeState_body_height` | `Float` | — |
| `velocity: float32[3]` | `ros2Unitree_goMsgSportModeState_velocity` | `[Float]` | 恰为 3 项 |
| `yaw_speed: float32` | `ros2Unitree_goMsgSportModeState_yaw_speed` | `Float` | — |
| `range_obstacle: float32[4]` | `ros2Unitree_goMsgSportModeState_range_obstacle` | `[Float]` | 恰为 4 项 |
| `foot_force: int16[4]` | `ros2Unitree_goMsgSportModeState_foot_force` | `[Int16]` | 恰为 4 项 |
| `foot_position_body: float32[12]` | `ros2Unitree_goMsgSportModeState_foot_position_body` | `[Float]` | 恰为 12 项 |
| `foot_speed_body: float32[12]` | `ros2Unitree_goMsgSportModeState_foot_speed_body` | `[Float]` | 恰为 12 项 |

#### `Ros2Unitree_goMsgUwbState`

`unitree_go/msg/UwbState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `version: uint8[2]` | `ros2Unitree_goMsgUwbState_version` | `[Word8]` | 恰为 2 项 |
| `channel: uint8` | `ros2Unitree_goMsgUwbState_channel` | `Word8` | — |
| `joy_mode: uint8` | `ros2Unitree_goMsgUwbState_joy_mode` | `Word8` | — |
| `orientation_est: float32` | `ros2Unitree_goMsgUwbState_orientation_est` | `Float` | — |
| `pitch_est: float32` | `ros2Unitree_goMsgUwbState_pitch_est` | `Float` | — |
| `distance_est: float32` | `ros2Unitree_goMsgUwbState_distance_est` | `Float` | — |
| `yaw_est: float32` | `ros2Unitree_goMsgUwbState_yaw_est` | `Float` | — |
| `tag_roll: float32` | `ros2Unitree_goMsgUwbState_tag_roll` | `Float` | — |
| `tag_pitch: float32` | `ros2Unitree_goMsgUwbState_tag_pitch` | `Float` | — |
| `tag_yaw: float32` | `ros2Unitree_goMsgUwbState_tag_yaw` | `Float` | — |
| `base_roll: float32` | `ros2Unitree_goMsgUwbState_base_roll` | `Float` | — |
| `base_pitch: float32` | `ros2Unitree_goMsgUwbState_base_pitch` | `Float` | — |
| `base_yaw: float32` | `ros2Unitree_goMsgUwbState_base_yaw` | `Float` | — |
| `joystick: float32[2]` | `ros2Unitree_goMsgUwbState_joystick` | `[Float]` | 恰为 2 项 |
| `error_state: uint8` | `ros2Unitree_goMsgUwbState_error_state` | `Word8` | — |
| `buttons: uint8` | `ros2Unitree_goMsgUwbState_buttons` | `Word8` | — |
| `enabled_from_app: uint8` | `ros2Unitree_goMsgUwbState_enabled_from_app` | `Word8` | — |

#### `Ros2Unitree_goMsgUwbSwitch`

`unitree_go/msg/UwbSwitch`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `enabled: uint8` | `ros2Unitree_goMsgUwbSwitch_enabled` | `Word8` | — |

#### `Ros2Unitree_goMsgWirelessController`

`unitree_go/msg/WirelessController`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `lx: float32` | `ros2Unitree_goMsgWirelessController_lx` | `Float` | — |
| `ly: float32` | `ros2Unitree_goMsgWirelessController_ly` | `Float` | — |
| `rx: float32` | `ros2Unitree_goMsgWirelessController_rx` | `Float` | — |
| `ry: float32` | `ros2Unitree_goMsgWirelessController_ry` | `Float` | — |
| `keys: uint16` | `ros2Unitree_goMsgWirelessController_keys` | `Word16` | — |

#### `Ros2Unitree_hgMsgBmsCmd`

`unitree_hg/msg/BmsCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `cmd: uint8` | `ros2Unitree_hgMsgBmsCmd_cmd` | `Word8` | — |
| `reserve: uint8[40]` | `ros2Unitree_hgMsgBmsCmd_reserve` | `[Word8]` | 恰为 40 项 |

#### `Ros2Unitree_hgMsgBmsState`

`unitree_hg/msg/BmsState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `version_high: uint8` | `ros2Unitree_hgMsgBmsState_version_high` | `Word8` | — |
| `version_low: uint8` | `ros2Unitree_hgMsgBmsState_version_low` | `Word8` | — |
| `fn: uint8` | `ros2Unitree_hgMsgBmsState_fn` | `Word8` | — |
| `cell_vol: uint16[40]` | `ros2Unitree_hgMsgBmsState_cell_vol` | `[Word16]` | 恰为 40 项 |
| `bmsvoltage: uint32[3]` | `ros2Unitree_hgMsgBmsState_bmsvoltage` | `[Word32]` | 恰为 3 项 |
| `current: int32` | `ros2Unitree_hgMsgBmsState_current` | `Int32` | — |
| `soc: uint8` | `ros2Unitree_hgMsgBmsState_soc` | `Word8` | — |
| `soh: uint8` | `ros2Unitree_hgMsgBmsState_soh` | `Word8` | — |
| `temperature: int16[12]` | `ros2Unitree_hgMsgBmsState_temperature` | `[Int16]` | 恰为 12 项 |
| `cycle: uint16` | `ros2Unitree_hgMsgBmsState_cycle` | `Word16` | — |
| `manufacturer_date: uint16` | `ros2Unitree_hgMsgBmsState_manufacturer_date` | `Word16` | — |
| `bmsstate: uint32[5]` | `ros2Unitree_hgMsgBmsState_bmsstate` | `[Word32]` | 恰为 5 项 |
| `reserve: uint32[3]` | `ros2Unitree_hgMsgBmsState_reserve` | `[Word32]` | 恰为 3 项 |

#### `Ros2Unitree_hgMsgMotorCmd`

`unitree_hg/msg/MotorCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `mode: uint8` | `ros2Unitree_hgMsgMotorCmd_mode` | `Word8` | — |
| `q: float32` | `ros2Unitree_hgMsgMotorCmd_q` | `Float` | — |
| `dq: float32` | `ros2Unitree_hgMsgMotorCmd_dq` | `Float` | — |
| `tau: float32` | `ros2Unitree_hgMsgMotorCmd_tau` | `Float` | — |
| `kp: float32` | `ros2Unitree_hgMsgMotorCmd_kp` | `Float` | — |
| `kd: float32` | `ros2Unitree_hgMsgMotorCmd_kd` | `Float` | — |
| `reserve: uint32` | `ros2Unitree_hgMsgMotorCmd_reserve` | `Word32` | — |

#### `Ros2Unitree_hgMsgHandCmd`

`unitree_hg/msg/HandCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `motor_cmd: unitree_hg/msg/MotorCmd[]` | `ros2Unitree_hgMsgHandCmd_motor_cmd` | `[Ros2Unitree_hgMsgMotorCmd]` | SDK 有效项数 ≤32 |
| `reserve: uint32[4]` | `ros2Unitree_hgMsgHandCmd_reserve` | `[Word32]` | 恰为 4 项 |

#### `Ros2Unitree_hgMsgMotorState`

`unitree_hg/msg/MotorState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `mode: uint8` | `ros2Unitree_hgMsgMotorState_mode` | `Word8` | — |
| `q: float32` | `ros2Unitree_hgMsgMotorState_q` | `Float` | — |
| `dq: float32` | `ros2Unitree_hgMsgMotorState_dq` | `Float` | — |
| `ddq: float32` | `ros2Unitree_hgMsgMotorState_ddq` | `Float` | — |
| `tau_est: float32` | `ros2Unitree_hgMsgMotorState_tau_est` | `Float` | — |
| `temperature: int16[2]` | `ros2Unitree_hgMsgMotorState_temperature` | `[Int16]` | 恰为 2 项 |
| `vol: float32` | `ros2Unitree_hgMsgMotorState_vol` | `Float` | — |
| `sensor: uint32[2]` | `ros2Unitree_hgMsgMotorState_sensor` | `[Word32]` | 恰为 2 项 |
| `motorstate: uint32` | `ros2Unitree_hgMsgMotorState_motorstate` | `Word32` | — |
| `reserve: uint32[4]` | `ros2Unitree_hgMsgMotorState_reserve` | `[Word32]` | 恰为 4 项 |

#### `Ros2Unitree_hgMsgPressSensorState`

`unitree_hg/msg/PressSensorState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `pressure: float32[12]` | `ros2Unitree_hgMsgPressSensorState_pressure` | `[Float]` | 恰为 12 项 |
| `temperature: float32[12]` | `ros2Unitree_hgMsgPressSensorState_temperature` | `[Float]` | 恰为 12 项 |
| `lost: uint32` | `ros2Unitree_hgMsgPressSensorState_lost` | `Word32` | — |
| `reserve: uint32` | `ros2Unitree_hgMsgPressSensorState_reserve` | `Word32` | — |

#### `Ros2Unitree_hgMsgIMUState`

`unitree_hg/msg/IMUState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `quaternion: float32[4]` | `ros2Unitree_hgMsgIMUState_quaternion` | `[Float]` | 恰为 4 项 |
| `gyroscope: float32[3]` | `ros2Unitree_hgMsgIMUState_gyroscope` | `[Float]` | 恰为 3 项 |
| `accelerometer: float32[3]` | `ros2Unitree_hgMsgIMUState_accelerometer` | `[Float]` | 恰为 3 项 |
| `rpy: float32[3]` | `ros2Unitree_hgMsgIMUState_rpy` | `[Float]` | 恰为 3 项 |
| `temperature: int16` | `ros2Unitree_hgMsgIMUState_temperature` | `Int16` | — |

#### `Ros2Unitree_hgMsgHandState`

`unitree_hg/msg/HandState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `motor_state: unitree_hg/msg/MotorState[]` | `ros2Unitree_hgMsgHandState_motor_state` | `[Ros2Unitree_hgMsgMotorState]` | SDK 有效项数 ≤32 |
| `press_sensor_state: unitree_hg/msg/PressSensorState[]` | `ros2Unitree_hgMsgHandState_press_sensor_state` | `[Ros2Unitree_hgMsgPressSensorState]` | SDK 有效项数 ≤32 |
| `imu_state: unitree_hg/msg/IMUState` | `ros2Unitree_hgMsgHandState_imu_state` | `Ros2Unitree_hgMsgIMUState` | — |
| `power_v: float32` | `ros2Unitree_hgMsgHandState_power_v` | `Float` | — |
| `power_a: float32` | `ros2Unitree_hgMsgHandState_power_a` | `Float` | — |
| `system_v: float32` | `ros2Unitree_hgMsgHandState_system_v` | `Float` | — |
| `device_v: float32` | `ros2Unitree_hgMsgHandState_device_v` | `Float` | — |
| `error: uint32[2]` | `ros2Unitree_hgMsgHandState_error` | `[Word32]` | 恰为 2 项 |
| `reserve: uint32[2]` | `ros2Unitree_hgMsgHandState_reserve` | `[Word32]` | 恰为 2 项 |

#### `Ros2Unitree_hgMsgLowCmd`

`unitree_hg/msg/LowCmd`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `mode_pr: uint8` | `ros2Unitree_hgMsgLowCmd_mode_pr` | `Word8` | — |
| `mode_machine: uint8` | `ros2Unitree_hgMsgLowCmd_mode_machine` | `Word8` | — |
| `motor_cmd: unitree_hg/msg/MotorCmd[35]` | `ros2Unitree_hgMsgLowCmd_motor_cmd` | `[Ros2Unitree_hgMsgMotorCmd]` | 恰为 35 项 |
| `reserve: uint32[4]` | `ros2Unitree_hgMsgLowCmd_reserve` | `[Word32]` | 恰为 4 项 |
| `crc: uint32` | `ros2Unitree_hgMsgLowCmd_crc` | `Word32` | — |

#### `Ros2Unitree_hgMsgLowState`

`unitree_hg/msg/LowState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `version: uint32[2]` | `ros2Unitree_hgMsgLowState_version` | `[Word32]` | 恰为 2 项 |
| `mode_pr: uint8` | `ros2Unitree_hgMsgLowState_mode_pr` | `Word8` | — |
| `mode_machine: uint8` | `ros2Unitree_hgMsgLowState_mode_machine` | `Word8` | — |
| `tick: uint32` | `ros2Unitree_hgMsgLowState_tick` | `Word32` | — |
| `imu_state: unitree_hg/msg/IMUState` | `ros2Unitree_hgMsgLowState_imu_state` | `Ros2Unitree_hgMsgIMUState` | — |
| `motor_state: unitree_hg/msg/MotorState[35]` | `ros2Unitree_hgMsgLowState_motor_state` | `[Ros2Unitree_hgMsgMotorState]` | 恰为 35 项 |
| `wireless_remote: uint8[40]` | `ros2Unitree_hgMsgLowState_wireless_remote` | `[Word8]` | 恰为 40 项 |
| `reserve: uint32[4]` | `ros2Unitree_hgMsgLowState_reserve` | `[Word32]` | 恰为 4 项 |
| `crc: uint32` | `ros2Unitree_hgMsgLowState_crc` | `Word32` | — |

#### `Ros2Unitree_hgMsgMainBoardState`

`unitree_hg/msg/MainBoardState`

| 原字段/声明 | 公开字段 | 公开语言类型 | 界限 |
| --- | --- | --- | --- |
| `fan_state: uint16[6]` | `ros2Unitree_hgMsgMainBoardState_fan_state` | `[Word16]` | 恰为 6 项 |
| `temperature: int16[6]` | `ros2Unitree_hgMsgMainBoardState_temperature` | `[Int16]` | 恰为 6 项 |
| `value: float32[6]` | `ros2Unitree_hgMsgMainBoardState_value` | `[Float]` | 恰为 6 项 |
| `state: uint32[6]` | `ros2Unitree_hgMsgMainBoardState_state` | `[Word32]` | 恰为 6 项 |

## 纯完整 codec

对每个完整类型符号 `T`，将准确名称代入以下真实 API 模式。ROS1 的 `Ros1Unitree_legged_msgsBmsCmd` 示例恰有 4 个规范字节。

`encodeT :: T -> Either Word32 [Word8]`; `decodeT :: [Word8] -> Either Word32 T`

纯编解码仅在完整成功时返回 `Right`；字段畸形、长度违规或尾随字节返回 `Left 22`。使用结果前须模式匹配 Either。`readType` 是可组合的解析辅助函数，面向完整输入的公开调用应使用 `decodeType`。

以下纯 ROS1 辅助函数使用上文导入，并传递实际 codec 结果：先编码完整 BmsCmd，再仅解码其有效的 4 字节区间。此文档调用片段与六个原生通信入口分别说明。

```haskell
import Data.Word (Word32)

bmsCommandRoundTrip :: Either Word32 Records.Ros1Unitree_legged_msgsBmsCmd
bmsCommandRoundTrip = do
    bytes <- Records.encodeRos1Unitree_legged_msgsBmsCmd
        (Records.Ros1Unitree_legged_msgsBmsCmd 0 [0, 0, 0])
    Records.decodeRos1Unitree_legged_msgsBmsCmd bytes
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

结果类型为 `Observation value`.

| 实际字段 | 含义及有效性 |
| --- | --- |
| `primary` | 首个校验/打开/订阅/poll/等待/codec 状态；0 表示无主操作错误。 |
| `cleanup`, `cleanupPresent` | 独立关闭状态，以及获取成功后是否尝试了一次关闭。 |
| `rpcStatus`, `rpcPresent`, `polls` | 最后一次原始 poll 状态、是否执行过 poll、实际次数；本地解码失败不改写原始 RPC 事实。 |
| `lengthSlot` | 完整 uint64 原生输出槽；UINT64_MAX 保留未写入哨兵，即使失败也保留原值。 |
| `response = Just value` | 完整响应存在标记；读取负载或默认记录存储前必须检查。 |
| `response :: Maybe value`, `wire :: [Word8]` | 完整自有记录及重编码规范字节，仅完整响应存在时可用。 |

每条正常获取成功的路径都在返回前关闭一次。返回的记录、字节在关闭后仍有效，复制它们不创建原生 owner；共享可变值须串行访问。致命陷阱、不可恢复分配失败及进程终止可能绕过正常清理，须由外层回收实例。

## 输出与进程状态

`report value :: IO Word32`

输出是一条 JSON 对象，包含 `primary`、`cleanup`、布尔 `cleanup_present`、原始 `rpc_status`、布尔 `rpc_present`、布尔 `length_present`、准确十进制字符串 `length`、布尔 `response_present`、`polls` 和完整小写 `wire_hex`。`length_present` 仅表示原始槽不同于 UINT64_MAX 哨兵，本身不证明完整响应成功；无响应时 `wire_hex` 为空。

report 返回值依次选择主操作错误、独立关闭错误、stdout 错误 5，均无错误时为 0。仅命令/进程边界将大于 125 的非零状态钳制到 125。C 标量适配器提供参数、原始传输、时钟等待及 stdout，完整记录、codec 遍历与生命周期决策由真实语言完成。Haskell 的 `command` 负责 getArgs 中的一个参数、UTF-8 转换、输出和最终退出；其他入口使用包含程序名的原始 WASI 参数计数。

状态 11 表示 idle；本地校验/codec 拒绝为 22，ABI 版本不兼容为 95，原生容量拒绝 90 保留为传输事实。其他 owner/权限/连接/超时/撤销状态均按原值保留。应检查独立清理和响应存在标记，不能把默认填充的记录当作响应。

## 验收范围

支持的命令配置为 wasm32 WASI Preview 1、noeh、单线程，使用 Noetic/Jazzy 原始原生接口。随 SDK 的源码编译工具链已在 Linux x86_64 验收；同 SHA 产物的 AArch64 原生通信通过 x86_64 内核上的 QEMU user mode 单独验收，不代表 ARM 编译宿主或物理硬件。x86 源码、codec、构建证据记载于 [native-source-qualification.json](../../../../../../share/platform/unitree/native-source-qualification.json)，固定前端出处见 [原始编译器版本及源码闭包](../../../../../../share/platform/unitree/native-compiler-sources.json)。54 种完整记录的 codec 覆盖与六种观察类型的实时传输分别计数。Memory64、Preview 2、线程、Wasm EH、其他发行版、物理控制及机器人 CRC/安全行为不在本路线验收范围内。
