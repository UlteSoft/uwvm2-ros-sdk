# 完整原生接口、值类型与字段

以下内容来自固定官方定义与完整 IR。ROS 1 与 ROS 2 保持独立 schema，不执行跨版本转换。

所有字段严格按原始顺序列出。固定数组必须完整存在；动态上限是 canonical 接受配额，不修改原始 ROS 声明。

## ROS 1

### `unitree_legged_msgs/BmsCmd`

完整 canonical 字节范围：4..4.

公开值符号：`Ros1Unitree_legged_msgsBmsCmd`; C 完整类型：`roswasmc_bounded_1_unitree_legged_msgs_BmsCmd`.

完整 codec identity：`UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `off` | `uint8` | 标量或完整嵌套值 |
| `reserve` | `uint8` | 固定数组 3 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_legged_msgs/BmsState`

完整 canonical 字节范围：34..34.

公开值符号：`Ros1Unitree_legged_msgsBmsState`; C 完整类型：`roswasmc_bounded_1_unitree_legged_msgs_BmsState`.

完整 codec identity：`UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `version_h` | `uint8` | 标量或完整嵌套值 |
| `version_l` | `uint8` | 标量或完整嵌套值 |
| `bms_status` | `uint8` | 标量或完整嵌套值 |
| `SOC` | `uint8` | 标量或完整嵌套值 |
| `current` | `int32` | 标量或完整嵌套值 |
| `cycle` | `uint16` | 标量或完整嵌套值 |
| `BQ_NTC` | `int8` | 固定数组 2 |
| `MCU_NTC` | `int8` | 固定数组 2 |
| `cell_vol` | `uint16` | 固定数组 10 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_legged_msgs/Cartesian`

完整 canonical 字节范围：12..12.

公开值符号：`Ros1Unitree_legged_msgsCartesian`; C 完整类型：`roswasmc_bounded_1_unitree_legged_msgs_Cartesian`.

完整 codec identity：`UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `x` | `float32` | 标量或完整嵌套值 |
| `y` | `float32` | 标量或完整嵌套值 |
| `z` | `float32` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_legged_msgs/LED`

完整 canonical 字节范围：3..3.

公开值符号：`Ros1Unitree_legged_msgsLED`; C 完整类型：`roswasmc_bounded_1_unitree_legged_msgs_LED`.

完整 codec identity：`UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `r` | `uint8` | 标量或完整嵌套值 |
| `g` | `uint8` | 标量或完整嵌套值 |
| `b` | `uint8` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_legged_msgs/HighCmd`

完整 canonical 字节范围：129..129.

公开值符号：`Ros1Unitree_legged_msgsHighCmd`; C 完整类型：`roswasmc_bounded_1_unitree_legged_msgs_HighCmd`.

完整 codec identity：`UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `head` | `uint8` | 固定数组 2 |
| `levelFlag` | `uint8` | 标量或完整嵌套值 |
| `frameReserve` | `uint8` | 标量或完整嵌套值 |
| `SN` | `uint32` | 固定数组 2 |
| `version` | `uint32` | 固定数组 2 |
| `bandWidth` | `uint16` | 标量或完整嵌套值 |
| `mode` | `uint8` | 标量或完整嵌套值 |
| `gaitType` | `uint8` | 标量或完整嵌套值 |
| `speedLevel` | `uint8` | 标量或完整嵌套值 |
| `footRaiseHeight` | `float32` | 标量或完整嵌套值 |
| `bodyHeight` | `float32` | 标量或完整嵌套值 |
| `position` | `float32` | 固定数组 2 |
| `euler` | `float32` | 固定数组 3 |
| `velocity` | `float32` | 固定数组 2 |
| `yawSpeed` | `float32` | 标量或完整嵌套值 |
| `bms` | `unitree_legged_msgs/BmsCmd` | 标量或完整嵌套值 |
| `led` | `unitree_legged_msgs/LED` | 固定数组 4 |
| `wirelessRemote` | `uint8` | 固定数组 40 |
| `reserve` | `uint32` | 标量或完整嵌套值 |
| `crc` | `uint32` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_legged_msgs/IMU`

完整 canonical 字节范围：53..53.

公开值符号：`Ros1Unitree_legged_msgsIMU`; C 完整类型：`roswasmc_bounded_1_unitree_legged_msgs_IMU`.

完整 codec identity：`UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `quaternion` | `float32` | 固定数组 4 |
| `gyroscope` | `float32` | 固定数组 3 |
| `accelerometer` | `float32` | 固定数组 3 |
| `rpy` | `float32` | 固定数组 3 |
| `temperature` | `int8` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_legged_msgs/MotorState`

完整 canonical 字节范围：38..38.

公开值符号：`Ros1Unitree_legged_msgsMotorState`; C 完整类型：`roswasmc_bounded_1_unitree_legged_msgs_MotorState`.

