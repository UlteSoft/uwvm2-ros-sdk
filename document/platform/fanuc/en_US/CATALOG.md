# FANUC complete type catalog

This catalog preserves native field order, scalar widths, fixed arrays, defaults and constants across messages, services and actions. Finite guest capacities do not rewrite upstream interfaces.

## ROS 2

120 complete record components; 80 original interfaces.

### builtin_interfaces/msg/Duration

`Ros2Builtin_interfacesMsgDuration`; 8..8 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `sec` | `int32` | scalar  | 0 | `None` |
| `nanosec` | `uint32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4`.

### builtin_interfaces/msg/Time

`Ros2Builtin_interfacesMsgTime`; 8..8 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `sec` | `int32` | scalar  | 0 | `None` |
| `nanosec` | `uint32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`.

### std_msgs/msg/Header

`Ros2Std_msgsMsgHeader`; 12..76 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `stamp` | `builtin_interfaces/msg/Time` | scalar  | 0 | `None` |
| `frame_id` | `string` | scalar  | 64 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396`.

### trajectory_msgs/msg/JointTrajectoryPoint

`Ros2Trajectory_msgsMsgJointTrajectoryPoint`; 24..408 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `positions` | `float64` | sequence 12 | 0 | `None` |
| `velocities` | `float64` | sequence 12 | 0 | `None` |
| `accelerations` | `float64` | sequence 12 | 0 | `None` |
| `effort` | `float64` | sequence 12 | 0 | `None` |
| `time_from_start` | `builtin_interfaces/msg/Duration` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5`.

### trajectory_msgs/msg/JointTrajectory

`Ros2Trajectory_msgsMsgJointTrajectory`; 20..4164 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `header` | `std_msgs/msg/Header` | scalar  | 0 | `None` |
| `joint_names` | `string` | sequence 12 | 64 | `None` |
| `points` | `trajectory_msgs/msg/JointTrajectoryPoint` | sequence 8 | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0`.

### geometry_msgs/msg/Vector3

`Ros2Geometry_msgsMsgVector3`; 24..24 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `x` | `float64` | scalar  | 0 | `None` |
| `y` | `float64` | scalar  | 0 | `None` |
| `z` | `float64` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`.

### geometry_msgs/msg/Quaternion

`Ros2Geometry_msgsMsgQuaternion`; 32..32 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `x` | `float64` | scalar  | 0 | `0.0` |
| `y` | `float64` | scalar  | 0 | `0.0` |
| `z` | `float64` | scalar  | 0 | `0.0` |
| `w` | `float64` | scalar  | 0 | `1.0` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`.

### geometry_msgs/msg/Transform

`Ros2Geometry_msgsMsgTransform`; 56..56 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `translation` | `geometry_msgs/msg/Vector3` | scalar  | 0 | `None` |
| `rotation` | `geometry_msgs/msg/Quaternion` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b`.

### geometry_msgs/msg/Twist

`Ros2Geometry_msgsMsgTwist`; 48..48 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `linear` | `geometry_msgs/msg/Vector3` | scalar  | 0 | `None` |
| `angular` | `geometry_msgs/msg/Vector3` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e`.

### trajectory_msgs/msg/MultiDOFJointTrajectoryPoint

`Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint`; 20..324 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `transforms` | `geometry_msgs/msg/Transform` | sequence 2 | 0 | `None` |
| `velocities` | `geometry_msgs/msg/Twist` | sequence 2 | 0 | `None` |
| `accelerations` | `geometry_msgs/msg/Twist` | sequence 2 | 0 | `None` |
| `time_from_start` | `builtin_interfaces/msg/Duration` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242`.

### trajectory_msgs/msg/MultiDOFJointTrajectory

`Ros2Trajectory_msgsMsgMultiDOFJointTrajectory`; 20..1516 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `header` | `std_msgs/msg/Header` | scalar  | 0 | `None` |
| `joint_names` | `string` | sequence 2 | 64 | `None` |
| `points` | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | sequence 4 | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401`.

### control_msgs/msg/JointTolerance

`Ros2Control_msgsMsgJointTolerance`; 28..92 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `name` | `string` | scalar  | 64 | `None` |
| `position` | `float64` | scalar  | 0 | `None` |
| `velocity` | `float64` | scalar  | 0 | `None` |
| `acceleration` | `float64` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2`.

### control_msgs/msg/JointComponentTolerance

`Ros2Control_msgsMsgJointComponentTolerance`; 30..542 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `joint_name` | `string` | scalar  | 512 | `None` |
| `component` | `uint16` | scalar  | 0 | `None` |
| `position` | `float64` | scalar  | 0 | `None` |
| `velocity` | `float64` | scalar  | 0 | `None` |
| `acceleration` | `float64` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342`.

- `X_AXIS`: `uint16` = `1`.
- `Y_AXIS`: `uint16` = `2`.
- `Z_AXIS`: `uint16` = `3`.
- `TRANSLATION`: `uint16` = `4`.
- `ROTATION`: `uint16` = `5`.

### control_msgs/action/FollowJointTrajectory_Goal

`Ros2Control_msgsActionFollowJointTrajectory_Goal`; 64..20920 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `trajectory` | `trajectory_msgs/msg/JointTrajectory` | scalar  | 0 | `None` |
| `multi_dof_trajectory` | `trajectory_msgs/msg/MultiDOFJointTrajectory` | scalar  | 0 | `None` |
| `path_tolerance` | `control_msgs/msg/JointTolerance` | sequence 12 | 0 | `None` |
| `component_path_tolerance` | `control_msgs/msg/JointComponentTolerance` | sequence 12 | 0 | `None` |
| `goal_tolerance` | `control_msgs/msg/JointTolerance` | sequence 12 | 0 | `None` |
| `component_goal_tolerance` | `control_msgs/msg/JointComponentTolerance` | sequence 12 | 0 | `None` |
| `goal_time_tolerance` | `builtin_interfaces/msg/Duration` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16`.

### control_msgs/action/FollowJointTrajectory_Result

`Ros2Control_msgsActionFollowJointTrajectory_Result`; 8..4104 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `error_code` | `int32` | scalar  | 0 | `None` |
| `error_string` | `string` | scalar  | 4096 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70`.

- `SUCCESSFUL`: `int32` = `0`.
- `INVALID_GOAL`: `int32` = `-1`.
- `INVALID_JOINTS`: `int32` = `-2`.
- `OLD_HEADER_TIMESTAMP`: `int32` = `-3`.
- `PATH_TOLERANCE_VIOLATED`: `int32` = `-4`.
- `GOAL_TOLERANCE_VIOLATED`: `int32` = `-5`.

### control_msgs/action/FollowJointTrajectory_Feedback

`Ros2Control_msgsActionFollowJointTrajectory_Feedback`; 152..4128 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `header` | `std_msgs/msg/Header` | scalar  | 0 | `None` |
| `joint_names` | `string` | sequence 12 | 64 | `None` |
| `desired` | `trajectory_msgs/msg/JointTrajectoryPoint` | scalar  | 0 | `None` |
| `actual` | `trajectory_msgs/msg/JointTrajectoryPoint` | scalar  | 0 | `None` |
| `error` | `trajectory_msgs/msg/JointTrajectoryPoint` | scalar  | 0 | `None` |
| `multi_dof_joint_names` | `string` | sequence 2 | 512 | `None` |
| `multi_dof_desired` | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | scalar  | 0 | `None` |
| `multi_dof_actual` | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | scalar  | 0 | `None` |
| `multi_dof_error` | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb`.

### fanuc_msgs/msg/IOType

`Ros2Fanuc_msgsMsgIOType`; 4..68 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `type` | `string` | scalar  | 64 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_1815aa6b1bcab1efe21de0e31570ca650553b5c70f0793301f82c0ca7934c586`.

- `AI`: `string` = `AI`.
- `AO`: `string` = `AO`.
- `DI`: `string` = `DI`.
- `DO`: `string` = `DO`.
- `RI`: `string` = `RI`.
- `RO`: `string` = `RO`.
- `SI`: `string` = `SI`.
- `SO`: `string` = `SO`.
- `WI`: `string` = `WI`.
- `WO`: `string` = `WO`.
- `UI`: `string` = `UI`.
- `UO`: `string` = `UO`.
- `WSI`: `string` = `WSI`.
- `WSO`: `string` = `WSO`.
- `F`: `string` = `F`.
- `M`: `string` = `M`.
- `GI`: `string` = `GI`.
- `GO`: `string` = `GO`.

### fanuc_msgs/msg/AnalogIO

`Ros2Fanuc_msgsMsgAnalogIO`; 10..74 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `io_type` | `fanuc_msgs/msg/IOType` | scalar  | 0 | `None` |
| `index` | `uint16` | scalar  | 0 | `None` |
| `value` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_d62097527ba99bf6e803283350161cd1415173a22eb3cb20331a232366076d00`.

