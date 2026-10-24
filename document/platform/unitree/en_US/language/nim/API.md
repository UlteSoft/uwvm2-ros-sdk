# Unitree Nim — API

[Complete original schemas](../NATIVE_SCHEMA.md) · [API](API.md) · [Six examples](EXAMPLES.md)

## Public modules and backend selection

Select `unitree/nim/ros1/observation` or `unitree/nim/ros2/observation`. The facade exports its common observer helpers; import the selected `records` module explicitly for pure codecs and record names. Xmake invokes the genuine Nim frontend and its ordinary C backend, then LLVM compiles and links that generated C.

```nim
import unitree/nim/ros1/observation
import unitree/nim/ros1/records as records
```

The fragment selects ROS1. For ROS2, select the ROS2 target and its matching facade/record namespace. The Xmake mapping, record family and trusted runtime deployment must agree; the observer never falls back to another family.

- ROS1: [facade](../../../../../../include/platform/unitree/nim/ros1/observation.nim) · [records](../../../../../../include/platform/unitree/nim/ros1/records.nim)
- ROS2: [facade](../../../../../../include/platform/unitree/nim/ros2/observation.nim) · [records](../../../../../../include/platform/unitree/nim/ros2/records.nim)
- [core](../../../../../../include/platform/unitree/nim/observation.nim) · [wire](../../../../../../include/platform/unitree/nim/wire.nim)

## Complete records and scalar representation

The catalog has 11 ROS1 records/115 original fields and 43 ROS2 records/257 fields. The tables below include every type and every public field identifier. Nested records preserve the same mapping recursively. Native MD5/RIHS registration identity, canonical codec identity and wire byte bounds are separate catalog facts; neither a type nor a codec grants ROS authority.

`NativeText[N, false]` owns `textBytes` and `textSize`; `NativeSequence[T, N]` owns `sequenceItems` and `sequenceSize`. Fixed arrays use `array[N, T]`. The admitted profile uses `mm:none`, `exceptions:goto` and disabled threads. Keep input/output spans disjoint and live for the synchronous call.

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
| `off: uint8` | `field_off` | `uint8` | — |
| `reserve: uint8[3]` | `field_reserve` | `array[3, uint8]` | Exactly 3 elements |

#### `Ros1Unitree_legged_msgsBmsState`

`unitree_legged_msgs/BmsState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `version_h: uint8` | `field_version_h` | `uint8` | — |
| `version_l: uint8` | `field_version_l` | `uint8` | — |
| `bms_status: uint8` | `field_bms_status` | `uint8` | — |
| `SOC: uint8` | `field_SOC` | `uint8` | — |
| `current: int32` | `field_current` | `int32` | — |
| `cycle: uint16` | `field_cycle` | `uint16` | — |
| `BQ_NTC: int8[2]` | `field_BQ_NTC` | `array[2, int8]` | Exactly 2 elements |
| `MCU_NTC: int8[2]` | `field_MCU_NTC` | `array[2, int8]` | Exactly 2 elements |
| `cell_vol: uint16[10]` | `field_cell_vol` | `array[10, uint16]` | Exactly 10 elements |

#### `Ros1Unitree_legged_msgsCartesian`

`unitree_legged_msgs/Cartesian`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `x: float32` | `field_x` | `float32` | — |
| `y: float32` | `field_y` | `float32` | — |
| `z: float32` | `field_z` | `float32` | — |

#### `Ros1Unitree_legged_msgsLED`

`unitree_legged_msgs/LED`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `r: uint8` | `field_r` | `uint8` | — |
| `g: uint8` | `field_g` | `uint8` | — |
| `b: uint8` | `field_b` | `uint8` | — |

#### `Ros1Unitree_legged_msgsHighCmd`

`unitree_legged_msgs/HighCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `head: uint8[2]` | `field_head` | `array[2, uint8]` | Exactly 2 elements |
| `levelFlag: uint8` | `field_levelFlag` | `uint8` | — |
| `frameReserve: uint8` | `field_frameReserve` | `uint8` | — |
| `SN: uint32[2]` | `field_SN` | `array[2, uint32]` | Exactly 2 elements |
| `version: uint32[2]` | `field_version` | `array[2, uint32]` | Exactly 2 elements |
| `bandWidth: uint16` | `field_bandWidth` | `uint16` | — |
| `mode: uint8` | `field_mode` | `uint8` | — |
| `gaitType: uint8` | `field_gaitType` | `uint8` | — |
| `speedLevel: uint8` | `field_speedLevel` | `uint8` | — |
| `footRaiseHeight: float32` | `field_footRaiseHeight` | `float32` | — |
| `bodyHeight: float32` | `field_bodyHeight` | `float32` | — |
| `position: float32[2]` | `field_position` | `array[2, float32]` | Exactly 2 elements |
| `euler: float32[3]` | `field_euler` | `array[3, float32]` | Exactly 3 elements |
| `velocity: float32[2]` | `field_velocity` | `array[2, float32]` | Exactly 2 elements |
| `yawSpeed: float32` | `field_yawSpeed` | `float32` | — |
| `bms: unitree_legged_msgs/BmsCmd` | `field_bms` | `Ros1Unitree_legged_msgsBmsCmd` | — |
| `led: unitree_legged_msgs/LED[4]` | `field_led` | `array[4, Ros1Unitree_legged_msgsLED]` | Exactly 4 elements |
| `wirelessRemote: uint8[40]` | `field_wirelessRemote` | `array[40, uint8]` | Exactly 40 elements |
| `reserve: uint32` | `field_reserve` | `uint32` | — |
| `crc: uint32` | `field_crc` | `uint32` | — |

