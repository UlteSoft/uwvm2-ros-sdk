# Complete original native-language records

Every field retains original declaration order. Fixed arrays must be complete; dynamic ceilings are canonical admission quotas and do not change original ROS declarations. Zig, D, Nim, Odin and Swift use `field_<original-name>`; Haskell uses `<record-symbol-with-lowercase-initial>_<original-name>`.

Complete decoders refuse truncation, trailing bytes, exceeded bounds, invalid UTF-8 and nonfinite floats before publishing a whole value. Zig, D, Nim and Odin encoders borrow disjoint output; discard its entire partial prefix and written extent on refusal. Swift and Haskell publish owned complete bytes only on success. Original units, frames, signedness and CRC fields remain unchanged.

## ROS 1

### `unitree_legged_msgs/BmsCmd`

`Ros1Unitree_legged_msgsBmsCmd`

Complete canonical byte range: 4..4.

Codec identity: `UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928`.

Native identity: `c09195f3200bd8917201f8805a3fe1d1`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `off` | `uint8` | Scalar or complete nested value |
| `reserve` | `uint8` | Fixed array 3 |

### `unitree_legged_msgs/BmsState`

`Ros1Unitree_legged_msgsBmsState`

Complete canonical byte range: 34..34.

Codec identity: `UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a`.

Native identity: `8e007c660c590388bca7c2464d80df54`.

| Original field | Original type | Complete shape and finite ceiling |
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

### `unitree_legged_msgs/Cartesian`

`Ros1Unitree_legged_msgsCartesian`

Complete canonical byte range: 12..12.

Codec identity: `UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722`.

Native identity: `cc153912f1453b708d221682bc23d9ac`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `x` | `float32` | Scalar or complete nested value |
| `y` | `float32` | Scalar or complete nested value |
| `z` | `float32` | Scalar or complete nested value |

### `unitree_legged_msgs/LED`

`Ros1Unitree_legged_msgsLED`

Complete canonical byte range: 3..3.

Codec identity: `UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5`.

Native identity: `353891e354491c51aabe32df673fb446`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `r` | `uint8` | Scalar or complete nested value |
| `g` | `uint8` | Scalar or complete nested value |
| `b` | `uint8` | Scalar or complete nested value |

### `unitree_legged_msgs/HighCmd`

`Ros1Unitree_legged_msgsHighCmd`

Complete canonical byte range: 129..129.

Codec identity: `UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38`.

Native identity: `b4825051cf66ae8183b54c57dba16b66`.

| Original field | Original type | Complete shape and finite ceiling |
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

### `unitree_legged_msgs/IMU`

`Ros1Unitree_legged_msgsIMU`

Complete canonical byte range: 53..53.

Codec identity: `UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276`.

Native identity: `c2bcd83820da00fff261b67d6490da58`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `quaternion` | `float32` | Fixed array 4 |
| `gyroscope` | `float32` | Fixed array 3 |
| `accelerometer` | `float32` | Fixed array 3 |
| `rpy` | `float32` | Fixed array 3 |
| `temperature` | `int8` | Scalar or complete nested value |

### `unitree_legged_msgs/MotorState`

`Ros1Unitree_legged_msgsMotorState`

Complete canonical byte range: 38..38.

Codec identity: `UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf`.

Native identity: `94c55ee3b7852be2bd437b20ce12a254`.

| Original field | Original type | Complete shape and finite ceiling |
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

### `unitree_legged_msgs/HighState`

`Ros1Unitree_legged_msgsHighState`

Complete canonical byte range: 1087..1087.

Codec identity: `UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d`.

Native identity: `7904f43019dadf7640d573b4c14b9066`.

| Original field | Original type | Complete shape and finite ceiling |
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

### `unitree_legged_msgs/MotorCmd`

`Ros1Unitree_legged_msgsMotorCmd`

Complete canonical byte range: 33..33.

Codec identity: `UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083`.

Native identity: `bbb3b7d91319c3a1b99055f0149ba221`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `mode` | `uint8` | Scalar or complete nested value |
| `q` | `float32` | Scalar or complete nested value |
| `dq` | `float32` | Scalar or complete nested value |
| `tau` | `float32` | Scalar or complete nested value |
| `Kp` | `float32` | Scalar or complete nested value |
| `Kd` | `float32` | Scalar or complete nested value |
| `reserve` | `uint32` | Fixed array 3 |

### `unitree_legged_msgs/LowCmd`

