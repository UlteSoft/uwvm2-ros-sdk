# Unitree Zig — API

[Complete original schemas](../NATIVE_SCHEMA.md) · [API](API.md) · [Six examples](EXAMPLES.md)

## Public modules and backend selection

Xmake maps `unitree` to the selected ROS facade and `unitree_records` to its complete record module. `unitree_core` and `unitree_wire` are the corresponding installed support modules. The same public import selects ROS1 or ROS2 through the target's declared backend.

```zig
const unitree = @import("unitree");
const records = @import("unitree_records");
```

The fragment selects ROS1. For ROS2, select the ROS2 target and its matching facade/record namespace. The Xmake mapping, record family and trusted runtime deployment must agree; the observer never falls back to another family.

- ROS1: [facade](../../../../../../include/platform/unitree/zig/ros1/observation.zig) · [records](../../../../../../include/platform/unitree/zig/ros1/records.zig)
- ROS2: [facade](../../../../../../include/platform/unitree/zig/ros2/observation.zig) · [records](../../../../../../include/platform/unitree/zig/ros2/records.zig)
- [core](../../../../../../include/platform/unitree/zig/observation.zig) · [wire](../../../../../../include/platform/unitree/zig/wire.zig)

## Complete records and scalar representation

The catalog has 11 ROS1 records/115 original fields and 43 ROS2 records/257 fields. The tables below include every type and every public field identifier. Nested records preserve the same mapping recursively. Native MD5/RIHS registration identity, canonical codec identity and wire byte bounds are separate catalog facts; neither a type nor a codec grants ROS authority.

`wire.Text(N, false)` owns `data: [N]u8` and active `size: u32`; `wire.Sequence(Element, N)` owns `items` and active `size`. Fixed arrays use `[N]Element`. Ordinary record initialization is `.{};` no heap allocation or native owner is involved.

Unsigned/signed integer widths remain exact. Float32/float64 retain their original widths; selected finite-value rules reject NaN/infinities. Fields preserve original spelling and case, field order, fixed-array counts, counted-sequence bounds and units. Strings use the declared UTF-8 domain, reject NUL/malformed encodings and preserve a leading BOM. Finite SDK quotas for originally unbounded declarations are recorded separately in the schema. CRC fields are carried as supplied; codecs do not establish physical CRC or robot safety validity.

For example, original `SOC` becomes `field_SOC`; `imu_state` becomes `field_imu_state`. Preserve these explicit names when moving between ROS1 camel-case fields and ROS2 snake-case fields.

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
| `off: uint8` | `field_off` | `u8` | — |
| `reserve: uint8[3]` | `field_reserve` | `[3]u8` | Exactly 3 elements |

#### `Ros1Unitree_legged_msgsBmsState`

`unitree_legged_msgs/BmsState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `version_h: uint8` | `field_version_h` | `u8` | — |
| `version_l: uint8` | `field_version_l` | `u8` | — |
| `bms_status: uint8` | `field_bms_status` | `u8` | — |
| `SOC: uint8` | `field_SOC` | `u8` | — |
| `current: int32` | `field_current` | `i32` | — |
| `cycle: uint16` | `field_cycle` | `u16` | — |
| `BQ_NTC: int8[2]` | `field_BQ_NTC` | `[2]i8` | Exactly 2 elements |
| `MCU_NTC: int8[2]` | `field_MCU_NTC` | `[2]i8` | Exactly 2 elements |
| `cell_vol: uint16[10]` | `field_cell_vol` | `[10]u16` | Exactly 10 elements |

#### `Ros1Unitree_legged_msgsCartesian`

`unitree_legged_msgs/Cartesian`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `x: float32` | `field_x` | `f32` | — |
| `y: float32` | `field_y` | `f32` | — |
| `z: float32` | `field_z` | `f32` | — |

#### `Ros1Unitree_legged_msgsLED`

`unitree_legged_msgs/LED`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `r: uint8` | `field_r` | `u8` | — |
| `g: uint8` | `field_g` | `u8` | — |
| `b: uint8` | `field_b` | `u8` | — |

#### `Ros1Unitree_legged_msgsHighCmd`

`unitree_legged_msgs/HighCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `head: uint8[2]` | `field_head` | `[2]u8` | Exactly 2 elements |
| `levelFlag: uint8` | `field_levelFlag` | `u8` | — |
| `frameReserve: uint8` | `field_frameReserve` | `u8` | — |
| `SN: uint32[2]` | `field_SN` | `[2]u32` | Exactly 2 elements |
| `version: uint32[2]` | `field_version` | `[2]u32` | Exactly 2 elements |
| `bandWidth: uint16` | `field_bandWidth` | `u16` | — |
| `mode: uint8` | `field_mode` | `u8` | — |
| `gaitType: uint8` | `field_gaitType` | `u8` | — |
| `speedLevel: uint8` | `field_speedLevel` | `u8` | — |
| `footRaiseHeight: float32` | `field_footRaiseHeight` | `f32` | — |
| `bodyHeight: float32` | `field_bodyHeight` | `f32` | — |
| `position: float32[2]` | `field_position` | `[2]f32` | Exactly 2 elements |
| `euler: float32[3]` | `field_euler` | `[3]f32` | Exactly 3 elements |
| `velocity: float32[2]` | `field_velocity` | `[2]f32` | Exactly 2 elements |
| `yawSpeed: float32` | `field_yawSpeed` | `f32` | — |
| `bms: unitree_legged_msgs/BmsCmd` | `field_bms` | `Ros1Unitree_legged_msgsBmsCmd` | — |
| `led: unitree_legged_msgs/LED[4]` | `field_led` | `[4]Ros1Unitree_legged_msgsLED` | Exactly 4 elements |
| `wirelessRemote: uint8[40]` | `field_wirelessRemote` | `[40]u8` | Exactly 40 elements |
| `reserve: uint32` | `field_reserve` | `u32` | — |
| `crc: uint32` | `field_crc` | `u32` | — |