#### `Ros1Unitree_legged_msgsIMU`

`unitree_legged_msgs/IMU`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `quaternion: float32[4]` | `field_quaternion` | `array[4, float32]` | Exactly 4 elements |
| `gyroscope: float32[3]` | `field_gyroscope` | `array[3, float32]` | Exactly 3 elements |
| `accelerometer: float32[3]` | `field_accelerometer` | `array[3, float32]` | Exactly 3 elements |
| `rpy: float32[3]` | `field_rpy` | `array[3, float32]` | Exactly 3 elements |
| `temperature: int8` | `field_temperature` | `int8` | — |

#### `Ros1Unitree_legged_msgsMotorState`

`unitree_legged_msgs/MotorState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `uint8` | — |
| `q: float32` | `field_q` | `float32` | — |
| `dq: float32` | `field_dq` | `float32` | — |
| `ddq: float32` | `field_ddq` | `float32` | — |
| `tauEst: float32` | `field_tauEst` | `float32` | — |
| `q_raw: float32` | `field_q_raw` | `float32` | — |
| `dq_raw: float32` | `field_dq_raw` | `float32` | — |
| `ddq_raw: float32` | `field_ddq_raw` | `float32` | — |
| `temperature: int8` | `field_temperature` | `int8` | — |
| `reserve: uint32[2]` | `field_reserve` | `array[2, uint32]` | Exactly 2 elements |

#### `Ros1Unitree_legged_msgsHighState`

`unitree_legged_msgs/HighState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `head: uint8[2]` | `field_head` | `array[2, uint8]` | Exactly 2 elements |
| `levelFlag: uint8` | `field_levelFlag` | `uint8` | — |
| `frameReserve: uint8` | `field_frameReserve` | `uint8` | — |
| `SN: uint32[2]` | `field_SN` | `array[2, uint32]` | Exactly 2 elements |
| `version: uint32[2]` | `field_version` | `array[2, uint32]` | Exactly 2 elements |
| `bandWidth: uint16` | `field_bandWidth` | `uint16` | — |
| `imu: unitree_legged_msgs/IMU` | `field_imu` | `Ros1Unitree_legged_msgsIMU` | — |
| `motorState: unitree_legged_msgs/MotorState[20]` | `field_motorState` | `array[20, Ros1Unitree_legged_msgsMotorState]` | Exactly 20 elements |
| `bms: unitree_legged_msgs/BmsState` | `field_bms` | `Ros1Unitree_legged_msgsBmsState` | — |
| `footForce: int16[4]` | `field_footForce` | `array[4, int16]` | Exactly 4 elements |
| `footForceEst: int16[4]` | `field_footForceEst` | `array[4, int16]` | Exactly 4 elements |
| `mode: uint8` | `field_mode` | `uint8` | — |
| `progress: float32` | `field_progress` | `float32` | — |
| `gaitType: uint8` | `field_gaitType` | `uint8` | — |
| `footRaiseHeight: float32` | `field_footRaiseHeight` | `float32` | — |
| `position: float32[3]` | `field_position` | `array[3, float32]` | Exactly 3 elements |
| `bodyHeight: float32` | `field_bodyHeight` | `float32` | — |
| `velocity: float32[3]` | `field_velocity` | `array[3, float32]` | Exactly 3 elements |
| `yawSpeed: float32` | `field_yawSpeed` | `float32` | — |
| `rangeObstacle: float32[4]` | `field_rangeObstacle` | `array[4, float32]` | Exactly 4 elements |
| `footPosition2Body: unitree_legged_msgs/Cartesian[4]` | `field_footPosition2Body` | `array[4, Ros1Unitree_legged_msgsCartesian]` | Exactly 4 elements |
| `footSpeed2Body: unitree_legged_msgs/Cartesian[4]` | `field_footSpeed2Body` | `array[4, Ros1Unitree_legged_msgsCartesian]` | Exactly 4 elements |
| `wirelessRemote: uint8[40]` | `field_wirelessRemote` | `array[40, uint8]` | Exactly 40 elements |
| `reserve: uint32` | `field_reserve` | `uint32` | — |
| `crc: uint32` | `field_crc` | `uint32` | — |

#### `Ros1Unitree_legged_msgsMotorCmd`

`unitree_legged_msgs/MotorCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `uint8` | — |
| `q: float32` | `field_q` | `float32` | — |
| `dq: float32` | `field_dq` | `float32` | — |
| `tau: float32` | `field_tau` | `float32` | — |
| `Kp: float32` | `field_Kp` | `float32` | — |
| `Kd: float32` | `field_Kd` | `float32` | — |
| `reserve: uint32[3]` | `field_reserve` | `array[3, uint32]` | Exactly 3 elements |

#### `Ros1Unitree_legged_msgsLowCmd`

`unitree_legged_msgs/LowCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `head: uint8[2]` | `field_head` | `array[2, uint8]` | Exactly 2 elements |
| `levelFlag: uint8` | `field_levelFlag` | `uint8` | — |
| `frameReserve: uint8` | `field_frameReserve` | `uint8` | — |
| `SN: uint32[2]` | `field_SN` | `array[2, uint32]` | Exactly 2 elements |
| `version: uint32[2]` | `field_version` | `array[2, uint32]` | Exactly 2 elements |
| `bandWidth: uint16` | `field_bandWidth` | `uint16` | — |
| `motorCmd: unitree_legged_msgs/MotorCmd[20]` | `field_motorCmd` | `array[20, Ros1Unitree_legged_msgsMotorCmd]` | Exactly 20 elements |
| `bms: unitree_legged_msgs/BmsCmd` | `field_bms` | `Ros1Unitree_legged_msgsBmsCmd` | — |
| `wirelessRemote: uint8[40]` | `field_wirelessRemote` | `array[40, uint8]` | Exactly 40 elements |
| `reserve: uint32` | `field_reserve` | `uint32` | — |
| `crc: uint32` | `field_crc` | `uint32` | — |

