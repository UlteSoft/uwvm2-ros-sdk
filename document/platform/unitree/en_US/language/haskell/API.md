# Unitree Haskell — API

[Complete original schemas](../NATIVE_SCHEMA.md) · [API](API.md) · [Six examples](EXAMPLES.md)

## Public modules and backend selection

Import `Unitree.Ros1.Observation` or `Unitree.Ros2.Observation` for typed IO observers; their complete record types/codecs are in `Unitree.Ros1.Records` or `Unitree.Ros2.Records`. `Unitree.Observation` supplies `Observation`, `command`, `report` and `argumentBytes`. Xmake supplies the public module search path to genuine WASI GHC.

```haskell
import Unitree.Observation (command)
import qualified Unitree.Ros1.Observation as Unitree
import qualified Unitree.Ros1.Records as Records
```

The fragment selects ROS1. For ROS2, select the ROS2 target and its matching facade/record namespace. The Xmake mapping, record family and trusted runtime deployment must agree; the observer never falls back to another family.

- ROS1: [facade](../../../../../../include/platform/unitree/haskell/Unitree/Ros1/Observation.hs) · [records](../../../../../../include/platform/unitree/haskell/Unitree/Ros1/Records.hs)
- ROS2: [facade](../../../../../../include/platform/unitree/haskell/Unitree/Ros2/Observation.hs) · [records](../../../../../../include/platform/unitree/haskell/Unitree/Ros2/Records.hs)
- [core](../../../../../../include/platform/unitree/haskell/Unitree/Observation.hs) · [wire](../../../../../../include/platform/unitree/haskell/Unitree/Wire.hs)

## Complete records and scalar representation

The catalog has 11 ROS1 records/115 original fields and 43 ROS2 records/257 fields. The tables below include every type and every public field identifier. Nested records preserve the same mapping recursively. Native MD5/RIHS registration identity, canonical codec identity and wire byte bounds are separate catalog facts; neither a type nor a codec grants ROS authority.

Strings are UTF-8 `[Word8]`; fixed/variable arrays are typed lists with generated exact-count or finite-bound validation. Original widths use `Word8/16/32/64`, `Int8/16/32/64`, `Float`, `Double` and `Bool`. Immutable values may share ordinary pure structure; no borrowed foreign pointer or native ROS owner escapes a decoder.

Unsigned/signed integer widths remain exact. Float32/float64 retain their original widths; selected finite-value rules reject NaN/infinities. Fields preserve original spelling and case, field order, fixed-array counts, counted-sequence bounds and units. Strings use the declared UTF-8 domain, reject NUL/malformed encodings and preserve a leading BOM. Finite SDK quotas for originally unbounded declarations are recorded separately in the schema. CRC fields are carried as supplied; codecs do not establish physical CRC or robot safety validity.

Each Haskell selector is the complete record symbol with a lowercase first letter, followed by `_` and the unchanged original field. For example, BmsState's `SOC` is `ros1Unitree_legged_msgsBmsState_SOC`. This disambiguates fields of different complete records without changing their canonical order.

### ROS1

| Original native type | Public complete type | Fields | Canonical bytes |
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

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `off: uint8` | `ros1Unitree_legged_msgsBmsCmd_off` | `Word8` | — |
| `reserve: uint8[3]` | `ros1Unitree_legged_msgsBmsCmd_reserve` | `[Word8]` | Exactly 3 elements |

#### `Ros1Unitree_legged_msgsBmsState`

`unitree_legged_msgs/BmsState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `version_h: uint8` | `ros1Unitree_legged_msgsBmsState_version_h` | `Word8` | — |
| `version_l: uint8` | `ros1Unitree_legged_msgsBmsState_version_l` | `Word8` | — |
| `bms_status: uint8` | `ros1Unitree_legged_msgsBmsState_bms_status` | `Word8` | — |
| `SOC: uint8` | `ros1Unitree_legged_msgsBmsState_SOC` | `Word8` | — |
| `current: int32` | `ros1Unitree_legged_msgsBmsState_current` | `Int32` | — |
| `cycle: uint16` | `ros1Unitree_legged_msgsBmsState_cycle` | `Word16` | — |
| `BQ_NTC: int8[2]` | `ros1Unitree_legged_msgsBmsState_BQ_NTC` | `[Int8]` | Exactly 2 elements |
| `MCU_NTC: int8[2]` | `ros1Unitree_legged_msgsBmsState_MCU_NTC` | `[Int8]` | Exactly 2 elements |
| `cell_vol: uint16[10]` | `ros1Unitree_legged_msgsBmsState_cell_vol` | `[Word16]` | Exactly 10 elements |

#### `Ros1Unitree_legged_msgsCartesian`

`unitree_legged_msgs/Cartesian`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `x: float32` | `ros1Unitree_legged_msgsCartesian_x` | `Float` | — |
| `y: float32` | `ros1Unitree_legged_msgsCartesian_y` | `Float` | — |
| `z: float32` | `ros1Unitree_legged_msgsCartesian_z` | `Float` | — |

#### `Ros1Unitree_legged_msgsLED`

`unitree_legged_msgs/LED`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `r: uint8` | `ros1Unitree_legged_msgsLED_r` | `Word8` | — |
| `g: uint8` | `ros1Unitree_legged_msgsLED_g` | `Word8` | — |
| `b: uint8` | `ros1Unitree_legged_msgsLED_b` | `Word8` | — |

#### `Ros1Unitree_legged_msgsHighCmd`

`unitree_legged_msgs/HighCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `head: uint8[2]` | `ros1Unitree_legged_msgsHighCmd_head` | `[Word8]` | Exactly 2 elements |
| `levelFlag: uint8` | `ros1Unitree_legged_msgsHighCmd_levelFlag` | `Word8` | — |
| `frameReserve: uint8` | `ros1Unitree_legged_msgsHighCmd_frameReserve` | `Word8` | — |
| `SN: uint32[2]` | `ros1Unitree_legged_msgsHighCmd_SN` | `[Word32]` | Exactly 2 elements |
| `version: uint32[2]` | `ros1Unitree_legged_msgsHighCmd_version` | `[Word32]` | Exactly 2 elements |
| `bandWidth: uint16` | `ros1Unitree_legged_msgsHighCmd_bandWidth` | `Word16` | — |
| `mode: uint8` | `ros1Unitree_legged_msgsHighCmd_mode` | `Word8` | — |
| `gaitType: uint8` | `ros1Unitree_legged_msgsHighCmd_gaitType` | `Word8` | — |
| `speedLevel: uint8` | `ros1Unitree_legged_msgsHighCmd_speedLevel` | `Word8` | — |
| `footRaiseHeight: float32` | `ros1Unitree_legged_msgsHighCmd_footRaiseHeight` | `Float` | — |
| `bodyHeight: float32` | `ros1Unitree_legged_msgsHighCmd_bodyHeight` | `Float` | — |
| `position: float32[2]` | `ros1Unitree_legged_msgsHighCmd_position` | `[Float]` | Exactly 2 elements |
| `euler: float32[3]` | `ros1Unitree_legged_msgsHighCmd_euler` | `[Float]` | Exactly 3 elements |
| `velocity: float32[2]` | `ros1Unitree_legged_msgsHighCmd_velocity` | `[Float]` | Exactly 2 elements |
| `yawSpeed: float32` | `ros1Unitree_legged_msgsHighCmd_yawSpeed` | `Float` | — |
| `bms: unitree_legged_msgs/BmsCmd` | `ros1Unitree_legged_msgsHighCmd_bms` | `Ros1Unitree_legged_msgsBmsCmd` | — |
| `led: unitree_legged_msgs/LED[4]` | `ros1Unitree_legged_msgsHighCmd_led` | `[Ros1Unitree_legged_msgsLED]` | Exactly 4 elements |
| `wirelessRemote: uint8[40]` | `ros1Unitree_legged_msgsHighCmd_wirelessRemote` | `[Word8]` | Exactly 40 elements |
| `reserve: uint32` | `ros1Unitree_legged_msgsHighCmd_reserve` | `Word32` | — |
| `crc: uint32` | `ros1Unitree_legged_msgsHighCmd_crc` | `Word32` | — |