### fanuc_msgs/msg/AnalogIOCmd

`Ros2Fanuc_msgsMsgAnalogIOCmd`; 4..2372 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `values` | `fanuc_msgs/msg/AnalogIO` | sequence 32 | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_62f38a088ed23f8daf7163f26514ae1aabd7b1b64845ccdbc281cb7839d857ba`.

### fanuc_msgs/msg/AnalogIOState

`Ros2Fanuc_msgsMsgAnalogIOState`; 4..2372 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `values` | `fanuc_msgs/msg/AnalogIO` | sequence 32 | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_820b41fecbf6db8e2b2e67d60cd1167cf474b22ca6c489f4d2d64dd33eaac9a4`.

### fanuc_msgs/msg/BoolIO

`Ros2Fanuc_msgsMsgBoolIO`; 7..71 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `io_type` | `fanuc_msgs/msg/IOType` | scalar  | 0 | `None` |
| `index` | `uint16` | scalar  | 0 | `None` |
| `value` | `bool` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_9209ae1b8f5407a31beface0a3286f58bd823aabdc560c2a4bf4a9b1ca125aa7`.

### fanuc_msgs/msg/CollaborativeSpeedScaling

`Ros2Fanuc_msgsMsgCollaborativeSpeedScaling`; 8..8 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `collaborative_speed_scaling` | `float64` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_693a3b581527d2eaf0f697f31e87ca2da428d1f51b821d42d6b06af387a2fb45`.

### fanuc_msgs/msg/ConnectionStatus

`Ros2Fanuc_msgsMsgConnectionStatus`; 1..1 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `is_connected` | `bool` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_8ce24fb87538922b1f3c0ae856eb223d716143064eb46a6cfce5fec01b45b078`.

### fanuc_msgs/msg/ForceSensor

`Ros2Fanuc_msgsMsgForceSensor`; 28..28 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `force_x` | `float32` | scalar  | 0 | `None` |
| `force_y` | `float32` | scalar  | 0 | `None` |
| `force_z` | `float32` | scalar  | 0 | `None` |
| `moment_x` | `float32` | scalar  | 0 | `None` |
| `moment_y` | `float32` | scalar  | 0 | `None` |
| `moment_z` | `float32` | scalar  | 0 | `None` |
| `fs_type` | `uint32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_06c99b43d7347646179850f3ba79192da7ce71296667d93d88659efbc1004032`.

### fanuc_msgs/msg/Frame

`Ros2Fanuc_msgsMsgFrame`; 24..24 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `x` | `float32` | scalar  | 0 | `None` |
| `y` | `float32` | scalar  | 0 | `None` |
| `z` | `float32` | scalar  | 0 | `None` |
| `w` | `float32` | scalar  | 0 | `None` |
| `p` | `float32` | scalar  | 0 | `None` |
| `r` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_609d1b7e49315f7f0a0fe86fa997673acd0d009e57b563690f36624b59b9effb`.

### fanuc_msgs/msg/IOCmd

`Ros2Fanuc_msgsMsgIOCmd`; 4..2276 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `values` | `fanuc_msgs/msg/BoolIO` | sequence 32 | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_462552bbaa3c9ed4caaf3108960d514e4ab61fcf2d6a84f0465b485bec1de45d`.

### fanuc_msgs/msg/IOState

`Ros2Fanuc_msgsMsgIOState`; 4..2276 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `values` | `fanuc_msgs/msg/BoolIO` | sequence 32 | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_332533445014c03d626a2c4dbdffd9421748aa6b73f49d407441fd6b9f2b24d8`.

### fanuc_msgs/msg/NumReg

`Ros2Fanuc_msgsMsgNumReg`; 6..6 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `index` | `uint16` | scalar  | 0 | `None` |
| `value` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_0fb9344c5768ea52ab072939f368f1e73dcc0ff83e74b4cb6d35fca47c1d29cc`.

### fanuc_msgs/msg/NumRegCmd

`Ros2Fanuc_msgsMsgNumRegCmd`; 4..196 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `values` | `fanuc_msgs/msg/NumReg` | sequence 32 | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_9c76500073889377525a0802c46bd96589a2639dd9534cf7ad2b9956cd95b5b6`.

### fanuc_msgs/msg/NumRegState

`Ros2Fanuc_msgsMsgNumRegState`; 4..196 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `values` | `fanuc_msgs/msg/NumReg` | sequence 32 | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_9c8ff4917a6dd033e6a6776ae8525e93c2924d776f05fd54e7e8d2251fc48b3a`.

### fanuc_msgs/msg/RMIStatus

`Ros2Fanuc_msgsMsgRMIStatus`; 24..1048 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `program_status` | `uint32` | scalar  | 0 | `None` |
| `next_sequence` | `uint32` | scalar  | 0 | `None` |
| `last_sequence` | `uint32` | scalar  | 0 | `None` |
| `last_sequence_error` | `int32` | scalar  | 0 | `None` |
| `last_sequence_instruction` | `string` | scalar  | 512 | `None` |
| `last_sequence_error_message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_dc2e7eaabf44807142581905838f8951653682a6c6d61ebcf56494b16a10d5e8`.

### fanuc_msgs/msg/RobotStatus

`Ros2Fanuc_msgsMsgRobotStatus`; 5..5 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `in_error` | `bool` | scalar  | 0 | `None` |
| `tp_enabled` | `bool` | scalar  | 0 | `None` |
| `e_stopped` | `bool` | scalar  | 0 | `None` |
| `motion_possible` | `bool` | scalar  | 0 | `None` |
| `contact_stop_mode` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_3f31ee3631dc6f4c90eb5ded6209ccebf0f4193ddfe5f5032bdd2bcd71f8cc31`.

- `CONTACT_STOP_MODE_NONE`: `uint8` = `0`.
- `CONTACT_STOP_MODE_SAFE`: `uint8` = `1`.
- `CONTACT_STOP_MODE_STOP`: `uint8` = `2`.
- `CONTACT_STOP_MODE_DSBL`: `uint8` = `3`.
- `CONTACT_STOP_MODE_ESCP`: `uint8` = `4`.

### fanuc_msgs/msg/RobotStatusExt

`Ros2Fanuc_msgsMsgRobotStatusExt`; 18..1042 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `error_code` | `string` | scalar  | 512 | `None` |
| `in_motion` | `bool` | scalar  | 0 | `None` |
| `drives_powered` | `bool` | scalar  | 0 | `None` |
| `gen_override` | `int32` | scalar  | 0 | `None` |
| `speed_clamp_limit` | `float32` | scalar  | 0 | `None` |
| `control_mode` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_8ba47a11bfbe02026fe79b32e1ed02e5f609499ea55bb57c9f09af9fba389648`.

### fanuc_msgs/srv/CfgForceSensor_Request

`Ros2Fanuc_msgsSrvCfgForceSensor_Request`; 8..8 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `do_reset` | `uint32` | scalar  | 0 | `None` |
| `fs_type` | `uint32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_01973ed21546cb747ad2ce2a990a8ec4e70efb66e1c8fc8856cf1082870984ff`.

### fanuc_msgs/srv/CfgForceSensor_Response

`Ros2Fanuc_msgsSrvCfgForceSensor_Response`; 4..4 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_41799ce44c937b1524889391db61e2b4d35795055cb4bbacfe5cc8bbd5b9a37b`.

### fanuc_msgs/srv/GetAnalogIO_Request

`Ros2Fanuc_msgsSrvGetAnalogIO_Request`; 6..70 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `io_type` | `fanuc_msgs/msg/IOType` | scalar  | 0 | `None` |
| `index` | `uint16` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_cd567f97de2de581975c3d4f280eec545dea37c941d316fc3708bbc4d3af94d9`.

### fanuc_msgs/srv/GetAnalogIO_Response

`Ros2Fanuc_msgsSrvGetAnalogIO_Response`; 8..8 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |
| `value` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_3b53d3ce95d95454a782778c160fcc102ead869c5681c9c67224c373fef1b217`.

### fanuc_msgs/srv/GetBoolIO_Request

`Ros2Fanuc_msgsSrvGetBoolIO_Request`; 6..70 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `io_type` | `fanuc_msgs/msg/IOType` | scalar  | 0 | `None` |
| `index` | `uint16` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_ce8c4b1efd2828e92656e897baf041e8965367a236079231101807c898d4b50c`.

### fanuc_msgs/srv/GetBoolIO_Response

`Ros2Fanuc_msgsSrvGetBoolIO_Response`; 5..5 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |
| `value` | `bool` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_7dbdcdde8d76c4ef422ea158551dd912273220c25a08f28fc8d19fdf8bc8a01c`.