#### `Ros1Unitree_legged_msgsLowState`

`unitree_legged_msgs/LowState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `head: uint8[2]` | `field_head` | `array[2, uint8]` | Exactly 2 elements |
| `levelFlag: uint8` | `field_levelFlag` | `uint8` | — |
| `frameReserve: uint8` | `field_frameReserve` | `uint8` | — |
| `SN: uint32[2]` | `field_SN` | `array[2, uint32]` | Exactly 2 elements |
| `version: uint32[2]` | `field_version` | `array[2, uint32]` | Exactly 2 elements |
| `bandWidth: uint16` | `field_bandWidth` | `uint16` | — |
| `imu: unitree_legged_msgs/IMU` | `field_imu` | `Ros1Unitree_legged_msgsIMU` | — |
| `motorState: unitree_legged_msgs/MotorState[20]` | `field_motorState` | `array[20, Ros1Unitree_legged_msgsMotorState]` | Exactly 20 elements |
| `bms: unitree_legged_msgs/BmsState` | `field_bms` | `Ros1Unitree_legged_msgsBmsState` | — |
| `footForce: int16[4]` | `field_footForce` | `array[4, int16]` | Exactly 4 elements |
| `footForceEst: int16[4]` | `field_footForceEst` | `array[4, int16]` | Exactly 4 elements |
| `tick: uint32` | `field_tick` | `uint32` | — |
| `wirelessRemote: uint8[40]` | `field_wirelessRemote` | `array[40, uint8]` | Exactly 40 elements |
| `reserve: uint32` | `field_reserve` | `uint32` | — |
| `crc: uint32` | `field_crc` | `uint32` | — |
| `eeForceRaw: unitree_legged_msgs/Cartesian[4]` | `field_eeForceRaw` | `array[4, Ros1Unitree_legged_msgsCartesian]` | Exactly 4 elements |
| `eeForce: unitree_legged_msgs/Cartesian[4]` | `field_eeForce` | `array[4, Ros1Unitree_legged_msgsCartesian]` | Exactly 4 elements |
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
| `id: int64` | `field_id` | `int64` | — |
| `api_id: int64` | `field_api_id` | `int64` | — |

#### `Ros2Unitree_apiMsgRequestLease`

`unitree_api/msg/RequestLease`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `id: int64` | `field_id` | `int64` | — |

#### `Ros2Unitree_apiMsgRequestPolicy`

`unitree_api/msg/RequestPolicy`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `priority: int32` | `field_priority` | `int32` | — |
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
| `parameter: string` | `field_parameter` | `NativeText[2048, false]` | SDK ≤2048 UTF-8 bytes |
| `binary: uint8[]` | `field_binary` | `NativeSequence[uint8, 2048]` | SDK ≤2048 active elements |

#### `Ros2Unitree_apiMsgResponseStatus`

`unitree_api/msg/ResponseStatus`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `code: int32` | `field_code` | `int32` | — |

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
| `data: string` | `field_data` | `NativeText[2048, false]` | SDK ≤2048 UTF-8 bytes |
| `binary: int8[]` | `field_binary` | `NativeSequence[int8, 32]` | SDK ≤32 active elements |

#### `Ros2Unitree_goMsgAudioData`

`unitree_go/msg/AudioData`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `time_frame: uint64` | `field_time_frame` | `uint64` | — |
| `data: uint8[]` | `field_data` | `NativeSequence[uint8, 2048]` | SDK ≤2048 active elements |

#### `Ros2Unitree_goMsgBmsCmd`

`unitree_go/msg/BmsCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `off: uint8` | `field_off` | `uint8` | — |
| `reserve: uint8[3]` | `field_reserve` | `array[3, uint8]` | Exactly 3 elements |

#### `Ros2Unitree_goMsgBmsState`