#### `Ros1Unitree_legged_msgsIMU`

`unitree_legged_msgs/IMU`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `quaternion: float32[4]` | `ros1Unitree_legged_msgsIMU_quaternion` | `[Float]` | Exactly 4 elements |
| `gyroscope: float32[3]` | `ros1Unitree_legged_msgsIMU_gyroscope` | `[Float]` | Exactly 3 elements |
| `accelerometer: float32[3]` | `ros1Unitree_legged_msgsIMU_accelerometer` | `[Float]` | Exactly 3 elements |
| `rpy: float32[3]` | `ros1Unitree_legged_msgsIMU_rpy` | `[Float]` | Exactly 3 elements |
| `temperature: int8` | `ros1Unitree_legged_msgsIMU_temperature` | `Int8` | — |

#### `Ros1Unitree_legged_msgsMotorState`

`unitree_legged_msgs/MotorState`

| Original field/declaration | Public field | Public language type | Bound |
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
| `reserve: uint32[2]` | `ros1Unitree_legged_msgsMotorState_reserve` | `[Word32]` | Exactly 2 elements |

#### `Ros1Unitree_legged_msgsHighState`

`unitree_legged_msgs/HighState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `head: uint8[2]` | `ros1Unitree_legged_msgsHighState_head` | `[Word8]` | Exactly 2 elements |
| `levelFlag: uint8` | `ros1Unitree_legged_msgsHighState_levelFlag` | `Word8` | — |
| `frameReserve: uint8` | `ros1Unitree_legged_msgsHighState_frameReserve` | `Word8` | — |
| `SN: uint32[2]` | `ros1Unitree_legged_msgsHighState_SN` | `[Word32]` | Exactly 2 elements |
| `version: uint32[2]` | `ros1Unitree_legged_msgsHighState_version` | `[Word32]` | Exactly 2 elements |
| `bandWidth: uint16` | `ros1Unitree_legged_msgsHighState_bandWidth` | `Word16` | — |
| `imu: unitree_legged_msgs/IMU` | `ros1Unitree_legged_msgsHighState_imu` | `Ros1Unitree_legged_msgsIMU` | — |
| `motorState: unitree_legged_msgs/MotorState[20]` | `ros1Unitree_legged_msgsHighState_motorState` | `[Ros1Unitree_legged_msgsMotorState]` | Exactly 20 elements |
| `bms: unitree_legged_msgs/BmsState` | `ros1Unitree_legged_msgsHighState_bms` | `Ros1Unitree_legged_msgsBmsState` | — |
| `footForce: int16[4]` | `ros1Unitree_legged_msgsHighState_footForce` | `[Int16]` | Exactly 4 elements |
| `footForceEst: int16[4]` | `ros1Unitree_legged_msgsHighState_footForceEst` | `[Int16]` | Exactly 4 elements |
| `mode: uint8` | `ros1Unitree_legged_msgsHighState_mode` | `Word8` | — |
| `progress: float32` | `ros1Unitree_legged_msgsHighState_progress` | `Float` | — |
| `gaitType: uint8` | `ros1Unitree_legged_msgsHighState_gaitType` | `Word8` | — |
| `footRaiseHeight: float32` | `ros1Unitree_legged_msgsHighState_footRaiseHeight` | `Float` | — |
| `position: float32[3]` | `ros1Unitree_legged_msgsHighState_position` | `[Float]` | Exactly 3 elements |
| `bodyHeight: float32` | `ros1Unitree_legged_msgsHighState_bodyHeight` | `Float` | — |
| `velocity: float32[3]` | `ros1Unitree_legged_msgsHighState_velocity` | `[Float]` | Exactly 3 elements |
| `yawSpeed: float32` | `ros1Unitree_legged_msgsHighState_yawSpeed` | `Float` | — |
| `rangeObstacle: float32[4]` | `ros1Unitree_legged_msgsHighState_rangeObstacle` | `[Float]` | Exactly 4 elements |
| `footPosition2Body: unitree_legged_msgs/Cartesian[4]` | `ros1Unitree_legged_msgsHighState_footPosition2Body` | `[Ros1Unitree_legged_msgsCartesian]` | Exactly 4 elements |
| `footSpeed2Body: unitree_legged_msgs/Cartesian[4]` | `ros1Unitree_legged_msgsHighState_footSpeed2Body` | `[Ros1Unitree_legged_msgsCartesian]` | Exactly 4 elements |
| `wirelessRemote: uint8[40]` | `ros1Unitree_legged_msgsHighState_wirelessRemote` | `[Word8]` | Exactly 40 elements |
| `reserve: uint32` | `ros1Unitree_legged_msgsHighState_reserve` | `Word32` | — |
| `crc: uint32` | `ros1Unitree_legged_msgsHighState_crc` | `Word32` | — |

#### `Ros1Unitree_legged_msgsMotorCmd`

`unitree_legged_msgs/MotorCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode: uint8` | `ros1Unitree_legged_msgsMotorCmd_mode` | `Word8` | — |
| `q: float32` | `ros1Unitree_legged_msgsMotorCmd_q` | `Float` | — |
| `dq: float32` | `ros1Unitree_legged_msgsMotorCmd_dq` | `Float` | — |
| `tau: float32` | `ros1Unitree_legged_msgsMotorCmd_tau` | `Float` | — |
| `Kp: float32` | `ros1Unitree_legged_msgsMotorCmd_Kp` | `Float` | — |
| `Kd: float32` | `ros1Unitree_legged_msgsMotorCmd_Kd` | `Float` | — |
| `reserve: uint32[3]` | `ros1Unitree_legged_msgsMotorCmd_reserve` | `[Word32]` | Exactly 3 elements |

#### `Ros1Unitree_legged_msgsLowCmd`

`unitree_legged_msgs/LowCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `head: uint8[2]` | `ros1Unitree_legged_msgsLowCmd_head` | `[Word8]` | Exactly 2 elements |
| `levelFlag: uint8` | `ros1Unitree_legged_msgsLowCmd_levelFlag` | `Word8` | — |
| `frameReserve: uint8` | `ros1Unitree_legged_msgsLowCmd_frameReserve` | `Word8` | — |
| `SN: uint32[2]` | `ros1Unitree_legged_msgsLowCmd_SN` | `[Word32]` | Exactly 2 elements |
| `version: uint32[2]` | `ros1Unitree_legged_msgsLowCmd_version` | `[Word32]` | Exactly 2 elements |
| `bandWidth: uint16` | `ros1Unitree_legged_msgsLowCmd_bandWidth` | `Word16` | — |
| `motorCmd: unitree_legged_msgs/MotorCmd[20]` | `ros1Unitree_legged_msgsLowCmd_motorCmd` | `[Ros1Unitree_legged_msgsMotorCmd]` | Exactly 20 elements |
| `bms: unitree_legged_msgs/BmsCmd` | `ros1Unitree_legged_msgsLowCmd_bms` | `Ros1Unitree_legged_msgsBmsCmd` | — |
| `wirelessRemote: uint8[40]` | `ros1Unitree_legged_msgsLowCmd_wirelessRemote` | `[Word8]` | Exactly 40 elements |
| `reserve: uint32` | `ros1Unitree_legged_msgsLowCmd_reserve` | `Word32` | — |
| `crc: uint32` | `ros1Unitree_legged_msgsLowCmd_crc` | `Word32` | — |