完整 codec identity：`UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `mode` | `uint8` | 标量或完整嵌套值 |
| `q` | `float32` | 标量或完整嵌套值 |
| `dq` | `float32` | 标量或完整嵌套值 |
| `ddq` | `float32` | 标量或完整嵌套值 |
| `tauEst` | `float32` | 标量或完整嵌套值 |
| `q_raw` | `float32` | 标量或完整嵌套值 |
| `dq_raw` | `float32` | 标量或完整嵌套值 |
| `ddq_raw` | `float32` | 标量或完整嵌套值 |
| `temperature` | `int8` | 标量或完整嵌套值 |
| `reserve` | `uint32` | 固定数组 2 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_legged_msgs/HighState`

完整 canonical 字节范围：1087..1087.

公开值符号：`Ros1Unitree_legged_msgsHighState`; C 完整类型：`roswasmc_bounded_1_unitree_legged_msgs_HighState`.

完整 codec identity：`UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `head` | `uint8` | 固定数组 2 |
| `levelFlag` | `uint8` | 标量或完整嵌套值 |
| `frameReserve` | `uint8` | 标量或完整嵌套值 |
| `SN` | `uint32` | 固定数组 2 |
| `version` | `uint32` | 固定数组 2 |
| `bandWidth` | `uint16` | 标量或完整嵌套值 |
| `imu` | `unitree_legged_msgs/IMU` | 标量或完整嵌套值 |
| `motorState` | `unitree_legged_msgs/MotorState` | 固定数组 20 |
| `bms` | `unitree_legged_msgs/BmsState` | 标量或完整嵌套值 |
| `footForce` | `int16` | 固定数组 4 |
| `footForceEst` | `int16` | 固定数组 4 |
| `mode` | `uint8` | 标量或完整嵌套值 |
| `progress` | `float32` | 标量或完整嵌套值 |
| `gaitType` | `uint8` | 标量或完整嵌套值 |
| `footRaiseHeight` | `float32` | 标量或完整嵌套值 |
| `position` | `float32` | 固定数组 3 |
| `bodyHeight` | `float32` | 标量或完整嵌套值 |
| `velocity` | `float32` | 固定数组 3 |
| `yawSpeed` | `float32` | 标量或完整嵌套值 |
| `rangeObstacle` | `float32` | 固定数组 4 |
| `footPosition2Body` | `unitree_legged_msgs/Cartesian` | 固定数组 4 |
| `footSpeed2Body` | `unitree_legged_msgs/Cartesian` | 固定数组 4 |
| `wirelessRemote` | `uint8` | 固定数组 40 |
| `reserve` | `uint32` | 标量或完整嵌套值 |
| `crc` | `uint32` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_legged_msgs/MotorCmd`

完整 canonical 字节范围：33..33.

公开值符号：`Ros1Unitree_legged_msgsMotorCmd`; C 完整类型：`roswasmc_bounded_1_unitree_legged_msgs_MotorCmd`.

完整 codec identity：`UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `mode` | `uint8` | 标量或完整嵌套值 |
| `q` | `float32` | 标量或完整嵌套值 |
| `dq` | `float32` | 标量或完整嵌套值 |
| `tau` | `float32` | 标量或完整嵌套值 |
| `Kp` | `float32` | 标量或完整嵌套值 |
| `Kd` | `float32` | 标量或完整嵌套值 |
| `reserve` | `uint32` | 固定数组 3 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_legged_msgs/LowCmd`

完整 canonical 字节范围：734..734.

公开值符号：`Ros1Unitree_legged_msgsLowCmd`; C 完整类型：`roswasmc_bounded_1_unitree_legged_msgs_LowCmd`.

完整 codec identity：`UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `head` | `uint8` | 固定数组 2 |
| `levelFlag` | `uint8` | 标量或完整嵌套值 |
| `frameReserve` | `uint8` | 标量或完整嵌套值 |
| `SN` | `uint32` | 固定数组 2 |
| `version` | `uint32` | 固定数组 2 |
| `bandWidth` | `uint16` | 标量或完整嵌套值 |
| `motorCmd` | `unitree_legged_msgs/MotorCmd` | 固定数组 20 |
| `bms` | `unitree_legged_msgs/BmsCmd` | 标量或完整嵌套值 |
| `wirelessRemote` | `uint8` | 固定数组 40 |
| `reserve` | `uint32` | 标量或完整嵌套值 |
| `crc` | `uint32` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_legged_msgs/LowState`

完整 canonical 字节范围：1069..1069.

公开值符号：`Ros1Unitree_legged_msgsLowState`; C 完整类型：`roswasmc_bounded_1_unitree_legged_msgs_LowState`.