#### `Ros1Unitree_legged_msgsIMU`

`unitree_legged_msgs/IMU`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `quaternion: float32[4]` | `field_quaternion` | `[4]f32` | Exactly 4 elements |
| `gyroscope: float32[3]` | `field_gyroscope` | `[3]f32` | Exactly 3 elements |
| `accelerometer: float32[3]` | `field_accelerometer` | `[3]f32` | Exactly 3 elements |
| `rpy: float32[3]` | `field_rpy` | `[3]f32` | Exactly 3 elements |
| `temperature: int8` | `field_temperature` | `i8` | — |

#### `Ros1Unitree_legged_msgsMotorState`

`unitree_legged_msgs/MotorState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `u8` | — |
| `q: float32` | `field_q` | `f32` | — |
| `dq: float32` | `field_dq` | `f32` | — |
| `ddq: float32` | `field_ddq` | `f32` | — |
| `tauEst: float32` | `field_tauEst` | `f32` | — |
| `q_raw: float32` | `field_q_raw` | `f32` | — |
| `dq_raw: float32` | `field_dq_raw` | `f32` | — |
| `ddq_raw: float32` | `field_ddq_raw` | `f32` | — |
| `temperature: int8` | `field_temperature` | `i8` | — |
| `reserve: uint32[2]` | `field_reserve` | `[2]u32` | Exactly 2 elements |

#### `Ros1Unitree_legged_msgsHighState`

`unitree_legged_msgs/HighState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `head: uint8[2]` | `field_head` | `[2]u8` | Exactly 2 elements |
| `levelFlag: uint8` | `field_levelFlag` | `u8` | — |
| `frameReserve: uint8` | `field_frameReserve` | `u8` | — |
| `SN: uint32[2]` | `field_SN` | `[2]u32` | Exactly 2 elements |
| `version: uint32[2]` | `field_version` | `[2]u32` | Exactly 2 elements |
| `bandWidth: uint16` | `field_bandWidth` | `u16` | — |
| `imu: unitree_legged_msgs/IMU` | `field_imu` | `Ros1Unitree_legged_msgsIMU` | — |
| `motorState: unitree_legged_msgs/MotorState[20]` | `field_motorState` | `[20]Ros1Unitree_legged_msgsMotorState` | Exactly 20 elements |
| `bms: unitree_legged_msgs/BmsState` | `field_bms` | `Ros1Unitree_legged_msgsBmsState` | — |
| `footForce: int16[4]` | `field_footForce` | `[4]i16` | Exactly 4 elements |
| `footForceEst: int16[4]` | `field_footForceEst` | `[4]i16` | Exactly 4 elements |
| `mode: uint8` | `field_mode` | `u8` | — |
| `progress: float32` | `field_progress` | `f32` | — |
| `gaitType: uint8` | `field_gaitType` | `u8` | — |
| `footRaiseHeight: float32` | `field_footRaiseHeight` | `f32` | — |
| `position: float32[3]` | `field_position` | `[3]f32` | Exactly 3 elements |
| `bodyHeight: float32` | `field_bodyHeight` | `f32` | — |
| `velocity: float32[3]` | `field_velocity` | `[3]f32` | Exactly 3 elements |
| `yawSpeed: float32` | `field_yawSpeed` | `f32` | — |
| `rangeObstacle: float32[4]` | `field_rangeObstacle` | `[4]f32` | Exactly 4 elements |
| `footPosition2Body: unitree_legged_msgs/Cartesian[4]` | `field_footPosition2Body` | `[4]Ros1Unitree_legged_msgsCartesian` | Exactly 4 elements |
| `footSpeed2Body: unitree_legged_msgs/Cartesian[4]` | `field_footSpeed2Body` | `[4]Ros1Unitree_legged_msgsCartesian` | Exactly 4 elements |
| `wirelessRemote: uint8[40]` | `field_wirelessRemote` | `[40]u8` | Exactly 40 elements |
| `reserve: uint32` | `field_reserve` | `u32` | — |
| `crc: uint32` | `field_crc` | `u32` | — |

#### `Ros1Unitree_legged_msgsMotorCmd`

`unitree_legged_msgs/MotorCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `u8` | — |
| `q: float32` | `field_q` | `f32` | — |
| `dq: float32` | `field_dq` | `f32` | — |
| `tau: float32` | `field_tau` | `f32` | — |
| `Kp: float32` | `field_Kp` | `f32` | — |
| `Kd: float32` | `field_Kd` | `f32` | — |
| `reserve: uint32[3]` | `field_reserve` | `[3]u32` | Exactly 3 elements |

#### `Ros1Unitree_legged_msgsLowCmd`

`unitree_legged_msgs/LowCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `head: uint8[2]` | `field_head` | `[2]u8` | Exactly 2 elements |
| `levelFlag: uint8` | `field_levelFlag` | `u8` | — |
| `frameReserve: uint8` | `field_frameReserve` | `u8` | — |
| `SN: uint32[2]` | `field_SN` | `[2]u32` | Exactly 2 elements |
| `version: uint32[2]` | `field_version` | `[2]u32` | Exactly 2 elements |
| `bandWidth: uint16` | `field_bandWidth` | `u16` | — |
| `motorCmd: unitree_legged_msgs/MotorCmd[20]` | `field_motorCmd` | `[20]Ros1Unitree_legged_msgsMotorCmd` | Exactly 20 elements |
| `bms: unitree_legged_msgs/BmsCmd` | `field_bms` | `Ros1Unitree_legged_msgsBmsCmd` | — |
| `wirelessRemote: uint8[40]` | `field_wirelessRemote` | `[40]u8` | Exactly 40 elements |
| `reserve: uint32` | `field_reserve` | `u32` | — |
| `crc: uint32` | `field_crc` | `u32` | — |