#### `Ros1Unitree_legged_msgsLowState`

`unitree_legged_msgs/LowState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `head: uint8[2]` | `ros1Unitree_legged_msgsLowState_head` | `[Word8]` | Exactly 2 elements |
| `levelFlag: uint8` | `ros1Unitree_legged_msgsLowState_levelFlag` | `Word8` | — |
| `frameReserve: uint8` | `ros1Unitree_legged_msgsLowState_frameReserve` | `Word8` | — |
| `SN: uint32[2]` | `ros1Unitree_legged_msgsLowState_SN` | `[Word32]` | Exactly 2 elements |
| `version: uint32[2]` | `ros1Unitree_legged_msgsLowState_version` | `[Word32]` | Exactly 2 elements |
| `bandWidth: uint16` | `ros1Unitree_legged_msgsLowState_bandWidth` | `Word16` | — |
| `imu: unitree_legged_msgs/IMU` | `ros1Unitree_legged_msgsLowState_imu` | `Ros1Unitree_legged_msgsIMU` | — |
| `motorState: unitree_legged_msgs/MotorState[20]` | `ros1Unitree_legged_msgsLowState_motorState` | `[Ros1Unitree_legged_msgsMotorState]` | Exactly 20 elements |
| `bms: unitree_legged_msgs/BmsState` | `ros1Unitree_legged_msgsLowState_bms` | `Ros1Unitree_legged_msgsBmsState` | — |
| `footForce: int16[4]` | `ros1Unitree_legged_msgsLowState_footForce` | `[Int16]` | Exactly 4 elements |
| `footForceEst: int16[4]` | `ros1Unitree_legged_msgsLowState_footForceEst` | `[Int16]` | Exactly 4 elements |
| `tick: uint32` | `ros1Unitree_legged_msgsLowState_tick` | `Word32` | — |
| `wirelessRemote: uint8[40]` | `ros1Unitree_legged_msgsLowState_wirelessRemote` | `[Word8]` | Exactly 40 elements |
| `reserve: uint32` | `ros1Unitree_legged_msgsLowState_reserve` | `Word32` | — |
| `crc: uint32` | `ros1Unitree_legged_msgsLowState_crc` | `Word32` | — |
| `eeForceRaw: unitree_legged_msgs/Cartesian[4]` | `ros1Unitree_legged_msgsLowState_eeForceRaw` | `[Ros1Unitree_legged_msgsCartesian]` | Exactly 4 elements |
| `eeForce: unitree_legged_msgs/Cartesian[4]` | `ros1Unitree_legged_msgsLowState_eeForce` | `[Ros1Unitree_legged_msgsCartesian]` | Exactly 4 elements |
| `position: unitree_legged_msgs/Cartesian` | `ros1Unitree_legged_msgsLowState_position` | `Ros1Unitree_legged_msgsCartesian` | — |
| `velocity: unitree_legged_msgs/Cartesian` | `ros1Unitree_legged_msgsLowState_velocity` | `Ros1Unitree_legged_msgsCartesian` | — |
| `velocity_w: unitree_legged_msgs/Cartesian` | `ros1Unitree_legged_msgsLowState_velocity_w` | `Ros1Unitree_legged_msgsCartesian` | — |

### ROS2

| Original native type | Public complete type | Fields | Canonical bytes |
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

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `id: int64` | `ros2Unitree_apiMsgRequestIdentity_id` | `Int64` | — |
| `api_id: int64` | `ros2Unitree_apiMsgRequestIdentity_api_id` | `Int64` | — |

#### `Ros2Unitree_apiMsgRequestLease`

`unitree_api/msg/RequestLease`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `id: int64` | `ros2Unitree_apiMsgRequestLease_id` | `Int64` | — |

#### `Ros2Unitree_apiMsgRequestPolicy`

`unitree_api/msg/RequestPolicy`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `priority: int32` | `ros2Unitree_apiMsgRequestPolicy_priority` | `Int32` | — |
| `noreply: bool` | `ros2Unitree_apiMsgRequestPolicy_noreply` | `Bool` | — |

#### `Ros2Unitree_apiMsgRequestHeader`

`unitree_api/msg/RequestHeader`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `identity: unitree_api/msg/RequestIdentity` | `ros2Unitree_apiMsgRequestHeader_identity` | `Ros2Unitree_apiMsgRequestIdentity` | — |
| `lease: unitree_api/msg/RequestLease` | `ros2Unitree_apiMsgRequestHeader_lease` | `Ros2Unitree_apiMsgRequestLease` | — |
| `policy: unitree_api/msg/RequestPolicy` | `ros2Unitree_apiMsgRequestHeader_policy` | `Ros2Unitree_apiMsgRequestPolicy` | — |

#### `Ros2Unitree_apiMsgRequest`

`unitree_api/msg/Request`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `header: unitree_api/msg/RequestHeader` | `ros2Unitree_apiMsgRequest_header` | `Ros2Unitree_apiMsgRequestHeader` | — |
| `parameter: string` | `ros2Unitree_apiMsgRequest_parameter` | `[Word8]` | SDK ≤2048 UTF-8 bytes |
| `binary: uint8[]` | `ros2Unitree_apiMsgRequest_binary` | `[Word8]` | SDK ≤2048 active elements |

#### `Ros2Unitree_apiMsgResponseStatus`

`unitree_api/msg/ResponseStatus`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `code: int32` | `ros2Unitree_apiMsgResponseStatus_code` | `Int32` | — |

#### `Ros2Unitree_apiMsgResponseHeader`

`unitree_api/msg/ResponseHeader`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `identity: unitree_api/msg/RequestIdentity` | `ros2Unitree_apiMsgResponseHeader_identity` | `Ros2Unitree_apiMsgRequestIdentity` | — |
| `status: unitree_api/msg/ResponseStatus` | `ros2Unitree_apiMsgResponseHeader_status` | `Ros2Unitree_apiMsgResponseStatus` | — |

#### `Ros2Unitree_apiMsgResponse`

`unitree_api/msg/Response`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `header: unitree_api/msg/ResponseHeader` | `ros2Unitree_apiMsgResponse_header` | `Ros2Unitree_apiMsgResponseHeader` | — |
| `data: string` | `ros2Unitree_apiMsgResponse_data` | `[Word8]` | SDK ≤2048 UTF-8 bytes |
| `binary: int8[]` | `ros2Unitree_apiMsgResponse_binary` | `[Int8]` | SDK ≤32 active elements |

#### `Ros2Unitree_goMsgAudioData`

`unitree_go/msg/AudioData`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `time_frame: uint64` | `ros2Unitree_goMsgAudioData_time_frame` | `Word64` | — |
| `data: uint8[]` | `ros2Unitree_goMsgAudioData_data` | `[Word8]` | SDK ≤2048 active elements |

#### `Ros2Unitree_goMsgBmsCmd`

`unitree_go/msg/BmsCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `off: uint8` | `ros2Unitree_goMsgBmsCmd_off` | `Word8` | — |
| `reserve: uint8[3]` | `ros2Unitree_goMsgBmsCmd_reserve` | `[Word8]` | Exactly 3 elements |