### fanuc_msgs/srv/GetCartesianPosition_Request

`Ros2Fanuc_msgsSrvGetCartesianPosition_Request`; 1..1 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `group` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_a694a17bde88131efcadac4f134464a7777beab4b09e17624ae7b173ab62c3e4`.

### fanuc_msgs/srv/GetCartesianPosition_Response

`Ros2Fanuc_msgsSrvGetCartesianPosition_Response`; 54..54 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |
| `timetag` | `int32` | scalar  | 0 | `None` |
| `utool` | `uint8` | scalar  | 0 | `None` |
| `uframe` | `uint8` | scalar  | 0 | `None` |
| `front` | `uint8` | scalar  | 0 | `None` |
| `up` | `uint8` | scalar  | 0 | `None` |
| `left` | `uint8` | scalar  | 0 | `None` |
| `flip` | `uint8` | scalar  | 0 | `None` |
| `turn4` | `int8` | scalar  | 0 | `None` |
| `turn5` | `int8` | scalar  | 0 | `None` |
| `turn6` | `int8` | scalar  | 0 | `None` |
| `x` | `float32` | scalar  | 0 | `None` |
| `y` | `float32` | scalar  | 0 | `None` |
| `z` | `float32` | scalar  | 0 | `None` |
| `w` | `float32` | scalar  | 0 | `None` |
| `p` | `float32` | scalar  | 0 | `None` |
| `r` | `float32` | scalar  | 0 | `None` |
| `ext1` | `float32` | scalar  | 0 | `None` |
| `ext2` | `float32` | scalar  | 0 | `None` |
| `ext3` | `float32` | scalar  | 0 | `None` |
| `group` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_0516f0145717b06550674e02f0b9c47f9b312f4f361c791f56257fbb79e67329`.

### fanuc_msgs/srv/GetGroupIO_Request

`Ros2Fanuc_msgsSrvGetGroupIO_Request`; 6..70 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `io_type` | `fanuc_msgs/msg/IOType` | scalar  | 0 | `None` |
| `index` | `uint16` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_dbd2e8e791e8debc745843827ed296b51bf84159f4c4fe5d912c231d621de216`.

### fanuc_msgs/srv/GetGroupIO_Response

`Ros2Fanuc_msgsSrvGetGroupIO_Response`; 6..6 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |
| `value` | `uint16` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_9e131b91f36badc90ddae54a9855095241ab86c51b419b684d62879fae0bda7f`.

### fanuc_msgs/srv/GetNumReg_Request

`Ros2Fanuc_msgsSrvGetNumReg_Request`; 2..2 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `index` | `uint16` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_727b5ff4ab9c8976280df12e80d3aee03b31288087adb94ee82161574fc8dcb5`.

### fanuc_msgs/srv/GetNumReg_Response

`Ros2Fanuc_msgsSrvGetNumReg_Response`; 8..8 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |
| `value` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_78ae7ff82b3b2cd7d512fee8335f14a0759a71425fcf3d1b150dbe5e2a0179b3`.

### fanuc_msgs/srv/GetPayloadComp_Request

`Ros2Fanuc_msgsSrvGetPayloadComp_Request`; 2..2 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `payload_schedule_id` | `uint16` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_d48b88619f4a68ceeed02336e9ef078c27905707a21d977448fbbfbd560f398d`.

### fanuc_msgs/srv/GetPayloadComp_Response

`Ros2Fanuc_msgsSrvGetPayloadComp_Response`; 32..32 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `mass` | `float32` | scalar  | 0 | `None` |
| `cg_x` | `float32` | scalar  | 0 | `None` |
| `cg_y` | `float32` | scalar  | 0 | `None` |
| `cg_z` | `float32` | scalar  | 0 | `None` |
| `in_x` | `float32` | scalar  | 0 | `None` |
| `in_y` | `float32` | scalar  | 0 | `None` |
| `in_z` | `float32` | scalar  | 0 | `None` |
| `result` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_012b216c949f99755a36678b6be28d032f698b472ce4fa9ba975bc6d453ae4e4`.

### fanuc_msgs/srv/GetPayloadID_Request

`Ros2Fanuc_msgsSrvGetPayloadID_Request`; 0..0 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| — | Empty semantic component; C storage dummy has no wire bytes. | — | — | — |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_6c943659905c8adc7aa4b73832584994c83bfe009d18dc30a11d99b9fc0d6eef`.

### fanuc_msgs/srv/GetPayloadID_Response

`Ros2Fanuc_msgsSrvGetPayloadID_Response`; 6..6 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `payload_schedule_id` | `uint16` | scalar  | 0 | `None` |
| `result` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_5551f4eab590c87fd7679d593c9c446903bdaa02aa1ed2512b146768122a950c`.

### fanuc_msgs/srv/GetPayloadValue_Request

`Ros2Fanuc_msgsSrvGetPayloadValue_Request`; 2..2 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `payload_schedule_id` | `uint16` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_d82667bd644873ae4fa5de0289ed94791eb2a7af49c1b8f86ed7f91cf875407a`.

### fanuc_msgs/srv/GetPayloadValue_Response

`Ros2Fanuc_msgsSrvGetPayloadValue_Response`; 32..32 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `mass` | `float32` | scalar  | 0 | `None` |
| `cg_x` | `float32` | scalar  | 0 | `None` |
| `cg_y` | `float32` | scalar  | 0 | `None` |
| `cg_z` | `float32` | scalar  | 0 | `None` |
| `in_x` | `float32` | scalar  | 0 | `None` |
| `in_y` | `float32` | scalar  | 0 | `None` |
| `in_z` | `float32` | scalar  | 0 | `None` |
| `result` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_c3361ceec2ccd5b4d3ef566cbd885f8cddba75b4f1dc1712144147827689f06d`.

### fanuc_msgs/srv/GetPosReg_Request

`Ros2Fanuc_msgsSrvGetPosReg_Request`; 2..2 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `index` | `uint16` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_f7f1391c5ea385bff615d95c5e38f01a809828b142112829dc436916b063505a`.

### fanuc_msgs/srv/GetPosReg_Response

`Ros2Fanuc_msgsSrvGetPosReg_Response`; 89..601 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |
| `representation` | `string` | scalar  | 512 | `None` |
| `utool` | `uint8` | scalar  | 0 | `None` |
| `uframe` | `uint8` | scalar  | 0 | `None` |
| `front` | `uint8` | scalar  | 0 | `None` |
| `up` | `uint8` | scalar  | 0 | `None` |
| `left` | `uint8` | scalar  | 0 | `None` |
| `flip` | `uint8` | scalar  | 0 | `None` |
| `turn4` | `int8` | scalar  | 0 | `None` |
| `turn5` | `int8` | scalar  | 0 | `None` |
| `turn6` | `int8` | scalar  | 0 | `None` |
| `x` | `float32` | scalar  | 0 | `None` |
| `y` | `float32` | scalar  | 0 | `None` |
| `z` | `float32` | scalar  | 0 | `None` |
| `w` | `float32` | scalar  | 0 | `None` |
| `p` | `float32` | scalar  | 0 | `None` |
| `r` | `float32` | scalar  | 0 | `None` |
| `ext1` | `float32` | scalar  | 0 | `None` |
| `ext2` | `float32` | scalar  | 0 | `None` |
| `ext3` | `float32` | scalar  | 0 | `None` |
| `j1` | `float32` | scalar  | 0 | `None` |
| `j2` | `float32` | scalar  | 0 | `None` |
| `j3` | `float32` | scalar  | 0 | `None` |
| `j4` | `float32` | scalar  | 0 | `None` |
| `j5` | `float32` | scalar  | 0 | `None` |
| `j6` | `float32` | scalar  | 0 | `None` |
| `j7` | `float32` | scalar  | 0 | `None` |
| `j8` | `float32` | scalar  | 0 | `None` |
| `j9` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_e540225b0d532c460905582ad99ee175dd771e971c7e75f5dfb9325d39ed6b27`.

### fanuc_msgs/srv/GetTCPSpeed_Request

`Ros2Fanuc_msgsSrvGetTCPSpeed_Request`; 1..1 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `group` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_6bdfd44465b75bbd4e232f802dbd3c0bfa28e90a93f9a28b3c15fb150bce7ac7`.

### fanuc_msgs/srv/GetTCPSpeed_Response

`Ros2Fanuc_msgsSrvGetTCPSpeed_Response`; 13..13 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |
| `timetag` | `int32` | scalar  | 0 | `None` |
| `speed` | `float32` | scalar  | 0 | `None` |
| `group` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_3ec07d99342f275506452f32076f9e1ea01bf32f43662311708a9b44ca951147`.