`Ros1Unitree_legged_msgsLowCmd`

Complete canonical byte range: 734..734.

Codec identity: `UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181`.

Native identity: `7a33b01032a894134df9b65b5cd356d1`.

| Original field | Original type | Complete shape and finite ceiling |
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

### `unitree_legged_msgs/LowState`

`Ros1Unitree_legged_msgsLowState`

Complete canonical byte range: 1069..1069.

Codec identity: `UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0`.

Native identity: `481f8a83f729a25e7cc170da192f80f9`.

| Original field | Original type | Complete shape and finite ceiling |
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

## ROS 2

### `unitree_api/msg/RequestIdentity`

`Ros2Unitree_apiMsgRequestIdentity`

Complete canonical byte range: 16..16.

Codec identity: `UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2`.

Native identity: `RIHS01_912fcf308a7cd6e27ea3aeea02515f587fa666b76af1963660429995f0e381c6`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `id` | `int64` | Scalar or complete nested value |
| `api_id` | `int64` | Scalar or complete nested value |

### `unitree_api/msg/RequestLease`

`Ros2Unitree_apiMsgRequestLease`

Complete canonical byte range: 8..8.

Codec identity: `UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e`.

Native identity: `RIHS01_16b5c2257d5280a095e3e4fe26a48e782e294fa3d68760ce38599260a344bf4e`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `id` | `int64` | Scalar or complete nested value |

### `unitree_api/msg/RequestPolicy`

`Ros2Unitree_apiMsgRequestPolicy`

Complete canonical byte range: 5..5.

Codec identity: `UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8`.

Native identity: `RIHS01_742c3612b991be55430d1847af4afb2f119069f2e16e3a2143c6352a94ef35e4`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `priority` | `int32` | Scalar or complete nested value |
| `noreply` | `bool` | Scalar or complete nested value |

### `unitree_api/msg/RequestHeader`

`Ros2Unitree_apiMsgRequestHeader`

Complete canonical byte range: 29..29.

Codec identity: `UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0`.

Native identity: `RIHS01_4273d5fbe6bee52502f55a6a73427e4ae2f12329f175d7c07b95341fd527acff`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `identity` | `unitree_api/msg/RequestIdentity` | Scalar or complete nested value |
| `lease` | `unitree_api/msg/RequestLease` | Scalar or complete nested value |
| `policy` | `unitree_api/msg/RequestPolicy` | Scalar or complete nested value |

### `unitree_api/msg/Request`

`Ros2Unitree_apiMsgRequest`

Complete canonical byte range: 37..4133.

Codec identity: `UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192`.

Native identity: `RIHS01_60dda80d19538b06c8f79b77222b1b7642dd753b8439a6bd535ff0cba08c5378`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `header` | `unitree_api/msg/RequestHeader` | Scalar or complete nested value |
| `parameter` | `string` | Scalar or complete nested value; 2048 bytes, utf8 |
| `binary` | `uint8` | Finite sequence 2048 |

### `unitree_api/msg/ResponseStatus`

`Ros2Unitree_apiMsgResponseStatus`

Complete canonical byte range: 4..4.

Codec identity: `UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1`.

Native identity: `RIHS01_282afd2a97771014abb1f5aead0fd244d648d475f55a82b0c3c41232a8c527f7`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `code` | `int32` | Scalar or complete nested value |

### `unitree_api/msg/ResponseHeader`

`Ros2Unitree_apiMsgResponseHeader`

Complete canonical byte range: 20..20.

Codec identity: `UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0`.

Native identity: `RIHS01_eba136c930271eec2fc582cfccc5948f8af3fe4431492842a03a3dacb1b0d765`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `identity` | `unitree_api/msg/RequestIdentity` | Scalar or complete nested value |
| `status` | `unitree_api/msg/ResponseStatus` | Scalar or complete nested value |

### `unitree_api/msg/Response`

`Ros2Unitree_apiMsgResponse`

Complete canonical byte range: 28..2108.

Codec identity: `UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f`.

Native identity: `RIHS01_5300d019bb652073e7248995c878765c68ab519bcbdbad2e2a17c81abd8888b9`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `header` | `unitree_api/msg/ResponseHeader` | Scalar or complete nested value |
| `data` | `string` | Scalar or complete nested value; 2048 bytes, utf8 |
| `binary` | `int8` | Finite sequence 32 |

### `unitree_go/msg/AudioData`

`Ros2Unitree_goMsgAudioData`