#### `Ros2Unitree_goMsgBmsState`

`unitree_go/msg/BmsState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `version_high: uint8` | `ros2Unitree_goMsgBmsState_version_high` | `Word8` | — |
| `version_low: uint8` | `ros2Unitree_goMsgBmsState_version_low` | `Word8` | — |
| `status: uint8` | `ros2Unitree_goMsgBmsState_status` | `Word8` | — |
| `soc: uint8` | `ros2Unitree_goMsgBmsState_soc` | `Word8` | — |
| `current: int32` | `ros2Unitree_goMsgBmsState_current` | `Int32` | — |
| `cycle: uint16` | `ros2Unitree_goMsgBmsState_cycle` | `Word16` | — |
| `bq_ntc: int8[2]` | `ros2Unitree_goMsgBmsState_bq_ntc` | `[Int8]` | Exactly 2 elements |
| `mcu_ntc: int8[2]` | `ros2Unitree_goMsgBmsState_mcu_ntc` | `[Int8]` | Exactly 2 elements |
| `cell_vol: uint16[15]` | `ros2Unitree_goMsgBmsState_cell_vol` | `[Word16]` | Exactly 15 elements |

#### `Ros2Unitree_goMsgError`

`unitree_go/msg/Error`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `source: uint32` | `ros2Unitree_goMsgError_source` | `Word32` | — |
| `state: uint32` | `ros2Unitree_goMsgError_state` | `Word32` | — |

#### `Ros2Unitree_goMsgGo2FrontVideoData`

`unitree_go/msg/Go2FrontVideoData`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `time_frame: uint64` | `ros2Unitree_goMsgGo2FrontVideoData_time_frame` | `Word64` | — |
| `video720p: uint8[]` | `ros2Unitree_goMsgGo2FrontVideoData_video720p` | `[Word8]` | SDK ≤2048 active elements |
| `video360p: uint8[]` | `ros2Unitree_goMsgGo2FrontVideoData_video360p` | `[Word8]` | SDK ≤2048 active elements |
| `video180p: uint8[]` | `ros2Unitree_goMsgGo2FrontVideoData_video180p` | `[Word8]` | SDK ≤2048 active elements |

#### `Ros2Unitree_goMsgHeightMap`

`unitree_go/msg/HeightMap`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `stamp: float64` | `ros2Unitree_goMsgHeightMap_stamp` | `Double` | — |
| `frame_id: string` | `ros2Unitree_goMsgHeightMap_frame_id` | `[Word8]` | SDK ≤2048 UTF-8 bytes |
| `resolution: float32` | `ros2Unitree_goMsgHeightMap_resolution` | `Float` | — |
| `width: uint32` | `ros2Unitree_goMsgHeightMap_width` | `Word32` | — |
| `height: uint32` | `ros2Unitree_goMsgHeightMap_height` | `Word32` | — |
| `origin: float32[2]` | `ros2Unitree_goMsgHeightMap_origin` | `[Float]` | Exactly 2 elements |
| `data: float32[]` | `ros2Unitree_goMsgHeightMap_data` | `[Float]` | SDK ≤32 active elements |

#### `Ros2Unitree_goMsgIMUState`

`unitree_go/msg/IMUState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `quaternion: float32[4]` | `ros2Unitree_goMsgIMUState_quaternion` | `[Float]` | Exactly 4 elements |
| `gyroscope: float32[3]` | `ros2Unitree_goMsgIMUState_gyroscope` | `[Float]` | Exactly 3 elements |
| `accelerometer: float32[3]` | `ros2Unitree_goMsgIMUState_accelerometer` | `[Float]` | Exactly 3 elements |
| `rpy: float32[3]` | `ros2Unitree_goMsgIMUState_rpy` | `[Float]` | Exactly 3 elements |
| `temperature: int8` | `ros2Unitree_goMsgIMUState_temperature` | `Int8` | — |

#### `Ros2Unitree_goMsgInterfaceConfig`

`unitree_go/msg/InterfaceConfig`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode: uint8` | `ros2Unitree_goMsgInterfaceConfig_mode` | `Word8` | — |
| `value: uint8` | `ros2Unitree_goMsgInterfaceConfig_value` | `Word8` | — |
| `reserve: uint8[2]` | `ros2Unitree_goMsgInterfaceConfig_reserve` | `[Word8]` | Exactly 2 elements |

#### `Ros2Unitree_goMsgLidarState`

`unitree_go/msg/LidarState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `stamp: float64` | `ros2Unitree_goMsgLidarState_stamp` | `Double` | — |
| `firmware_version: string` | `ros2Unitree_goMsgLidarState_firmware_version` | `[Word8]` | SDK ≤2048 UTF-8 bytes |
| `software_version: string` | `ros2Unitree_goMsgLidarState_software_version` | `[Word8]` | SDK ≤2048 UTF-8 bytes |
| `sdk_version: string` | `ros2Unitree_goMsgLidarState_sdk_version` | `[Word8]` | SDK ≤2048 UTF-8 bytes |
| `sys_rotation_speed: float32` | `ros2Unitree_goMsgLidarState_sys_rotation_speed` | `Float` | — |
| `com_rotation_speed: float32` | `ros2Unitree_goMsgLidarState_com_rotation_speed` | `Float` | — |
| `error_state: uint8` | `ros2Unitree_goMsgLidarState_error_state` | `Word8` | — |
| `cloud_frequency: float32` | `ros2Unitree_goMsgLidarState_cloud_frequency` | `Float` | — |
| `cloud_packet_loss_rate: float32` | `ros2Unitree_goMsgLidarState_cloud_packet_loss_rate` | `Float` | — |
| `cloud_size: uint32` | `ros2Unitree_goMsgLidarState_cloud_size` | `Word32` | — |
| `cloud_scan_num: uint32` | `ros2Unitree_goMsgLidarState_cloud_scan_num` | `Word32` | — |
| `imu_frequency: float32` | `ros2Unitree_goMsgLidarState_imu_frequency` | `Float` | — |
| `imu_packet_loss_rate: float32` | `ros2Unitree_goMsgLidarState_imu_packet_loss_rate` | `Float` | — |
| `imu_rpy: float32[3]` | `ros2Unitree_goMsgLidarState_imu_rpy` | `[Float]` | Exactly 3 elements |
| `serial_recv_stamp: float64` | `ros2Unitree_goMsgLidarState_serial_recv_stamp` | `Double` | — |
| `serial_buffer_size: uint32` | `ros2Unitree_goMsgLidarState_serial_buffer_size` | `Word32` | — |
| `serial_buffer_read: uint32` | `ros2Unitree_goMsgLidarState_serial_buffer_read` | `Word32` | — |

