# Complete original interfaces, values, and fields

These references come from pinned official declarations and complete IR. ROS 1 and ROS 2 retain distinct schemas without cross-version conversion.

All fields remain in original order. Fixed arrays must be complete; dynamic ceilings are canonical admission quotas that never modify original ROS declarations.

## ROS 1

### `unitree_legged_msgs/BmsCmd`

Complete canonical byte range: 4..4.

Public value symbol: `Ros1Unitree_legged_msgsBmsCmd`; complete C type: `roswasmc_bounded_1_unitree_legged_msgs_BmsCmd`.

Complete codec identity: `UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `off` | `uint8` | Scalar or complete nested value |
| `reserve` | `uint8` | Fixed array 3 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_legged_msgs/BmsState`

Complete canonical byte range: 34..34.

Public value symbol: `Ros1Unitree_legged_msgsBmsState`; complete C type: `roswasmc_bounded_1_unitree_legged_msgs_BmsState`.

Complete codec identity: `UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `version_h` | `uint8` | Scalar or complete nested value |
| `version_l` | `uint8` | Scalar or complete nested value |
| `bms_status` | `uint8` | Scalar or complete nested value |
| `SOC` | `uint8` | Scalar or complete nested value |
| `current` | `int32` | Scalar or complete nested value |
| `cycle` | `uint16` | Scalar or complete nested value |
| `BQ_NTC` | `int8` | Fixed array 2 |
| `MCU_NTC` | `int8` | Fixed array 2 |
| `cell_vol` | `uint16` | Fixed array 10 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_legged_msgs/Cartesian`

Complete canonical byte range: 12..12.

Public value symbol: `Ros1Unitree_legged_msgsCartesian`; complete C type: `roswasmc_bounded_1_unitree_legged_msgs_Cartesian`.

Complete codec identity: `UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `x` | `float32` | Scalar or complete nested value |
| `y` | `float32` | Scalar or complete nested value |
| `z` | `float32` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_legged_msgs/LED`

Complete canonical byte range: 3..3.

Public value symbol: `Ros1Unitree_legged_msgsLED`; complete C type: `roswasmc_bounded_1_unitree_legged_msgs_LED`.

Complete codec identity: `UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `r` | `uint8` | Scalar or complete nested value |
| `g` | `uint8` | Scalar or complete nested value |
| `b` | `uint8` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_legged_msgs/HighCmd`

Complete canonical byte range: 129..129.

Public value symbol: `Ros1Unitree_legged_msgsHighCmd`; complete C type: `roswasmc_bounded_1_unitree_legged_msgs_HighCmd`.

Complete codec identity: `UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `head` | `uint8` | Fixed array 2 |
| `levelFlag` | `uint8` | Scalar or complete nested value |
| `frameReserve` | `uint8` | Scalar or complete nested value |
| `SN` | `uint32` | Fixed array 2 |
| `version` | `uint32` | Fixed array 2 |
| `bandWidth` | `uint16` | Scalar or complete nested value |
| `mode` | `uint8` | Scalar or complete nested value |
| `gaitType` | `uint8` | Scalar or complete nested value |
| `speedLevel` | `uint8` | Scalar or complete nested value |
| `footRaiseHeight` | `float32` | Scalar or complete nested value |
| `bodyHeight` | `float32` | Scalar or complete nested value |
| `position` | `float32` | Fixed array 2 |
| `euler` | `float32` | Fixed array 3 |
| `velocity` | `float32` | Fixed array 2 |
| `yawSpeed` | `float32` | Scalar or complete nested value |
| `bms` | `unitree_legged_msgs/BmsCmd` | Scalar or complete nested value |
| `led` | `unitree_legged_msgs/LED` | Fixed array 4 |
| `wirelessRemote` | `uint8` | Fixed array 40 |
| `reserve` | `uint32` | Scalar or complete nested value |
| `crc` | `uint32` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_legged_msgs/IMU`

Complete canonical byte range: 53..53.

Public value symbol: `Ros1Unitree_legged_msgsIMU`; complete C type: `roswasmc_bounded_1_unitree_legged_msgs_IMU`.

Complete codec identity: `UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `quaternion` | `float32` | Fixed array 4 |
| `gyroscope` | `float32` | Fixed array 3 |
| `accelerometer` | `float32` | Fixed array 3 |
| `rpy` | `float32` | Fixed array 3 |
| `temperature` | `int8` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_legged_msgs/MotorState`

Complete canonical byte range: 38..38.

Public value symbol: `Ros1Unitree_legged_msgsMotorState`; complete C type: `roswasmc_bounded_1_unitree_legged_msgs_MotorState`.