Complete canonical byte range: 12..2060.

Codec identity: `UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe`.

Native identity: `RIHS01_55973ff982f53f02855ff34a184f00ee63b68a3f65b19152448f9fd7558e7dc5`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `time_frame` | `uint64` | Scalar or complete nested value |
| `data` | `uint8` | Finite sequence 2048 |

### `unitree_go/msg/BmsCmd`

`Ros2Unitree_goMsgBmsCmd`

Complete canonical byte range: 4..4.

Codec identity: `UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339`.

Native identity: `RIHS01_815310dff4ebba1e0d37802dfdc56d4b5a849761f613954172bdb4476aed5aa2`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `off` | `uint8` | Scalar or complete nested value |
| `reserve` | `uint8` | Fixed array 3 |

### `unitree_go/msg/BmsState`

`Ros2Unitree_goMsgBmsState`

Complete canonical byte range: 44..44.

Codec identity: `UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0`.

Native identity: `RIHS01_a7fe45fbbb6a908bdee78baa3b93e962ed924c143481a696f95b6911ce30b871`.

| Original field | Original type | Complete shape and finite ceiling |
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

### `unitree_go/msg/Error`

`Ros2Unitree_goMsgError`

Complete canonical byte range: 8..8.

Codec identity: `UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd`.

Native identity: `RIHS01_7b40e63303d9092153a3914bb136ecee44ba37d8b827b11b142444eda9bc9450`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `source` | `uint32` | Scalar or complete nested value |
| `state` | `uint32` | Scalar or complete nested value |

### `unitree_go/msg/Go2FrontVideoData`

`Ros2Unitree_goMsgGo2FrontVideoData`

Complete canonical byte range: 20..6164.

Codec identity: `UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad`.

Native identity: `RIHS01_f548f7ccf101bb0255b0541484ab42aaac31305ccba06db976a8a19a3dbb1a33`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `time_frame` | `uint64` | Scalar or complete nested value |
| `video720p` | `uint8` | Finite sequence 2048 |
| `video360p` | `uint8` | Finite sequence 2048 |
| `video180p` | `uint8` | Finite sequence 2048 |

### `unitree_go/msg/HeightMap`

`Ros2Unitree_goMsgHeightMap`

Complete canonical byte range: 36..2212.

Codec identity: `UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d`.

Native identity: `RIHS01_68275718093f292da4fa0cb893b0e77660de92eb950691e1fe9f499d6cf5bff3`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `stamp` | `float64` | Scalar or complete nested value |
| `frame_id` | `string` | Scalar or complete nested value; 2048 bytes, utf8 |
| `resolution` | `float32` | Scalar or complete nested value |
| `width` | `uint32` | Scalar or complete nested value |
| `height` | `uint32` | Scalar or complete nested value |
| `origin` | `float32` | Fixed array 2 |
| `data` | `float32` | Finite sequence 32 |

### `unitree_go/msg/IMUState`

`Ros2Unitree_goMsgIMUState`

Complete canonical byte range: 53..53.

Codec identity: `UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc`.

Native identity: `RIHS01_226772531e06ca5768dad7ae264221622e92ba1dbc7fcd7f8074351a23fe1c11`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `quaternion` | `float32` | Fixed array 4 |
| `gyroscope` | `float32` | Fixed array 3 |
| `accelerometer` | `float32` | Fixed array 3 |
| `rpy` | `float32` | Fixed array 3 |
| `temperature` | `int8` | Scalar or complete nested value |

### `unitree_go/msg/InterfaceConfig`

`Ros2Unitree_goMsgInterfaceConfig`

Complete canonical byte range: 4..4.

Codec identity: `UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110`.

Native identity: `RIHS01_78cdda3cfbbfeb9b32fca9a056727419ed88f908ed99c64e7b810f35281be61b`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `mode` | `uint8` | Scalar or complete nested value |
| `value` | `uint8` | Scalar or complete nested value |
| `reserve` | `uint8` | Fixed array 2 |

### `unitree_go/msg/LidarState`

`Ros2Unitree_goMsgLidarState`

Complete canonical byte range: 81..6225.

Codec identity: `UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb`.

Native identity: `RIHS01_3a1405d747c51d6b5cf548ee67bc7b63d54b71673a54365fd67d6d09b7599d18`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `stamp` | `float64` | Scalar or complete nested value |
| `firmware_version` | `string` | Scalar or complete nested value; 2048 bytes, utf8 |
| `software_version` | `string` | Scalar or complete nested value; 2048 bytes, utf8 |
| `sdk_version` | `string` | Scalar or complete nested value; 2048 bytes, utf8 |
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