#### `Ros2Unitree_goMsgMotorCmd`

`unitree_go/msg/MotorCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode: uint8` | `ros2Unitree_goMsgMotorCmd_mode` | `Word8` | — |
| `q: float32` | `ros2Unitree_goMsgMotorCmd_q` | `Float` | — |
| `dq: float32` | `ros2Unitree_goMsgMotorCmd_dq` | `Float` | — |
| `tau: float32` | `ros2Unitree_goMsgMotorCmd_tau` | `Float` | — |
| `kp: float32` | `ros2Unitree_goMsgMotorCmd_kp` | `Float` | — |
| `kd: float32` | `ros2Unitree_goMsgMotorCmd_kd` | `Float` | — |
| `reserve: uint32[3]` | `ros2Unitree_goMsgMotorCmd_reserve` | `[Word32]` | Exactly 3 elements |

#### `Ros2Unitree_goMsgLowCmd`

`unitree_go/msg/LowCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `head: uint8[2]` | `ros2Unitree_goMsgLowCmd_head` | `[Word8]` | Exactly 2 elements |
| `level_flag: uint8` | `ros2Unitree_goMsgLowCmd_level_flag` | `Word8` | — |
| `frame_reserve: uint8` | `ros2Unitree_goMsgLowCmd_frame_reserve` | `Word8` | — |
| `sn: uint32[2]` | `ros2Unitree_goMsgLowCmd_sn` | `[Word32]` | Exactly 2 elements |
| `version: uint32[2]` | `ros2Unitree_goMsgLowCmd_version` | `[Word32]` | Exactly 2 elements |
| `bandwidth: uint16` | `ros2Unitree_goMsgLowCmd_bandwidth` | `Word16` | — |
| `motor_cmd: unitree_go/msg/MotorCmd[20]` | `ros2Unitree_goMsgLowCmd_motor_cmd` | `[Ros2Unitree_goMsgMotorCmd]` | Exactly 20 elements |
| `bms_cmd: unitree_go/msg/BmsCmd` | `ros2Unitree_goMsgLowCmd_bms_cmd` | `Ros2Unitree_goMsgBmsCmd` | — |
| `wireless_remote: uint8[40]` | `ros2Unitree_goMsgLowCmd_wireless_remote` | `[Word8]` | Exactly 40 elements |
| `led: uint8[12]` | `ros2Unitree_goMsgLowCmd_led` | `[Word8]` | Exactly 12 elements |
| `fan: uint8[2]` | `ros2Unitree_goMsgLowCmd_fan` | `[Word8]` | Exactly 2 elements |
| `gpio: uint8` | `ros2Unitree_goMsgLowCmd_gpio` | `Word8` | — |
| `reserve: uint32` | `ros2Unitree_goMsgLowCmd_reserve` | `Word32` | — |
| `crc: uint32` | `ros2Unitree_goMsgLowCmd_crc` | `Word32` | — |

#### `Ros2Unitree_goMsgMotorState`

`unitree_go/msg/MotorState`

| Original field/declaration | Public field | Public language type | Bound |
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
| `reserve: uint32[2]` | `ros2Unitree_goMsgMotorState_reserve` | `[Word32]` | Exactly 2 elements |

#### `Ros2Unitree_goMsgLowState`

`unitree_go/msg/LowState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `head: uint8[2]` | `ros2Unitree_goMsgLowState_head` | `[Word8]` | Exactly 2 elements |
| `level_flag: uint8` | `ros2Unitree_goMsgLowState_level_flag` | `Word8` | — |
| `frame_reserve: uint8` | `ros2Unitree_goMsgLowState_frame_reserve` | `Word8` | — |
| `sn: uint32[2]` | `ros2Unitree_goMsgLowState_sn` | `[Word32]` | Exactly 2 elements |
| `version: uint32[2]` | `ros2Unitree_goMsgLowState_version` | `[Word32]` | Exactly 2 elements |
| `bandwidth: uint16` | `ros2Unitree_goMsgLowState_bandwidth` | `Word16` | — |
| `imu_state: unitree_go/msg/IMUState` | `ros2Unitree_goMsgLowState_imu_state` | `Ros2Unitree_goMsgIMUState` | — |
| `motor_state: unitree_go/msg/MotorState[20]` | `ros2Unitree_goMsgLowState_motor_state` | `[Ros2Unitree_goMsgMotorState]` | Exactly 20 elements |
| `bms_state: unitree_go/msg/BmsState` | `ros2Unitree_goMsgLowState_bms_state` | `Ros2Unitree_goMsgBmsState` | — |
| `foot_force: int16[4]` | `ros2Unitree_goMsgLowState_foot_force` | `[Int16]` | Exactly 4 elements |
| `foot_force_est: int16[4]` | `ros2Unitree_goMsgLowState_foot_force_est` | `[Int16]` | Exactly 4 elements |
| `tick: uint32` | `ros2Unitree_goMsgLowState_tick` | `Word32` | — |
| `wireless_remote: uint8[40]` | `ros2Unitree_goMsgLowState_wireless_remote` | `[Word8]` | Exactly 40 elements |
| `bit_flag: uint8` | `ros2Unitree_goMsgLowState_bit_flag` | `Word8` | — |
| `adc_reel: float32` | `ros2Unitree_goMsgLowState_adc_reel` | `Float` | — |
| `temperature_ntc1: int8` | `ros2Unitree_goMsgLowState_temperature_ntc1` | `Int8` | — |
| `temperature_ntc2: int8` | `ros2Unitree_goMsgLowState_temperature_ntc2` | `Int8` | — |
| `power_v: float32` | `ros2Unitree_goMsgLowState_power_v` | `Float` | — |
| `power_a: float32` | `ros2Unitree_goMsgLowState_power_a` | `Float` | — |
| `fan_frequency: uint16[4]` | `ros2Unitree_goMsgLowState_fan_frequency` | `[Word16]` | Exactly 4 elements |
| `reserve: uint32` | `ros2Unitree_goMsgLowState_reserve` | `Word32` | — |
| `crc: uint32` | `ros2Unitree_goMsgLowState_crc` | `Word32` | — |

#### `Ros2Unitree_goMsgMotorCmds`

`unitree_go/msg/MotorCmds`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `cmds: unitree_go/msg/MotorCmd[]` | `ros2Unitree_goMsgMotorCmds_cmds` | `[Ros2Unitree_goMsgMotorCmd]` | SDK ≤32 active elements |

#### `Ros2Unitree_goMsgMotorStates`

`unitree_go/msg/MotorStates`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `states: unitree_go/msg/MotorState[]` | `ros2Unitree_goMsgMotorStates_states` | `[Ros2Unitree_goMsgMotorState]` | SDK ≤32 active elements |

#### `Ros2Unitree_goMsgPathPoint`

`unitree_go/msg/PathPoint`