Complete codec identity: `UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `mode` | `uint8` | Scalar or complete nested value |
| `q` | `float32` | Scalar or complete nested value |
| `dq` | `float32` | Scalar or complete nested value |
| `ddq` | `float32` | Scalar or complete nested value |
| `tauEst` | `float32` | Scalar or complete nested value |
| `q_raw` | `float32` | Scalar or complete nested value |
| `dq_raw` | `float32` | Scalar or complete nested value |
| `ddq_raw` | `float32` | Scalar or complete nested value |
| `temperature` | `int8` | Scalar or complete nested value |
| `reserve` | `uint32` | Fixed array 2 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_legged_msgs/HighState`

Complete canonical byte range: 1087..1087.

Public value symbol: `Ros1Unitree_legged_msgsHighState`; complete C type: `roswasmc_bounded_1_unitree_legged_msgs_HighState`.

Complete codec identity: `UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `head` | `uint8` | Fixed array 2 |
| `levelFlag` | `uint8` | Scalar or complete nested value |
| `frameReserve` | `uint8` | Scalar or complete nested value |
| `SN` | `uint32` | Fixed array 2 |
| `version` | `uint32` | Fixed array 2 |
| `bandWidth` | `uint16` | Scalar or complete nested value |
| `imu` | `unitree_legged_msgs/IMU` | Scalar or complete nested value |
| `motorState` | `unitree_legged_msgs/MotorState` | Fixed array 20 |
| `bms` | `unitree_legged_msgs/BmsState` | Scalar or complete nested value |
| `footForce` | `int16` | Fixed array 4 |
| `footForceEst` | `int16` | Fixed array 4 |
| `mode` | `uint8` | Scalar or complete nested value |
| `progress` | `float32` | Scalar or complete nested value |
| `gaitType` | `uint8` | Scalar or complete nested value |
| `footRaiseHeight` | `float32` | Scalar or complete nested value |
| `position` | `float32` | Fixed array 3 |
| `bodyHeight` | `float32` | Scalar or complete nested value |
| `velocity` | `float32` | Fixed array 3 |
| `yawSpeed` | `float32` | Scalar or complete nested value |
| `rangeObstacle` | `float32` | Fixed array 4 |
| `footPosition2Body` | `unitree_legged_msgs/Cartesian` | Fixed array 4 |
| `footSpeed2Body` | `unitree_legged_msgs/Cartesian` | Fixed array 4 |
| `wirelessRemote` | `uint8` | Fixed array 40 |
| `reserve` | `uint32` | Scalar or complete nested value |
| `crc` | `uint32` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_legged_msgs/MotorCmd`

Complete canonical byte range: 33..33.

Public value symbol: `Ros1Unitree_legged_msgsMotorCmd`; complete C type: `roswasmc_bounded_1_unitree_legged_msgs_MotorCmd`.

Complete codec identity: `UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `mode` | `uint8` | Scalar or complete nested value |
| `q` | `float32` | Scalar or complete nested value |
| `dq` | `float32` | Scalar or complete nested value |
| `tau` | `float32` | Scalar or complete nested value |
| `Kp` | `float32` | Scalar or complete nested value |
| `Kd` | `float32` | Scalar or complete nested value |
| `reserve` | `uint32` | Fixed array 3 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_legged_msgs/LowCmd`

Complete canonical byte range: 734..734.

Public value symbol: `Ros1Unitree_legged_msgsLowCmd`; complete C type: `roswasmc_bounded_1_unitree_legged_msgs_LowCmd`.

Complete codec identity: `UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `head` | `uint8` | Fixed array 2 |
| `levelFlag` | `uint8` | Scalar or complete nested value |
| `frameReserve` | `uint8` | Scalar or complete nested value |
| `SN` | `uint32` | Fixed array 2 |
| `version` | `uint32` | Fixed array 2 |
| `bandWidth` | `uint16` | Scalar or complete nested value |
| `motorCmd` | `unitree_legged_msgs/MotorCmd` | Fixed array 20 |
| `bms` | `unitree_legged_msgs/BmsCmd` | Scalar or complete nested value |
| `wirelessRemote` | `uint8` | Fixed array 40 |
| `reserve` | `uint32` | Scalar or complete nested value |
| `crc` | `uint32` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_legged_msgs/LowState`

Complete canonical byte range: 1069..1069.

Public value symbol: `Ros1Unitree_legged_msgsLowState`; complete C type: `roswasmc_bounded_1_unitree_legged_msgs_LowState`.