### fanuc_msgs/srv/GetUFrameData_Request

`Ros2Fanuc_msgsSrvGetUFrameData_Request`; 2..2 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `uframe_number` | `uint8` | scalar  | 0 | `None` |
| `group` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_c1ef7077fd7f61ed8ff46931c8e39c5950658cfe1d36cffac10083ab304307be`.

### fanuc_msgs/srv/GetUFrameData_Response

`Ros2Fanuc_msgsSrvGetUFrameData_Response`; 30..30 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |
| `uframe_number` | `uint8` | scalar  | 0 | `None` |
| `frame` | `fanuc_msgs/msg/Frame` | scalar  | 0 | `None` |
| `group` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_f956e1447bd4a15f547fdf5d6775836018d50153270fe8863c4b30d83422fd2e`.

### fanuc_msgs/srv/GetUFrameUTool_Request

`Ros2Fanuc_msgsSrvGetUFrameUTool_Request`; 1..1 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `group` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_3d57da6f8003b33b2a079d4f284eb0f182d7e088074112b7f4ee25d3113bd443`.

### fanuc_msgs/srv/GetUFrameUTool_Response

`Ros2Fanuc_msgsSrvGetUFrameUTool_Response`; 7..7 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |
| `uframe_number` | `uint8` | scalar  | 0 | `None` |
| `utool_number` | `uint8` | scalar  | 0 | `None` |
| `group` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_f9cb64b89f17b6811e4073b9f94d0fd6844d21ec4b846f78bfd13cb14a35a6b3`.

### fanuc_msgs/srv/GetUToolData_Request

`Ros2Fanuc_msgsSrvGetUToolData_Request`; 2..2 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `utool_number` | `uint8` | scalar  | 0 | `None` |
| `group` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_10c3799dcb1b09dbcb6d1b794a00ecfaf69a8f457d95eeb92855f79dba7be1bc`.

### fanuc_msgs/srv/GetUToolData_Response

`Ros2Fanuc_msgsSrvGetUToolData_Response`; 30..30 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |
| `utool_number` | `uint8` | scalar  | 0 | `None` |
| `frame` | `fanuc_msgs/msg/Frame` | scalar  | 0 | `None` |
| `group` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_f3a2b94f337cec9c58156b803675f38885350cc3fc3171234c0d361afc800d81`.

### fanuc_msgs/srv/ReadError_Request

`Ros2Fanuc_msgsSrvReadError_Request`; 1..1 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `count` | `uint8` | scalar  | 0 | `1` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_4b67ed8e2ecccefb6bdead80249f5916e6ea192d822183292db43351839fb6f9`.

### fanuc_msgs/srv/ReadError_Response

`Ros2Fanuc_msgsSrvReadError_Response`; 25..2585 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |
| `count` | `uint8` | scalar  | 0 | `None` |
| `error_data` | `string` | array 5 | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_6e28db10c7afb06cb1256f6d74a43e26c5efa6c13fec8826ae0e623a5eb954b6`.

### fanuc_msgs/srv/Reset_Request

`Ros2Fanuc_msgsSrvReset_Request`; 0..0 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| — | Empty semantic component; C storage dummy has no wire bytes. | — | — | — |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_b73f661d569f6af8dad1cd6625f4c0c55ef2c14c79b3e9af0f17fdc02736abc4`.

### fanuc_msgs/srv/Reset_Response

`Ros2Fanuc_msgsSrvReset_Response`; 4..4 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_5e9b92e5a112b4934ce0893afaa09156fdb47c26b0aa6ae9a27d61920d308ab8`.

### fanuc_msgs/srv/SetAnalogIO_Request

`Ros2Fanuc_msgsSrvSetAnalogIO_Request`; 10..74 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `io_type` | `fanuc_msgs/msg/IOType` | scalar  | 0 | `None` |
| `index` | `uint16` | scalar  | 0 | `None` |
| `value` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_a6bb4acfae23db79464faff849f359657537026d7c79f8a6c60259caec5e87f4`.

### fanuc_msgs/srv/SetAnalogIO_Response

`Ros2Fanuc_msgsSrvSetAnalogIO_Response`; 4..4 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_aeac383e2c4a292f1237494bff5b261cd0197542e00456b4ee0edf9b7fe8a39b`.

### fanuc_msgs/srv/SetBoolIO_Request

`Ros2Fanuc_msgsSrvSetBoolIO_Request`; 7..71 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `io_type` | `fanuc_msgs/msg/IOType` | scalar  | 0 | `None` |
| `index` | `uint16` | scalar  | 0 | `None` |
| `value` | `bool` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_0e8ace58c769670a2519e733d020a3ca902bff99982514d5cd9ecda391c1a4cf`.

### fanuc_msgs/srv/SetBoolIO_Response

`Ros2Fanuc_msgsSrvSetBoolIO_Response`; 4..4 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_c9c68ca577dd6e4d1743385d9c69c8f1c6e0780ae247877d823ab97a68e675a0`.

### fanuc_msgs/srv/SetGenOverride_Request

`Ros2Fanuc_msgsSrvSetGenOverride_Request`; 1..1 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `value` | `int8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_7d321e33aaf6f58013c33ffc012c1ddbd27aefff3f21d7456030a1d590362039`.

### fanuc_msgs/srv/SetGenOverride_Response

`Ros2Fanuc_msgsSrvSetGenOverride_Response`; 4..4 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_1ffcb25cad7dbf51c216753dac2c117a191fb081a5a562e63d34d447e61f0a59`.

### fanuc_msgs/srv/SetGroupIO_Request

`Ros2Fanuc_msgsSrvSetGroupIO_Request`; 8..72 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `io_type` | `fanuc_msgs/msg/IOType` | scalar  | 0 | `None` |
| `index` | `uint16` | scalar  | 0 | `None` |
| `value` | `uint16` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_42a76aec283e26e3a2c99bb27a23778e34effb6c3328754793f783038a2b84bd`.

### fanuc_msgs/srv/SetGroupIO_Response

`Ros2Fanuc_msgsSrvSetGroupIO_Response`; 4..4 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_aa6d2c99e8817273f8f2ab179df61d60efd8ee2cee0e1ec76c647956e22bff17`.

### fanuc_msgs/srv/SetNumReg_Request

`Ros2Fanuc_msgsSrvSetNumReg_Request`; 6..6 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `index` | `uint16` | scalar  | 0 | `None` |
| `value` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_7e362b671b8770db33f3876308c41a930863a0805771fa05fcbb170782207e36`.

### fanuc_msgs/srv/SetNumReg_Response

`Ros2Fanuc_msgsSrvSetNumReg_Response`; 4..4 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_7c7850ad8bb5c861d9b436311a8cf985e2e029d362877be80c5a6cb19021e482`.

### fanuc_msgs/srv/SetPayloadComp_Request

`Ros2Fanuc_msgsSrvSetPayloadComp_Request`; 30..30 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `payload_schedule_id` | `uint16` | scalar  | 0 | `None` |
| `mass` | `float32` | scalar  | 0 | `None` |
| `cg_x` | `float32` | scalar  | 0 | `None` |
| `cg_y` | `float32` | scalar  | 0 | `None` |
| `cg_z` | `float32` | scalar  | 0 | `None` |
| `in_x` | `float32` | scalar  | 0 | `None` |
| `in_y` | `float32` | scalar  | 0 | `None` |
| `in_z` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_92c495d71657249e15c172e850aa91869929a25817437567778df1b01d9037a8`.

### fanuc_msgs/srv/SetPayloadComp_Response

`Ros2Fanuc_msgsSrvSetPayloadComp_Response`; 4..4 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_37a9876e2a9c514fa8c4337ff1351f778d350318bdc6d8aa5d569b4039a2f76b`.

### fanuc_msgs/srv/SetPayloadID_Request

`Ros2Fanuc_msgsSrvSetPayloadID_Request`; 2..2 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `payload_schedule_id` | `uint16` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_aa15b59db17d2afb7ef9e74676a9b744763954ae063efafb91a3ab3c9852a1c0`.

### fanuc_msgs/srv/SetPayloadID_Response