### `unitree_go/msg/MotorCmd`

`Ros2Unitree_goMsgMotorCmd`

Complete canonical byte range: 33..33.

Codec identity: `UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989`.

Native identity: `RIHS01_4581f18a3bf58baad04f12f51747f2dd388f64aa2ac997d1d64777563c627fbf`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `mode` | `uint8` | Scalar or complete nested value |
| `q` | `float32` | Scalar or complete nested value |
| `dq` | `float32` | Scalar or complete nested value |
| `tau` | `float32` | Scalar or complete nested value |
| `kp` | `float32` | Scalar or complete nested value |
| `kd` | `float32` | Scalar or complete nested value |
| `reserve` | `uint32` | Fixed array 3 |

### `unitree_go/msg/LowCmd`

`Ros2Unitree_goMsgLowCmd`

Complete canonical byte range: 749..749.

Codec identity: `UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63`.

Native identity: `RIHS01_0da1142c994d184f6102948c3acf52b9557836cfe5062b924a1f08ac8b72dc34`.

| Original field | Original type | Complete shape and finite ceiling |
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

### `unitree_go/msg/MotorState`

`Ros2Unitree_goMsgMotorState`

Complete canonical byte range: 42..42.

Codec identity: `UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62`.

Native identity: `RIHS01_86fb56a4f6bebcba854e9b510225e6666ef46cf4ea13355870c2dd3c3478a88c`.

| Original field | Original type | Complete shape and finite ceiling |
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

### `unitree_go/msg/LowState`

`Ros2Unitree_goMsgLowState`

Complete canonical byte range: 1050..1050.

Codec identity: `UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab`.

Native identity: `RIHS01_db5172cac933e3cfc0e705903343eb4eea42e65e224e9d726d3e672aec0caf0f`.

| Original field | Original type | Complete shape and finite ceiling |
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

### `unitree_go/msg/MotorCmds`

`Ros2Unitree_goMsgMotorCmds`

Complete canonical byte range: 4..1060.

Codec identity: `UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3`.

Native identity: `RIHS01_42477c00fd1a43909adb05ac604791f230536f7f4d558aabb9c1433acc0cb39b`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `cmds` | `unitree_go/msg/MotorCmd` | Finite sequence 32 |

### `unitree_go/msg/MotorStates`

`Ros2Unitree_goMsgMotorStates`

Complete canonical byte range: 4..1348.

Codec identity: `UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e`.

Native identity: `RIHS01_0451336d1b203b1fc0e378d8a8e2f04a95a8346dcf988f0bb84ac4ff7ee508d6`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `states` | `unitree_go/msg/MotorState` | Finite sequence 32 |

### `unitree_go/msg/PathPoint`

`Ros2Unitree_goMsgPathPoint`

Complete canonical byte range: 28..28.

Codec identity: `UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4`.

Native identity: `RIHS01_c8bcdd0b29c28f9e853ffa2f4d404718c058f4c084dc13737540d81edb1ccd17`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `t_from_start` | `float32` | Scalar or complete nested value |
| `x` | `float32` | Scalar or complete nested value |
| `y` | `float32` | Scalar or complete nested value |
| `yaw` | `float32` | Scalar or complete nested value |
| `vx` | `float32` | Scalar or complete nested value |
| `vy` | `float32` | Scalar or complete nested value |
| `vyaw` | `float32` | Scalar or complete nested value |

### `unitree_go/msg/Req`

`Ros2Unitree_goMsgReq`

Complete canonical byte range: 8..4104.

Codec identity: `UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8`.

Native identity: `RIHS01_7fda909d42424777c947f9c33a7a243eb1a4a1e89af5124a3a2ca7d3fa043b6e`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `uuid` | `string` | Scalar or complete nested value; 2048 bytes, utf8 |
| `body` | `string` | Scalar or complete nested value; 2048 bytes, utf8 |

### `unitree_go/msg/Res`

`Ros2Unitree_goMsgRes`

Complete canonical byte range: 12..6156.

Codec identity: `UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963`.

Native identity: `RIHS01_5e730fb54d81a32e7e28ef519c9b108c99ab6be7dd77c1ef4e66f7c1e69dde16`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `uuid` | `string` | Scalar or complete nested value; 2048 bytes, utf8 |
| `data` | `uint8` | Finite sequence 2048 |
| `body` | `string` | Scalar or complete nested value; 2048 bytes, utf8 |