完整 codec identity：`UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `head` | `uint8` | 固定数组 2 |
| `levelFlag` | `uint8` | 标量或完整嵌套值 |
| `frameReserve` | `uint8` | 标量或完整嵌套值 |
| `SN` | `uint32` | 固定数组 2 |
| `version` | `uint32` | 固定数组 2 |
| `bandWidth` | `uint16` | 标量或完整嵌套值 |
| `imu` | `unitree_legged_msgs/IMU` | 标量或完整嵌套值 |
| `motorState` | `unitree_legged_msgs/MotorState` | 固定数组 20 |
| `bms` | `unitree_legged_msgs/BmsState` | 标量或完整嵌套值 |
| `footForce` | `int16` | 固定数组 4 |
| `footForceEst` | `int16` | 固定数组 4 |
| `tick` | `uint32` | 标量或完整嵌套值 |
| `wirelessRemote` | `uint8` | 固定数组 40 |
| `reserve` | `uint32` | 标量或完整嵌套值 |
| `crc` | `uint32` | 标量或完整嵌套值 |
| `eeForceRaw` | `unitree_legged_msgs/Cartesian` | 固定数组 4 |
| `eeForce` | `unitree_legged_msgs/Cartesian` | 固定数组 4 |
| `position` | `unitree_legged_msgs/Cartesian` | 标量或完整嵌套值 |
| `velocity` | `unitree_legged_msgs/Cartesian` | 标量或完整嵌套值 |
| `velocity_w` | `unitree_legged_msgs/Cartesian` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

## ROS 2

### `unitree_api/msg/RequestIdentity`

完整 canonical 字节范围：16..16.

公开值符号：`Ros2Unitree_apiMsgRequestIdentity`; C 完整类型：`roswasmc_bounded_2_unitree_api_msg_RequestIdentity`.

完整 codec identity：`UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `id` | `int64` | 标量或完整嵌套值 |
| `api_id` | `int64` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_api/msg/RequestLease`

完整 canonical 字节范围：8..8.

公开值符号：`Ros2Unitree_apiMsgRequestLease`; C 完整类型：`roswasmc_bounded_2_unitree_api_msg_RequestLease`.

完整 codec identity：`UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `id` | `int64` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_api/msg/RequestPolicy`

完整 canonical 字节范围：5..5.

公开值符号：`Ros2Unitree_apiMsgRequestPolicy`; C 完整类型：`roswasmc_bounded_2_unitree_api_msg_RequestPolicy`.

完整 codec identity：`UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `priority` | `int32` | 标量或完整嵌套值 |
| `noreply` | `bool` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_api/msg/RequestHeader`

完整 canonical 字节范围：29..29.

公开值符号：`Ros2Unitree_apiMsgRequestHeader`; C 完整类型：`roswasmc_bounded_2_unitree_api_msg_RequestHeader`.

完整 codec identity：`UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `identity` | `unitree_api/msg/RequestIdentity` | 标量或完整嵌套值 |
| `lease` | `unitree_api/msg/RequestLease` | 标量或完整嵌套值 |
| `policy` | `unitree_api/msg/RequestPolicy` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_api/msg/Request`

完整 canonical 字节范围：37..4133.

公开值符号：`Ros2Unitree_apiMsgRequest`; C 完整类型：`roswasmc_bounded_2_unitree_api_msg_Request`.

完整 codec identity：`UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `header` | `unitree_api/msg/RequestHeader` | 标量或完整嵌套值 |
| `parameter` | `string` | 标量或完整嵌套值; UTF-8 ≤ 2048 字节 |
| `binary` | `uint8` | 序列 0..2048 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_api/msg/ResponseStatus`

完整 canonical 字节范围：4..4.

公开值符号：`Ros2Unitree_apiMsgResponseStatus`; C 完整类型：`roswasmc_bounded_2_unitree_api_msg_ResponseStatus`.

完整 codec identity：`UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `code` | `int32` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_api/msg/ResponseHeader`

完整 canonical 字节范围：20..20.

公开值符号：`Ros2Unitree_apiMsgResponseHeader`; C 完整类型：`roswasmc_bounded_2_unitree_api_msg_ResponseHeader`.

完整 codec identity：`UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `identity` | `unitree_api/msg/RequestIdentity` | 标量或完整嵌套值 |
| `status` | `unitree_api/msg/ResponseStatus` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_api/msg/Response`

完整 canonical 字节范围：28..2108.

公开值符号：`Ros2Unitree_apiMsgResponse`; C 完整类型：`roswasmc_bounded_2_unitree_api_msg_Response`.

完整 codec identity：`UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `header` | `unitree_api/msg/ResponseHeader` | 标量或完整嵌套值 |
| `data` | `string` | 标量或完整嵌套值; UTF-8 ≤ 2048 字节 |
| `binary` | `int8` | 序列 0..32 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/AudioData`

完整 canonical 字节范围：12..2060.

公开值符号：`Ros2Unitree_goMsgAudioData`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_AudioData`.