#### `Ros1Unitree_legged_msgsLowState`

`unitree_legged_msgs/LowState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `head: uint8[2]` | `field_head` | `[2]u8` | Exactly 2 elements |
| `levelFlag: uint8` | `field_levelFlag` | `u8` | — |
| `frameReserve: uint8` | `field_frameReserve` | `u8` | — |
| `SN: uint32[2]` | `field_SN` | `[2]u32` | Exactly 2 elements |
| `version: uint32[2]` | `field_version` | `[2]u32` | Exactly 2 elements |
| `bandWidth: uint16` | `field_bandWidth` | `u16` | — |
| `imu: unitree_legged_msgs/IMU` | `field_imu` | `Ros1Unitree_legged_msgsIMU` | — |
| `motorState: unitree_legged_msgs/MotorState[20]` | `field_motorState` | `[20]Ros1Unitree_legged_msgsMotorState` | Exactly 20 elements |
| `bms: unitree_legged_msgs/BmsState` | `field_bms` | `Ros1Unitree_legged_msgsBmsState` | — |
| `footForce: int16[4]` | `field_footForce` | `[4]i16` | Exactly 4 elements |
| `footForceEst: int16[4]` | `field_footForceEst` | `[4]i16` | Exactly 4 elements |
| `tick: uint32` | `field_tick` | `u32` | — |
| `wirelessRemote: uint8[40]` | `field_wirelessRemote` | `[40]u8` | Exactly 40 elements |
| `reserve: uint32` | `field_reserve` | `u32` | — |
| `crc: uint32` | `field_crc` | `u32` | — |
| `eeForceRaw: unitree_legged_msgs/Cartesian[4]` | `field_eeForceRaw` | `[4]Ros1Unitree_legged_msgsCartesian` | Exactly 4 elements |
| `eeForce: unitree_legged_msgs/Cartesian[4]` | `field_eeForce` | `[4]Ros1Unitree_legged_msgsCartesian` | Exactly 4 elements |
| `position: unitree_legged_msgs/Cartesian` | `field_position` | `Ros1Unitree_legged_msgsCartesian` | — |
| `velocity: unitree_legged_msgs/Cartesian` | `field_velocity` | `Ros1Unitree_legged_msgsCartesian` | — |
| `velocity_w: unitree_legged_msgs/Cartesian` | `field_velocity_w` | `Ros1Unitree_legged_msgsCartesian` | — |

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
| `id: int64` | `field_id` | `i64` | — |
| `api_id: int64` | `field_api_id` | `i64` | — |

#### `Ros2Unitree_apiMsgRequestLease`

`unitree_api/msg/RequestLease`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `id: int64` | `field_id` | `i64` | — |

#### `Ros2Unitree_apiMsgRequestPolicy`

`unitree_api/msg/RequestPolicy`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `priority: int32` | `field_priority` | `i32` | — |
| `noreply: bool` | `field_noreply` | `bool` | — |

#### `Ros2Unitree_apiMsgRequestHeader`

`unitree_api/msg/RequestHeader`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `identity: unitree_api/msg/RequestIdentity` | `field_identity` | `Ros2Unitree_apiMsgRequestIdentity` | — |
| `lease: unitree_api/msg/RequestLease` | `field_lease` | `Ros2Unitree_apiMsgRequestLease` | — |
| `policy: unitree_api/msg/RequestPolicy` | `field_policy` | `Ros2Unitree_apiMsgRequestPolicy` | — |

#### `Ros2Unitree_apiMsgRequest`

`unitree_api/msg/Request`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `header: unitree_api/msg/RequestHeader` | `field_header` | `Ros2Unitree_apiMsgRequestHeader` | — |
| `parameter: string` | `field_parameter` | `wire.Text(2048, false)` | SDK ≤2048 UTF-8 bytes |
| `binary: uint8[]` | `field_binary` | `wire.Sequence(u8, 2048)` | SDK ≤2048 active elements |

#### `Ros2Unitree_apiMsgResponseStatus`

`unitree_api/msg/ResponseStatus`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `code: int32` | `field_code` | `i32` | — |

#### `Ros2Unitree_apiMsgResponseHeader`

`unitree_api/msg/ResponseHeader`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `identity: unitree_api/msg/RequestIdentity` | `field_identity` | `Ros2Unitree_apiMsgRequestIdentity` | — |
| `status: unitree_api/msg/ResponseStatus` | `field_status` | `Ros2Unitree_apiMsgResponseStatus` | — |

#### `Ros2Unitree_apiMsgResponse`

`unitree_api/msg/Response`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `header: unitree_api/msg/ResponseHeader` | `field_header` | `Ros2Unitree_apiMsgResponseHeader` | — |
| `data: string` | `field_data` | `wire.Text(2048, false)` | SDK ≤2048 UTF-8 bytes |
| `binary: int8[]` | `field_binary` | `wire.Sequence(i8, 32)` | SDK ≤32 active elements |

#### `Ros2Unitree_goMsgAudioData`

`unitree_go/msg/AudioData`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `time_frame: uint64` | `field_time_frame` | `u64` | — |
| `data: uint8[]` | `field_data` | `wire.Sequence(u8, 2048)` | SDK ≤2048 active elements |

#### `Ros2Unitree_goMsgBmsCmd`

`unitree_go/msg/BmsCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `off: uint8` | `field_off` | `u8` | — |
| `reserve: uint8[3]` | `field_reserve` | `[3]u8` | Exactly 3 elements |