Complete codec identity: `UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `head` | `uint8` | Fixed array 2 |
| `levelFlag` | `uint8` | Scalar or complete nested value |
| `frameReserve` | `uint8` | Scalar or complete nested value |
| `SN` | `uint32` | Fixed array 2 |
| `version` | `uint32` | Fixed array 2 |
| `bandWidth` | `uint16` | Scalar or complete nested value |
| `imu` | `unitree_legged_msgs/IMU` | Scalar or complete nested value |
| `motorState` | `unitree_legged_msgs/MotorState` | Fixed array 20 |
| `bms` | `unitree_legged_msgs/BmsState` | Scalar or complete nested value |
| `footForce` | `int16` | Fixed array 4 |
| `footForceEst` | `int16` | Fixed array 4 |
| `tick` | `uint32` | Scalar or complete nested value |
| `wirelessRemote` | `uint8` | Fixed array 40 |
| `reserve` | `uint32` | Scalar or complete nested value |
| `crc` | `uint32` | Scalar or complete nested value |
| `eeForceRaw` | `unitree_legged_msgs/Cartesian` | Fixed array 4 |
| `eeForce` | `unitree_legged_msgs/Cartesian` | Fixed array 4 |
| `position` | `unitree_legged_msgs/Cartesian` | Scalar or complete nested value |
| `velocity` | `unitree_legged_msgs/Cartesian` | Scalar or complete nested value |
| `velocity_w` | `unitree_legged_msgs/Cartesian` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

## ROS 2

### `unitree_api/msg/RequestIdentity`

Complete canonical byte range: 16..16.

Public value symbol: `Ros2Unitree_apiMsgRequestIdentity`; complete C type: `roswasmc_bounded_2_unitree_api_msg_RequestIdentity`.

Complete codec identity: `UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `id` | `int64` | Scalar or complete nested value |
| `api_id` | `int64` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_api/msg/RequestLease`

Complete canonical byte range: 8..8.

Public value symbol: `Ros2Unitree_apiMsgRequestLease`; complete C type: `roswasmc_bounded_2_unitree_api_msg_RequestLease`.

Complete codec identity: `UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `id` | `int64` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_api/msg/RequestPolicy`

Complete canonical byte range: 5..5.

Public value symbol: `Ros2Unitree_apiMsgRequestPolicy`; complete C type: `roswasmc_bounded_2_unitree_api_msg_RequestPolicy`.

Complete codec identity: `UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `priority` | `int32` | Scalar or complete nested value |
| `noreply` | `bool` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_api/msg/RequestHeader`

Complete canonical byte range: 29..29.

Public value symbol: `Ros2Unitree_apiMsgRequestHeader`; complete C type: `roswasmc_bounded_2_unitree_api_msg_RequestHeader`.

Complete codec identity: `UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `identity` | `unitree_api/msg/RequestIdentity` | Scalar or complete nested value |
| `lease` | `unitree_api/msg/RequestLease` | Scalar or complete nested value |
| `policy` | `unitree_api/msg/RequestPolicy` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_api/msg/Request`

Complete canonical byte range: 37..4133.

Public value symbol: `Ros2Unitree_apiMsgRequest`; complete C type: `roswasmc_bounded_2_unitree_api_msg_Request`.

Complete codec identity: `UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `header` | `unitree_api/msg/RequestHeader` | Scalar or complete nested value |
| `parameter` | `string` | Scalar or complete nested value; UTF-8 ≤ 2048 bytes |
| `binary` | `uint8` | Sequence 0..2048 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_api/msg/ResponseStatus`

Complete canonical byte range: 4..4.

Public value symbol: `Ros2Unitree_apiMsgResponseStatus`; complete C type: `roswasmc_bounded_2_unitree_api_msg_ResponseStatus`.

Complete codec identity: `UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `code` | `int32` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_api/msg/ResponseHeader`

Complete canonical byte range: 20..20.

Public value symbol: `Ros2Unitree_apiMsgResponseHeader`; complete C type: `roswasmc_bounded_2_unitree_api_msg_ResponseHeader`.

Complete codec identity: `UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `identity` | `unitree_api/msg/RequestIdentity` | Scalar or complete nested value |
| `status` | `unitree_api/msg/ResponseStatus` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_api/msg/Response`

Complete canonical byte range: 28..2108.

Public value symbol: `Ros2Unitree_apiMsgResponse`; complete C type: `roswasmc_bounded_2_unitree_api_msg_Response`.

Complete codec identity: `UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `header` | `unitree_api/msg/ResponseHeader` | Scalar or complete nested value |
| `data` | `string` | Scalar or complete nested value; UTF-8 ≤ 2048 bytes |
| `binary` | `int8` | Sequence 0..32 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/AudioData`

Complete canonical byte range: 12..2060.

Public value symbol: `Ros2Unitree_goMsgAudioData`; complete C type: `roswasmc_bounded_2_unitree_go_msg_AudioData`.

Complete codec identity: `UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `time_frame` | `uint64` | Scalar or complete nested value |
| `data` | `uint8` | Sequence 0..2048 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/BmsCmd`

Complete canonical byte range: 4..4.

Public value symbol: `Ros2Unitree_goMsgBmsCmd`; complete C type: `roswasmc_bounded_2_unitree_go_msg_BmsCmd`.

Complete codec identity: `UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `off` | `uint8` | Scalar or complete nested value |
| `reserve` | `uint8` | Fixed array 3 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/BmsState`

Complete canonical byte range: 44..44.

Public value symbol: `Ros2Unitree_goMsgBmsState`; complete C type: `roswasmc_bounded_2_unitree_go_msg_BmsState`.

Complete codec identity: `UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `version_high` | `uint8` | Scalar or complete nested value |
| `version_low` | `uint8` | Scalar or complete nested value |
| `status` | `uint8` | Scalar or complete nested value |
| `soc` | `uint8` | Scalar or complete nested value |
| `current` | `int32` | Scalar or complete nested value |
| `cycle` | `uint16` | Scalar or complete nested value |
| `bq_ntc` | `int8` | Fixed array 2 |
| `mcu_ntc` | `int8` | Fixed array 2 |
| `cell_vol` | `uint16` | Fixed array 15 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/Error`

Complete canonical byte range: 8..8.

Public value symbol: `Ros2Unitree_goMsgError`; complete C type: `roswasmc_bounded_2_unitree_go_msg_Error`.

Complete codec identity: `UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `source` | `uint32` | Scalar or complete nested value |
| `state` | `uint32` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/Go2FrontVideoData`

Complete canonical byte range: 20..6164.

Public value symbol: `Ros2Unitree_goMsgGo2FrontVideoData`; complete C type: `roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData`.

Complete codec identity: `UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `time_frame` | `uint64` | Scalar or complete nested value |
| `video720p` | `uint8` | Sequence 0..2048 |
| `video360p` | `uint8` | Sequence 0..2048 |
| `video180p` | `uint8` | Sequence 0..2048 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/HeightMap`

Complete canonical byte range: 36..2212.

Public value symbol: `Ros2Unitree_goMsgHeightMap`; complete C type: `roswasmc_bounded_2_unitree_go_msg_HeightMap`.

Complete codec identity: `UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `stamp` | `float64` | Scalar or complete nested value |
| `frame_id` | `string` | Scalar or complete nested value; UTF-8 ≤ 2048 bytes |
| `resolution` | `float32` | Scalar or complete nested value |
| `width` | `uint32` | Scalar or complete nested value |
| `height` | `uint32` | Scalar or complete nested value |
| `origin` | `float32` | Fixed array 2 |
| `data` | `float32` | Sequence 0..32 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/IMUState`

Complete canonical byte range: 53..53.

Public value symbol: `Ros2Unitree_goMsgIMUState`; complete C type: `roswasmc_bounded_2_unitree_go_msg_IMUState`.

Complete codec identity: `UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `quaternion` | `float32` | Fixed array 4 |
| `gyroscope` | `float32` | Fixed array 3 |
| `accelerometer` | `float32` | Fixed array 3 |
| `rpy` | `float32` | Fixed array 3 |
| `temperature` | `int8` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/InterfaceConfig`

Complete canonical byte range: 4..4.

Public value symbol: `Ros2Unitree_goMsgInterfaceConfig`; complete C type: `roswasmc_bounded_2_unitree_go_msg_InterfaceConfig`.

Complete codec identity: `UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `mode` | `uint8` | Scalar or complete nested value |
| `value` | `uint8` | Scalar or complete nested value |
| `reserve` | `uint8` | Fixed array 2 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/LidarState`

Complete canonical byte range: 81..6225.

Public value symbol: `Ros2Unitree_goMsgLidarState`; complete C type: `roswasmc_bounded_2_unitree_go_msg_LidarState`.

Complete codec identity: `UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `stamp` | `float64` | Scalar or complete nested value |
| `firmware_version` | `string` | Scalar or complete nested value; UTF-8 ≤ 2048 bytes |
| `software_version` | `string` | Scalar or complete nested value; UTF-8 ≤ 2048 bytes |
| `sdk_version` | `string` | Scalar or complete nested value; UTF-8 ≤ 2048 bytes |
| `sys_rotation_speed` | `float32` | Scalar or complete nested value |
| `com_rotation_speed` | `float32` | Scalar or complete nested value |
| `error_state` | `uint8` | Scalar or complete nested value |
| `cloud_frequency` | `float32` | Scalar or complete nested value |
| `cloud_packet_loss_rate` | `float32` | Scalar or complete nested value |
| `cloud_size` | `uint32` | Scalar or complete nested value |
| `cloud_scan_num` | `uint32` | Scalar or complete nested value |
| `imu_frequency` | `float32` | Scalar or complete nested value |
| `imu_packet_loss_rate` | `float32` | Scalar or complete nested value |
| `imu_rpy` | `float32` | Fixed array 3 |
| `serial_recv_stamp` | `float64` | Scalar or complete nested value |
| `serial_buffer_size` | `uint32` | Scalar or complete nested value |
| `serial_buffer_read` | `uint32` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/MotorCmd`

Complete canonical byte range: 33..33.

Public value symbol: `Ros2Unitree_goMsgMotorCmd`; complete C type: `roswasmc_bounded_2_unitree_go_msg_MotorCmd`.

Complete codec identity: `UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `mode` | `uint8` | Scalar or complete nested value |
| `q` | `float32` | Scalar or complete nested value |
| `dq` | `float32` | Scalar or complete nested value |
| `tau` | `float32` | Scalar or complete nested value |
| `kp` | `float32` | Scalar or complete nested value |
| `kd` | `float32` | Scalar or complete nested value |
| `reserve` | `uint32` | Fixed array 3 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/LowCmd`

Complete canonical byte range: 749..749.

Public value symbol: `Ros2Unitree_goMsgLowCmd`; complete C type: `roswasmc_bounded_2_unitree_go_msg_LowCmd`.

Complete codec identity: `UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `head` | `uint8` | Fixed array 2 |
| `level_flag` | `uint8` | Scalar or complete nested value |
| `frame_reserve` | `uint8` | Scalar or complete nested value |
| `sn` | `uint32` | Fixed array 2 |
| `version` | `uint32` | Fixed array 2 |
| `bandwidth` | `uint16` | Scalar or complete nested value |
| `motor_cmd` | `unitree_go/msg/MotorCmd` | Fixed array 20 |
| `bms_cmd` | `unitree_go/msg/BmsCmd` | Scalar or complete nested value |
| `wireless_remote` | `uint8` | Fixed array 40 |
| `led` | `uint8` | Fixed array 12 |
| `fan` | `uint8` | Fixed array 2 |
| `gpio` | `uint8` | Scalar or complete nested value |
| `reserve` | `uint32` | Scalar or complete nested value |
| `crc` | `uint32` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/MotorState`

Complete canonical byte range: 42..42.

Public value symbol: `Ros2Unitree_goMsgMotorState`; complete C type: `roswasmc_bounded_2_unitree_go_msg_MotorState`.

Complete codec identity: `UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `mode` | `uint8` | Scalar or complete nested value |
| `q` | `float32` | Scalar or complete nested value |
| `dq` | `float32` | Scalar or complete nested value |
| `ddq` | `float32` | Scalar or complete nested value |
| `tau_est` | `float32` | Scalar or complete nested value |
| `q_raw` | `float32` | Scalar or complete nested value |
| `dq_raw` | `float32` | Scalar or complete nested value |
| `ddq_raw` | `float32` | Scalar or complete nested value |
| `temperature` | `int8` | Scalar or complete nested value |
| `lost` | `uint32` | Scalar or complete nested value |
| `reserve` | `uint32` | Fixed array 2 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/LowState`

Complete canonical byte range: 1050..1050.

Public value symbol: `Ros2Unitree_goMsgLowState`; complete C type: `roswasmc_bounded_2_unitree_go_msg_LowState`.

Complete codec identity: `UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `head` | `uint8` | Fixed array 2 |
| `level_flag` | `uint8` | Scalar or complete nested value |
| `frame_reserve` | `uint8` | Scalar or complete nested value |
| `sn` | `uint32` | Fixed array 2 |
| `version` | `uint32` | Fixed array 2 |
| `bandwidth` | `uint16` | Scalar or complete nested value |
| `imu_state` | `unitree_go/msg/IMUState` | Scalar or complete nested value |
| `motor_state` | `unitree_go/msg/MotorState` | Fixed array 20 |
| `bms_state` | `unitree_go/msg/BmsState` | Scalar or complete nested value |
| `foot_force` | `int16` | Fixed array 4 |
| `foot_force_est` | `int16` | Fixed array 4 |
| `tick` | `uint32` | Scalar or complete nested value |
| `wireless_remote` | `uint8` | Fixed array 40 |
| `bit_flag` | `uint8` | Scalar or complete nested value |
| `adc_reel` | `float32` | Scalar or complete nested value |
| `temperature_ntc1` | `int8` | Scalar or complete nested value |
| `temperature_ntc2` | `int8` | Scalar or complete nested value |
| `power_v` | `float32` | Scalar or complete nested value |
| `power_a` | `float32` | Scalar or complete nested value |
| `fan_frequency` | `uint16` | Fixed array 4 |
| `reserve` | `uint32` | Scalar or complete nested value |
| `crc` | `uint32` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/MotorCmds`

Complete canonical byte range: 4..1060.

Public value symbol: `Ros2Unitree_goMsgMotorCmds`; complete C type: `roswasmc_bounded_2_unitree_go_msg_MotorCmds`.

Complete codec identity: `UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `cmds` | `unitree_go/msg/MotorCmd` | Sequence 0..32 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/MotorStates`

Complete canonical byte range: 4..1348.

Public value symbol: `Ros2Unitree_goMsgMotorStates`; complete C type: `roswasmc_bounded_2_unitree_go_msg_MotorStates`.

Complete codec identity: `UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `states` | `unitree_go/msg/MotorState` | Sequence 0..32 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/PathPoint`

Complete canonical byte range: 28..28.

Public value symbol: `Ros2Unitree_goMsgPathPoint`; complete C type: `roswasmc_bounded_2_unitree_go_msg_PathPoint`.

Complete codec identity: `UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `t_from_start` | `float32` | Scalar or complete nested value |
| `x` | `float32` | Scalar or complete nested value |
| `y` | `float32` | Scalar or complete nested value |
| `yaw` | `float32` | Scalar or complete nested value |
| `vx` | `float32` | Scalar or complete nested value |
| `vy` | `float32` | Scalar or complete nested value |
| `vyaw` | `float32` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/Req`

Complete canonical byte range: 8..4104.

Public value symbol: `Ros2Unitree_goMsgReq`; complete C type: `roswasmc_bounded_2_unitree_go_msg_Req`.

Complete codec identity: `UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `uuid` | `string` | Scalar or complete nested value; UTF-8 ≤ 2048 bytes |
| `body` | `string` | Scalar or complete nested value; UTF-8 ≤ 2048 bytes |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/Res`

Complete canonical byte range: 12..6156.

Public value symbol: `Ros2Unitree_goMsgRes`; complete C type: `roswasmc_bounded_2_unitree_go_msg_Res`.

Complete codec identity: `UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `uuid` | `string` | Scalar or complete nested value; UTF-8 ≤ 2048 bytes |
| `data` | `uint8` | Sequence 0..2048 |
| `body` | `string` | Scalar or complete nested value; UTF-8 ≤ 2048 bytes |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/SportModeCmd`

Complete canonical byte range: 887..887.

Public value symbol: `Ros2Unitree_goMsgSportModeCmd`; complete C type: `roswasmc_bounded_2_unitree_go_msg_SportModeCmd`.

Complete codec identity: `UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `mode` | `uint8` | Scalar or complete nested value |
| `gait_type` | `uint8` | Scalar or complete nested value |
| `speed_level` | `uint8` | Scalar or complete nested value |
| `foot_raise_height` | `float32` | Scalar or complete nested value |
| `body_height` | `float32` | Scalar or complete nested value |
| `position` | `float32` | Fixed array 2 |
| `euler` | `float32` | Fixed array 3 |
| `velocity` | `float32` | Fixed array 2 |
| `yaw_speed` | `float32` | Scalar or complete nested value |
| `bms_cmd` | `unitree_go/msg/BmsCmd` | Scalar or complete nested value |
| `path_point` | `unitree_go/msg/PathPoint` | Fixed array 30 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/TimeSpec`

Complete canonical byte range: 8..8.

Public value symbol: `Ros2Unitree_goMsgTimeSpec`; complete C type: `roswasmc_bounded_2_unitree_go_msg_TimeSpec`.

Complete codec identity: `UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `sec` | `int32` | Scalar or complete nested value |
| `nanosec` | `uint32` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/SportModeState`

Complete canonical byte range: 227..227.

Public value symbol: `Ros2Unitree_goMsgSportModeState`; complete C type: `roswasmc_bounded_2_unitree_go_msg_SportModeState`.

Complete codec identity: `UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `stamp` | `unitree_go/msg/TimeSpec` | Scalar or complete nested value |
| `error_code` | `uint32` | Scalar or complete nested value |
| `imu_state` | `unitree_go/msg/IMUState` | Scalar or complete nested value |
| `mode` | `uint8` | Scalar or complete nested value |
| `progress` | `float32` | Scalar or complete nested value |
| `gait_type` | `uint8` | Scalar or complete nested value |
| `foot_raise_height` | `float32` | Scalar or complete nested value |
| `position` | `float32` | Fixed array 3 |
| `body_height` | `float32` | Scalar or complete nested value |
| `velocity` | `float32` | Fixed array 3 |
| `yaw_speed` | `float32` | Scalar or complete nested value |
| `range_obstacle` | `float32` | Fixed array 4 |
| `foot_force` | `int16` | Fixed array 4 |
| `foot_position_body` | `float32` | Fixed array 12 |
| `foot_speed_body` | `float32` | Fixed array 12 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/UwbState`

Complete canonical byte range: 55..55.

Public value symbol: `Ros2Unitree_goMsgUwbState`; complete C type: `roswasmc_bounded_2_unitree_go_msg_UwbState`.

Complete codec identity: `UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `version` | `uint8` | Fixed array 2 |
| `channel` | `uint8` | Scalar or complete nested value |
| `joy_mode` | `uint8` | Scalar or complete nested value |
| `orientation_est` | `float32` | Scalar or complete nested value |
| `pitch_est` | `float32` | Scalar or complete nested value |
| `distance_est` | `float32` | Scalar or complete nested value |
| `yaw_est` | `float32` | Scalar or complete nested value |
| `tag_roll` | `float32` | Scalar or complete nested value |
| `tag_pitch` | `float32` | Scalar or complete nested value |
| `tag_yaw` | `float32` | Scalar or complete nested value |
| `base_roll` | `float32` | Scalar or complete nested value |
| `base_pitch` | `float32` | Scalar or complete nested value |
| `base_yaw` | `float32` | Scalar or complete nested value |
| `joystick` | `float32` | Fixed array 2 |
| `error_state` | `uint8` | Scalar or complete nested value |
| `buttons` | `uint8` | Scalar or complete nested value |
| `enabled_from_app` | `uint8` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/UwbSwitch`

Complete canonical byte range: 1..1.

Public value symbol: `Ros2Unitree_goMsgUwbSwitch`; complete C type: `roswasmc_bounded_2_unitree_go_msg_UwbSwitch`.

Complete codec identity: `UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `enabled` | `uint8` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_go/msg/WirelessController`

Complete canonical byte range: 18..18.

Public value symbol: `Ros2Unitree_goMsgWirelessController`; complete C type: `roswasmc_bounded_2_unitree_go_msg_WirelessController`.

Complete codec identity: `UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `lx` | `float32` | Scalar or complete nested value |
| `ly` | `float32` | Scalar or complete nested value |
| `rx` | `float32` | Scalar or complete nested value |
| `ry` | `float32` | Scalar or complete nested value |
| `keys` | `uint16` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_hg/msg/BmsCmd`

Complete canonical byte range: 41..41.

Public value symbol: `Ros2Unitree_hgMsgBmsCmd`; complete C type: `roswasmc_bounded_2_unitree_hg_msg_BmsCmd`.

Complete codec identity: `UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `cmd` | `uint8` | Scalar or complete nested value |
| `reserve` | `uint8` | Fixed array 40 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_hg/msg/BmsState`

Complete canonical byte range: 161..161.

Public value symbol: `Ros2Unitree_hgMsgBmsState`; complete C type: `roswasmc_bounded_2_unitree_hg_msg_BmsState`.

Complete codec identity: `UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `version_high` | `uint8` | Scalar or complete nested value |
| `version_low` | `uint8` | Scalar or complete nested value |
| `fn` | `uint8` | Scalar or complete nested value |
| `cell_vol` | `uint16` | Fixed array 40 |
| `bmsvoltage` | `uint32` | Fixed array 3 |
| `current` | `int32` | Scalar or complete nested value |
| `soc` | `uint8` | Scalar or complete nested value |
| `soh` | `uint8` | Scalar or complete nested value |
| `temperature` | `int16` | Fixed array 12 |
| `cycle` | `uint16` | Scalar or complete nested value |
| `manufacturer_date` | `uint16` | Scalar or complete nested value |
| `bmsstate` | `uint32` | Fixed array 5 |
| `reserve` | `uint32` | Fixed array 3 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_hg/msg/MotorCmd`

Complete canonical byte range: 25..25.

Public value symbol: `Ros2Unitree_hgMsgMotorCmd`; complete C type: `roswasmc_bounded_2_unitree_hg_msg_MotorCmd`.

Complete codec identity: `UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `mode` | `uint8` | Scalar or complete nested value |
| `q` | `float32` | Scalar or complete nested value |
| `dq` | `float32` | Scalar or complete nested value |
| `tau` | `float32` | Scalar or complete nested value |
| `kp` | `float32` | Scalar or complete nested value |
| `kd` | `float32` | Scalar or complete nested value |
| `reserve` | `uint32` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_hg/msg/HandCmd`

Complete canonical byte range: 20..820.

Public value symbol: `Ros2Unitree_hgMsgHandCmd`; complete C type: `roswasmc_bounded_2_unitree_hg_msg_HandCmd`.

Complete codec identity: `UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `motor_cmd` | `unitree_hg/msg/MotorCmd` | Sequence 0..32 |
| `reserve` | `uint32` | Fixed array 4 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_hg/msg/MotorState`

Complete canonical byte range: 53..53.

Public value symbol: `Ros2Unitree_hgMsgMotorState`; complete C type: `roswasmc_bounded_2_unitree_hg_msg_MotorState`.

Complete codec identity: `UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `mode` | `uint8` | Scalar or complete nested value |
| `q` | `float32` | Scalar or complete nested value |
| `dq` | `float32` | Scalar or complete nested value |
| `ddq` | `float32` | Scalar or complete nested value |
| `tau_est` | `float32` | Scalar or complete nested value |
| `temperature` | `int16` | Fixed array 2 |
| `vol` | `float32` | Scalar or complete nested value |
| `sensor` | `uint32` | Fixed array 2 |
| `motorstate` | `uint32` | Scalar or complete nested value |
| `reserve` | `uint32` | Fixed array 4 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_hg/msg/PressSensorState`

Complete canonical byte range: 104..104.

Public value symbol: `Ros2Unitree_hgMsgPressSensorState`; complete C type: `roswasmc_bounded_2_unitree_hg_msg_PressSensorState`.

Complete codec identity: `UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `pressure` | `float32` | Fixed array 12 |
| `temperature` | `float32` | Fixed array 12 |
| `lost` | `uint32` | Scalar or complete nested value |
| `reserve` | `uint32` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_hg/msg/IMUState`

Complete canonical byte range: 54..54.

Public value symbol: `Ros2Unitree_hgMsgIMUState`; complete C type: `roswasmc_bounded_2_unitree_hg_msg_IMUState`.

Complete codec identity: `UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `quaternion` | `float32` | Fixed array 4 |
| `gyroscope` | `float32` | Fixed array 3 |
| `accelerometer` | `float32` | Fixed array 3 |
| `rpy` | `float32` | Fixed array 3 |
| `temperature` | `int16` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_hg/msg/HandState`

Complete canonical byte range: 94..5118.

Public value symbol: `Ros2Unitree_hgMsgHandState`; complete C type: `roswasmc_bounded_2_unitree_hg_msg_HandState`.

Complete codec identity: `UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `motor_state` | `unitree_hg/msg/MotorState` | Sequence 0..32 |
| `press_sensor_state` | `unitree_hg/msg/PressSensorState` | Sequence 0..32 |
| `imu_state` | `unitree_hg/msg/IMUState` | Scalar or complete nested value |
| `power_v` | `float32` | Scalar or complete nested value |
| `power_a` | `float32` | Scalar or complete nested value |
| `system_v` | `float32` | Scalar or complete nested value |
| `device_v` | `float32` | Scalar or complete nested value |
| `error` | `uint32` | Fixed array 2 |
| `reserve` | `uint32` | Fixed array 2 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_hg/msg/LowCmd`

Complete canonical byte range: 897..897.

Public value symbol: `Ros2Unitree_hgMsgLowCmd`; complete C type: `roswasmc_bounded_2_unitree_hg_msg_LowCmd`.

Complete codec identity: `UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `mode_pr` | `uint8` | Scalar or complete nested value |
| `mode_machine` | `uint8` | Scalar or complete nested value |
| `motor_cmd` | `unitree_hg/msg/MotorCmd` | Fixed array 35 |
| `reserve` | `uint32` | Fixed array 4 |
| `crc` | `uint32` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_hg/msg/LowState`

Complete canonical byte range: 1983..1983.

Public value symbol: `Ros2Unitree_hgMsgLowState`; complete C type: `roswasmc_bounded_2_unitree_hg_msg_LowState`.

Complete codec identity: `UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `version` | `uint32` | Fixed array 2 |
| `mode_pr` | `uint8` | Scalar or complete nested value |
| `mode_machine` | `uint8` | Scalar or complete nested value |
| `tick` | `uint32` | Scalar or complete nested value |
| `imu_state` | `unitree_hg/msg/IMUState` | Scalar or complete nested value |
| `motor_state` | `unitree_hg/msg/MotorState` | Fixed array 35 |
| `wireless_remote` | `uint8` | Fixed array 40 |
| `reserve` | `uint32` | Fixed array 4 |
| `crc` | `uint32` | Scalar or complete nested value |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

### `unitree_hg/msg/MainBoardState`

Complete canonical byte range: 72..72.

Public value symbol: `Ros2Unitree_hgMsgMainBoardState`; complete C type: `roswasmc_bounded_2_unitree_hg_msg_MainBoardState`.

Complete codec identity: `UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6`.

| Original field | Complete native type | Shape and finite capacity |
| --- | --- | --- |
| `fan_state` | `uint16` | Fixed array 6 |
| `temperature` | `int16` | Fixed array 6 |
| `value` | `float32` | Fixed array 6 |
| `state` | `uint32` | Fixed array 6 |

C `_valid` checks all fields, `_wire_size` measures validated values, and `_encode`/`_decode` perform complete transactional conversion; their prefix is the C type name above.

Encoding validates all fields and measures before output. Complete decoding refuses truncation, trailing bytes, exceeded bounds, and nonfinite floats. C output stays disjoint from input/length storage and remains unchanged on refusal; Go, Rust, and AS return independently owned complete values. Original units, frames, and CRC fields remain intact without scaling, conversion, or device CRC certification.