完整 codec identity：`UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `time_frame` | `uint64` | 标量或完整嵌套值 |
| `data` | `uint8` | 序列 0..2048 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/BmsCmd`

完整 canonical 字节范围：4..4.

公开值符号：`Ros2Unitree_goMsgBmsCmd`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_BmsCmd`.

完整 codec identity：`UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `off` | `uint8` | 标量或完整嵌套值 |
| `reserve` | `uint8` | 固定数组 3 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/BmsState`

完整 canonical 字节范围：44..44.

公开值符号：`Ros2Unitree_goMsgBmsState`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_BmsState`.

完整 codec identity：`UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `version_high` | `uint8` | 标量或完整嵌套值 |
| `version_low` | `uint8` | 标量或完整嵌套值 |
| `status` | `uint8` | 标量或完整嵌套值 |
| `soc` | `uint8` | 标量或完整嵌套值 |
| `current` | `int32` | 标量或完整嵌套值 |
| `cycle` | `uint16` | 标量或完整嵌套值 |
| `bq_ntc` | `int8` | 固定数组 2 |
| `mcu_ntc` | `int8` | 固定数组 2 |
| `cell_vol` | `uint16` | 固定数组 15 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/Error`

完整 canonical 字节范围：8..8.

公开值符号：`Ros2Unitree_goMsgError`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_Error`.

完整 codec identity：`UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `source` | `uint32` | 标量或完整嵌套值 |
| `state` | `uint32` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/Go2FrontVideoData`

完整 canonical 字节范围：20..6164.

公开值符号：`Ros2Unitree_goMsgGo2FrontVideoData`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData`.

完整 codec identity：`UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `time_frame` | `uint64` | 标量或完整嵌套值 |
| `video720p` | `uint8` | 序列 0..2048 |
| `video360p` | `uint8` | 序列 0..2048 |
| `video180p` | `uint8` | 序列 0..2048 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/HeightMap`

完整 canonical 字节范围：36..2212.

公开值符号：`Ros2Unitree_goMsgHeightMap`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_HeightMap`.

完整 codec identity：`UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `stamp` | `float64` | 标量或完整嵌套值 |
| `frame_id` | `string` | 标量或完整嵌套值; UTF-8 ≤ 2048 字节 |
| `resolution` | `float32` | 标量或完整嵌套值 |
| `width` | `uint32` | 标量或完整嵌套值 |
| `height` | `uint32` | 标量或完整嵌套值 |
| `origin` | `float32` | 固定数组 2 |
| `data` | `float32` | 序列 0..32 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/IMUState`

完整 canonical 字节范围：53..53.

公开值符号：`Ros2Unitree_goMsgIMUState`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_IMUState`.

完整 codec identity：`UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `quaternion` | `float32` | 固定数组 4 |
| `gyroscope` | `float32` | 固定数组 3 |
| `accelerometer` | `float32` | 固定数组 3 |
| `rpy` | `float32` | 固定数组 3 |
| `temperature` | `int8` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/InterfaceConfig`

完整 canonical 字节范围：4..4.

公开值符号：`Ros2Unitree_goMsgInterfaceConfig`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_InterfaceConfig`.

完整 codec identity：`UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `mode` | `uint8` | 标量或完整嵌套值 |
| `value` | `uint8` | 标量或完整嵌套值 |
| `reserve` | `uint8` | 固定数组 2 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/LidarState`

完整 canonical 字节范围：81..6225.

公开值符号：`Ros2Unitree_goMsgLidarState`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_LidarState`.

完整 codec identity：`UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `stamp` | `float64` | 标量或完整嵌套值 |
| `firmware_version` | `string` | 标量或完整嵌套值; UTF-8 ≤ 2048 字节 |
| `software_version` | `string` | 标量或完整嵌套值; UTF-8 ≤ 2048 字节 |
| `sdk_version` | `string` | 标量或完整嵌套值; UTF-8 ≤ 2048 字节 |
| `sys_rotation_speed` | `float32` | 标量或完整嵌套值 |
| `com_rotation_speed` | `float32` | 标量或完整嵌套值 |
| `error_state` | `uint8` | 标量或完整嵌套值 |
| `cloud_frequency` | `float32` | 标量或完整嵌套值 |
| `cloud_packet_loss_rate` | `float32` | 标量或完整嵌套值 |
| `cloud_size` | `uint32` | 标量或完整嵌套值 |
| `cloud_scan_num` | `uint32` | 标量或完整嵌套值 |
| `imu_frequency` | `float32` | 标量或完整嵌套值 |
| `imu_packet_loss_rate` | `float32` | 标量或完整嵌套值 |
| `imu_rpy` | `float32` | 固定数组 3 |
| `serial_recv_stamp` | `float64` | 标量或完整嵌套值 |
| `serial_buffer_size` | `uint32` | 标量或完整嵌套值 |
| `serial_buffer_read` | `uint32` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/MotorCmd`