`unitree_go/msg/BmsState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `version_high: uint8` | `field_version_high` | `uint8` | — |
| `version_low: uint8` | `field_version_low` | `uint8` | — |
| `status: uint8` | `field_status` | `uint8` | — |
| `soc: uint8` | `field_soc` | `uint8` | — |
| `current: int32` | `field_current` | `int32` | — |
| `cycle: uint16` | `field_cycle` | `uint16` | — |
| `bq_ntc: int8[2]` | `field_bq_ntc` | `array[2, int8]` | Exactly 2 elements |
| `mcu_ntc: int8[2]` | `field_mcu_ntc` | `array[2, int8]` | Exactly 2 elements |
| `cell_vol: uint16[15]` | `field_cell_vol` | `array[15, uint16]` | Exactly 15 elements |

#### `Ros2Unitree_goMsgError`

`unitree_go/msg/Error`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `source: uint32` | `field_source` | `uint32` | — |
| `state: uint32` | `field_state` | `uint32` | — |

#### `Ros2Unitree_goMsgGo2FrontVideoData`

`unitree_go/msg/Go2FrontVideoData`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `time_frame: uint64` | `field_time_frame` | `uint64` | — |
| `video720p: uint8[]` | `field_video720p` | `NativeSequence[uint8, 2048]` | SDK ≤2048 active elements |
| `video360p: uint8[]` | `field_video360p` | `NativeSequence[uint8, 2048]` | SDK ≤2048 active elements |
| `video180p: uint8[]` | `field_video180p` | `NativeSequence[uint8, 2048]` | SDK ≤2048 active elements |

#### `Ros2Unitree_goMsgHeightMap`

`unitree_go/msg/HeightMap`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `stamp: float64` | `field_stamp` | `float64` | — |
| `frame_id: string` | `field_frame_id` | `NativeText[2048, false]` | SDK ≤2048 UTF-8 bytes |
| `resolution: float32` | `field_resolution` | `float32` | — |
| `width: uint32` | `field_width` | `uint32` | — |
| `height: uint32` | `field_height` | `uint32` | — |
| `origin: float32[2]` | `field_origin` | `array[2, float32]` | Exactly 2 elements |
| `data: float32[]` | `field_data` | `NativeSequence[float32, 32]` | SDK ≤32 active elements |

#### `Ros2Unitree_goMsgIMUState`

`unitree_go/msg/IMUState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `quaternion: float32[4]` | `field_quaternion` | `array[4, float32]` | Exactly 4 elements |
| `gyroscope: float32[3]` | `field_gyroscope` | `array[3, float32]` | Exactly 3 elements |
| `accelerometer: float32[3]` | `field_accelerometer` | `array[3, float32]` | Exactly 3 elements |
| `rpy: float32[3]` | `field_rpy` | `array[3, float32]` | Exactly 3 elements |
| `temperature: int8` | `field_temperature` | `int8` | — |

#### `Ros2Unitree_goMsgInterfaceConfig`

`unitree_go/msg/InterfaceConfig`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `uint8` | — |
| `value: uint8` | `field_value` | `uint8` | — |
| `reserve: uint8[2]` | `field_reserve` | `array[2, uint8]` | Exactly 2 elements |

#### `Ros2Unitree_goMsgLidarState`

`unitree_go/msg/LidarState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `stamp: float64` | `field_stamp` | `float64` | — |
| `firmware_version: string` | `field_firmware_version` | `NativeText[2048, false]` | SDK ≤2048 UTF-8 bytes |
| `software_version: string` | `field_software_version` | `NativeText[2048, false]` | SDK ≤2048 UTF-8 bytes |
| `sdk_version: string` | `field_sdk_version` | `NativeText[2048, false]` | SDK ≤2048 UTF-8 bytes |
| `sys_rotation_speed: float32` | `field_sys_rotation_speed` | `float32` | — |
| `com_rotation_speed: float32` | `field_com_rotation_speed` | `float32` | — |
| `error_state: uint8` | `field_error_state` | `uint8` | — |
| `cloud_frequency: float32` | `field_cloud_frequency` | `float32` | — |
| `cloud_packet_loss_rate: float32` | `field_cloud_packet_loss_rate` | `float32` | — |
| `cloud_size: uint32` | `field_cloud_size` | `uint32` | — |
| `cloud_scan_num: uint32` | `field_cloud_scan_num` | `uint32` | — |
| `imu_frequency: float32` | `field_imu_frequency` | `float32` | — |
| `imu_packet_loss_rate: float32` | `field_imu_packet_loss_rate` | `float32` | — |
| `imu_rpy: float32[3]` | `field_imu_rpy` | `array[3, float32]` | Exactly 3 elements |
| `serial_recv_stamp: float64` | `field_serial_recv_stamp` | `float64` | — |
| `serial_buffer_size: uint32` | `field_serial_buffer_size` | `uint32` | — |
| `serial_buffer_read: uint32` | `field_serial_buffer_read` | `uint32` | — |

#### `Ros2Unitree_goMsgMotorCmd`

`unitree_go/msg/MotorCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `uint8` | — |
| `q: float32` | `field_q` | `float32` | — |
| `dq: float32` | `field_dq` | `float32` | — |
| `tau: float32` | `field_tau` | `float32` | — |
| `kp: float32` | `field_kp` | `float32` | — |
| `kd: float32` | `field_kd` | `float32` | — |
| `reserve: uint32[3]` | `field_reserve` | `array[3, uint32]` | Exactly 3 elements |

#### `Ros2Unitree_goMsgLowCmd`

`unitree_go/msg/LowCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `head: uint8[2]` | `field_head` | `array[2, uint8]` | Exactly 2 elements |
| `level_flag: uint8` | `field_level_flag` | `uint8` | — |
| `frame_reserve: uint8` | `field_frame_reserve` | `uint8` | — |
| `sn: uint32[2]` | `field_sn` | `array[2, uint32]` | Exactly 2 elements |
| `version: uint32[2]` | `field_version` | `array[2, uint32]` | Exactly 2 elements |
| `bandwidth: uint16` | `field_bandwidth` | `uint16` | — |
| `motor_cmd: unitree_go/msg/MotorCmd[20]` | `field_motor_cmd` | `array[20, Ros2Unitree_goMsgMotorCmd]` | Exactly 20 elements |
| `bms_cmd: unitree_go/msg/BmsCmd` | `field_bms_cmd` | `Ros2Unitree_goMsgBmsCmd` | — |
| `wireless_remote: uint8[40]` | `field_wireless_remote` | `array[40, uint8]` | Exactly 40 elements |
| `led: uint8[12]` | `field_led` | `array[12, uint8]` | Exactly 12 elements |
| `fan: uint8[2]` | `field_fan` | `array[2, uint8]` | Exactly 2 elements |
| `gpio: uint8` | `field_gpio` | `uint8` | — |
| `reserve: uint32` | `field_reserve` | `uint32` | — |
| `crc: uint32` | `field_crc` | `uint32` | — |

#### `Ros2Unitree_goMsgMotorState`

`unitree_go/msg/MotorState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `uint8` | — |
| `q: float32` | `field_q` | `float32` | — |
| `dq: float32` | `field_dq` | `float32` | — |
| `ddq: float32` | `field_ddq` | `float32` | — |
| `tau_est: float32` | `field_tau_est` | `float32` | — |
| `q_raw: float32` | `field_q_raw` | `float32` | — |
| `dq_raw: float32` | `field_dq_raw` | `float32` | — |
| `ddq_raw: float32` | `field_ddq_raw` | `float32` | — |
| `temperature: int8` | `field_temperature` | `int8` | — |
| `lost: uint32` | `field_lost` | `uint32` | — |
| `reserve: uint32[2]` | `field_reserve` | `array[2, uint32]` | Exactly 2 elements |