| Original field/declaration | Public field | Public language type | Bound |
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

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `uuid: string` | `ros2Unitree_goMsgReq_uuid` | `[Word8]` | SDK ≤2048 UTF-8 bytes |
| `body: string` | `ros2Unitree_goMsgReq_body` | `[Word8]` | SDK ≤2048 UTF-8 bytes |

#### `Ros2Unitree_goMsgRes`

`unitree_go/msg/Res`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `uuid: string` | `ros2Unitree_goMsgRes_uuid` | `[Word8]` | SDK ≤2048 UTF-8 bytes |
| `data: uint8[]` | `ros2Unitree_goMsgRes_data` | `[Word8]` | SDK ≤2048 active elements |
| `body: string` | `ros2Unitree_goMsgRes_body` | `[Word8]` | SDK ≤2048 UTF-8 bytes |

#### `Ros2Unitree_goMsgSportModeCmd`

`unitree_go/msg/SportModeCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode: uint8` | `ros2Unitree_goMsgSportModeCmd_mode` | `Word8` | — |
| `gait_type: uint8` | `ros2Unitree_goMsgSportModeCmd_gait_type` | `Word8` | — |
| `speed_level: uint8` | `ros2Unitree_goMsgSportModeCmd_speed_level` | `Word8` | — |
| `foot_raise_height: float32` | `ros2Unitree_goMsgSportModeCmd_foot_raise_height` | `Float` | — |
| `body_height: float32` | `ros2Unitree_goMsgSportModeCmd_body_height` | `Float` | — |
| `position: float32[2]` | `ros2Unitree_goMsgSportModeCmd_position` | `[Float]` | Exactly 2 elements |
| `euler: float32[3]` | `ros2Unitree_goMsgSportModeCmd_euler` | `[Float]` | Exactly 3 elements |
| `velocity: float32[2]` | `ros2Unitree_goMsgSportModeCmd_velocity` | `[Float]` | Exactly 2 elements |
| `yaw_speed: float32` | `ros2Unitree_goMsgSportModeCmd_yaw_speed` | `Float` | — |
| `bms_cmd: unitree_go/msg/BmsCmd` | `ros2Unitree_goMsgSportModeCmd_bms_cmd` | `Ros2Unitree_goMsgBmsCmd` | — |
| `path_point: unitree_go/msg/PathPoint[30]` | `ros2Unitree_goMsgSportModeCmd_path_point` | `[Ros2Unitree_goMsgPathPoint]` | Exactly 30 elements |

#### `Ros2Unitree_goMsgTimeSpec`

`unitree_go/msg/TimeSpec`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `sec: int32` | `ros2Unitree_goMsgTimeSpec_sec` | `Int32` | — |
| `nanosec: uint32` | `ros2Unitree_goMsgTimeSpec_nanosec` | `Word32` | — |

#### `Ros2Unitree_goMsgSportModeState`

`unitree_go/msg/SportModeState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `stamp: unitree_go/msg/TimeSpec` | `ros2Unitree_goMsgSportModeState_stamp` | `Ros2Unitree_goMsgTimeSpec` | — |
| `error_code: uint32` | `ros2Unitree_goMsgSportModeState_error_code` | `Word32` | — |
| `imu_state: unitree_go/msg/IMUState` | `ros2Unitree_goMsgSportModeState_imu_state` | `Ros2Unitree_goMsgIMUState` | — |
| `mode: uint8` | `ros2Unitree_goMsgSportModeState_mode` | `Word8` | — |
| `progress: float32` | `ros2Unitree_goMsgSportModeState_progress` | `Float` | — |
| `gait_type: uint8` | `ros2Unitree_goMsgSportModeState_gait_type` | `Word8` | — |
| `foot_raise_height: float32` | `ros2Unitree_goMsgSportModeState_foot_raise_height` | `Float` | — |
| `position: float32[3]` | `ros2Unitree_goMsgSportModeState_position` | `[Float]` | Exactly 3 elements |
| `body_height: float32` | `ros2Unitree_goMsgSportModeState_body_height` | `Float` | — |
| `velocity: float32[3]` | `ros2Unitree_goMsgSportModeState_velocity` | `[Float]` | Exactly 3 elements |
| `yaw_speed: float32` | `ros2Unitree_goMsgSportModeState_yaw_speed` | `Float` | — |
| `range_obstacle: float32[4]` | `ros2Unitree_goMsgSportModeState_range_obstacle` | `[Float]` | Exactly 4 elements |
| `foot_force: int16[4]` | `ros2Unitree_goMsgSportModeState_foot_force` | `[Int16]` | Exactly 4 elements |
| `foot_position_body: float32[12]` | `ros2Unitree_goMsgSportModeState_foot_position_body` | `[Float]` | Exactly 12 elements |
| `foot_speed_body: float32[12]` | `ros2Unitree_goMsgSportModeState_foot_speed_body` | `[Float]` | Exactly 12 elements |

#### `Ros2Unitree_goMsgUwbState`

`unitree_go/msg/UwbState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `version: uint8[2]` | `ros2Unitree_goMsgUwbState_version` | `[Word8]` | Exactly 2 elements |
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
| `joystick: float32[2]` | `ros2Unitree_goMsgUwbState_joystick` | `[Float]` | Exactly 2 elements |
| `error_state: uint8` | `ros2Unitree_goMsgUwbState_error_state` | `Word8` | — |
| `buttons: uint8` | `ros2Unitree_goMsgUwbState_buttons` | `Word8` | — |
| `enabled_from_app: uint8` | `ros2Unitree_goMsgUwbState_enabled_from_app` | `Word8` | — |

#### `Ros2Unitree_goMsgUwbSwitch`

`unitree_go/msg/UwbSwitch`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `enabled: uint8` | `ros2Unitree_goMsgUwbSwitch_enabled` | `Word8` | — |

#### `Ros2Unitree_goMsgWirelessController`

`unitree_go/msg/WirelessController`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `lx: float32` | `ros2Unitree_goMsgWirelessController_lx` | `Float` | — |
| `ly: float32` | `ros2Unitree_goMsgWirelessController_ly` | `Float` | — |
| `rx: float32` | `ros2Unitree_goMsgWirelessController_rx` | `Float` | — |
| `ry: float32` | `ros2Unitree_goMsgWirelessController_ry` | `Float` | — |
| `keys: uint16` | `ros2Unitree_goMsgWirelessController_keys` | `Word16` | — |

#### `Ros2Unitree_hgMsgBmsCmd`