### `unitree_go/msg/SportModeCmd`

`Ros2Unitree_goMsgSportModeCmd`

Complete canonical byte range: 887..887.

Codec identity: `UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c`.

Native identity: `RIHS01_22c42d22e75a8d419fa6473b1d3ae92b3fa7473ca9d7bc9e336785659e7ab928`.

| Original field | Original type | Complete shape and finite ceiling |
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

### `unitree_go/msg/TimeSpec`

`Ros2Unitree_goMsgTimeSpec`

Complete canonical byte range: 8..8.

Codec identity: `UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4`.

Native identity: `RIHS01_0cac3f0605af323add43e1ed3ae7fc01f7c7857f41380170b3ea3a899b28cb76`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `sec` | `int32` | Scalar or complete nested value |
| `nanosec` | `uint32` | Scalar or complete nested value |

### `unitree_go/msg/SportModeState`

`Ros2Unitree_goMsgSportModeState`

Complete canonical byte range: 227..227.

Codec identity: `UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760`.

Native identity: `RIHS01_814b4692a904d586a0c6fe49ce344480434364d0fb410d06df2986a16e79fcd4`.

| Original field | Original type | Complete shape and finite ceiling |
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

### `unitree_go/msg/UwbState`

`Ros2Unitree_goMsgUwbState`

Complete canonical byte range: 55..55.

Codec identity: `UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34`.

Native identity: `RIHS01_d02a3bf8330a002373281a2888a9ea92d6135d7eba55c918403dabc38edce7f5`.

| Original field | Original type | Complete shape and finite ceiling |
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

### `unitree_go/msg/UwbSwitch`

`Ros2Unitree_goMsgUwbSwitch`

Complete canonical byte range: 1..1.

Codec identity: `UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5`.

Native identity: `RIHS01_de3a330c27e9a44eb3a7dcf3547d97fdafb74230bf679e6f04e4563935a6a270`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `enabled` | `uint8` | Scalar or complete nested value |

### `unitree_go/msg/WirelessController`

`Ros2Unitree_goMsgWirelessController`

Complete canonical byte range: 18..18.

Codec identity: `UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438`.

Native identity: `RIHS01_83a5bbbf022f060aa36716ee78afb802528f26ce16238b9c3787939c830cbde5`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `lx` | `float32` | Scalar or complete nested value |
| `ly` | `float32` | Scalar or complete nested value |
| `rx` | `float32` | Scalar or complete nested value |
| `ry` | `float32` | Scalar or complete nested value |
| `keys` | `uint16` | Scalar or complete nested value |

### `unitree_hg/msg/BmsCmd`

`Ros2Unitree_hgMsgBmsCmd`

Complete canonical byte range: 41..41.

Codec identity: `UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de`.

Native identity: `RIHS01_7b7d2f71ab061902dd207e6f243109167b3fed94427066f40180d563290b6e15`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `cmd` | `uint8` | Scalar or complete nested value |
| `reserve` | `uint8` | Fixed array 40 |

### `unitree_hg/msg/BmsState`

`Ros2Unitree_hgMsgBmsState`

Complete canonical byte range: 161..161.

Codec identity: `UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d`.

Native identity: `RIHS01_59d9c2459ddf390072902896850ce13ea5de394157907c7dc514d2187ff3e51f`.

| Original field | Original type | Complete shape and finite ceiling |
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

### `unitree_hg/msg/MotorCmd`

`Ros2Unitree_hgMsgMotorCmd`

Complete canonical byte range: 25..25.

Codec identity: `UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb`.

Native identity: `RIHS01_b47468413c7037d0e2c0227fced04b91224cc165e5befe2b8cefacbe08391329`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `mode` | `uint8` | Scalar or complete nested value |
| `q` | `float32` | Scalar or complete nested value |
| `dq` | `float32` | Scalar or complete nested value |
| `tau` | `float32` | Scalar or complete nested value |
| `kp` | `float32` | Scalar or complete nested value |
| `kd` | `float32` | Scalar or complete nested value |
| `reserve` | `uint32` | Scalar or complete nested value |

### `unitree_hg/msg/HandCmd`

`Ros2Unitree_hgMsgHandCmd`

Complete canonical byte range: 20..820.

Codec identity: `UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006`.