#### `Ros2Unitree_goMsgLowState`

`unitree_go/msg/LowState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `head: uint8[2]` | `field_head` | `array[2, uint8]` | Exactly 2 elements |
| `level_flag: uint8` | `field_level_flag` | `uint8` | — |
| `frame_reserve: uint8` | `field_frame_reserve` | `uint8` | — |
| `sn: uint32[2]` | `field_sn` | `array[2, uint32]` | Exactly 2 elements |
| `version: uint32[2]` | `field_version` | `array[2, uint32]` | Exactly 2 elements |
| `bandwidth: uint16` | `field_bandwidth` | `uint16` | — |
| `imu_state: unitree_go/msg/IMUState` | `field_imu_state` | `Ros2Unitree_goMsgIMUState` | — |
| `motor_state: unitree_go/msg/MotorState[20]` | `field_motor_state` | `array[20, Ros2Unitree_goMsgMotorState]` | Exactly 20 elements |
| `bms_state: unitree_go/msg/BmsState` | `field_bms_state` | `Ros2Unitree_goMsgBmsState` | — |
| `foot_force: int16[4]` | `field_foot_force` | `array[4, int16]` | Exactly 4 elements |
| `foot_force_est: int16[4]` | `field_foot_force_est` | `array[4, int16]` | Exactly 4 elements |
| `tick: uint32` | `field_tick` | `uint32` | — |
| `wireless_remote: uint8[40]` | `field_wireless_remote` | `array[40, uint8]` | Exactly 40 elements |
| `bit_flag: uint8` | `field_bit_flag` | `uint8` | — |
| `adc_reel: float32` | `field_adc_reel` | `float32` | — |
| `temperature_ntc1: int8` | `field_temperature_ntc1` | `int8` | — |
| `temperature_ntc2: int8` | `field_temperature_ntc2` | `int8` | — |
| `power_v: float32` | `field_power_v` | `float32` | — |
| `power_a: float32` | `field_power_a` | `float32` | — |
| `fan_frequency: uint16[4]` | `field_fan_frequency` | `array[4, uint16]` | Exactly 4 elements |
| `reserve: uint32` | `field_reserve` | `uint32` | — |
| `crc: uint32` | `field_crc` | `uint32` | — |

#### `Ros2Unitree_goMsgMotorCmds`

`unitree_go/msg/MotorCmds`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `cmds: unitree_go/msg/MotorCmd[]` | `field_cmds` | `NativeSequence[Ros2Unitree_goMsgMotorCmd, 32]` | SDK ≤32 active elements |

#### `Ros2Unitree_goMsgMotorStates`

`unitree_go/msg/MotorStates`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `states: unitree_go/msg/MotorState[]` | `field_states` | `NativeSequence[Ros2Unitree_goMsgMotorState, 32]` | SDK ≤32 active elements |

#### `Ros2Unitree_goMsgPathPoint`

`unitree_go/msg/PathPoint`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `t_from_start: float32` | `field_t_from_start` | `float32` | — |
| `x: float32` | `field_x` | `float32` | — |
| `y: float32` | `field_y` | `float32` | — |
| `yaw: float32` | `field_yaw` | `float32` | — |
| `vx: float32` | `field_vx` | `float32` | — |
| `vy: float32` | `field_vy` | `float32` | — |
| `vyaw: float32` | `field_vyaw` | `float32` | — |

#### `Ros2Unitree_goMsgReq`

`unitree_go/msg/Req`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `uuid: string` | `field_uuid` | `NativeText[2048, false]` | SDK ≤2048 UTF-8 bytes |
| `body: string` | `field_body` | `NativeText[2048, false]` | SDK ≤2048 UTF-8 bytes |

#### `Ros2Unitree_goMsgRes`

`unitree_go/msg/Res`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `uuid: string` | `field_uuid` | `NativeText[2048, false]` | SDK ≤2048 UTF-8 bytes |
| `data: uint8[]` | `field_data` | `NativeSequence[uint8, 2048]` | SDK ≤2048 active elements |
| `body: string` | `field_body` | `NativeText[2048, false]` | SDK ≤2048 UTF-8 bytes |

#### `Ros2Unitree_goMsgSportModeCmd`

`unitree_go/msg/SportModeCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `uint8` | — |
| `gait_type: uint8` | `field_gait_type` | `uint8` | — |
| `speed_level: uint8` | `field_speed_level` | `uint8` | — |
| `foot_raise_height: float32` | `field_foot_raise_height` | `float32` | — |
| `body_height: float32` | `field_body_height` | `float32` | — |
| `position: float32[2]` | `field_position` | `array[2, float32]` | Exactly 2 elements |
| `euler: float32[3]` | `field_euler` | `array[3, float32]` | Exactly 3 elements |
| `velocity: float32[2]` | `field_velocity` | `array[2, float32]` | Exactly 2 elements |
| `yaw_speed: float32` | `field_yaw_speed` | `float32` | — |
| `bms_cmd: unitree_go/msg/BmsCmd` | `field_bms_cmd` | `Ros2Unitree_goMsgBmsCmd` | — |
| `path_point: unitree_go/msg/PathPoint[30]` | `field_path_point` | `array[30, Ros2Unitree_goMsgPathPoint]` | Exactly 30 elements |