`unitree_hg/msg/BmsCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `cmd: uint8` | `ros2Unitree_hgMsgBmsCmd_cmd` | `Word8` | — |
| `reserve: uint8[40]` | `ros2Unitree_hgMsgBmsCmd_reserve` | `[Word8]` | Exactly 40 elements |

#### `Ros2Unitree_hgMsgBmsState`

`unitree_hg/msg/BmsState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `version_high: uint8` | `ros2Unitree_hgMsgBmsState_version_high` | `Word8` | — |
| `version_low: uint8` | `ros2Unitree_hgMsgBmsState_version_low` | `Word8` | — |
| `fn: uint8` | `ros2Unitree_hgMsgBmsState_fn` | `Word8` | — |
| `cell_vol: uint16[40]` | `ros2Unitree_hgMsgBmsState_cell_vol` | `[Word16]` | Exactly 40 elements |
| `bmsvoltage: uint32[3]` | `ros2Unitree_hgMsgBmsState_bmsvoltage` | `[Word32]` | Exactly 3 elements |
| `current: int32` | `ros2Unitree_hgMsgBmsState_current` | `Int32` | — |
| `soc: uint8` | `ros2Unitree_hgMsgBmsState_soc` | `Word8` | — |
| `soh: uint8` | `ros2Unitree_hgMsgBmsState_soh` | `Word8` | — |
| `temperature: int16[12]` | `ros2Unitree_hgMsgBmsState_temperature` | `[Int16]` | Exactly 12 elements |
| `cycle: uint16` | `ros2Unitree_hgMsgBmsState_cycle` | `Word16` | — |
| `manufacturer_date: uint16` | `ros2Unitree_hgMsgBmsState_manufacturer_date` | `Word16` | — |
| `bmsstate: uint32[5]` | `ros2Unitree_hgMsgBmsState_bmsstate` | `[Word32]` | Exactly 5 elements |
| `reserve: uint32[3]` | `ros2Unitree_hgMsgBmsState_reserve` | `[Word32]` | Exactly 3 elements |

#### `Ros2Unitree_hgMsgMotorCmd`

`unitree_hg/msg/MotorCmd`

| Original field/declaration | Public field | Public language type | Bound |
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

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `motor_cmd: unitree_hg/msg/MotorCmd[]` | `ros2Unitree_hgMsgHandCmd_motor_cmd` | `[Ros2Unitree_hgMsgMotorCmd]` | SDK ≤32 active elements |
| `reserve: uint32[4]` | `ros2Unitree_hgMsgHandCmd_reserve` | `[Word32]` | Exactly 4 elements |

#### `Ros2Unitree_hgMsgMotorState`

`unitree_hg/msg/MotorState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode: uint8` | `ros2Unitree_hgMsgMotorState_mode` | `Word8` | — |
| `q: float32` | `ros2Unitree_hgMsgMotorState_q` | `Float` | — |
| `dq: float32` | `ros2Unitree_hgMsgMotorState_dq` | `Float` | — |
| `ddq: float32` | `ros2Unitree_hgMsgMotorState_ddq` | `Float` | — |
| `tau_est: float32` | `ros2Unitree_hgMsgMotorState_tau_est` | `Float` | — |
| `temperature: int16[2]` | `ros2Unitree_hgMsgMotorState_temperature` | `[Int16]` | Exactly 2 elements |
| `vol: float32` | `ros2Unitree_hgMsgMotorState_vol` | `Float` | — |
| `sensor: uint32[2]` | `ros2Unitree_hgMsgMotorState_sensor` | `[Word32]` | Exactly 2 elements |
| `motorstate: uint32` | `ros2Unitree_hgMsgMotorState_motorstate` | `Word32` | — |
| `reserve: uint32[4]` | `ros2Unitree_hgMsgMotorState_reserve` | `[Word32]` | Exactly 4 elements |

#### `Ros2Unitree_hgMsgPressSensorState`

`unitree_hg/msg/PressSensorState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `pressure: float32[12]` | `ros2Unitree_hgMsgPressSensorState_pressure` | `[Float]` | Exactly 12 elements |
| `temperature: float32[12]` | `ros2Unitree_hgMsgPressSensorState_temperature` | `[Float]` | Exactly 12 elements |
| `lost: uint32` | `ros2Unitree_hgMsgPressSensorState_lost` | `Word32` | — |
| `reserve: uint32` | `ros2Unitree_hgMsgPressSensorState_reserve` | `Word32` | — |

#### `Ros2Unitree_hgMsgIMUState`

`unitree_hg/msg/IMUState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `quaternion: float32[4]` | `ros2Unitree_hgMsgIMUState_quaternion` | `[Float]` | Exactly 4 elements |
| `gyroscope: float32[3]` | `ros2Unitree_hgMsgIMUState_gyroscope` | `[Float]` | Exactly 3 elements |
| `accelerometer: float32[3]` | `ros2Unitree_hgMsgIMUState_accelerometer` | `[Float]` | Exactly 3 elements |
| `rpy: float32[3]` | `ros2Unitree_hgMsgIMUState_rpy` | `[Float]` | Exactly 3 elements |
| `temperature: int16` | `ros2Unitree_hgMsgIMUState_temperature` | `Int16` | — |

#### `Ros2Unitree_hgMsgHandState`

`unitree_hg/msg/HandState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `motor_state: unitree_hg/msg/MotorState[]` | `ros2Unitree_hgMsgHandState_motor_state` | `[Ros2Unitree_hgMsgMotorState]` | SDK ≤32 active elements |
| `press_sensor_state: unitree_hg/msg/PressSensorState[]` | `ros2Unitree_hgMsgHandState_press_sensor_state` | `[Ros2Unitree_hgMsgPressSensorState]` | SDK ≤32 active elements |
| `imu_state: unitree_hg/msg/IMUState` | `ros2Unitree_hgMsgHandState_imu_state` | `Ros2Unitree_hgMsgIMUState` | — |
| `power_v: float32` | `ros2Unitree_hgMsgHandState_power_v` | `Float` | — |
| `power_a: float32` | `ros2Unitree_hgMsgHandState_power_a` | `Float` | — |
| `system_v: float32` | `ros2Unitree_hgMsgHandState_system_v` | `Float` | — |
| `device_v: float32` | `ros2Unitree_hgMsgHandState_device_v` | `Float` | — |
| `error: uint32[2]` | `ros2Unitree_hgMsgHandState_error` | `[Word32]` | Exactly 2 elements |
| `reserve: uint32[2]` | `ros2Unitree_hgMsgHandState_reserve` | `[Word32]` | Exactly 2 elements |

#### `Ros2Unitree_hgMsgLowCmd`

`unitree_hg/msg/LowCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode_pr: uint8` | `ros2Unitree_hgMsgLowCmd_mode_pr` | `Word8` | — |
| `mode_machine: uint8` | `ros2Unitree_hgMsgLowCmd_mode_machine` | `Word8` | — |
| `motor_cmd: unitree_hg/msg/MotorCmd[35]` | `ros2Unitree_hgMsgLowCmd_motor_cmd` | `[Ros2Unitree_hgMsgMotorCmd]` | Exactly 35 elements |
| `reserve: uint32[4]` | `ros2Unitree_hgMsgLowCmd_reserve` | `[Word32]` | Exactly 4 elements |
| `crc: uint32` | `ros2Unitree_hgMsgLowCmd_crc` | `Word32` | — |

#### `Ros2Unitree_hgMsgLowState`

`unitree_hg/msg/LowState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `version: uint32[2]` | `ros2Unitree_hgMsgLowState_version` | `[Word32]` | Exactly 2 elements |
| `mode_pr: uint8` | `ros2Unitree_hgMsgLowState_mode_pr` | `Word8` | — |
| `mode_machine: uint8` | `ros2Unitree_hgMsgLowState_mode_machine` | `Word8` | — |
| `tick: uint32` | `ros2Unitree_hgMsgLowState_tick` | `Word32` | — |
| `imu_state: unitree_hg/msg/IMUState` | `ros2Unitree_hgMsgLowState_imu_state` | `Ros2Unitree_hgMsgIMUState` | — |
| `motor_state: unitree_hg/msg/MotorState[35]` | `ros2Unitree_hgMsgLowState_motor_state` | `[Ros2Unitree_hgMsgMotorState]` | Exactly 35 elements |
| `wireless_remote: uint8[40]` | `ros2Unitree_hgMsgLowState_wireless_remote` | `[Word8]` | Exactly 40 elements |
| `reserve: uint32[4]` | `ros2Unitree_hgMsgLowState_reserve` | `[Word32]` | Exactly 4 elements |
| `crc: uint32` | `ros2Unitree_hgMsgLowState_crc` | `Word32` | — |