`Ros2Fanuc_msgsSrvSetPayloadID_Response`; 4..4 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_7b704b36da10dc71b4cfaad92ea02ed22e4966077dc0940b03b8b8e49c5769c7`.

### fanuc_msgs/srv/SetPayloadValue_Request

`Ros2Fanuc_msgsSrvSetPayloadValue_Request`; 31..31 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `payload_schedule_id` | `uint16` | scalar  | 0 | `None` |
| `mass` | `float32` | scalar  | 0 | `None` |
| `cg_x` | `float32` | scalar  | 0 | `None` |
| `cg_y` | `float32` | scalar  | 0 | `None` |
| `cg_z` | `float32` | scalar  | 0 | `None` |
| `use_in` | `bool` | scalar  | 0 | `None` |
| `in_x` | `float32` | scalar  | 0 | `None` |
| `in_y` | `float32` | scalar  | 0 | `None` |
| `in_z` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_5d56ce8f2f8df9c3450d6a5dc77e9e77861471805aa6b9c6f8815c2e7c324974`.

### fanuc_msgs/srv/SetPayloadValue_Response

`Ros2Fanuc_msgsSrvSetPayloadValue_Response`; 4..4 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_09f30071b49ac57353429e8a2862ee80d3dcab9237e8192d008c12a3628cc6ab`.

### fanuc_msgs/srv/SetPosReg_Request

`Ros2Fanuc_msgsSrvSetPosReg_Request`; 87..599 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `index` | `uint16` | scalar  | 0 | `None` |
| `representation` | `string` | scalar  | 512 | `None` |
| `utool` | `uint8` | scalar  | 0 | `None` |
| `uframe` | `uint8` | scalar  | 0 | `None` |
| `front` | `uint8` | scalar  | 0 | `None` |
| `up` | `uint8` | scalar  | 0 | `None` |
| `left` | `uint8` | scalar  | 0 | `None` |
| `flip` | `uint8` | scalar  | 0 | `None` |
| `turn4` | `int8` | scalar  | 0 | `None` |
| `turn5` | `int8` | scalar  | 0 | `None` |
| `turn6` | `int8` | scalar  | 0 | `None` |
| `x` | `float32` | scalar  | 0 | `None` |
| `y` | `float32` | scalar  | 0 | `None` |
| `z` | `float32` | scalar  | 0 | `None` |
| `w` | `float32` | scalar  | 0 | `None` |
| `p` | `float32` | scalar  | 0 | `None` |
| `r` | `float32` | scalar  | 0 | `None` |
| `ext1` | `float32` | scalar  | 0 | `None` |
| `ext2` | `float32` | scalar  | 0 | `None` |
| `ext3` | `float32` | scalar  | 0 | `None` |
| `j1` | `float32` | scalar  | 0 | `None` |
| `j2` | `float32` | scalar  | 0 | `None` |
| `j3` | `float32` | scalar  | 0 | `None` |
| `j4` | `float32` | scalar  | 0 | `None` |
| `j5` | `float32` | scalar  | 0 | `None` |
| `j6` | `float32` | scalar  | 0 | `None` |
| `j7` | `float32` | scalar  | 0 | `None` |
| `j8` | `float32` | scalar  | 0 | `None` |
| `j9` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_f9af742e55a044a1a363a45cbe4a0a8ce4ca62fcaf43759041cef89149d96d30`.

### fanuc_msgs/srv/SetPosReg_Response

`Ros2Fanuc_msgsSrvSetPosReg_Response`; 4..4 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_fb6f889d30c921df31f55cdc760346eb0d655816e71b52d4aac7a1e56d4e9cb2`.

### fanuc_msgs/srv/SetUFrameData_Request

`Ros2Fanuc_msgsSrvSetUFrameData_Request`; 26..26 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `uframe_number` | `uint8` | scalar  | 0 | `None` |
| `frame` | `fanuc_msgs/msg/Frame` | scalar  | 0 | `None` |
| `group` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_a067808d8fe5ca1418e18ac492313ad9211cc8f3bf402ad0ac51a2850a2bc169`.

### fanuc_msgs/srv/SetUFrameData_Response

`Ros2Fanuc_msgsSrvSetUFrameData_Response`; 5..5 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |
| `group` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_f436e4fe5bd06b048f4f53d2df4933ac8eac5a784f31b42ccf13f5eaf1696eee`.

### fanuc_msgs/srv/SetUFrameUTool_Request

`Ros2Fanuc_msgsSrvSetUFrameUTool_Request`; 3..3 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `uframe_number` | `uint8` | scalar  | 0 | `None` |
| `utool_number` | `uint8` | scalar  | 0 | `None` |
| `group` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_0b86b0a37e4dc23e0ff651df867f5958e7440bf4712b47779d69ca699af4c09f`.

### fanuc_msgs/srv/SetUFrameUTool_Response

`Ros2Fanuc_msgsSrvSetUFrameUTool_Response`; 5..5 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |
| `group` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_b77837445c9663f29f23465cc7178a183d245486f74bcff732fc2f4025b82a67`.

### fanuc_msgs/srv/SetUToolData_Request

`Ros2Fanuc_msgsSrvSetUToolData_Request`; 26..26 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `utool_number` | `uint8` | scalar  | 0 | `None` |
| `frame` | `fanuc_msgs/msg/Frame` | scalar  | 0 | `None` |
| `group` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_7d5b911133645744c8def79bc16c8b7c4ee4e87a057ea33741031d6a94e620ab`.

### fanuc_msgs/srv/SetUToolData_Response

`Ros2Fanuc_msgsSrvSetUToolData_Response`; 5..5 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |
| `group` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_b33d265f275dfcb5fe20432d5e38b55574c85260135bded477c2d5fa2c85c7cb`.

### fanuc_msgs/srv/SwitchControlState_Request

`Ros2Fanuc_msgsSrvSwitchControlState_Request`; 4..4 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `status` | `uint32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_b485b7071fe2737c7dc8f0360a15b7be30f997430142d8260454fd423172cc21`.

- `STOP`: `uint32` = `0`.
- `START`: `uint32` = `1`.

### fanuc_msgs/srv/SwitchControlState_Response

`Ros2Fanuc_msgsSrvSwitchControlState_Response`; 4..4 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_8a3d7a3c1037174f4118843e34222ef8811eff3cc885a0c688d98071e1a9496c`.

### rmi_msgs/msg/CallParam

`Ros2Rmi_msgsMsgCallParam`; 16..592 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `type` | `string` | scalar  | 64 | `None` |
| `int_value` | `int32` | scalar  | 0 | `None` |
| `float_value` | `float32` | scalar  | 0 | `None` |
| `string_value` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_ed625d80db6c4314b8373f2d205344d6ab8d71be46182dab5a497d36564a2255`.

- `AR`: `string` = `AR`.
- `PR`: `string` = `PR`.
- `SR`: `string` = `SR`.
- `R`: `string` = `R`.
- `P`: `string` = `P`.
- `INT`: `string` = `INT`.
- `INTEGER`: `string` = `INT`.
- `FLOAT`: `string` = `FLOAT`.
- `STRING`: `string` = `String`.
- `STR`: `string` = `String`.

### rmi_msgs/msg/Cartesian

`Ros2Rmi_msgsMsgCartesian`; 45..45 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `utool` | `int8` | scalar  | 0 | `1` |
| `uframe` | `int8` | scalar  | 0 | `0` |
| `front` | `uint8` | scalar  | 0 | `1` |
| `up` | `uint8` | scalar  | 0 | `1` |
| `left` | `uint8` | scalar  | 0 | `0` |
| `flip` | `uint8` | scalar  | 0 | `0` |
| `turn4` | `int8` | scalar  | 0 | `0` |
| `turn5` | `int8` | scalar  | 0 | `0` |
| `turn6` | `int8` | scalar  | 0 | `0` |
| `x` | `float32` | scalar  | 0 | `None` |
| `y` | `float32` | scalar  | 0 | `None` |
| `z` | `float32` | scalar  | 0 | `None` |
| `w` | `float32` | scalar  | 0 | `None` |
| `p` | `float32` | scalar  | 0 | `None` |
| `r` | `float32` | scalar  | 0 | `None` |
| `ext1` | `float32` | scalar  | 0 | `None` |
| `ext2` | `float32` | scalar  | 0 | `None` |
| `ext3` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_2a0e1fff119007499a63d55c9722f666be1436a9212d9e43b556af347e8e4b40`.

### rmi_msgs/msg/Command

`Ros2Rmi_msgsMsgCommand`; 4..68 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `type` | `string` | scalar  | 64 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_d2741856b8cdf57aa716566edfc705957611557b7da5b6099b173903bdd9960c`.

- `INITIAZLIE`: `string` = `INITIALIZE`.
- `INIT`: `string` = `INITIALIZE`.
- `ABORT`: `string` = `ABORT`.
- `PAUSE`: `string` = `PAUSE`.
- `RESUME`: `string` = `RESUME`.

### rmi_msgs/msg/CommandOptions

`Ros2Rmi_msgsMsgCommandOptions`; 12..1036 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `use_group_mask` | `bool` | scalar  | 0 | `False` |
| `group_mask` | `uint8` | scalar  | 0 | `1` |
| `use_rtsa` | `bool` | scalar  | 0 | `False` |
| `rtsa` | `string` | scalar  | 512 | `ON` |
| `use_pltzmode` | `bool` | scalar  | 0 | `False` |
| `pltzmode` | `string` | scalar  | 512 | `ZERODN` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_0be0c508035725bf9686807cb8b5267e23f709b7aa34b0910a44ff3604670147`.