完整 canonical 字节范围：33..33.

公开值符号：`Ros2Unitree_goMsgMotorCmd`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_MotorCmd`.

完整 codec identity：`UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `mode` | `uint8` | 标量或完整嵌套值 |
| `q` | `float32` | 标量或完整嵌套值 |
| `dq` | `float32` | 标量或完整嵌套值 |
| `tau` | `float32` | 标量或完整嵌套值 |
| `kp` | `float32` | 标量或完整嵌套值 |
| `kd` | `float32` | 标量或完整嵌套值 |
| `reserve` | `uint32` | 固定数组 3 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/LowCmd`

完整 canonical 字节范围：749..749.

公开值符号：`Ros2Unitree_goMsgLowCmd`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_LowCmd`.

完整 codec identity：`UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `head` | `uint8` | 固定数组 2 |
| `level_flag` | `uint8` | 标量或完整嵌套值 |
| `frame_reserve` | `uint8` | 标量或完整嵌套值 |
| `sn` | `uint32` | 固定数组 2 |
| `version` | `uint32` | 固定数组 2 |
| `bandwidth` | `uint16` | 标量或完整嵌套值 |
| `motor_cmd` | `unitree_go/msg/MotorCmd` | 固定数组 20 |
| `bms_cmd` | `unitree_go/msg/BmsCmd` | 标量或完整嵌套值 |
| `wireless_remote` | `uint8` | 固定数组 40 |
| `led` | `uint8` | 固定数组 12 |
| `fan` | `uint8` | 固定数组 2 |
| `gpio` | `uint8` | 标量或完整嵌套值 |
| `reserve` | `uint32` | 标量或完整嵌套值 |
| `crc` | `uint32` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/MotorState`

完整 canonical 字节范围：42..42.

公开值符号：`Ros2Unitree_goMsgMotorState`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_MotorState`.

完整 codec identity：`UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `mode` | `uint8` | 标量或完整嵌套值 |
| `q` | `float32` | 标量或完整嵌套值 |
| `dq` | `float32` | 标量或完整嵌套值 |
| `ddq` | `float32` | 标量或完整嵌套值 |
| `tau_est` | `float32` | 标量或完整嵌套值 |
| `q_raw` | `float32` | 标量或完整嵌套值 |
| `dq_raw` | `float32` | 标量或完整嵌套值 |
| `ddq_raw` | `float32` | 标量或完整嵌套值 |
| `temperature` | `int8` | 标量或完整嵌套值 |
| `lost` | `uint32` | 标量或完整嵌套值 |
| `reserve` | `uint32` | 固定数组 2 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/LowState`

完整 canonical 字节范围：1050..1050.

公开值符号：`Ros2Unitree_goMsgLowState`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_LowState`.

完整 codec identity：`UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `head` | `uint8` | 固定数组 2 |
| `level_flag` | `uint8` | 标量或完整嵌套值 |
| `frame_reserve` | `uint8` | 标量或完整嵌套值 |
| `sn` | `uint32` | 固定数组 2 |
| `version` | `uint32` | 固定数组 2 |
| `bandwidth` | `uint16` | 标量或完整嵌套值 |
| `imu_state` | `unitree_go/msg/IMUState` | 标量或完整嵌套值 |
| `motor_state` | `unitree_go/msg/MotorState` | 固定数组 20 |
| `bms_state` | `unitree_go/msg/BmsState` | 标量或完整嵌套值 |
| `foot_force` | `int16` | 固定数组 4 |
| `foot_force_est` | `int16` | 固定数组 4 |
| `tick` | `uint32` | 标量或完整嵌套值 |
| `wireless_remote` | `uint8` | 固定数组 40 |
| `bit_flag` | `uint8` | 标量或完整嵌套值 |
| `adc_reel` | `float32` | 标量或完整嵌套值 |
| `temperature_ntc1` | `int8` | 标量或完整嵌套值 |
| `temperature_ntc2` | `int8` | 标量或完整嵌套值 |
| `power_v` | `float32` | 标量或完整嵌套值 |
| `power_a` | `float32` | 标量或完整嵌套值 |
| `fan_frequency` | `uint16` | 固定数组 4 |
| `reserve` | `uint32` | 标量或完整嵌套值 |
| `crc` | `uint32` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/MotorCmds`

完整 canonical 字节范围：4..1060.