#### `Ros2Unitree_goMsgBmsState`

`unitree_go/msg/BmsState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `version_high: uint8` | `field_version_high` | `u8` | — |
| `version_low: uint8` | `field_version_low` | `u8` | — |
| `status: uint8` | `field_status` | `u8` | — |
| `soc: uint8` | `field_soc` | `u8` | — |
| `current: int32` | `field_current` | `i32` | — |
| `cycle: uint16` | `field_cycle` | `u16` | — |
| `bq_ntc: int8[2]` | `field_bq_ntc` | `[2]i8` | Exactly 2 elements |
| `mcu_ntc: int8[2]` | `field_mcu_ntc` | `[2]i8` | Exactly 2 elements |
| `cell_vol: uint16[15]` | `field_cell_vol` | `[15]u16` | Exactly 15 elements |

#### `Ros2Unitree_goMsgError`

`unitree_go/msg/Error`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `source: uint32` | `field_source` | `u32` | — |
| `state: uint32` | `field_state` | `u32` | — |

#### `Ros2Unitree_goMsgGo2FrontVideoData`

`unitree_go/msg/Go2FrontVideoData`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `time_frame: uint64` | `field_time_frame` | `u64` | — |
| `video720p: uint8[]` | `field_video720p` | `wire.Sequence(u8, 2048)` | SDK ≤2048 active elements |
| `video360p: uint8[]` | `field_video360p` | `wire.Sequence(u8, 2048)` | SDK ≤2048 active elements |
| `video180p: uint8[]` | `field_video180p` | `wire.Sequence(u8, 2048)` | SDK ≤2048 active elements |

#### `Ros2Unitree_goMsgHeightMap`

`unitree_go/msg/HeightMap`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `stamp: float64` | `field_stamp` | `f64` | — |
| `frame_id: string` | `field_frame_id` | `wire.Text(2048, false)` | SDK ≤2048 UTF-8 bytes |
| `resolution: float32` | `field_resolution` | `f32` | — |
| `width: uint32` | `field_width` | `u32` | — |
| `height: uint32` | `field_height` | `u32` | — |
| `origin: float32[2]` | `field_origin` | `[2]f32` | Exactly 2 elements |
| `data: float32[]` | `field_data` | `wire.Sequence(f32, 32)` | SDK ≤32 active elements |

#### `Ros2Unitree_goMsgIMUState`

`unitree_go/msg/IMUState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `quaternion: float32[4]` | `field_quaternion` | `[4]f32` | Exactly 4 elements |
| `gyroscope: float32[3]` | `field_gyroscope` | `[3]f32` | Exactly 3 elements |
| `accelerometer: float32[3]` | `field_accelerometer` | `[3]f32` | Exactly 3 elements |
| `rpy: float32[3]` | `field_rpy` | `[3]f32` | Exactly 3 elements |
| `temperature: int8` | `field_temperature` | `i8` | — |

#### `Ros2Unitree_goMsgInterfaceConfig`

`unitree_go/msg/InterfaceConfig`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `u8` | — |
| `value: uint8` | `field_value` | `u8` | — |
| `reserve: uint8[2]` | `field_reserve` | `[2]u8` | Exactly 2 elements |

#### `Ros2Unitree_goMsgLidarState`

`unitree_go/msg/LidarState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `stamp: float64` | `field_stamp` | `f64` | — |
| `firmware_version: string` | `field_firmware_version` | `wire.Text(2048, false)` | SDK ≤2048 UTF-8 bytes |
| `software_version: string` | `field_software_version` | `wire.Text(2048, false)` | SDK ≤2048 UTF-8 bytes |
| `sdk_version: string` | `field_sdk_version` | `wire.Text(2048, false)` | SDK ≤2048 UTF-8 bytes |
| `sys_rotation_speed: float32` | `field_sys_rotation_speed` | `f32` | — |
| `com_rotation_speed: float32` | `field_com_rotation_speed` | `f32` | — |
| `error_state: uint8` | `field_error_state` | `u8` | — |
| `cloud_frequency: float32` | `field_cloud_frequency` | `f32` | — |
| `cloud_packet_loss_rate: float32` | `field_cloud_packet_loss_rate` | `f32` | — |
| `cloud_size: uint32` | `field_cloud_size` | `u32` | — |
| `cloud_scan_num: uint32` | `field_cloud_scan_num` | `u32` | — |
| `imu_frequency: float32` | `field_imu_frequency` | `f32` | — |
| `imu_packet_loss_rate: float32` | `field_imu_packet_loss_rate` | `f32` | — |
| `imu_rpy: float32[3]` | `field_imu_rpy` | `[3]f32` | Exactly 3 elements |
| `serial_recv_stamp: float64` | `field_serial_recv_stamp` | `f64` | — |
| `serial_buffer_size: uint32` | `field_serial_buffer_size` | `u32` | — |
| `serial_buffer_read: uint32` | `field_serial_buffer_read` | `u32` | — |

#### `Ros2Unitree_goMsgMotorCmd`

`unitree_go/msg/MotorCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `u8` | — |
| `q: float32` | `field_q` | `f32` | — |
| `dq: float32` | `field_dq` | `f32` | — |
| `tau: float32` | `field_tau` | `f32` | — |
| `kp: float32` | `field_kp` | `f32` | — |
| `kd: float32` | `field_kd` | `f32` | — |
| `reserve: uint32[3]` | `field_reserve` | `[3]u32` | Exactly 3 elements |

#### `Ros2Unitree_goMsgLowCmd`