- `RTSA_ON`: `string` = `ON`.
- `RTSA_OFF`: `string` = `OFF`.
- `PLTZ_ZERODN`: `string` = `ZERODN`.
- `PLTZ_ZEROUP`: `string` = `ZEROUP`.
- `PLTZ_PSPIDN`: `string` = `PSPIDN`.
- `PLTZ_PSPIUP`: `string` = `PSPIUP`.
- `PLTZ_MSPIDN`: `string` = `MSPIDN`.
- `PLTZ_MSPIUP`: `string` = `MSPIUP`.

### rmi_msgs/msg/Joint

`Ros2Rmi_msgsMsgJoint`; 36..36 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `positions` | `float32` | array 9 | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_0ba90adf6cc287bc306fd2a77c52c2e4d62731cfac37bb2cc116ee846249a42d`.

### rmi_msgs/msg/MotionInstructionOptions

`Ros2Rmi_msgsMsgMotionInstructionOptions`; 52..2612 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `use_acc` | `bool` | scalar  | 0 | `False` |
| `acc` | `uint8` | scalar  | 0 | `None` |
| `use_offset_pr_number` | `bool` | scalar  | 0 | `False` |
| `offset_pr_number` | `uint16` | scalar  | 0 | `None` |
| `use_vision_pr_number` | `bool` | scalar  | 0 | `False` |
| `vision_pr_number` | `uint16` | scalar  | 0 | `None` |
| `use_wrist_joint` | `bool` | scalar  | 0 | `False` |
| `wrist_joint` | `string` | scalar  | 512 | `ON` |
| `use_mrot` | `bool` | scalar  | 0 | `False` |
| `mrot` | `string` | scalar  | 512 | `ON` |
| `use_lcb_type` | `bool` | scalar  | 0 | `False` |
| `lcb_type` | `string` | scalar  | 512 | `None` |
| `use_lcb_value` | `bool` | scalar  | 0 | `False` |
| `lcb_value` | `uint16` | scalar  | 0 | `None` |
| `use_port_type` | `bool` | scalar  | 0 | `False` |
| `port_type` | `uint8` | scalar  | 0 | `None` |
| `use_port_number` | `bool` | scalar  | 0 | `False` |
| `port_number` | `uint16` | scalar  | 0 | `None` |
| `use_port_value` | `bool` | scalar  | 0 | `False` |
| `port_value` | `string` | scalar  | 512 | `None` |
| `use_tool_offset_pr_number` | `bool` | scalar  | 0 | `False` |
| `tool_offset_pr_number` | `uint16` | scalar  | 0 | `None` |
| `use_alim` | `bool` | scalar  | 0 | `False` |
| `alim` | `int32` | scalar  | 0 | `None` |
| `use_alim_reg` | `bool` | scalar  | 0 | `False` |
| `alim_reg` | `uint16` | scalar  | 0 | `None` |
| `use_no_blend` | `bool` | scalar  | 0 | `False` |
| `no_blend` | `string` | scalar  | 512 | `ON` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_f8d9ed2e083c577b0cae8965df71aa99643d12ce5a5a6ce558894edfb756bcc6`.

- `LCB_TYPE_TB`: `string` = `TB`.
- `LCB_TYPE_TA`: `string` = `TA`.
- `LCB_TYPE_DB`: `string` = `DB`.
- `PORT_TYPE_DOUT`: `uint8` = `1`.
- `PORT_TYPE_DO`: `uint8` = `1`.
- `PORT_TYPE_ROUT`: `uint8` = `2`.
- `PORT_TYPE_RO`: `uint8` = `2`.

### rmi_msgs/msg/MotionType

`Ros2Rmi_msgsMsgMotionType`; 4..68 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `type` | `string` | scalar  | 64 | `J` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_c51cc7a32f6853d13bedaf3306dd79e445de6c0d16ae0ec39034ce0ae6d19c8a`.

- `J`: `string` = `J`.
- `JOINT`: `string` = `J`.
- `L`: `string` = `L`.
- `LINEAR`: `string` = `L`.
- `C`: `string` = `C`.
- `CIRCULAR`: `string` = `C`.
- `S`: `string` = `S`.
- `SPLINE`: `string` = `S`.

### rmi_msgs/msg/Representation

`Ros2Rmi_msgsMsgRepresentation`; 4..516 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `representation` | `string` | scalar  | 512 | `JOINT` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_b439506f2dc2135bb484b3abb308dfdf5c07367af5a4d6d0f5435ad9bba8ea6f`.

- `JOINT`: `string` = `JOINT`.
- `J`: `string` = `JOINT`.
- `CARTESIAN`: `string` = `CARTESIAN`.
- `CART`: `string` = `CARTESIAN`.
- `C`: `string` = `CARTESIAN`.

### rmi_msgs/msg/SpeedType

`Ros2Rmi_msgsMsgSpeedType`; 4..68 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `type` | `string` | scalar  | 64 | `Percent` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_e4f4dbda84d8d8cd4d026b0beb52005663c7c4ee602c8d1e4d5853589777c282`.

- `PERCENT`: `string` = `Percent`.
- `PERCENTAGE`: `string` = `Percent`.
- `MMSEC`: `string` = `mmSec`.
- `INCHMIN`: `string` = `InchMin`.
- `TIME`: `string` = `Time`.
- `SECONDS`: `string` = `Time`.
- `SEC`: `string` = `Time`.
- `MSEC`: `string` = `mSec`.

### rmi_msgs/msg/TermType

`Ros2Rmi_msgsMsgTermType`; 4..68 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `type` | `string` | scalar  | 64 | `FINE` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_5ddbb483126e0ab5799ed865480da457179d83a271581c1471aec940bedc4535`.

- `FINE`: `string` = `FINE`.
- `CNT`: `string` = `CNT`.
- `CR`: `string` = `CR`.
- `CD`: `string` = `CD`.

### rmi_msgs/srv/AddCall_Request

`Ros2Rmi_msgsSrvAddCall_Request`; 8..9992 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `program_name` | `string` | scalar  | 512 | `None` |
| `params` | `rmi_msgs/msg/CallParam` | sequence 16 | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_4d652cfbaef29487a0a688932ee926d7a4026c5e7ac8a0eace583b503c37bcd8`.

### rmi_msgs/srv/AddCall_Response

`Ros2Rmi_msgsSrvAddCall_Response`; 8..8 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |
| `sequence_id` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_4f8495dfc3c69ec640444fd24843a7bb3e30008d90945bdd64817d8acb7964e1`.

### rmi_msgs/srv/AddMotionInstruction_Request

`Ros2Rmi_msgsSrvAddMotionInstruction_Request`; 238..4014 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `motion_type` | `rmi_msgs/msg/MotionType` | scalar  | 0 | `None` |
| `incremental` | `bool` | scalar  | 0 | `False` |
| `representation` | `rmi_msgs/msg/Representation` | scalar  | 0 | `None` |
| `joint` | `rmi_msgs/msg/Joint` | scalar  | 0 | `None` |
| `cartesian` | `rmi_msgs/msg/Cartesian` | scalar  | 0 | `None` |
| `speed_type` | `rmi_msgs/msg/SpeedType` | scalar  | 0 | `None` |
| `speed_value` | `uint16` | scalar  | 0 | `None` |
| `term_type` | `rmi_msgs/msg/TermType` | scalar  | 0 | `None` |
| `term_value` | `uint8` | scalar  | 0 | `None` |
| `via_representation` | `rmi_msgs/msg/Representation` | scalar  | 0 | `None` |
| `via_joint` | `rmi_msgs/msg/Joint` | scalar  | 0 | `None` |
| `via_cartesian` | `rmi_msgs/msg/Cartesian` | scalar  | 0 | `None` |
| `options` | `rmi_msgs/msg/MotionInstructionOptions` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_3f22c49cb2d32e6a8f3954f3d3cbf0021c87e0363b1f2ded4ac20a97a5b59391`.

### rmi_msgs/srv/AddMotionInstruction_Response

`Ros2Rmi_msgsSrvAddMotionInstruction_Response`; 8..8 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |
| `sequence_id` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_79fee3e965fda63c3a53ad2178ff48614878acc9f6af74cc27a8c2812b68ac6b`.