公开值符号：`Ros2Unitree_goMsgMotorCmds`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_MotorCmds`.

完整 codec identity：`UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `cmds` | `unitree_go/msg/MotorCmd` | 序列 0..32 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/MotorStates`

完整 canonical 字节范围：4..1348.

公开值符号：`Ros2Unitree_goMsgMotorStates`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_MotorStates`.

完整 codec identity：`UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `states` | `unitree_go/msg/MotorState` | 序列 0..32 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/PathPoint`

完整 canonical 字节范围：28..28.

公开值符号：`Ros2Unitree_goMsgPathPoint`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_PathPoint`.

完整 codec identity：`UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `t_from_start` | `float32` | 标量或完整嵌套值 |
| `x` | `float32` | 标量或完整嵌套值 |
| `y` | `float32` | 标量或完整嵌套值 |
| `yaw` | `float32` | 标量或完整嵌套值 |
| `vx` | `float32` | 标量或完整嵌套值 |
| `vy` | `float32` | 标量或完整嵌套值 |
| `vyaw` | `float32` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/Req`

完整 canonical 字节范围：8..4104.

公开值符号：`Ros2Unitree_goMsgReq`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_Req`.

完整 codec identity：`UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `uuid` | `string` | 标量或完整嵌套值; UTF-8 ≤ 2048 字节 |
| `body` | `string` | 标量或完整嵌套值; UTF-8 ≤ 2048 字节 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/Res`

完整 canonical 字节范围：12..6156.

公开值符号：`Ros2Unitree_goMsgRes`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_Res`.

完整 codec identity：`UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `uuid` | `string` | 标量或完整嵌套值; UTF-8 ≤ 2048 字节 |
| `data` | `uint8` | 序列 0..2048 |
| `body` | `string` | 标量或完整嵌套值; UTF-8 ≤ 2048 字节 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/SportModeCmd`

完整 canonical 字节范围：887..887.

公开值符号：`Ros2Unitree_goMsgSportModeCmd`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_SportModeCmd`.

完整 codec identity：`UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `mode` | `uint8` | 标量或完整嵌套值 |
| `gait_type` | `uint8` | 标量或完整嵌套值 |
| `speed_level` | `uint8` | 标量或完整嵌套值 |
| `foot_raise_height` | `float32` | 标量或完整嵌套值 |
| `body_height` | `float32` | 标量或完整嵌套值 |
| `position` | `float32` | 固定数组 2 |
| `euler` | `float32` | 固定数组 3 |
| `velocity` | `float32` | 固定数组 2 |
| `yaw_speed` | `float32` | 标量或完整嵌套值 |
| `bms_cmd` | `unitree_go/msg/BmsCmd` | 标量或完整嵌套值 |
| `path_point` | `unitree_go/msg/PathPoint` | 固定数组 30 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/TimeSpec`

完整 canonical 字节范围：8..8.

公开值符号：`Ros2Unitree_goMsgTimeSpec`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_TimeSpec`.

完整 codec identity：`UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `sec` | `int32` | 标量或完整嵌套值 |
| `nanosec` | `uint32` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/SportModeState`

完整 canonical 字节范围：227..227.

公开值符号：`Ros2Unitree_goMsgSportModeState`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_SportModeState`.

完整 codec identity：`UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `stamp` | `unitree_go/msg/TimeSpec` | 标量或完整嵌套值 |
| `error_code` | `uint32` | 标量或完整嵌套值 |
| `imu_state` | `unitree_go/msg/IMUState` | 标量或完整嵌套值 |
| `mode` | `uint8` | 标量或完整嵌套值 |
| `progress` | `float32` | 标量或完整嵌套值 |
| `gait_type` | `uint8` | 标量或完整嵌套值 |
| `foot_raise_height` | `float32` | 标量或完整嵌套值 |
| `position` | `float32` | 固定数组 3 |
| `body_height` | `float32` | 标量或完整嵌套值 |
| `velocity` | `float32` | 固定数组 3 |
| `yaw_speed` | `float32` | 标量或完整嵌套值 |
| `range_obstacle` | `float32` | 固定数组 4 |
| `foot_force` | `int16` | 固定数组 4 |
| `foot_position_body` | `float32` | 固定数组 12 |
| `foot_speed_body` | `float32` | 固定数组 12 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/UwbState`

完整 canonical 字节范围：55..55.

