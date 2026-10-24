# agilex zig complete API catalog

## ros1

### `geometry_msgs/Point`

Symbol: `Ros1Geometry_msgsPoint`; 24..24 bytes.

Codec identity: `UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b`.

- `x`: `float64`.
- `y`: `float64`.
- `z`: `float64`.

### `geometry_msgs/Quaternion`

Symbol: `Ros1Geometry_msgsQuaternion`; 32..32 bytes.

Codec identity: `UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934`.

- `x`: `float64`.
- `y`: `float64`.
- `z`: `float64`.
- `w`: `float64`.

### `geometry_msgs/Pose`

Symbol: `Ros1Geometry_msgsPose`; 56..56 bytes.

Codec identity: `UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471`.

- `position`: `geometry_msgs/Point`.
- `orientation`: `geometry_msgs/Quaternion`.

### `geometry_msgs/PoseWithCovariance`

Symbol: `Ros1Geometry_msgsPoseWithCovariance`; 344..344 bytes.

Codec identity: `UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf`.

- `pose`: `geometry_msgs/Pose`.
- `covariance`: `float64`; array 36.

### `geometry_msgs/Vector3`

Symbol: `Ros1Geometry_msgsVector3`; 24..24 bytes.

Codec identity: `UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc`.

- `x`: `float64`.
- `y`: `float64`.
- `z`: `float64`.

### `geometry_msgs/Twist`

Symbol: `Ros1Geometry_msgsTwist`; 48..48 bytes.

Codec identity: `UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921`.

- `linear`: `geometry_msgs/Vector3`.
- `angular`: `geometry_msgs/Vector3`.

### `geometry_msgs/TwistWithCovariance`

Symbol: `Ros1Geometry_msgsTwistWithCovariance`; 336..336 bytes.

Codec identity: `UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf`.

- `twist`: `geometry_msgs/Twist`.
- `covariance`: `float64`; array 36.

### `time`

Symbol: `Ros1Time`; 8..8 bytes.

Codec identity: `UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0`.

- `sec`: `uint32`.
- `nsec`: `uint32`.

### `std_msgs/Header`

Symbol: `Ros1Std_msgsHeader`; 16..144 bytes.

Codec identity: `UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435`.

- `seq`: `uint32`.
- `stamp`: `time`.
- `frame_id`: `string`; text 128 bytes.

### `nav_msgs/Odometry`

Symbol: `Ros1Nav_msgsOdometry`; 700..956 bytes.

Codec identity: `UWVMROS1_c10d3ce1f2824c33d728d0006fb83134330d0332af122f179cf2dac32181a2ca`.

- `header`: `std_msgs/Header`.
- `child_frame_id`: `string`; text 128 bytes.
- `pose`: `geometry_msgs/PoseWithCovariance`.
- `twist`: `geometry_msgs/TwistWithCovariance`.

### `scout_msgs/ScoutBmsStatus`

Symbol: `Ros1Scout_msgsScoutBmsStatus`; 44..44 bytes.

Codec identity: `UWVMROS1_6921538c08e86ab5b9ecdbf974c6cb5b580488f4ed96ccbdb8b7824d51e9cf95`.

- `SOC`: `float64`.
- `SOH`: `float64`.
- `battery_voltage`: `float64`.
- `battery_current`: `float64`.
- `battery_temperature`: `float64`.
- `Alarm_Status_1`: `uint8`.
- `Alarm_Status_2`: `uint8`.
- `Warning_Status_1`: `uint8`.
- `Warning_Status_2`: `uint8`.

### `scout_msgs/ScoutDriverState`

Symbol: `Ros1Scout_msgsScoutDriverState`; 17..17 bytes.

Codec identity: `UWVMROS1_4c56c71ae621b2b8822d742894d19946492002453c93b72faccb4f2abc9d4275`.

- `driver_voltage`: `float64`.
- `driver_temperature`: `float64`.
- `driver_state`: `uint8`.

### `scout_msgs/ScoutLightCmd`

Symbol: `Ros1Scout_msgsScoutLightCmd`; 5..5 bytes.

Codec identity: `UWVMROS1_cf08cccf454f88111d5cc4a4b1ace08de72cf1ae9a9400c23a148126da95942a`.

- `enable_cmd_light_control`: `bool`.
- `front_mode`: `uint8`.
- `front_custom_value`: `uint8`.
- `rear_mode`: `uint8`.
- `rear_custom_value`: `uint8`.