#### `Ros2Unitree_goMsgTimeSpec`

`unitree_go/msg/TimeSpec`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `sec: int32` | `field_sec` | `int32` | — |
| `nanosec: uint32` | `field_nanosec` | `uint32` | — |

#### `Ros2Unitree_goMsgSportModeState`

`unitree_go/msg/SportModeState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `stamp: unitree_go/msg/TimeSpec` | `field_stamp` | `Ros2Unitree_goMsgTimeSpec` | — |
| `error_code: uint32` | `field_error_code` | `uint32` | — |
| `imu_state: unitree_go/msg/IMUState` | `field_imu_state` | `Ros2Unitree_goMsgIMUState` | — |
| `mode: uint8` | `field_mode` | `uint8` | — |
| `progress: float32` | `field_progress` | `float32` | — |
| `gait_type: uint8` | `field_gait_type` | `uint8` | — |
| `foot_raise_height: float32` | `field_foot_raise_height` | `float32` | — |
| `position: float32[3]` | `field_position` | `array[3, float32]` | Exactly 3 elements |
| `body_height: float32` | `field_body_height` | `float32` | — |
| `velocity: float32[3]` | `field_velocity` | `array[3, float32]` | Exactly 3 elements |
| `yaw_speed: float32` | `field_yaw_speed` | `float32` | — |
| `range_obstacle: float32[4]` | `field_range_obstacle` | `array[4, float32]` | Exactly 4 elements |
| `foot_force: int16[4]` | `field_foot_force` | `array[4, int16]` | Exactly 4 elements |
| `foot_position_body: float32[12]` | `field_foot_position_body` | `array[12, float32]` | Exactly 12 elements |
| `foot_speed_body: float32[12]` | `field_foot_speed_body` | `array[12, float32]` | Exactly 12 elements |

#### `Ros2Unitree_goMsgUwbState`

`unitree_go/msg/UwbState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `version: uint8[2]` | `field_version` | `array[2, uint8]` | Exactly 2 elements |
| `channel: uint8` | `field_channel` | `uint8` | — |
| `joy_mode: uint8` | `field_joy_mode` | `uint8` | — |
| `orientation_est: float32` | `field_orientation_est` | `float32` | — |
| `pitch_est: float32` | `field_pitch_est` | `float32` | — |
| `distance_est: float32` | `field_distance_est` | `float32` | — |
| `yaw_est: float32` | `field_yaw_est` | `float32` | — |
| `tag_roll: float32` | `field_tag_roll` | `float32` | — |
| `tag_pitch: float32` | `field_tag_pitch` | `float32` | — |
| `tag_yaw: float32` | `field_tag_yaw` | `float32` | — |
| `base_roll: float32` | `field_base_roll` | `float32` | — |
| `base_pitch: float32` | `field_base_pitch` | `float32` | — |
| `base_yaw: float32` | `field_base_yaw` | `float32` | — |
| `joystick: float32[2]` | `field_joystick` | `array[2, float32]` | Exactly 2 elements |
| `error_state: uint8` | `field_error_state` | `uint8` | — |
| `buttons: uint8` | `field_buttons` | `uint8` | — |
| `enabled_from_app: uint8` | `field_enabled_from_app` | `uint8` | — |

#### `Ros2Unitree_goMsgUwbSwitch`

`unitree_go/msg/UwbSwitch`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `enabled: uint8` | `field_enabled` | `uint8` | — |

#### `Ros2Unitree_goMsgWirelessController`

`unitree_go/msg/WirelessController`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `lx: float32` | `field_lx` | `float32` | — |
| `ly: float32` | `field_ly` | `float32` | — |
| `rx: float32` | `field_rx` | `float32` | — |
| `ry: float32` | `field_ry` | `float32` | — |
| `keys: uint16` | `field_keys` | `uint16` | — |

#### `Ros2Unitree_hgMsgBmsCmd`

`unitree_hg/msg/BmsCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `cmd: uint8` | `field_cmd` | `uint8` | — |
| `reserve: uint8[40]` | `field_reserve` | `array[40, uint8]` | Exactly 40 elements |

#### `Ros2Unitree_hgMsgBmsState`

`unitree_hg/msg/BmsState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `version_high: uint8` | `field_version_high` | `uint8` | — |
| `version_low: uint8` | `field_version_low` | `uint8` | — |
| `fn: uint8` | `field_fn` | `uint8` | — |
| `cell_vol: uint16[40]` | `field_cell_vol` | `array[40, uint16]` | Exactly 40 elements |
| `bmsvoltage: uint32[3]` | `field_bmsvoltage` | `array[3, uint32]` | Exactly 3 elements |
| `current: int32` | `field_current` | `int32` | — |
| `soc: uint8` | `field_soc` | `uint8` | — |
| `soh: uint8` | `field_soh` | `uint8` | — |
| `temperature: int16[12]` | `field_temperature` | `array[12, int16]` | Exactly 12 elements |
| `cycle: uint16` | `field_cycle` | `uint16` | — |
| `manufacturer_date: uint16` | `field_manufacturer_date` | `uint16` | — |
| `bmsstate: uint32[5]` | `field_bmsstate` | `array[5, uint32]` | Exactly 5 elements |
| `reserve: uint32[3]` | `field_reserve` | `array[3, uint32]` | Exactly 3 elements |