`unitree_go/msg/LowCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `head: uint8[2]` | `field_head` | `[2]u8` | Exactly 2 elements |
| `level_flag: uint8` | `field_level_flag` | `u8` | — |
| `frame_reserve: uint8` | `field_frame_reserve` | `u8` | — |
| `sn: uint32[2]` | `field_sn` | `[2]u32` | Exactly 2 elements |
| `version: uint32[2]` | `field_version` | `[2]u32` | Exactly 2 elements |
| `bandwidth: uint16` | `field_bandwidth` | `u16` | — |
| `motor_cmd: unitree_go/msg/MotorCmd[20]` | `field_motor_cmd` | `[20]Ros2Unitree_goMsgMotorCmd` | Exactly 20 elements |
| `bms_cmd: unitree_go/msg/BmsCmd` | `field_bms_cmd` | `Ros2Unitree_goMsgBmsCmd` | — |
| `wireless_remote: uint8[40]` | `field_wireless_remote` | `[40]u8` | Exactly 40 elements |
| `led: uint8[12]` | `field_led` | `[12]u8` | Exactly 12 elements |
| `fan: uint8[2]` | `field_fan` | `[2]u8` | Exactly 2 elements |
| `gpio: uint8` | `field_gpio` | `u8` | — |
| `reserve: uint32` | `field_reserve` | `u32` | — |
| `crc: uint32` | `field_crc` | `u32` | — |

#### `Ros2Unitree_goMsgMotorState`

`unitree_go/msg/MotorState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `u8` | — |
| `q: float32` | `field_q` | `f32` | — |
| `dq: float32` | `field_dq` | `f32` | — |
| `ddq: float32` | `field_ddq` | `f32` | — |
| `tau_est: float32` | `field_tau_est` | `f32` | — |
| `q_raw: float32` | `field_q_raw` | `f32` | — |
| `dq_raw: float32` | `field_dq_raw` | `f32` | — |
| `ddq_raw: float32` | `field_ddq_raw` | `f32` | — |
| `temperature: int8` | `field_temperature` | `i8` | — |
| `lost: uint32` | `field_lost` | `u32` | — |
| `reserve: uint32[2]` | `field_reserve` | `[2]u32` | Exactly 2 elements |

#### `Ros2Unitree_goMsgLowState`

`unitree_go/msg/LowState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `head: uint8[2]` | `field_head` | `[2]u8` | Exactly 2 elements |
| `level_flag: uint8` | `field_level_flag` | `u8` | — |
| `frame_reserve: uint8` | `field_frame_reserve` | `u8` | — |
| `sn: uint32[2]` | `field_sn` | `[2]u32` | Exactly 2 elements |
| `version: uint32[2]` | `field_version` | `[2]u32` | Exactly 2 elements |
| `bandwidth: uint16` | `field_bandwidth` | `u16` | — |
| `imu_state: unitree_go/msg/IMUState` | `field_imu_state` | `Ros2Unitree_goMsgIMUState` | — |
| `motor_state: unitree_go/msg/MotorState[20]` | `field_motor_state` | `[20]Ros2Unitree_goMsgMotorState` | Exactly 20 elements |
| `bms_state: unitree_go/msg/BmsState` | `field_bms_state` | `Ros2Unitree_goMsgBmsState` | — |
| `foot_force: int16[4]` | `field_foot_force` | `[4]i16` | Exactly 4 elements |
| `foot_force_est: int16[4]` | `field_foot_force_est` | `[4]i16` | Exactly 4 elements |
| `tick: uint32` | `field_tick` | `u32` | — |
| `wireless_remote: uint8[40]` | `field_wireless_remote` | `[40]u8` | Exactly 40 elements |
| `bit_flag: uint8` | `field_bit_flag` | `u8` | — |
| `adc_reel: float32` | `field_adc_reel` | `f32` | — |
| `temperature_ntc1: int8` | `field_temperature_ntc1` | `i8` | — |
| `temperature_ntc2: int8` | `field_temperature_ntc2` | `i8` | — |
| `power_v: float32` | `field_power_v` | `f32` | — |
| `power_a: float32` | `field_power_a` | `f32` | — |
| `fan_frequency: uint16[4]` | `field_fan_frequency` | `[4]u16` | Exactly 4 elements |
| `reserve: uint32` | `field_reserve` | `u32` | — |
| `crc: uint32` | `field_crc` | `u32` | — |

#### `Ros2Unitree_goMsgMotorCmds`

`unitree_go/msg/MotorCmds`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `cmds: unitree_go/msg/MotorCmd[]` | `field_cmds` | `wire.Sequence(Ros2Unitree_goMsgMotorCmd, 32)` | SDK ≤32 active elements |

#### `Ros2Unitree_goMsgMotorStates`

`unitree_go/msg/MotorStates`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `states: unitree_go/msg/MotorState[]` | `field_states` | `wire.Sequence(Ros2Unitree_goMsgMotorState, 32)` | SDK ≤32 active elements |

#### `Ros2Unitree_goMsgPathPoint`

`unitree_go/msg/PathPoint`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `t_from_start: float32` | `field_t_from_start` | `f32` | — |
| `x: float32` | `field_x` | `f32` | — |
| `y: float32` | `field_y` | `f32` | — |
| `yaw: float32` | `field_yaw` | `f32` | — |
| `vx: float32` | `field_vx` | `f32` | — |
| `vy: float32` | `field_vy` | `f32` | — |
| `vyaw: float32` | `field_vyaw` | `f32` | — |

#### `Ros2Unitree_goMsgReq`

`unitree_go/msg/Req`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `uuid: string` | `field_uuid` | `wire.Text(2048, false)` | SDK ≤2048 UTF-8 bytes |
| `body: string` | `field_body` | `wire.Text(2048, false)` | SDK ≤2048 UTF-8 bytes |

#### `Ros2Unitree_goMsgRes`

`unitree_go/msg/Res`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `uuid: string` | `field_uuid` | `wire.Text(2048, false)` | SDK ≤2048 UTF-8 bytes |
| `data: uint8[]` | `field_data` | `wire.Sequence(u8, 2048)` | SDK ≤2048 active elements |
| `body: string` | `field_body` | `wire.Text(2048, false)` | SDK ≤2048 UTF-8 bytes |

#### `Ros2Unitree_goMsgSportModeCmd`

`unitree_go/msg/SportModeCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `u8` | — |
| `gait_type: uint8` | `field_gait_type` | `u8` | — |
| `speed_level: uint8` | `field_speed_level` | `u8` | — |
| `foot_raise_height: float32` | `field_foot_raise_height` | `f32` | — |
| `body_height: float32` | `field_body_height` | `f32` | — |
| `position: float32[2]` | `field_position` | `[2]f32` | Exactly 2 elements |
| `euler: float32[3]` | `field_euler` | `[3]f32` | Exactly 3 elements |
| `velocity: float32[2]` | `field_velocity` | `[2]f32` | Exactly 2 elements |
| `yaw_speed: float32` | `field_yaw_speed` | `f32` | — |
| `bms_cmd: unitree_go/msg/BmsCmd` | `field_bms_cmd` | `Ros2Unitree_goMsgBmsCmd` | — |
| `path_point: unitree_go/msg/PathPoint[30]` | `field_path_point` | `[30]Ros2Unitree_goMsgPathPoint` | Exactly 30 elements |