### rmi_msgs/srv/AddSetPayload_Request

`Ros2Rmi_msgsSrvAddSetPayload_Request`; 1..1 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `schedule_number` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_45da9f81e8c26f49490a4e6eba5c8be0ee67285124540eb1c3e1f2c3e0fd821b`.

### rmi_msgs/srv/AddSetPayload_Response

`Ros2Rmi_msgsSrvAddSetPayload_Response`; 8..8 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |
| `sequence_id` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_bfc5bc7b92f292c2980496cb18fbe953ea1b49d45f7950f0125bbbf880bdf72a`.

### rmi_msgs/srv/AddSetUFrame_Request

`Ros2Rmi_msgsSrvAddSetUFrame_Request`; 1..1 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `frame_number` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_64c83dd2be89b4b6dcf3b3c2ea70184971e6a359914ff1a5cd26d4b114d35475`.

### rmi_msgs/srv/AddSetUFrame_Response

`Ros2Rmi_msgsSrvAddSetUFrame_Response`; 8..8 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |
| `sequence_id` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_e344ef6efacc8d569111d1c6ef4028e1a5bb54af49d3e8f486ae89b83c674647`.

### rmi_msgs/srv/AddSetUTool_Request

`Ros2Rmi_msgsSrvAddSetUTool_Request`; 1..1 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `tool_number` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_d1327022326cd41caed6001449517a41f589e148c38d6db30923922175f05c46`.

### rmi_msgs/srv/AddSetUTool_Response

`Ros2Rmi_msgsSrvAddSetUTool_Response`; 8..8 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |
| `sequence_id` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_dd4c36458027b87559200cf5f6aa72a60af2d103f663f2fa9daca47ce8020ff6`.

### rmi_msgs/srv/AddWaitDIN_Request

`Ros2Rmi_msgsSrvAddWaitDIN_Request`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `port_number` | `uint16` | scalar  | 0 | `None` |
| `port_value` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_c32214f1ff1b0b6980583fc3088f412e856efb5eaa9c336cf798ef8ad85c61ab`.

### rmi_msgs/srv/AddWaitDIN_Response

`Ros2Rmi_msgsSrvAddWaitDIN_Response`; 8..8 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |
| `sequence_id` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_7d3933f573619ba49f19df7c11f1d73ef211c17581f660f8c0fbcc152cd519d4`.

### rmi_msgs/srv/AddWaitTime_Request

`Ros2Rmi_msgsSrvAddWaitTime_Request`; 4..4 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `time` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_8487f4b7dcfb044c72f7fb62a31ffe9cdc4321a9ebdaa0550a363e32acbadc46`.

### rmi_msgs/srv/AddWaitTime_Response

`Ros2Rmi_msgsSrvAddWaitTime_Response`; 8..8 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |
| `sequence_id` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_f9578c08b971f32f91d1c94b8713cafe648e25147394e20c85bb335254fa20c8`.

### rmi_msgs/srv/CallCommand_Request

`Ros2Rmi_msgsSrvCallCommand_Request`; 16..1104 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `command` | `rmi_msgs/msg/Command` | scalar  | 0 | `None` |
| `options` | `rmi_msgs/msg/CommandOptions` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_d1f890a2beec0ca9294ff4f641d1738855d576a917ed05eb34517886c73f381c`.

### rmi_msgs/srv/CallCommand_Response

`Ros2Rmi_msgsSrvCallCommand_Response`; 4..4 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_64d92e6fadc651073469318ad15d2e98ec3d059c629838cefc5820b17ab6f1bc`.

### sensor_msgs/msg/JointState

`Ros2Sensor_msgsMsgJointState`; 28..1196 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `header` | `std_msgs/msg/Header` | scalar  | 0 | `None` |
| `name` | `string` | sequence 12 | 64 | `None` |
| `position` | `float64` | sequence 12 | 0 | `None` |
| `velocity` | `float64` | sequence 12 | 0 | `None` |
| `effort` | `float64` | sequence 12 | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884`.

### std_srvs/srv/Trigger_Request

`Ros2Std_srvsSrvTrigger_Request`; 0..0 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| — | Empty semantic component; C storage dummy has no wire bytes. | — | — | — |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77`.

### std_srvs/srv/Trigger_Response