#### `Ros2Unitree_hgMsgMotorCmd`

`unitree_hg/msg/MotorCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `uint8` | — |
| `q: float32` | `field_q` | `float32` | — |
| `dq: float32` | `field_dq` | `float32` | — |
| `tau: float32` | `field_tau` | `float32` | — |
| `kp: float32` | `field_kp` | `float32` | — |
| `kd: float32` | `field_kd` | `float32` | — |
| `reserve: uint32` | `field_reserve` | `uint32` | — |

#### `Ros2Unitree_hgMsgHandCmd`

`unitree_hg/msg/HandCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `motor_cmd: unitree_hg/msg/MotorCmd[]` | `field_motor_cmd` | `NativeSequence[Ros2Unitree_hgMsgMotorCmd, 32]` | SDK ≤32 active elements |
| `reserve: uint32[4]` | `field_reserve` | `array[4, uint32]` | Exactly 4 elements |

#### `Ros2Unitree_hgMsgMotorState`

`unitree_hg/msg/MotorState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode: uint8` | `field_mode` | `uint8` | — |
| `q: float32` | `field_q` | `float32` | — |
| `dq: float32` | `field_dq` | `float32` | — |
| `ddq: float32` | `field_ddq` | `float32` | — |
| `tau_est: float32` | `field_tau_est` | `float32` | — |
| `temperature: int16[2]` | `field_temperature` | `array[2, int16]` | Exactly 2 elements |
| `vol: float32` | `field_vol` | `float32` | — |
| `sensor: uint32[2]` | `field_sensor` | `array[2, uint32]` | Exactly 2 elements |
| `motorstate: uint32` | `field_motorstate` | `uint32` | — |
| `reserve: uint32[4]` | `field_reserve` | `array[4, uint32]` | Exactly 4 elements |

#### `Ros2Unitree_hgMsgPressSensorState`

`unitree_hg/msg/PressSensorState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `pressure: float32[12]` | `field_pressure` | `array[12, float32]` | Exactly 12 elements |
| `temperature: float32[12]` | `field_temperature` | `array[12, float32]` | Exactly 12 elements |
| `lost: uint32` | `field_lost` | `uint32` | — |
| `reserve: uint32` | `field_reserve` | `uint32` | — |

#### `Ros2Unitree_hgMsgIMUState`

`unitree_hg/msg/IMUState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `quaternion: float32[4]` | `field_quaternion` | `array[4, float32]` | Exactly 4 elements |
| `gyroscope: float32[3]` | `field_gyroscope` | `array[3, float32]` | Exactly 3 elements |
| `accelerometer: float32[3]` | `field_accelerometer` | `array[3, float32]` | Exactly 3 elements |
| `rpy: float32[3]` | `field_rpy` | `array[3, float32]` | Exactly 3 elements |
| `temperature: int16` | `field_temperature` | `int16` | — |

#### `Ros2Unitree_hgMsgHandState`

`unitree_hg/msg/HandState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `motor_state: unitree_hg/msg/MotorState[]` | `field_motor_state` | `NativeSequence[Ros2Unitree_hgMsgMotorState, 32]` | SDK ≤32 active elements |
| `press_sensor_state: unitree_hg/msg/PressSensorState[]` | `field_press_sensor_state` | `NativeSequence[Ros2Unitree_hgMsgPressSensorState, 32]` | SDK ≤32 active elements |
| `imu_state: unitree_hg/msg/IMUState` | `field_imu_state` | `Ros2Unitree_hgMsgIMUState` | — |
| `power_v: float32` | `field_power_v` | `float32` | — |
| `power_a: float32` | `field_power_a` | `float32` | — |
| `system_v: float32` | `field_system_v` | `float32` | — |
| `device_v: float32` | `field_device_v` | `float32` | — |
| `error: uint32[2]` | `field_error` | `array[2, uint32]` | Exactly 2 elements |
| `reserve: uint32[2]` | `field_reserve` | `array[2, uint32]` | Exactly 2 elements |

#### `Ros2Unitree_hgMsgLowCmd`

`unitree_hg/msg/LowCmd`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `mode_pr: uint8` | `field_mode_pr` | `uint8` | — |
| `mode_machine: uint8` | `field_mode_machine` | `uint8` | — |
| `motor_cmd: unitree_hg/msg/MotorCmd[35]` | `field_motor_cmd` | `array[35, Ros2Unitree_hgMsgMotorCmd]` | Exactly 35 elements |
| `reserve: uint32[4]` | `field_reserve` | `array[4, uint32]` | Exactly 4 elements |
| `crc: uint32` | `field_crc` | `uint32` | — |

#### `Ros2Unitree_hgMsgLowState`

`unitree_hg/msg/LowState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `version: uint32[2]` | `field_version` | `array[2, uint32]` | Exactly 2 elements |
| `mode_pr: uint8` | `field_mode_pr` | `uint8` | — |
| `mode_machine: uint8` | `field_mode_machine` | `uint8` | — |
| `tick: uint32` | `field_tick` | `uint32` | — |
| `imu_state: unitree_hg/msg/IMUState` | `field_imu_state` | `Ros2Unitree_hgMsgIMUState` | — |
| `motor_state: unitree_hg/msg/MotorState[35]` | `field_motor_state` | `array[35, Ros2Unitree_hgMsgMotorState]` | Exactly 35 elements |
| `wireless_remote: uint8[40]` | `field_wireless_remote` | `array[40, uint8]` | Exactly 40 elements |
| `reserve: uint32[4]` | `field_reserve` | `array[4, uint32]` | Exactly 4 elements |
| `crc: uint32` | `field_crc` | `uint32` | — |