公开值符号：`Ros2Unitree_goMsgUwbState`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_UwbState`.

完整 codec identity：`UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `version` | `uint8` | 固定数组 2 |
| `channel` | `uint8` | 标量或完整嵌套值 |
| `joy_mode` | `uint8` | 标量或完整嵌套值 |
| `orientation_est` | `float32` | 标量或完整嵌套值 |
| `pitch_est` | `float32` | 标量或完整嵌套值 |
| `distance_est` | `float32` | 标量或完整嵌套值 |
| `yaw_est` | `float32` | 标量或完整嵌套值 |
| `tag_roll` | `float32` | 标量或完整嵌套值 |
| `tag_pitch` | `float32` | 标量或完整嵌套值 |
| `tag_yaw` | `float32` | 标量或完整嵌套值 |
| `base_roll` | `float32` | 标量或完整嵌套值 |
| `base_pitch` | `float32` | 标量或完整嵌套值 |
| `base_yaw` | `float32` | 标量或完整嵌套值 |
| `joystick` | `float32` | 固定数组 2 |
| `error_state` | `uint8` | 标量或完整嵌套值 |
| `buttons` | `uint8` | 标量或完整嵌套值 |
| `enabled_from_app` | `uint8` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/UwbSwitch`

完整 canonical 字节范围：1..1.

公开值符号：`Ros2Unitree_goMsgUwbSwitch`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_UwbSwitch`.

完整 codec identity：`UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `enabled` | `uint8` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_go/msg/WirelessController`

完整 canonical 字节范围：18..18.

公开值符号：`Ros2Unitree_goMsgWirelessController`; C 完整类型：`roswasmc_bounded_2_unitree_go_msg_WirelessController`.

完整 codec identity：`UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `lx` | `float32` | 标量或完整嵌套值 |
| `ly` | `float32` | 标量或完整嵌套值 |
| `rx` | `float32` | 标量或完整嵌套值 |
| `ry` | `float32` | 标量或完整嵌套值 |
| `keys` | `uint16` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_hg/msg/BmsCmd`

完整 canonical 字节范围：41..41.

公开值符号：`Ros2Unitree_hgMsgBmsCmd`; C 完整类型：`roswasmc_bounded_2_unitree_hg_msg_BmsCmd`.

完整 codec identity：`UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `cmd` | `uint8` | 标量或完整嵌套值 |
| `reserve` | `uint8` | 固定数组 40 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_hg/msg/BmsState`

完整 canonical 字节范围：161..161.

公开值符号：`Ros2Unitree_hgMsgBmsState`; C 完整类型：`roswasmc_bounded_2_unitree_hg_msg_BmsState`.

完整 codec identity：`UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `version_high` | `uint8` | 标量或完整嵌套值 |
| `version_low` | `uint8` | 标量或完整嵌套值 |
| `fn` | `uint8` | 标量或完整嵌套值 |
| `cell_vol` | `uint16` | 固定数组 40 |
| `bmsvoltage` | `uint32` | 固定数组 3 |
| `current` | `int32` | 标量或完整嵌套值 |
| `soc` | `uint8` | 标量或完整嵌套值 |
| `soh` | `uint8` | 标量或完整嵌套值 |
| `temperature` | `int16` | 固定数组 12 |
| `cycle` | `uint16` | 标量或完整嵌套值 |
| `manufacturer_date` | `uint16` | 标量或完整嵌套值 |
| `bmsstate` | `uint32` | 固定数组 5 |
| `reserve` | `uint32` | 固定数组 3 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_hg/msg/MotorCmd`

完整 canonical 字节范围：25..25.

公开值符号：`Ros2Unitree_hgMsgMotorCmd`; C 完整类型：`roswasmc_bounded_2_unitree_hg_msg_MotorCmd`.

完整 codec identity：`UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `mode` | `uint8` | 标量或完整嵌套值 |
| `q` | `float32` | 标量或完整嵌套值 |
| `dq` | `float32` | 标量或完整嵌套值 |
| `tau` | `float32` | 标量或完整嵌套值 |
| `kp` | `float32` | 标量或完整嵌套值 |
| `kd` | `float32` | 标量或完整嵌套值 |
| `reserve` | `uint32` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_hg/msg/HandCmd`

完整 canonical 字节范围：20..820.

公开值符号：`Ros2Unitree_hgMsgHandCmd`; C 完整类型：`roswasmc_bounded_2_unitree_hg_msg_HandCmd`.

完整 codec identity：`UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `motor_cmd` | `unitree_hg/msg/MotorCmd` | 序列 0..32 |
| `reserve` | `uint32` | 固定数组 4 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_hg/msg/MotorState`

完整 canonical 字节范围：53..53.

公开值符号：`Ros2Unitree_hgMsgMotorState`; C 完整类型：`roswasmc_bounded_2_unitree_hg_msg_MotorState`.

完整 codec identity：`UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `mode` | `uint8` | 标量或完整嵌套值 |
| `q` | `float32` | 标量或完整嵌套值 |
| `dq` | `float32` | 标量或完整嵌套值 |
| `ddq` | `float32` | 标量或完整嵌套值 |
| `tau_est` | `float32` | 标量或完整嵌套值 |
| `temperature` | `int16` | 固定数组 2 |
| `vol` | `float32` | 标量或完整嵌套值 |
| `sensor` | `uint32` | 固定数组 2 |
| `motorstate` | `uint32` | 标量或完整嵌套值 |
| `reserve` | `uint32` | 固定数组 4 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_hg/msg/PressSensorState`