`Ros2Std_srvsSrvTrigger_Response`; 5..517 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `success` | `bool` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d`.

### Interface components

| Native interface | Kind | Complete roles |
| --- | --- | --- |
| `builtin_interfaces/msg/Duration` | message | `message`: `builtin_interfaces/msg/Duration` |
| `builtin_interfaces/msg/Time` | message | `message`: `builtin_interfaces/msg/Time` |
| `control_msgs/action/FollowJointTrajectory` | action | `goal`: `control_msgs/action/FollowJointTrajectory_Goal`, `result`: `control_msgs/action/FollowJointTrajectory_Result`, `feedback`: `control_msgs/action/FollowJointTrajectory_Feedback` |
| `control_msgs/msg/JointComponentTolerance` | message | `message`: `control_msgs/msg/JointComponentTolerance` |
| `control_msgs/msg/JointTolerance` | message | `message`: `control_msgs/msg/JointTolerance` |
| `fanuc_msgs/msg/AnalogIO` | message | `message`: `fanuc_msgs/msg/AnalogIO` |
| `fanuc_msgs/msg/AnalogIOCmd` | message | `message`: `fanuc_msgs/msg/AnalogIOCmd` |
| `fanuc_msgs/msg/AnalogIOState` | message | `message`: `fanuc_msgs/msg/AnalogIOState` |
| `fanuc_msgs/msg/BoolIO` | message | `message`: `fanuc_msgs/msg/BoolIO` |
| `fanuc_msgs/msg/CollaborativeSpeedScaling` | message | `message`: `fanuc_msgs/msg/CollaborativeSpeedScaling` |
| `fanuc_msgs/msg/ConnectionStatus` | message | `message`: `fanuc_msgs/msg/ConnectionStatus` |
| `fanuc_msgs/msg/ForceSensor` | message | `message`: `fanuc_msgs/msg/ForceSensor` |
| `fanuc_msgs/msg/Frame` | message | `message`: `fanuc_msgs/msg/Frame` |
| `fanuc_msgs/msg/IOCmd` | message | `message`: `fanuc_msgs/msg/IOCmd` |
| `fanuc_msgs/msg/IOState` | message | `message`: `fanuc_msgs/msg/IOState` |
| `fanuc_msgs/msg/IOType` | message | `message`: `fanuc_msgs/msg/IOType` |
| `fanuc_msgs/msg/NumReg` | message | `message`: `fanuc_msgs/msg/NumReg` |
| `fanuc_msgs/msg/NumRegCmd` | message | `message`: `fanuc_msgs/msg/NumRegCmd` |
| `fanuc_msgs/msg/NumRegState` | message | `message`: `fanuc_msgs/msg/NumRegState` |
| `fanuc_msgs/msg/RMIStatus` | message | `message`: `fanuc_msgs/msg/RMIStatus` |
| `fanuc_msgs/msg/RobotStatus` | message | `message`: `fanuc_msgs/msg/RobotStatus` |
| `fanuc_msgs/msg/RobotStatusExt` | message | `message`: `fanuc_msgs/msg/RobotStatusExt` |
| `fanuc_msgs/srv/CfgForceSensor` | service | `request`: `fanuc_msgs/srv/CfgForceSensor_Request`, `response`: `fanuc_msgs/srv/CfgForceSensor_Response` |
| `fanuc_msgs/srv/GetAnalogIO` | service | `request`: `fanuc_msgs/srv/GetAnalogIO_Request`, `response`: `fanuc_msgs/srv/GetAnalogIO_Response` |
| `fanuc_msgs/srv/GetBoolIO` | service | `request`: `fanuc_msgs/srv/GetBoolIO_Request`, `response`: `fanuc_msgs/srv/GetBoolIO_Response` |
| `fanuc_msgs/srv/GetCartesianPosition` | service | `request`: `fanuc_msgs/srv/GetCartesianPosition_Request`, `response`: `fanuc_msgs/srv/GetCartesianPosition_Response` |
| `fanuc_msgs/srv/GetGroupIO` | service | `request`: `fanuc_msgs/srv/GetGroupIO_Request`, `response`: `fanuc_msgs/srv/GetGroupIO_Response` |
| `fanuc_msgs/srv/GetNumReg` | service | `request`: `fanuc_msgs/srv/GetNumReg_Request`, `response`: `fanuc_msgs/srv/GetNumReg_Response` |
| `fanuc_msgs/srv/GetPayloadComp` | service | `request`: `fanuc_msgs/srv/GetPayloadComp_Request`, `response`: `fanuc_msgs/srv/GetPayloadComp_Response` |
| `fanuc_msgs/srv/GetPayloadID` | service | `request`: `fanuc_msgs/srv/GetPayloadID_Request`, `response`: `fanuc_msgs/srv/GetPayloadID_Response` |
| `fanuc_msgs/srv/GetPayloadValue` | service | `request`: `fanuc_msgs/srv/GetPayloadValue_Request`, `response`: `fanuc_msgs/srv/GetPayloadValue_Response` |
| `fanuc_msgs/srv/GetPosReg` | service | `request`: `fanuc_msgs/srv/GetPosReg_Request`, `response`: `fanuc_msgs/srv/GetPosReg_Response` |
| `fanuc_msgs/srv/GetTCPSpeed` | service | `request`: `fanuc_msgs/srv/GetTCPSpeed_Request`, `response`: `fanuc_msgs/srv/GetTCPSpeed_Response` |
| `fanuc_msgs/srv/GetUFrameData` | service | `request`: `fanuc_msgs/srv/GetUFrameData_Request`, `response`: `fanuc_msgs/srv/GetUFrameData_Response` |
| `fanuc_msgs/srv/GetUFrameUTool` | service | `request`: `fanuc_msgs/srv/GetUFrameUTool_Request`, `response`: `fanuc_msgs/srv/GetUFrameUTool_Response` |
| `fanuc_msgs/srv/GetUToolData` | service | `request`: `fanuc_msgs/srv/GetUToolData_Request`, `response`: `fanuc_msgs/srv/GetUToolData_Response` |
| `fanuc_msgs/srv/ReadError` | service | `request`: `fanuc_msgs/srv/ReadError_Request`, `response`: `fanuc_msgs/srv/ReadError_Response` |
| `fanuc_msgs/srv/Reset` | service | `request`: `fanuc_msgs/srv/Reset_Request`, `response`: `fanuc_msgs/srv/Reset_Response` |
| `fanuc_msgs/srv/SetAnalogIO` | service | `request`: `fanuc_msgs/srv/SetAnalogIO_Request`, `response`: `fanuc_msgs/srv/SetAnalogIO_Response` |
| `fanuc_msgs/srv/SetBoolIO` | service | `request`: `fanuc_msgs/srv/SetBoolIO_Request`, `response`: `fanuc_msgs/srv/SetBoolIO_Response` |
| `fanuc_msgs/srv/SetGenOverride` | service | `request`: `fanuc_msgs/srv/SetGenOverride_Request`, `response`: `fanuc_msgs/srv/SetGenOverride_Response` |
| `fanuc_msgs/srv/SetGroupIO` | service | `request`: `fanuc_msgs/srv/SetGroupIO_Request`, `response`: `fanuc_msgs/srv/SetGroupIO_Response` |
| `fanuc_msgs/srv/SetNumReg` | service | `request`: `fanuc_msgs/srv/SetNumReg_Request`, `response`: `fanuc_msgs/srv/SetNumReg_Response` |
| `fanuc_msgs/srv/SetPayloadComp` | service | `request`: `fanuc_msgs/srv/SetPayloadComp_Request`, `response`: `fanuc_msgs/srv/SetPayloadComp_Response` |
| `fanuc_msgs/srv/SetPayloadID` | service | `request`: `fanuc_msgs/srv/SetPayloadID_Request`, `response`: `fanuc_msgs/srv/SetPayloadID_Response` |
| `fanuc_msgs/srv/SetPayloadValue` | service | `request`: `fanuc_msgs/srv/SetPayloadValue_Request`, `response`: `fanuc_msgs/srv/SetPayloadValue_Response` |
| `fanuc_msgs/srv/SetPosReg` | service | `request`: `fanuc_msgs/srv/SetPosReg_Request`, `response`: `fanuc_msgs/srv/SetPosReg_Response` |
| `fanuc_msgs/srv/SetUFrameData` | service | `request`: `fanuc_msgs/srv/SetUFrameData_Request`, `response`: `fanuc_msgs/srv/SetUFrameData_Response` |
| `fanuc_msgs/srv/SetUFrameUTool` | service | `request`: `fanuc_msgs/srv/SetUFrameUTool_Request`, `response`: `fanuc_msgs/srv/SetUFrameUTool_Response` |
| `fanuc_msgs/srv/SetUToolData` | service | `request`: `fanuc_msgs/srv/SetUToolData_Request`, `response`: `fanuc_msgs/srv/SetUToolData_Response` |
| `fanuc_msgs/srv/SwitchControlState` | service | `request`: `fanuc_msgs/srv/SwitchControlState_Request`, `response`: `fanuc_msgs/srv/SwitchControlState_Response` |
| `geometry_msgs/msg/Quaternion` | message | `message`: `geometry_msgs/msg/Quaternion` |
| `geometry_msgs/msg/Transform` | message | `message`: `geometry_msgs/msg/Transform` |
| `geometry_msgs/msg/Twist` | message | `message`: `geometry_msgs/msg/Twist` |
| `geometry_msgs/msg/Vector3` | message | `message`: `geometry_msgs/msg/Vector3` |
| `rmi_msgs/msg/CallParam` | message | `message`: `rmi_msgs/msg/CallParam` |
| `rmi_msgs/msg/Cartesian` | message | `message`: `rmi_msgs/msg/Cartesian` |
| `rmi_msgs/msg/Command` | message | `message`: `rmi_msgs/msg/Command` |
| `rmi_msgs/msg/CommandOptions` | message | `message`: `rmi_msgs/msg/CommandOptions` |
| `rmi_msgs/msg/Joint` | message | `message`: `rmi_msgs/msg/Joint` |
| `rmi_msgs/msg/MotionInstructionOptions` | message | `message`: `rmi_msgs/msg/MotionInstructionOptions` |
| `rmi_msgs/msg/MotionType` | message | `message`: `rmi_msgs/msg/MotionType` |
| `rmi_msgs/msg/Representation` | message | `message`: `rmi_msgs/msg/Representation` |
| `rmi_msgs/msg/SpeedType` | message | `message`: `rmi_msgs/msg/SpeedType` |
| `rmi_msgs/msg/TermType` | message | `message`: `rmi_msgs/msg/TermType` |
| `rmi_msgs/srv/AddCall` | service | `request`: `rmi_msgs/srv/AddCall_Request`, `response`: `rmi_msgs/srv/AddCall_Response` |
| `rmi_msgs/srv/AddMotionInstruction` | service | `request`: `rmi_msgs/srv/AddMotionInstruction_Request`, `response`: `rmi_msgs/srv/AddMotionInstruction_Response` |
| `rmi_msgs/srv/AddSetPayload` | service | `request`: `rmi_msgs/srv/AddSetPayload_Request`, `response`: `rmi_msgs/srv/AddSetPayload_Response` |
| `rmi_msgs/srv/AddSetUFrame` | service | `request`: `rmi_msgs/srv/AddSetUFrame_Request`, `response`: `rmi_msgs/srv/AddSetUFrame_Response` |
| `rmi_msgs/srv/AddSetUTool` | service | `request`: `rmi_msgs/srv/AddSetUTool_Request`, `response`: `rmi_msgs/srv/AddSetUTool_Response` |
| `rmi_msgs/srv/AddWaitDIN` | service | `request`: `rmi_msgs/srv/AddWaitDIN_Request`, `response`: `rmi_msgs/srv/AddWaitDIN_Response` |
| `rmi_msgs/srv/AddWaitTime` | service | `request`: `rmi_msgs/srv/AddWaitTime_Request`, `response`: `rmi_msgs/srv/AddWaitTime_Response` |
| `rmi_msgs/srv/CallCommand` | service | `request`: `rmi_msgs/srv/CallCommand_Request`, `response`: `rmi_msgs/srv/CallCommand_Response` |
| `sensor_msgs/msg/JointState` | message | `message`: `sensor_msgs/msg/JointState` |
| `std_msgs/msg/Header` | message | `message`: `std_msgs/msg/Header` |
| `std_srvs/srv/Trigger` | service | `request`: `std_srvs/srv/Trigger_Request`, `response`: `std_srvs/srv/Trigger_Response` |
| `trajectory_msgs/msg/JointTrajectory` | message | `message`: `trajectory_msgs/msg/JointTrajectory` |
| `trajectory_msgs/msg/JointTrajectoryPoint` | message | `message`: `trajectory_msgs/msg/JointTrajectoryPoint` |
| `trajectory_msgs/msg/MultiDOFJointTrajectory` | message | `message`: `trajectory_msgs/msg/MultiDOFJointTrajectory` |
| `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | message | `message`: `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` |