#### `Ros2Unitree_hgMsgMainBoardState`

`unitree_hg/msg/MainBoardState`

| Original field/declaration | Public field | Public language type | Bound |
| --- | --- | --- | --- |
| `fan_state: uint16[6]` | `field_fan_state` | `array[6, uint16]` | Exactly 6 elements |
| `temperature: int16[6]` | `field_temperature` | `array[6, int16]` | Exactly 6 elements |
| `value: float32[6]` | `field_value` | `array[6, float32]` | Exactly 6 elements |
| `state: uint32[6]` | `field_state` | `array[6, uint32]` | Exactly 6 elements |

## Pure complete codecs

For each full type symbol `T`, substitute its exact name into the following real API pattern. The ROS1 `Ros1Unitree_legged_msgsBmsCmd` example has exactly four canonical bytes.

`encode(value: var T; output: var openArray[byte]; written: var int): uint32`; `decodeT(bytes: openArray[byte]; value: var T): uint32`

Zero means success and 22 rejects a malformed record, capacity failure, truncation or trailing bytes. `written` starts at zero and is valid after successful encoding. Decoding uses a private candidate, leaving the caller's output unchanged on canonical refusal.

The following pure ROS1 helper uses the imports above and propagates the actual codec result. It encodes the complete BmsCmd, then decodes only its initialized four-byte extent. This documentation fragment is separate from the six native communication entries.

```nim
proc bmsCommandRoundTrip(decoded: var records.Ros1Unitree_legged_msgsBmsCmd): uint32 =
    var value: records.Ros1Unitree_legged_msgsBmsCmd
    var output: array[4, byte]
    var written: int
    let code = records.encode(value, output, written)
    if code != 0:
        return code
    records.decodeRos1Unitree_legged_msgsBmsCmd(
        output.toOpenArray(0, written - 1), decoded)
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

The result type is `Observation[Record]`.

| Actual field | Meaning and validity |
| --- | --- |
| `primary` | First validation/open/subscribe/poll/wait/codec status; zero means no primary failure. |
| `cleanup`, `cleanupPresent` | Independent close status and whether one close was attempted after acquisition. |
| `rpc`, `rpcPresent`, `polls` | Original last poll status, explicit poll presence and actual count; a local decode failure does not rewrite the original RPC fact. |
| `length` | Full uint64 native output slot. UINT64_MAX preserves the unwritten sentinel; retain it even on failure. |
| `responsePresent` | Whole response presence; require it before reading payload/default record storage. |
| `value`, initialized `bytes` prefix of `size` bytes | Complete owned record and reencoded canonical bytes, usable only with whole response presence. |

Every ordinary successful acquisition closes once before return. Returned records/bytes remain valid after that close; copying them creates no native owner. Keep shared mutable values serialized. Fatal traps, unrecoverable allocation failures and process termination can bypass ordinary cleanup and require outer instance retirement.

## Reporting and process status

`report(value) -> uint32`

Reporting emits one JSON object containing `primary`, `cleanup`, boolean `cleanup_present`, original `rpc_status`, boolean `rpc_present`, boolean `length_present`, exact decimal-string `length`, boolean `response_present`, `polls`, and full lowercase `wire_hex`. `length_present` means the original slot differs from the UINT64_MAX sentinel; it is not itself proof of a successful complete response. `wire_hex` is empty when response presence is false.

The report return preserves primary first, otherwise close, otherwise stdout error 5, otherwise zero. Only the command/process boundary clamps a nonzero status above 125. The C scalar adapter supplies arguments, raw transport, clock wait and stdout; the real language owns complete records, codec traversal and lifecycle choices. Haskell `command` handles one argument from getArgs, UTF-8 conversion, reporting and final exit; other entries use the original WASI argument count including the executable.

Status 11 is idle; local validation/codec refusal is 22, ABI-version incompatibility is 95, and native capacity refusal 90 remains a transport fact. Other original native owner/authority/connection/timeout/revoke statuses are preserved. Always inspect independent cleanup and presence instead of treating a default-filled record as a response.

## Qualification scope

The supported command profile is wasm32 WASI Preview 1, noeh and one thread, with Noetic/Jazzy original native interfaces. Bundled source compilation is qualified on Linux x86_64. Same-artifact AArch64 native communication is separately checked through QEMU user mode on an x86_64 Linux kernel; it qualifies neither an ARM compiler host nor physical hardware. The x86 source/codec/build evidence is recorded in [native-source-qualification.json](../../../../../../share/platform/unitree/native-source-qualification.json). Pinned frontend provenance is listed in [original compiler versions and source closures](../../../../../../share/platform/unitree/native-compiler-sources.json). Full 54-record codec coverage is distinct from live transport of the six observation types. Memory64, Preview 2, threads, Wasm EH, other distributions, physical control and robot CRC/safety behavior are outside this route's qualification.