完整 canonical 字节范围：104..104.

公开值符号：`Ros2Unitree_hgMsgPressSensorState`; C 完整类型：`roswasmc_bounded_2_unitree_hg_msg_PressSensorState`.

完整 codec identity：`UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `pressure` | `float32` | 固定数组 12 |
| `temperature` | `float32` | 固定数组 12 |
| `lost` | `uint32` | 标量或完整嵌套值 |
| `reserve` | `uint32` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_hg/msg/IMUState`

完整 canonical 字节范围：54..54.

公开值符号：`Ros2Unitree_hgMsgIMUState`; C 完整类型：`roswasmc_bounded_2_unitree_hg_msg_IMUState`.

完整 codec identity：`UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `quaternion` | `float32` | 固定数组 4 |
| `gyroscope` | `float32` | 固定数组 3 |
| `accelerometer` | `float32` | 固定数组 3 |
| `rpy` | `float32` | 固定数组 3 |
| `temperature` | `int16` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_hg/msg/HandState`

完整 canonical 字节范围：94..5118.

公开值符号：`Ros2Unitree_hgMsgHandState`; C 完整类型：`roswasmc_bounded_2_unitree_hg_msg_HandState`.

完整 codec identity：`UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `motor_state` | `unitree_hg/msg/MotorState` | 序列 0..32 |
| `press_sensor_state` | `unitree_hg/msg/PressSensorState` | 序列 0..32 |
| `imu_state` | `unitree_hg/msg/IMUState` | 标量或完整嵌套值 |
| `power_v` | `float32` | 标量或完整嵌套值 |
| `power_a` | `float32` | 标量或完整嵌套值 |
| `system_v` | `float32` | 标量或完整嵌套值 |
| `device_v` | `float32` | 标量或完整嵌套值 |
| `error` | `uint32` | 固定数组 2 |
| `reserve` | `uint32` | 固定数组 2 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_hg/msg/LowCmd`

完整 canonical 字节范围：897..897.

公开值符号：`Ros2Unitree_hgMsgLowCmd`; C 完整类型：`roswasmc_bounded_2_unitree_hg_msg_LowCmd`.

完整 codec identity：`UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `mode_pr` | `uint8` | 标量或完整嵌套值 |
| `mode_machine` | `uint8` | 标量或完整嵌套值 |
| `motor_cmd` | `unitree_hg/msg/MotorCmd` | 固定数组 35 |
| `reserve` | `uint32` | 固定数组 4 |
| `crc` | `uint32` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_hg/msg/LowState`

完整 canonical 字节范围：1983..1983.

公开值符号：`Ros2Unitree_hgMsgLowState`; C 完整类型：`roswasmc_bounded_2_unitree_hg_msg_LowState`.

完整 codec identity：`UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `version` | `uint32` | 固定数组 2 |
| `mode_pr` | `uint8` | 标量或完整嵌套值 |
| `mode_machine` | `uint8` | 标量或完整嵌套值 |
| `tick` | `uint32` | 标量或完整嵌套值 |
| `imu_state` | `unitree_hg/msg/IMUState` | 标量或完整嵌套值 |
| `motor_state` | `unitree_hg/msg/MotorState` | 固定数组 35 |
| `wireless_remote` | `uint8` | 固定数组 40 |
| `reserve` | `uint32` | 固定数组 4 |
| `crc` | `uint32` | 标量或完整嵌套值 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

### `unitree_hg/msg/MainBoardState`

完整 canonical 字节范围：72..72.

公开值符号：`Ros2Unitree_hgMsgMainBoardState`; C 完整类型：`roswasmc_bounded_2_unitree_hg_msg_MainBoardState`.

完整 codec identity：`UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6`.

| 原始字段 | 完整原生类型 | 数组与有限容量 |
| --- | --- | --- |
| `fan_state` | `uint16` | 固定数组 6 |
| `temperature` | `int16` | 固定数组 6 |
| `value` | `float32` | 固定数组 6 |
| `state` | `uint32` | 固定数组 6 |

C 的 `_valid` 验证所有字段，`_wire_size` 测量已验证值，`_encode` 与 `_decode` 执行完整事务式转换；函数前缀为上面的 C 类型名。

编码先验证全部字段并测量总长。完整解码拒绝截断、额外尾字节、超限及非有限浮点。C 输出与输入/长度槽分离，失败保留目标值；Go、Rust、AS 返回独立拥有的完整值。原始单位、坐标系及 CRC 字段完整保留，不执行缩放、转换或设备 CRC 认证。