- Constant `LIGHT_CONST_OFF`: `uint8 = 0`.
- Constant `LIGHT_CONST_ON`: `uint8 = 1`.
- Constant `LIGHT_BREATH`: `uint8 = 2`.
- Constant `LIGHT_CUSTOM`: `uint8 = 3`.

### `scout_msgs/ScoutLightState`

Symbol: `Ros1Scout_msgsScoutLightState`; 2..2 bytes.

Codec identity: `UWVMROS1_af55048f9200cfa80fc419664204a515f628cc610a352ab3ed8443dd7ac0ae51`.

- `mode`: `uint8`.
- `custom_value`: `uint8`.

### `scout_msgs/ScoutMotorState`

Symbol: `Ros1Scout_msgsScoutMotorState`; 32..32 bytes.

Codec identity: `UWVMROS1_ca67a704d7bb4ba6b2839db1fdb8a75bc753868ec871d101c24c85d8202a79b7`.

- `current`: `float64`.
- `rpm`: `float64`.
- `temperature`: `float64`.
- `motor_pose`: `float64`.

### `scout_msgs/ScoutRsStatus`

Symbol: `Ros1Scout_msgsScoutRsStatus`; 25..153 bytes.

Codec identity: `UWVMROS1_deb068b75fb629df3724c141ed3be9f6ee8a4aac7727cdaa28769cb61211f7de`.

- `header`: `std_msgs/Header`.
- `stick_left_h`: `int8`.
- `stick_left_v`: `int8`.
- `stick_right_h`: `int8`.
- `stick_right_v`: `int8`.
- `swa`: `uint8`.
- `swb`: `uint8`.
- `swc`: `uint8`.
- `swd`: `uint8`.
- `var_a`: `uint8`.

### `scout_msgs/ScoutStatus`

Symbol: `Ros1Scout_msgsScoutStatus`; 253..381 bytes.

Codec identity: `UWVMROS1_ff62854d4de0aae3dfbbc312822c6f912294f0feb04a7fff943df602d40bcbe2`.

- `header`: `std_msgs/Header`.
- `linear_velocity`: `float64`.
- `angular_velocity`: `float64`.
- `lateral_velocity`: `float64`.
- `base_state`: `uint8`.
- `control_mode`: `uint8`.
- `fault_code`: `uint16`.
- `battery_voltage`: `float64`.
- `motor_states`: `scout_msgs/ScoutMotorState`; array 4.
- `driver_states`: `scout_msgs/ScoutDriverState`; array 4.
- `light_control_enabled`: `bool`.
- `front_light_state`: `scout_msgs/ScoutLightState`.
- `rear_light_state`: `scout_msgs/ScoutLightState`.

- Constant `MOTOR_ID_FRONT_RIGHT`: `int8 = 0`.
- Constant `MOTOR_ID_FRONT_LEFT`: `int8 = 1`.
- Constant `MOTOR_ID_REAR_RIGHT`: `int8 = 2`.
- Constant `MOTOR_ID_REAR_LEFT`: `int8 = 3`.
- Constant `LIGHT_ID_FRONT`: `int8 = 0`.
- Constant `LIGHT_ID_REAR`: `int8 = 1`.

## Interface components

- `geometry_msgs/Point` (message): message → `geometry_msgs/Point`.
- `geometry_msgs/Pose` (message): message → `geometry_msgs/Pose`.
- `geometry_msgs/PoseWithCovariance` (message): message → `geometry_msgs/PoseWithCovariance`.
- `geometry_msgs/Quaternion` (message): message → `geometry_msgs/Quaternion`.
- `geometry_msgs/Twist` (message): message → `geometry_msgs/Twist`.
- `geometry_msgs/TwistWithCovariance` (message): message → `geometry_msgs/TwistWithCovariance`.
- `geometry_msgs/Vector3` (message): message → `geometry_msgs/Vector3`.
- `nav_msgs/Odometry` (message): message → `nav_msgs/Odometry`.
- `scout_msgs/ScoutBmsStatus` (message): message → `scout_msgs/ScoutBmsStatus`.
- `scout_msgs/ScoutDriverState` (message): message → `scout_msgs/ScoutDriverState`.
- `scout_msgs/ScoutLightCmd` (message): message → `scout_msgs/ScoutLightCmd`.
- `scout_msgs/ScoutLightState` (message): message → `scout_msgs/ScoutLightState`.
- `scout_msgs/ScoutMotorState` (message): message → `scout_msgs/ScoutMotorState`.
- `scout_msgs/ScoutRsStatus` (message): message → `scout_msgs/ScoutRsStatus`.
- `scout_msgs/ScoutStatus` (message): message → `scout_msgs/ScoutStatus`.
- `std_msgs/Header` (message): message → `std_msgs/Header`.