#### `Ros2Unitree_goMsgTimeSpec`

`unitree_go/msg/TimeSpec`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `sec: int32` | `field_sec` | `i32` | — |
| `nanosec: uint32` | `field_nanosec` | `u32` | — |

#### `Ros2Unitree_goMsgSportModeState`

`unitree_go/msg/SportModeState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `stamp: unitree_go/msg/TimeSpec` | `field_stamp` | `Ros2Unitree_goMsgTimeSpec` | — |
| `error_code: uint32` | `field_error_code` | `u32` | — |
| `imu_state: unitree_go/msg/IMUState` | `field_imu_state` | `Ros2Unitree_goMsgIMUState` | — |
| `mode: uint8` | `field_mode` | `u8` | — |
| `progress: float32` | `field_progress` | `f32` | — |
| `gait_type: uint8` | `field_gait_type` | `u8` | — |
| `foot_raise_height: float32` | `field_foot_raise_height` | `f32` | — |
| `position: float32[3]` | `field_position` | `[3]f32` | Exactly 3 elements |
| `body_height: float32` | `field_body_height` | `f32` | — |
| `velocity: float32[3]` | `field_velocity` | `[3]f32` | Exactly 3 elements |
| `yaw_speed: float32` | `field_yaw_speed` | `f32` | — |
| `range_obstacle: float32[4]` | `field_range_obstacle` | `[4]f32` | Exactly 4 elements |
| `foot_force: int16[4]` | `field_foot_force` | `[4]i16` | Exactly 4 elements |
| `foot_position_body: float32[12]` | `field_foot_position_body` | `[12]f32` | Exactly 12 elements |
| `foot_speed_body: float32[12]` | `field_foot_speed_body` | `[12]f32` | Exactly 12 elements |

#### `Ros2Unitree_goMsgUwbState`

`unitree_go/msg/UwbState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `version: uint8[2]` | `field_version` | `[2]u8` | Exactly 2 elements |
| `channel: uint8` | `field_channel` | `u8` | — |
| `joy_mode: uint8` | `field_joy_mode` | `u8` | — |
| `orientation_est: float32` | `field_orientation_est` | `f32` | — |
| `pitch_est: float32` | `field_pitch_est` | `f32` | — |
| `distance_est: float32` | `field_distance_est` | `f32` | — |
| `yaw_est: float32` | `field_yaw_est` | `f32` | — |
| `tag_roll: float32` | `field_tag_roll` | `f32` | — |
| `tag_pitch: float32` | `field_tag_pitch` | `f32` | — |
| `tag_yaw: float32` | `field_tag_yaw` | `f32` | — |
| `base_roll: float32` | `field_base_roll` | `f32` | — |
| `base_pitch: float32` | `field_base_pitch` | `f32` | — |
| `base_yaw: float32` | `field_base_yaw` | `f32` | — |
| `joystick: float32[2]` | `field_joystick` | `[2]f32` | Exactly 2 elements |
| `error_state: uint8` | `field_error_state` | `u8` | — |
| `buttons: uint8` | `field_buttons` | `u8` | — |
| `enabled_from_app: uint8` | `field_enabled_from_app` | `u8` | — |

#### `Ros2Unitree_goMsgUwbSwitch`

`unitree_go/msg/UwbSwitch`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `enabled: uint8` | `field_enabled` | `u8` | — |

#### `Ros2Unitree_goMsgWirelessController`

`unitree_go/msg/WirelessController`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `lx: float32` | `field_lx` | `f32` | — |
| `ly: float32` | `field_ly` | `f32` | — |
| `rx: float32` | `field_rx` | `f32` | — |
| `ry: float32` | `field_ry` | `f32` | — |
| `keys: uint16` | `field_keys` | `u16` | — |

#### `Ros2Unitree_hgMsgBmsCmd`