Native identity: `RIHS01_aa5efb217dfce9bba4a5c51be7d09b6426ea5ad20bb919b2033f285a2b98a8f4`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `motor_cmd` | `unitree_hg/msg/MotorCmd` | Finite sequence 32 |
| `reserve` | `uint32` | Fixed array 4 |

### `unitree_hg/msg/MotorState`

`Ros2Unitree_hgMsgMotorState`

Complete canonical byte range: 53..53.

Codec identity: `UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934`.

Native identity: `RIHS01_9fb0c7e50cef1769037c580304750df0da54b7a6a5fbfa92880f97add4945345`.

| Original field | Original type | Complete shape and finite ceiling |
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

### `unitree_hg/msg/PressSensorState`

`Ros2Unitree_hgMsgPressSensorState`

Complete canonical byte range: 104..104.

Codec identity: `UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5`.

Native identity: `RIHS01_3c61bae23b785ee850c57df73a948d53ca5cb00ccbdb82ee526994c77ae8d908`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `pressure` | `float32` | Fixed array 12 |
| `temperature` | `float32` | Fixed array 12 |
| `lost` | `uint32` | Scalar or complete nested value |
| `reserve` | `uint32` | Scalar or complete nested value |

### `unitree_hg/msg/IMUState`

`Ros2Unitree_hgMsgIMUState`

Complete canonical byte range: 54..54.

Codec identity: `UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420`.

Native identity: `RIHS01_6fbba1a672360bf41e4393ad73d247036fd802d08adfb436d0c99a2a7b3ceec2`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `quaternion` | `float32` | Fixed array 4 |
| `gyroscope` | `float32` | Fixed array 3 |
| `accelerometer` | `float32` | Fixed array 3 |
| `rpy` | `float32` | Fixed array 3 |
| `temperature` | `int16` | Scalar or complete nested value |

### `unitree_hg/msg/HandState`

`Ros2Unitree_hgMsgHandState`

Complete canonical byte range: 94..5118.

Codec identity: `UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6`.

Native identity: `RIHS01_f8f161522deb4e58d5c1d679826c2a405b63b409db7e4ea9d17628f3029c4d2f`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `motor_state` | `unitree_hg/msg/MotorState` | Finite sequence 32 |
| `press_sensor_state` | `unitree_hg/msg/PressSensorState` | Finite sequence 32 |
| `imu_state` | `unitree_hg/msg/IMUState` | Scalar or complete nested value |
| `power_v` | `float32` | Scalar or complete nested value |
| `power_a` | `float32` | Scalar or complete nested value |
| `system_v` | `float32` | Scalar or complete nested value |
| `device_v` | `float32` | Scalar or complete nested value |
| `error` | `uint32` | Fixed array 2 |
| `reserve` | `uint32` | Fixed array 2 |

### `unitree_hg/msg/LowCmd`

`Ros2Unitree_hgMsgLowCmd`

Complete canonical byte range: 897..897.

Codec identity: `UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461`.

Native identity: `RIHS01_b0eec4778db3ad67ffade328b063bea700bd1558f3f359ea5e4c86e3c3f25bc5`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `mode_pr` | `uint8` | Scalar or complete nested value |
| `mode_machine` | `uint8` | Scalar or complete nested value |
| `motor_cmd` | `unitree_hg/msg/MotorCmd` | Fixed array 35 |
| `reserve` | `uint32` | Fixed array 4 |
| `crc` | `uint32` | Scalar or complete nested value |

### `unitree_hg/msg/LowState`

`Ros2Unitree_hgMsgLowState`

Complete canonical byte range: 1983..1983.

Codec identity: `UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d`.

Native identity: `RIHS01_aee6c5bd4b4d2eeca854bf47e32e4e3d34c47c2cafa05c08b6b0fa4bc51c6b3a`.

| Original field | Original type | Complete shape and finite ceiling |
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

### `unitree_hg/msg/MainBoardState`

`Ros2Unitree_hgMsgMainBoardState`

Complete canonical byte range: 72..72.

Codec identity: `UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6`.

Native identity: `RIHS01_1420200fd0eedd8dbabb47d0ea2c3bdb38a7ee47c682c84301326db51baa5450`.

| Original field | Original type | Complete shape and finite ceiling |
| --- | --- | --- |
| `fan_state` | `uint16` | Fixed array 6 |
| `temperature` | `int16` | Fixed array 6 |
| `value` | `float32` | Fixed array 6 |
| `state` | `uint32` | Fixed array 6 |