## ros2

### `builtin_interfaces/msg/Time`

Symbol: `Ros2Builtin_interfacesMsgTime`; 8..8 bytes.

Codec identity: `UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`.

- `sec`: `int32`.
- `nanosec`: `uint32`.

### `geometry_msgs/msg/Point`

Symbol: `Ros2Geometry_msgsMsgPoint`; 24..24 bytes.

Codec identity: `UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616`.

- `x`: `float64`.
- `y`: `float64`.
- `z`: `float64`.

### `geometry_msgs/msg/Quaternion`

Symbol: `Ros2Geometry_msgsMsgQuaternion`; 32..32 bytes.

Codec identity: `UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`.

- `x`: `float64`; declared default `0.0`.
- `y`: `float64`; declared default `0.0`.
- `z`: `float64`; declared default `0.0`.
- `w`: `float64`; declared default `1.0`.

### `geometry_msgs/msg/Pose`

Symbol: `Ros2Geometry_msgsMsgPose`; 56..56 bytes.

Codec identity: `UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777`.

- `position`: `geometry_msgs/msg/Point`.
- `orientation`: `geometry_msgs/msg/Quaternion`.

### `geometry_msgs/msg/PoseWithCovariance`

Symbol: `Ros2Geometry_msgsMsgPoseWithCovariance`; 344..344 bytes.

Codec identity: `UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2`.

- `pose`: `geometry_msgs/msg/Pose`.
- `covariance`: `float64`; array 36.

### `geometry_msgs/msg/Vector3`

Symbol: `Ros2Geometry_msgsMsgVector3`; 24..24 bytes.

Codec identity: `UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`.

- `x`: `float64`.
- `y`: `float64`.
- `z`: `float64`.

### `geometry_msgs/msg/Twist`

Symbol: `Ros2Geometry_msgsMsgTwist`; 48..48 bytes.

Codec identity: `UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e`.

- `linear`: `geometry_msgs/msg/Vector3`.
- `angular`: `geometry_msgs/msg/Vector3`.

### `geometry_msgs/msg/TwistWithCovariance`

Symbol: `Ros2Geometry_msgsMsgTwistWithCovariance`; 336..336 bytes.

Codec identity: `UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404`.

- `twist`: `geometry_msgs/msg/Twist`.
- `covariance`: `float64`; array 36.

### `std_msgs/msg/Header`

Symbol: `Ros2Std_msgsMsgHeader`; 12..140 bytes.

Codec identity: `UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96`.

- `stamp`: `builtin_interfaces/msg/Time`.
- `frame_id`: `string`; text 128 bytes.

### `nav_msgs/msg/Odometry`

Symbol: `Ros2Nav_msgsMsgOdometry`; 696..952 bytes.

Codec identity: `UWVMROS1_fdfdd74c211c22bfd167c3e33a098fe21198cb095bbd0313fc765f38b1f334ec`.

- `header`: `std_msgs/msg/Header`.
- `child_frame_id`: `string`; text 128 bytes.
- `pose`: `geometry_msgs/msg/PoseWithCovariance`.
- `twist`: `geometry_msgs/msg/TwistWithCovariance`.

### `scout_msgs/msg/ScoutActuatorState`

Symbol: `Ros2Scout_msgsMsgScoutActuatorState`; 19..19 bytes.

Codec identity: `UWVMROS1_e7955c07aedaf42f8d97f873d60ae5c0dfc562faa1d64848f11b333f797350c6`.

- `rpm`: `int16`.
- `current`: `float64`.
- `driver_voltage`: `float32`.
- `driver_temperature`: `float32`.
- `motor_temperature`: `int8`.

### `scout_msgs/msg/ScoutLightCmd`

Symbol: `Ros2Scout_msgsMsgScoutLightCmd`; 5..5 bytes.

Codec identity: `UWVMROS1_a82206813682fbf1a6b41009c12191ad9ce47c98444d8ea9792e7b212ee602d7`.

- `cmd_ctrl_allowed`: `bool`.
- `front_mode`: `uint8`.
- `front_custom_value`: `uint8`.
- `rear_mode`: `uint8`.
- `rear_custom_value`: `uint8`.