#### `Ros2Unitree_hgMsgMainBoardState`

`unitree_hg/msg/MainBoardState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `fan_state: uint16[6]` | `ros2Unitree_hgMsgMainBoardState_fan_state` | `[Word16]` | Exactly 6 elements |
| `temperature: int16[6]` | `ros2Unitree_hgMsgMainBoardState_temperature` | `[Int16]` | Exactly 6 elements |
| `value: float32[6]` | `ros2Unitree_hgMsgMainBoardState_value` | `[Float]` | Exactly 6 elements |
| `state: uint32[6]` | `ros2Unitree_hgMsgMainBoardState_state` | `[Word32]` | Exactly 6 elements |

## Pure complete codecs

For each full type symbol `T`, substitute its exact name into the following real API pattern. The ROS1 `Ros1Unitree_legged_msgsBmsCmd` example has exactly four canonical bytes.

`encodeT :: T -> Either Word32 [Word8]`; `decodeT :: [Word8] -> Either Word32 T`

Pure encoding/decoding returns `Right` only for a complete value; `Left 22` refuses malformed fields, extent violations or trailing bytes. Pattern-match the Either before using a result. Raw `readType` parsers are compositional internal-style helpers; the public `decodeType` is the whole-input operation.

The following pure ROS1 helper uses the imports above and propagates the actual codec result. It encodes the complete BmsCmd, then decodes only its initialized four-byte extent. This documentation fragment is separate from the six native communication entries.

```haskell
import Data.Word (Word32)

bmsCommandRoundTrip :: Either Word32 Records.Ros1Unitree_legged_msgsBmsCmd
bmsCommandRoundTrip = do
    bytes <- Records.encodeRos1Unitree_legged_msgsBmsCmd
        (Records.Ros1Unitree_legged_msgsBmsCmd 0 [0, 0, 0])
    Records.decodeRos1Unitree_legged_msgsBmsCmd bytes
```

Encoding requires exclusive record access and independent writable output where an output span is supplied. Ignore any partially written output after failure. Successful decoding consumes the entire bounded input, rejects trailing bytes and returns ordinary complete language values. Codecs perform no capability open, subscription or native serialization call. Original field domains, nested records, text/count limits and exact original scalar bits are checked before a whole success is exposed.

## Typed observations

| Backend/scenario | Public function | Complete returned record |
| --- | --- | --- |
| ROS1 `motion_state` | `waitMotionState(alias, attempts)` | `Ros1Unitree_legged_msgsHighState` |
| ROS1 `low_state` | `waitLowState(alias, attempts)` | `Ros1Unitree_legged_msgsLowState` |
| ROS1 `motor_state` | `waitMotorState(alias, attempts)` | `Ros1Unitree_legged_msgsMotorState` |
| ROS2 `motion_state` | `waitMotionState(alias, attempts)` | `Ros2Unitree_goMsgSportModeState` |
| ROS2 `low_state` | `waitLowState(alias, attempts)` | `Ros2Unitree_goMsgLowState` |
| ROS2 `wireless_controller` | `waitWirelessController(alias, attempts)` | `Ros2Unitree_goMsgWirelessController` |

Haskell observers return `IO (Observation T)`; the other frontends return the corresponding owned observation directly. Alias bytes must be strict UTF-8, 1..255 bytes, without NUL, and remain stable for the synchronous call. Attempts must be 1..250 and include the immediate first poll. One owner opens and subscribes once. Only idle 11 permits another poll, after an internal WASI monotonic 20 ms pause. A capacity, authority, protocol, close or decoding refusal triggers no automatic retry or backend switch.

The result type is `Observation value`.

| Actual field | Meaning and validity |
| --- | --- |
| `primary` | First validation/open/subscribe/poll/wait/codec status; zero means no primary failure. |
| `cleanup`, `cleanupPresent` | Independent close status and whether one close was attempted after acquisition. |
| `rpcStatus`, `rpcPresent`, `polls` | Original last poll status, explicit poll presence and actual count; a local decode failure does not rewrite the original RPC fact. |
| `lengthSlot` | Full uint64 native output slot. UINT64_MAX preserves the unwritten sentinel; retain it even on failure. |
| `response = Just value` | Whole response presence; require it before reading payload/default record storage. |
| `response :: Maybe value`, `wire :: [Word8]` | Complete owned record and reencoded canonical bytes, usable only with whole response presence. |

Every ordinary successful acquisition closes once before return. Returned records/bytes remain valid after that close; copying them creates no native owner. Keep shared mutable values serialized. Fatal traps, unrecoverable allocation failures and process termination can bypass ordinary cleanup and require outer instance retirement.

## Reporting and process status

`report value :: IO Word32`

Reporting emits one JSON object containing `primary`, `cleanup`, boolean `cleanup_present`, original `rpc_status`, boolean `rpc_present`, boolean `length_present`, exact decimal-string `length`, boolean `response_present`, `polls`, and full lowercase `wire_hex`. `length_present` means the original slot differs from the UINT64_MAX sentinel; it is not itself proof of a successful complete response. `wire_hex` is empty when response presence is false.

The report return preserves primary first, otherwise close, otherwise stdout error 5, otherwise zero. Only the command/process boundary clamps a nonzero status above 125. The C scalar adapter supplies arguments, raw transport, clock wait and stdout; the real language owns complete records, codec traversal and lifecycle choices. Haskell `command` handles one argument from getArgs, UTF-8 conversion, reporting and final exit; other entries use the original WASI argument count including the executable.

Status 11 is idle; local validation/codec refusal is 22, ABI-version incompatibility is 95, and native capacity refusal 90 remains a transport fact. Other original native owner/authority/connection/timeout/revoke statuses are preserved. Always inspect independent cleanup and presence instead of treating a default-filled record as a response.

## Qualification scope

The supported command profile is wasm32 WASI Preview 1, noeh and one thread, with Noetic/Jazzy original native interfaces. Bundled source compilation is qualified on Linux x86_64. Same-artifact AArch64 native communication is separately checked through QEMU user mode on an x86_64 Linux kernel; it qualifies neither an ARM compiler host nor physical hardware. The x86 source/codec/build evidence is recorded in [native-source-qualification.json](../../../../../../share/platform/unitree/native-source-qualification.json). Pinned frontend provenance is listed in [original compiler versions and source closures](../../../../../../share/platform/unitree/native-compiler-sources.json). Full 54-record codec coverage is distinct from live transport of the six observation types. Memory64, Preview 2, threads, Wasm EH, other distributions, physical control and robot CRC/safety behavior are outside this route's qualification.