`unitree_hg/msg/BmsCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `cmd: uint8` | `field_cmd` | `u8` | — |
| `reserve: uint8[40]` | `field_reserve` | `[40]u8` | Exactly 40 elements |

#### `Ros2Unitree_hgMsgBmsState`

`unitree_hg/msg/BmsState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `version_high: uint8` | `field_version_high` | `u8` | — |
| `version_low: uint8` | `field_version_low` | `u8` | — |
| `fn: uint8` | `field_fn` | `u8` | — |
| `cell_vol: uint16[40]` | `field_cell_vol` | `[40]u16` | Exactly 40 elements |
| `bmsvoltage: uint32[3]` | `field_bmsvoltage` | `[3]u32` | Exactly 3 elements |
| `current: int32` | `field_current` | `i32` | — |
| `soc: uint8` | `field_soc` | `u8` | — |
| `soh: uint8` | `field_soh` | `u8` | — |
| `temperature: int16[12]` | `field_temperature` | `[12]i16` | Exactly 12 elements |
| `cycle: uint16` | `field_cycle` | `u16` | — |
| `manufacturer_date: uint16` | `field_manufacturer_date` | `u16` | — |
| `bmsstate: uint32[5]` | `field_bmsstate` | `[5]u32` | Exactly 5 elements |
| `reserve: uint32[3]` | `field_reserve` | `[3]u32` | Exactly 3 elements |

#### `Ros2Unitree_hgMsgMotorCmd`

`unitree_hg/msg/MotorCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `u8` | — |
| `q: float32` | `field_q` | `f32` | — |
| `dq: float32` | `field_dq` | `f32` | — |
| `tau: float32` | `field_tau` | `f32` | — |
| `kp: float32` | `field_kp` | `f32` | — |
| `kd: float32` | `field_kd` | `f32` | — |
| `reserve: uint32` | `field_reserve` | `u32` | — |

#### `Ros2Unitree_hgMsgHandCmd`

`unitree_hg/msg/HandCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `motor_cmd: unitree_hg/msg/MotorCmd[]` | `field_motor_cmd` | `wire.Sequence(Ros2Unitree_hgMsgMotorCmd, 32)` | SDK ≤32 active elements |
| `reserve: uint32[4]` | `field_reserve` | `[4]u32` | Exactly 4 elements |

#### `Ros2Unitree_hgMsgMotorState`

`unitree_hg/msg/MotorState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `u8` | — |
| `q: float32` | `field_q` | `f32` | — |
| `dq: float32` | `field_dq` | `f32` | — |
| `ddq: float32` | `field_ddq` | `f32` | — |
| `tau_est: float32` | `field_tau_est` | `f32` | — |
| `temperature: int16[2]` | `field_temperature` | `[2]i16` | Exactly 2 elements |
| `vol: float32` | `field_vol` | `f32` | — |
| `sensor: uint32[2]` | `field_sensor` | `[2]u32` | Exactly 2 elements |
| `motorstate: uint32` | `field_motorstate` | `u32` | — |
| `reserve: uint32[4]` | `field_reserve` | `[4]u32` | Exactly 4 elements |

#### `Ros2Unitree_hgMsgPressSensorState`

`unitree_hg/msg/PressSensorState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `pressure: float32[12]` | `field_pressure` | `[12]f32` | Exactly 12 elements |
| `temperature: float32[12]` | `field_temperature` | `[12]f32` | Exactly 12 elements |
| `lost: uint32` | `field_lost` | `u32` | — |
| `reserve: uint32` | `field_reserve` | `u32` | — |

#### `Ros2Unitree_hgMsgIMUState`

`unitree_hg/msg/IMUState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `quaternion: float32[4]` | `field_quaternion` | `[4]f32` | Exactly 4 elements |
| `gyroscope: float32[3]` | `field_gyroscope` | `[3]f32` | Exactly 3 elements |
| `accelerometer: float32[3]` | `field_accelerometer` | `[3]f32` | Exactly 3 elements |
| `rpy: float32[3]` | `field_rpy` | `[3]f32` | Exactly 3 elements |
| `temperature: int16` | `field_temperature` | `i16` | — |

#### `Ros2Unitree_hgMsgHandState`

`unitree_hg/msg/HandState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `motor_state: unitree_hg/msg/MotorState[]` | `field_motor_state` | `wire.Sequence(Ros2Unitree_hgMsgMotorState, 32)` | SDK ≤32 active elements |
| `press_sensor_state: unitree_hg/msg/PressSensorState[]` | `field_press_sensor_state` | `wire.Sequence(Ros2Unitree_hgMsgPressSensorState, 32)` | SDK ≤32 active elements |
| `imu_state: unitree_hg/msg/IMUState` | `field_imu_state` | `Ros2Unitree_hgMsgIMUState` | — |
| `power_v: float32` | `field_power_v` | `f32` | — |
| `power_a: float32` | `field_power_a` | `f32` | — |
| `system_v: float32` | `field_system_v` | `f32` | — |
| `device_v: float32` | `field_device_v` | `f32` | — |
| `error: uint32[2]` | `field_error` | `[2]u32` | Exactly 2 elements |
| `reserve: uint32[2]` | `field_reserve` | `[2]u32` | Exactly 2 elements |

#### `Ros2Unitree_hgMsgLowCmd`

`unitree_hg/msg/LowCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode_pr: uint8` | `field_mode_pr` | `u8` | — |
| `mode_machine: uint8` | `field_mode_machine` | `u8` | — |
| `motor_cmd: unitree_hg/msg/MotorCmd[35]` | `field_motor_cmd` | `[35]Ros2Unitree_hgMsgMotorCmd` | Exactly 35 elements |
| `reserve: uint32[4]` | `field_reserve` | `[4]u32` | Exactly 4 elements |
| `crc: uint32` | `field_crc` | `u32` | — |