- Constant `LIGHT_CONST_OFF`: `uint8 = 0`.
- Constant `LIGHT_CONST_ON`: `uint8 = 1`.
- Constant `LIGHT_BREATH`: `uint8 = 2`.
- Constant `LIGHT_CUSTOM`: `uint8 = 3`.

### `scout_msgs/msg/ScoutLightState`

Symbol: `Ros2Scout_msgsMsgScoutLightState`; 2..2 bytes.

Codec identity: `UWVMROS1_4f42b9365cc76673b156e725aac9448e0f0d806105d3717cdb2628c384a6d76a`.

- `mode`: `uint8`.
- `custom_value`: `uint8`.

### `scout_msgs/msg/ScoutRCState`

Symbol: `Ros2Scout_msgsMsgScoutRCState`; 9..9 bytes.

Codec identity: `UWVMROS1_ba13e4c728041d14352c021fe5c1c5eee5d531c84ac64c61d944d6192dcd4298`.

- `swa`: `uint8`.
- `swb`: `uint8`.
- `swc`: `uint8`.
- `swd`: `uint8`.
- `stick_right_v`: `int8`.
- `stick_right_h`: `int8`.
- `stick_left_v`: `int8`.
- `stick_left_h`: `int8`.
- `var_a`: `int8`.

### `scout_msgs/msg/ScoutStatus`

Symbol: `Ros2Scout_msgsMsgScoutStatus`; 121..249 bytes.

Codec identity: `UWVMROS1_75db4db1dcc07210d543b8e6bd6b6a7aadbf23db8043ff372a3b224c5c235b86`.

- `header`: `std_msgs/msg/Header`.
- `linear_velocity`: `float64`.
- `angular_velocity`: `float64`.
- `vehicle_state`: `uint8`.
- `control_mode`: `uint8`.
- `error_code`: `uint16`.
- `battery_voltage`: `float64`.
- `actuator_states`: `scout_msgs/msg/ScoutActuatorState`; array 4.
- `light_control_enabled`: `bool`.
- `front_light_state`: `scout_msgs/msg/ScoutLightState`.
- `rear_light_state`: `scout_msgs/msg/ScoutLightState`.

- Constant `MOTOR_ID_FRONT_RIGHT`: `int8 = 0`.
- Constant `MOTOR_ID_FRONT_LEFT`: `int8 = 1`.
- Constant `MOTOR_ID_REAR_RIGHT`: `int8 = 2`.
- Constant `MOTOR_ID_REAR_LEFT`: `int8 = 3`.
- Constant `LIGHT_ID_FRONT`: `int8 = 0`.
- Constant `LIGHT_ID_REAR`: `int8 = 1`.

## Interface components

- `builtin_interfaces/msg/Time` (message): message → `builtin_interfaces/msg/Time`.
- `geometry_msgs/msg/Point` (message): message → `geometry_msgs/msg/Point`.
- `geometry_msgs/msg/Pose` (message): message → `geometry_msgs/msg/Pose`.
- `geometry_msgs/msg/PoseWithCovariance` (message): message → `geometry_msgs/msg/PoseWithCovariance`.
- `geometry_msgs/msg/Quaternion` (message): message → `geometry_msgs/msg/Quaternion`.
- `geometry_msgs/msg/Twist` (message): message → `geometry_msgs/msg/Twist`.
- `geometry_msgs/msg/TwistWithCovariance` (message): message → `geometry_msgs/msg/TwistWithCovariance`.
- `geometry_msgs/msg/Vector3` (message): message → `geometry_msgs/msg/Vector3`.
- `nav_msgs/msg/Odometry` (message): message → `nav_msgs/msg/Odometry`.
- `scout_msgs/msg/ScoutActuatorState` (message): message → `scout_msgs/msg/ScoutActuatorState`.
- `scout_msgs/msg/ScoutLightCmd` (message): message → `scout_msgs/msg/ScoutLightCmd`.
- `scout_msgs/msg/ScoutLightState` (message): message → `scout_msgs/msg/ScoutLightState`.
- `scout_msgs/msg/ScoutRCState` (message): message → `scout_msgs/msg/ScoutRCState`.
- `scout_msgs/msg/ScoutStatus` (message): message → `scout_msgs/msg/ScoutStatus`.
- `std_msgs/msg/Header` (message): message → `std_msgs/msg/Header`.