#### `Ros2Unitree_hgMsgLowState`

`unitree_hg/msg/LowState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `version: uint32[2]` | `field_version` | `[2]u32` | Exactly 2 elements |
| `mode_pr: uint8` | `field_mode_pr` | `u8` | — |
| `mode_machine: uint8` | `field_mode_machine` | `u8` | — |
| `tick: uint32` | `field_tick` | `u32` | — |
| `imu_state: unitree_hg/msg/IMUState` | `field_imu_state` | `Ros2Unitree_hgMsgIMUState` | — |
| `motor_state: unitree_hg/msg/MotorState[35]` | `field_motor_state` | `[35]Ros2Unitree_hgMsgMotorState` | Exactly 35 elements |
| `wireless_remote: uint8[40]` | `field_wireless_remote` | `[40]u8` | Exactly 40 elements |
| `reserve: uint32[4]` | `field_reserve` | `[4]u32` | Exactly 4 elements |
| `crc: uint32` | `field_crc` | `u32` | — |

#### `Ros2Unitree_hgMsgMainBoardState`

`unitree_hg/msg/MainBoardState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `fan_state: uint16[6]` | `field_fan_state` | `[6]u16` | Exactly 6 elements |
| `temperature: int16[6]` | `field_temperature` | `[6]i16` | Exactly 6 elements |
| `value: float32[6]` | `field_value` | `[6]f32` | Exactly 6 elements |
| `state: uint32[6]` | `field_state` | `[6]u32` | Exactly 6 elements |

## Pure complete codecs

For each full type symbol `T`, substitute its exact name into the following real API pattern. The ROS1 `Ros1Unitree_legged_msgsBmsCmd` example has exactly four canonical bytes.

`encodeT(value: *T, output: []u8) wire.Error!usize`; `decodeT(bytes: []const u8) wire.Error!T`

The error set is `error{Invalid}`. Use `try` or `catch`; the returned extent/value exists only on success. Malformed input, field-domain failure and insufficient output all use `error.Invalid`. Observation helpers translate a local codec refusal to numeric 22.

The following pure ROS1 helper uses the imports above and propagates the actual codec result. It encodes the complete BmsCmd, then decodes only its initialized four-byte extent. This documentation fragment is separate from the six native communication entries.

```zig
fn bmsCommandRoundTrip() !records.Ros1Unitree_legged_msgsBmsCmd {
    var value: records.Ros1Unitree_legged_msgsBmsCmd = .{};
    var output: [4]u8 = undefined;
    const written = try records.encodeRos1Unitree_legged_msgsBmsCmd(&value, &output);
    return records.decodeRos1Unitree_legged_msgsBmsCmd(output[0..written]);
}
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

The result type is `Observation(Record)`.

| Actual field | Meaning and validity |
| --- | --- |
| `primary` | First validation/open/subscribe/poll/wait/codec status; zero means no primary failure. |
| `cleanup`, `cleanup_present` | Independent close status and whether one close was attempted after acquisition. |
| `rpc`, `rpc_present`, `polls` | Original last poll status, explicit poll presence and actual count; a local decode failure does not rewrite the original RPC fact. |
| `length` | Full uint64 native output slot. UINT64_MAX preserves the unwritten sentinel; retain it even on failure. |
| `response_present` | Whole response presence; require it before reading payload/default record storage. |
| `value`, `bytes[0..size]` | Complete owned record and reencoded canonical bytes, usable only with whole response presence. |

Every ordinary successful acquisition closes once before return. Returned records/bytes remain valid after that close; copying them creates no native owner. Keep shared mutable values serialized. Fatal traps, unrecoverable allocation failures and process termination can bypass ordinary cleanup and require outer instance retirement.

## Reporting and process status

`unitree.report(&value) -> u32`

Reporting emits one JSON object containing `primary`, `cleanup`, boolean `cleanup_present`, original `rpc_status`, boolean `rpc_present`, boolean `length_present`, exact decimal-string `length`, boolean `response_present`, `polls`, and full lowercase `wire_hex`. `length_present` means the original slot differs from the UINT64_MAX sentinel; it is not itself proof of a successful complete response. `wire_hex` is empty when response presence is false.

The report return preserves primary first, otherwise close, otherwise stdout error 5, otherwise zero. Only the command/process boundary clamps a nonzero status above 125. The C scalar adapter supplies arguments, raw transport, clock wait and stdout; the real language owns complete records, codec traversal and lifecycle choices. Haskell `command` handles one argument from getArgs, UTF-8 conversion, reporting and final exit; other entries use the original WASI argument count including the executable.

Status 11 is idle; local validation/codec refusal is 22, ABI-version incompatibility is 95, and native capacity refusal 90 remains a transport fact. Other original native owner/authority/connection/timeout/revoke statuses are preserved. Always inspect independent cleanup and presence instead of treating a default-filled record as a response.

## Qualification scope

The supported command profile is wasm32 WASI Preview 1, noeh and one thread, with Noetic/Jazzy original native interfaces. Bundled source compilation is qualified on Linux x86_64. Same-artifact AArch64 native communication is separately checked through QEMU user mode on an x86_64 Linux kernel; it qualifies neither an ARM compiler host nor physical hardware. The x86 source/codec/build evidence is recorded in [native-source-qualification.json](../../../../../../share/platform/unitree/native-source-qualification.json). Pinned frontend provenance is listed in [original compiler versions and source closures](../../../../../../share/platform/unitree/native-compiler-sources.json). Full 54-record codec coverage is distinct from live transport of the six observation types. Memory64, Preview 2, threads, Wasm EH, other distributions, physical control and robot CRC/safety behavior are outside this route's qualification.
