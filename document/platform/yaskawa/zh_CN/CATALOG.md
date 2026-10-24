# YASKAWA 完整类型目录

本目录保留原生消息、服务、action 的字段顺序、数值位宽、固定数组、默认值和常量。有限容量属于 guest 配置，不改写上游消息。

## ROS 2

74 个完整记录组件；52 个原始接口。

### builtin_interfaces/msg/Duration

`Ros2Builtin_interfacesMsgDuration`; 8..8 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `sec` | `int32` | scalar  | 0 | `None` |
| `nanosec` | `uint32` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4`.

### builtin_interfaces/msg/Time

`Ros2Builtin_interfacesMsgTime`; 8..8 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `sec` | `int32` | scalar  | 0 | `None` |
| `nanosec` | `uint32` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`.

### std_msgs/msg/Header

`Ros2Std_msgsMsgHeader`; 12..76 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `stamp` | `builtin_interfaces/msg/Time` | scalar  | 0 | `None` |
| `frame_id` | `string` | scalar  | 64 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396`.

### trajectory_msgs/msg/JointTrajectoryPoint

`Ros2Trajectory_msgsMsgJointTrajectoryPoint`; 24..408 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `positions` | `float64` | sequence 12 | 0 | `None` |
| `velocities` | `float64` | sequence 12 | 0 | `None` |
| `accelerations` | `float64` | sequence 12 | 0 | `None` |
| `effort` | `float64` | sequence 12 | 0 | `None` |
| `time_from_start` | `builtin_interfaces/msg/Duration` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5`.

### trajectory_msgs/msg/JointTrajectory

`Ros2Trajectory_msgsMsgJointTrajectory`; 20..4164 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `header` | `std_msgs/msg/Header` | scalar  | 0 | `None` |
| `joint_names` | `string` | sequence 12 | 64 | `None` |
| `points` | `trajectory_msgs/msg/JointTrajectoryPoint` | sequence 8 | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0`.

### geometry_msgs/msg/Vector3

`Ros2Geometry_msgsMsgVector3`; 24..24 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `x` | `float64` | scalar  | 0 | `None` |
| `y` | `float64` | scalar  | 0 | `None` |
| `z` | `float64` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`.

### geometry_msgs/msg/Quaternion

`Ros2Geometry_msgsMsgQuaternion`; 32..32 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `x` | `float64` | scalar  | 0 | `0.0` |
| `y` | `float64` | scalar  | 0 | `0.0` |
| `z` | `float64` | scalar  | 0 | `0.0` |
| `w` | `float64` | scalar  | 0 | `1.0` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`.

### geometry_msgs/msg/Transform

`Ros2Geometry_msgsMsgTransform`; 56..56 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `translation` | `geometry_msgs/msg/Vector3` | scalar  | 0 | `None` |
| `rotation` | `geometry_msgs/msg/Quaternion` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b`.

### geometry_msgs/msg/Twist

`Ros2Geometry_msgsMsgTwist`; 48..48 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `linear` | `geometry_msgs/msg/Vector3` | scalar  | 0 | `None` |
| `angular` | `geometry_msgs/msg/Vector3` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e`.

### trajectory_msgs/msg/MultiDOFJointTrajectoryPoint

`Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint`; 20..324 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `transforms` | `geometry_msgs/msg/Transform` | sequence 2 | 0 | `None` |
| `velocities` | `geometry_msgs/msg/Twist` | sequence 2 | 0 | `None` |
| `accelerations` | `geometry_msgs/msg/Twist` | sequence 2 | 0 | `None` |
| `time_from_start` | `builtin_interfaces/msg/Duration` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242`.

### trajectory_msgs/msg/MultiDOFJointTrajectory

`Ros2Trajectory_msgsMsgMultiDOFJointTrajectory`; 20..1516 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `header` | `std_msgs/msg/Header` | scalar  | 0 | `None` |
| `joint_names` | `string` | sequence 2 | 64 | `None` |
| `points` | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | sequence 4 | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401`.

### control_msgs/msg/JointTolerance

`Ros2Control_msgsMsgJointTolerance`; 28..92 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `name` | `string` | scalar  | 64 | `None` |
| `position` | `float64` | scalar  | 0 | `None` |
| `velocity` | `float64` | scalar  | 0 | `None` |
| `acceleration` | `float64` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2`.

### control_msgs/msg/JointComponentTolerance

`Ros2Control_msgsMsgJointComponentTolerance`; 30..542 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `joint_name` | `string` | scalar  | 512 | `None` |
| `component` | `uint16` | scalar  | 0 | `None` |
| `position` | `float64` | scalar  | 0 | `None` |
| `velocity` | `float64` | scalar  | 0 | `None` |
| `acceleration` | `float64` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342`.

- `X_AXIS`: `uint16` = `1`.
- `Y_AXIS`: `uint16` = `2`.
- `Z_AXIS`: `uint16` = `3`.
- `TRANSLATION`: `uint16` = `4`.
- `ROTATION`: `uint16` = `5`.

### control_msgs/action/FollowJointTrajectory_Goal

`Ros2Control_msgsActionFollowJointTrajectory_Goal`; 64..20920 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `trajectory` | `trajectory_msgs/msg/JointTrajectory` | scalar  | 0 | `None` |
| `multi_dof_trajectory` | `trajectory_msgs/msg/MultiDOFJointTrajectory` | scalar  | 0 | `None` |
| `path_tolerance` | `control_msgs/msg/JointTolerance` | sequence 12 | 0 | `None` |
| `component_path_tolerance` | `control_msgs/msg/JointComponentTolerance` | sequence 12 | 0 | `None` |
| `goal_tolerance` | `control_msgs/msg/JointTolerance` | sequence 12 | 0 | `None` |
| `component_goal_tolerance` | `control_msgs/msg/JointComponentTolerance` | sequence 12 | 0 | `None` |
| `goal_time_tolerance` | `builtin_interfaces/msg/Duration` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16`.

### control_msgs/action/FollowJointTrajectory_Result

`Ros2Control_msgsActionFollowJointTrajectory_Result`; 8..4104 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `error_code` | `int32` | scalar  | 0 | `None` |
| `error_string` | `string` | scalar  | 4096 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70`.

- `SUCCESSFUL`: `int32` = `0`.
- `INVALID_GOAL`: `int32` = `-1`.
- `INVALID_JOINTS`: `int32` = `-2`.
- `OLD_HEADER_TIMESTAMP`: `int32` = `-3`.
- `PATH_TOLERANCE_VIOLATED`: `int32` = `-4`.
- `GOAL_TOLERANCE_VIOLATED`: `int32` = `-5`.

### control_msgs/action/FollowJointTrajectory_Feedback

`Ros2Control_msgsActionFollowJointTrajectory_Feedback`; 152..4128 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
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

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb`.

### geometry_msgs/msg/TransformStamped

`Ros2Geometry_msgsMsgTransformStamped`; 72..648 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `header` | `std_msgs/msg/Header` | scalar  | 0 | `None` |
| `child_frame_id` | `string` | scalar  | 512 | `None` |
| `transform` | `geometry_msgs/msg/Transform` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_be553b5a9c73b687cde56ff1c381e3c67168fd2c0366830be3c65382c5bbd792`.

### industrial_msgs/msg/DebugLevel

`Ros2Industrial_msgsMsgDebugLevel`; 1..1 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `val` | `uint8` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_989475cc5d981d8c5ab91fb091235871f7a1c7d87d246eb2250086e6c3c37c79`.

- `DEBUG`: `uint8` = `5`.
- `INFO`: `uint8` = `4`.
- `WARN`: `uint8` = `3`.
- `ERROR`: `uint8` = `2`.
- `FATAL`: `uint8` = `1`.
- `NONE`: `uint8` = `0`.

### industrial_msgs/msg/DeviceInfo

`Ros2Industrial_msgsMsgDeviceInfo`; 20..2580 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `model` | `string` | scalar  | 512 | `None` |
| `serial_number` | `string` | scalar  | 512 | `None` |
| `hw_version` | `string` | scalar  | 512 | `None` |
| `sw_version` | `string` | scalar  | 512 | `None` |
| `address` | `string` | scalar  | 512 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_f9a5962800e17495f34dbb73f37373df22f900e528c630497417f78cdecb283b`.

### industrial_msgs/msg/RobotMode

`Ros2Industrial_msgsMsgRobotMode`; 1..1 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `val` | `int8` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_4f9173c5e27815ca33be603b8645a22420bda3ab308962127060d2413d092c4c`.

- `UNKNOWN`: `int8` = `-1`.
- `MANUAL`: `int8` = `1`.
- `AUTO`: `int8` = `2`.

### industrial_msgs/msg/TriState

`Ros2Industrial_msgsMsgTriState`; 1..1 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `val` | `int8` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_b7ae62ce19d642ad46e962ffb50cd76c43c96ac673ac36d690f99c1dd8d2a841`.

- `UNKNOWN`: `int8` = `-1`.
- `TRUE`: `int8` = `1`.
- `ON`: `int8` = `1`.
- `ENABLED`: `int8` = `1`.
- `HIGH`: `int8` = `1`.
- `CLOSED`: `int8` = `1`.
- `FALSE`: `int8` = `0`.
- `OFF`: `int8` = `0`.
- `DISABLED`: `int8` = `0`.
- `LOW`: `int8` = `0`.
- `OPEN`: `int8` = `0`.

### industrial_msgs/msg/RobotStatus

`Ros2Industrial_msgsMsgRobotStatus`; 22..150 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `header` | `std_msgs/msg/Header` | scalar  | 0 | `None` |
| `mode` | `industrial_msgs/msg/RobotMode` | scalar  | 0 | `None` |
| `e_stopped` | `industrial_msgs/msg/TriState` | scalar  | 0 | `None` |
| `drives_powered` | `industrial_msgs/msg/TriState` | scalar  | 0 | `None` |
| `motion_possible` | `industrial_msgs/msg/TriState` | scalar  | 0 | `None` |
| `in_motion` | `industrial_msgs/msg/TriState` | scalar  | 0 | `None` |
| `in_error` | `industrial_msgs/msg/TriState` | scalar  | 0 | `None` |
| `error_codes` | `int32` | sequence 16 | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_1086f16ba5d614f3d87c3ab195240b5a0683ef490f2e92434e4ea3bdbe7554ba`.

### industrial_msgs/msg/ServiceReturnCode

`Ros2Industrial_msgsMsgServiceReturnCode`; 1..1 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `val` | `int8` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_62eb4415a63d7686f16ea343193238838c78aa8e9b9786a65c92fb227e03d3e5`.

- `SUCCESS`: `int8` = `1`.
- `FAILURE`: `int8` = `-1`.

### industrial_msgs/srv/CmdJointTrajectory_Request

`Ros2Industrial_msgsSrvCmdJointTrajectory_Request`; 20..4164 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `trajectory` | `trajectory_msgs/msg/JointTrajectory` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_1def3934b243546a4591b7be1ef2eb27002fbd9d3725302016e3b1846805149d`.

### industrial_msgs/srv/CmdJointTrajectory_Response

`Ros2Industrial_msgsSrvCmdJointTrajectory_Response`; 1..1 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `code` | `industrial_msgs/msg/ServiceReturnCode` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_1e4d064ef659e5d1cc73bdd90f82657a16087c96e0f75b632e2be2be884bca8b`.

### industrial_msgs/srv/GetRobotInfo_Request

`Ros2Industrial_msgsSrvGetRobotInfo_Request`; 0..0 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| — | 空语义组件；C 存储占位符没有线字节。 | — | — | — |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_688a272f6ee39921013c6c39a7b0b0c4e2cda5119787088234103518ba25c1d2`.

### industrial_msgs/srv/GetRobotInfo_Response

`Ros2Industrial_msgsSrvGetRobotInfo_Response`; 25..32768 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `controller` | `industrial_msgs/msg/DeviceInfo` | scalar  | 0 | `None` |
| `robots` | `industrial_msgs/msg/DeviceInfo` | sequence 16 | 0 | `None` |
| `code` | `industrial_msgs/msg/ServiceReturnCode` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_6d37cdcd8afc918329d7856e682d7fcdae2931832474a9194143c21079ed4152`.

### industrial_msgs/srv/SetDrivePower_Request

`Ros2Industrial_msgsSrvSetDrivePower_Request`; 1..1 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `drive_power` | `bool` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_b4fc5e109e131a97820ab5856b34839c572ac0b0c256d70457c176e401844f96`.

### industrial_msgs/srv/SetDrivePower_Response

`Ros2Industrial_msgsSrvSetDrivePower_Response`; 1..1 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `code` | `industrial_msgs/msg/ServiceReturnCode` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_050fb9a727ebedd240e9023b9a2379a5d72e0d9fa335bead0c40d783abb22cff`.

### industrial_msgs/srv/SetRemoteLoggerLevel_Request

`Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request`; 1..1 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `level` | `industrial_msgs/msg/DebugLevel` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_bbadd39c05cab90b14f4b1fad23ff05ac83325f6cc57810cd649e04fa29fe014`.

### industrial_msgs/srv/SetRemoteLoggerLevel_Response

`Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response`; 1..1 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `code` | `industrial_msgs/msg/ServiceReturnCode` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_b8681d031a4bb5a67b842277af2e2156e8339bdef23be88d2b64e296a7e3d63b`.

### industrial_msgs/srv/StartMotion_Request

`Ros2Industrial_msgsSrvStartMotion_Request`; 0..0 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| — | 空语义组件；C 存储占位符没有线字节。 | — | — | — |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_0a96fb9489f863612a91bf82f995f2f28bcb7fb403bde74c617925c789e4dcd8`.

### industrial_msgs/srv/StartMotion_Response

`Ros2Industrial_msgsSrvStartMotion_Response`; 1..1 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `code` | `industrial_msgs/msg/ServiceReturnCode` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_3bb3650fbe638a6d300bcd9fcd5acf574bd54d00a7368edd3014bf44dcf66c16`.

### industrial_msgs/srv/StopMotion_Request

`Ros2Industrial_msgsSrvStopMotion_Request`; 0..0 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| — | 空语义组件；C 存储占位符没有线字节。 | — | — | — |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_fe5a7cf0da30270eab5cfb1ab8c1fbd37d2b4c4f91ef29662a0ddcac39e6ef49`.

### industrial_msgs/srv/StopMotion_Response

`Ros2Industrial_msgsSrvStopMotion_Response`; 1..1 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `code` | `industrial_msgs/msg/ServiceReturnCode` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_c26bda240d86becc5b8b4ea80380eba3602092a5ec4a06818dbfbd38c24015b5`.

### motoros2_interfaces/msg/AlarmCauseRemedy

`Ros2Motoros2_interfacesMsgAlarmCauseRemedy`; 8..1032 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `cause` | `string` | scalar  | 512 | `None` |
| `remedy` | `string` | scalar  | 512 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_f977609022f4ca593b9089d0038d1c28d1bc4b533e272f38c3379495f326ddf5`.

### motoros2_interfaces/msg/AlarmInfo

`Ros2Motoros2_interfacesMsgAlarmInfo`; 32..25248 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `number` | `uint32` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |
| `sub_code` | `int32` | scalar  | 0 | `None` |
| `datetime` | `builtin_interfaces/msg/Time` | scalar  | 0 | `None` |
| `contents` | `string` | scalar  | 4096 | `None` |
| `description` | `string` | scalar  | 4096 | `None` |
| `help` | `motoros2_interfaces/msg/AlarmCauseRemedy` | sequence 16 | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_7cf3fa3037f28f295dd62009e708ea3e46a80f83471d0a0f9fb55af125c0c27f`.

### motoros2_interfaces/msg/ErrorInfo

`Ros2Motoros2_interfacesMsgErrorInfo`; 20..532 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `number` | `uint32` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |
| `sub_code` | `int32` | scalar  | 0 | `None` |
| `datetime` | `builtin_interfaces/msg/Time` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_1cfe60c0af6bc157db84c4d9e0b20a8f2e5c78fd4afd6908d32b3217f3734b67`.

### motoros2_interfaces/msg/InformJobCrudResultCodes

`Ros2Motoros2_interfacesMsgInformJobCrudResultCodes`; 0..0 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| — | 空语义组件；C 存储占位符没有线字节。 | — | — | — |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_f5ed037b83926b48a88fa486ed8db5f5d3e39e4a486d4a90190ffd6a70452613`.

- `RC_OK`: `uint32` = `1`.
- `STR_OK`: `string` = `Success`.
- `RC_ERR_REFRESHING_JOB_LIST`: `uint32` = `10`.
- `STR_ERR_REFRESHING_JOB_LIST`: `string` = `Error refreshing job list`.
- `RC_ERR_RETRIEVING_FILE_COUNT`: `uint32` = `11`.
- `STR_ERR_RETRIEVING_FILE_COUNT`: `string` = `Error retrieving file count`.
- `RC_ERR_TOO_MANY_JOBS`: `uint32` = `12`.
- `STR_ERR_TOO_MANY_JOBS`: `string` = `Too many jobs`.
- `RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST`: `uint32` = `13`.
- `STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST`: `string` = `Failed retrieving job name from list`.
- `RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE`: `uint32` = `14`.
- `STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE`: `string` = `Error adding job name to service response`.

### motoros2_interfaces/msg/InitTrajEnum

`Ros2Motoros2_interfacesMsgInitTrajEnum`; 2..2 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `value` | `uint16` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_9279979f9e3570f48d6e23bf812a4680e3deed9af3309019efdff5464d7b7763`.

- `INIT_TRAJ_OK`: `uint16` = `0`.
- `INIT_TRAJ_OK_STR`: `string` = `OK`.
- `INIT_TRAJ_UNSPECIFIED`: `uint16` = `200`.
- `INIT_TRAJ_UNSPECIFIED_STR`: `string` = `Unspecified failure`.
- `INIT_TRAJ_TOO_SMALL`: `uint16` = `201`.
- `INIT_TRAJ_TOO_SMALL_STR`: `string` = `Trajectory must contain at least two points.`.
- `INIT_TRAJ_TOO_BIG`: `uint16` = `202`.
- `INIT_TRAJ_TOO_BIG_STR`: `string` = `Trajectory contains too many points (Not enough memory).`.
- `INIT_TRAJ_ALREADY_IN_MOTION`: `uint16` = `203`.
- `INIT_TRAJ_ALREADY_IN_MOTION_STR`: `string` = `Already running a trajectory.`.
- `INIT_TRAJ_INVALID_STARTING_POS`: `uint16` = `204`.
- `INIT_TRAJ_INVALID_STARTING_POS_STR`: `string` = `The first point must match the robot's current position.`.
- `INIT_TRAJ_INVALID_VELOCITY`: `uint16` = `205`.
- `INIT_TRAJ_INVALID_VELOCITY_STR`: `string` = `The commanded velocity is too high.`.
- `INIT_TRAJ_INVALID_JOINTNAME`: `uint16` = `206`.
- `INIT_TRAJ_INVALID_JOINTNAME_STR`: `string` = `Invalid joint name specified. Check motoros2_config.yaml.`.
- `INIT_TRAJ_INCOMPLETE_JOINTLIST`: `uint16` = `207`.
- `INIT_TRAJ_INCOMPLETE_JOINTLIST_STR`: `string` = `Trajectory must contain data for all joints.`.
- `INIT_TRAJ_INVALID_TIME`: `uint16` = `208`.
- `INIT_TRAJ_INVALID_TIME_STR`: `string` = `Invalid time in trajectory.`.
- `INIT_TRAJ_WRONG_MODE`: `uint16` = `209`.
- `INIT_TRAJ_WRONG_MODE_STR`: `string` = `Must call start_traj_mode service`.
- `INIT_TRAJ_BACKWARD_TIME`: `uint16` = `210`.
- `INIT_TRAJ_BACKWARD_TIME_STR`: `string` = `Trajectory message contains waypoints that are not strictly increasing in time.`.
- `INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS`: `uint16` = `211`.
- `INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR`: `string` = `Trajectory did not contain position data for all axes.`.
- `INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES`: `uint16` = `212`.
- `INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR`: `string` = `Trajectory did not contain velocity data for all axes.`.
- `INIT_TRAJ_INVALID_ENDING_VELOCITY`: `uint16` = `213`.
- `INIT_TRAJ_INVALID_ENDING_VELOCITY_STR`: `string` = `The final point in the trajectory must have zero velocity.`.
- `INIT_TRAJ_INVALID_ENDING_ACCELERATION`: `uint16` = `214`.
- `INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR`: `string` = `The final point in the trajectory must have zero acceleration.`.
- `INIT_TRAJ_DUPLICATE_JOINT_NAME`: `uint16` = `215`.
- `INIT_TRAJ_DUPLICATE_JOINT_NAME_STR`: `string` = `The trajectory contains duplicate joint names.`.

### motoros2_interfaces/msg/IoResultCodes

`Ros2Motoros2_interfacesMsgIoResultCodes`; 0..0 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| — | 空语义组件；C 存储占位符没有线字节。 | — | — | — |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_ef9ab829ae79d4e58336a56259b6beb2ad26a8b1b4070013d9004ac4ab269915`.

- `OK`: `uint32` = `0`.
- `OK_STR`: `string` = `Success`.
- `READ_ADDRESS_INVALID`: `uint32` = `1001`.
- `READ_ADDRESS_INVALID_STR`: `string` = `Address cannot be read from (out of readable range)`.
- `WRITE_ADDRESS_INVALID`: `uint32` = `1002`.
- `WRITE_ADDRESS_INVALID_STR`: `string` = `Address cannot be written to (out of writable range)`.
- `WRITE_VALUE_INVALID`: `uint32` = `1003`.
- `WRITE_VALUE_INVALID_STR`: `string` = `Illegal value for the type of IO element addressed`.
- `READ_API_ERROR`: `uint32` = `1004`.
- `READ_API_ERROR_STR`: `string` = `The MotoPlus function mpReadIO returned -1. No further information is available`.
- `WRITE_API_ERROR`: `uint32` = `1005`.
- `WRITE_API_ERROR_STR`: `string` = `The MotoPlus function mpWriteIO returned -1. No further information is available`.
- `UNKNOWN_API_ERROR_STR`: `string` = `Unknown error accessing I/O. No further information is available`.

### motoros2_interfaces/msg/MotionReadyEnum

`Ros2Motoros2_interfacesMsgMotionReadyEnum`; 2..2 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `value` | `uint16` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_c8d4c2b0eba665e01cddc730421a3a42c5b344f4de35ae0a32204891603326d6`.

- `READY`: `uint16` = `1`.
- `READY_STR`: `string` = `Ready`.
- `NOT_READY_UNSPECIFIED`: `uint16` = `100`.
- `NOT_READY_UNSPECIFIED_STR`: `string` = `Unspecified`.
- `NOT_READY_ALARM`: `uint16` = `101`.
- `NOT_READY_ALARM_STR`: `string` = `The controller has an active Alarm`.
- `NOT_READY_ERROR`: `uint16` = `102`.
- `NOT_READY_ERROR_STR`: `string` = `The controller has an active Error`.
- `NOT_READY_ESTOP`: `uint16` = `103`.
- `NOT_READY_ESTOP_STR`: `string` = `The controller is in E-Stop`.
- `NOT_READY_NOT_PLAY`: `uint16` = `104`.
- `NOT_READY_NOT_PLAY_STR`: `string` = `The teach pendant must not be in TEACH mode`.
- `NOT_READY_NOT_REMOTE`: `uint16` = `105`.
- `NOT_READY_NOT_REMOTE_STR`: `string` = `The teach pendant must be in REMOTE mode`.
- `NOT_READY_SERVO_OFF`: `uint16` = `106`.
- `NOT_READY_SERVO_OFF_STR`: `string` = `Servo power is OFF. Please call start_traj_mode or start_point_queue_mode service`.
- `NOT_READY_HOLD`: `uint16` = `107`.
- `NOT_READY_HOLD_STR`: `string` = `The controller is in HOLD`.
- `NOT_READY_JOB_NOT_STARTED`: `uint16` = `108`.
- `NOT_READY_JOB_NOT_STARTED_STR`: `string` = `The INIT_ROS job has not started. Please call start_traj_mode or start_point_queue_mode service`.
- `NOT_READY_NOT_ON_WAIT_CMD`: `uint16` = `109`.
- `NOT_READY_NOT_ON_WAIT_CMD_STR`: `string` = `INFORM job is not on a WAIT command. Check the format of INIT_ROS`.
- `NOT_READY_PFL_ACTIVE`: `uint16` = `111`.
- `NOT_READY_PFL_ACTIVE_STR`: `string` = `A PFL event has occurred. Please return the robot to a safe state`.
- `NOT_READY_INC_MOVE_ERROR`: `uint16` = `112`.
- `NOT_READY_INC_MOVE_ERROR_STR`: `string` = `The controller is in an error state. Please call reset_error to attempt to clear the error`.
- `NOT_READY_OTHER_PROGRAM_RUNNING`: `uint16` = `113`.
- `NOT_READY_OTHER_PROGRAM_RUNNING_STR`: `string` = `Controller is running another job`.
- `NOT_READY_OTHER_TRAJ_MODE_ACTIVE`: `uint16` = `114`.
- `NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR`: `string` = `Another trajectory mode is already active. Please call stop_traj_mode service`.
- `NOT_READY_NOT_CONT_CYCLE_MODE`: `uint16` = `115`.
- `NOT_READY_NOT_CONT_CYCLE_MODE_STR`: `string` = `AUTO cycle mode not set. Please set the cycle mode to AUTO`.
- `NOT_READY_MAJOR_ALARM`: `uint16` = `116`.
- `NOT_READY_MAJOR_ALARM_STR`: `string` = `Major Alarms can't be reset. Please check the teach pendant`.
- `NOT_READY_ECO_MODE`: `uint16` = `117`.
- `NOT_READY_ECO_MODE_STR`: `string` = `Couldn't disable eco mode`.
- `NOT_READY_SERVO_ON_TIMEOUT`: `uint16` = `118`.
- `NOT_READY_SERVO_ON_TIMEOUT_STR`: `string` = `Timed out while waiting for servo on`.

### motoros2_interfaces/msg/QueueResultEnum

`Ros2Motoros2_interfacesMsgQueueResultEnum`; 2..2 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `value` | `uint16` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_146c6ce3f275b9e4a81622d73cca3d2298cf9f7bb95a783c0dea6279cb5b4f23`.

- `SUCCESS`: `uint16` = `1`.
- `SUCCESS_STR`: `string` = ``.
- `WRONG_MODE`: `uint16` = `2`.
- `WRONG_MODE_STR`: `string` = `Must call start_point_queue_mode service`.
- `INIT_FAILURE`: `uint16` = `3`.
- `INIT_FAILURE_STR`: `string` = `Failed to initialize the streaming trajectory`.
- `BUSY`: `uint16` = `4`.
- `BUSY_STR`: `string` = `Busy processing the previous trajectory point. Please resend the next point shortly`.
- `INVALID_JOINT_LIST`: `uint16` = `5`.
- `INVALID_JOINT_LIST_STR`: `string` = `Point must contain data for all joints`.
- `UNABLE_TO_PROCESS_POINT`: `uint16` = `6`.
- `UNABLE_TO_PROCESS_POINT_STR`: `string` = `Error while processing the trajectory point. Check debug log for more details`.

### motoros2_interfaces/msg/SelectionResultCodes

`Ros2Motoros2_interfacesMsgSelectionResultCodes`; 4..4 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `value` | `uint32` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_46168b1f851163985e75842d9d795c5715160864a7736e7f92f95818c9435602`.

- `OK`: `uint32` = `0`.
- `OK_STR`: `string` = ``.
- `INVALID_CONTROLLER_STATE`: `uint32` = `400`.
- `INVALID_CONTROLLER_STATE_STR`: `string` = `Pendant is not in REMOTE mode`.
- `INVALID_CONTROL_GROUP`: `uint32` = `401`.
- `INVALID_CONTROL_GROUP_STR`: `string` = `Invalid control group`.
- `INVALID_SELECTION_INDEX`: `uint32` = `402`.
- `INVALID_SELECTION_INDEX_STR`: `string` = `Invalid tool selection`.

### motoros2_interfaces/srv/GetActiveAlarmInfo_Request

`Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request`; 0..0 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| — | 空语义组件；C 存储占位符没有线字节。 | — | — | — |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_aadcd63f3bc47424c38767afdc1589561e3c90e8aeae9bdceef88b1033d57a7e`.

### motoros2_interfaces/srv/GetActiveAlarmInfo_Response

`Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response`; 16..32768 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `result_code` | `uint32` | scalar  | 0 | `None` |
| `result_message` | `string` | scalar  | 512 | `None` |
| `alarms` | `motoros2_interfaces/msg/AlarmInfo` | sequence 16 | 0 | `None` |
| `errors` | `motoros2_interfaces/msg/ErrorInfo` | sequence 16 | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_e11bdbb95b6ded88d035696260c58dad32bcf3604aa4e89dd41c0dab26541567`.

### motoros2_interfaces/srv/ListInformJobs_Request

`Ros2Motoros2_interfacesSrvListInformJobs_Request`; 0..0 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| — | 空语义组件；C 存储占位符没有线字节。 | — | — | — |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_e77eedadef98d98321b1757b88284022afcdb1ffef52b98820b0c4ba596d643c`.

### motoros2_interfaces/srv/ListInformJobs_Response

`Ros2Motoros2_interfacesSrvListInformJobs_Response`; 12..8780 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `result_code` | `uint32` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |
| `names` | `string` | sequence 16 | 512 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_49021f0abc00f8df1ef49605a244cb6bba8d8b45ece5365ae35d747d2506eadc`.

### motoros2_interfaces/srv/QueueTrajPoint_Request

`Ros2Motoros2_interfacesSrvQueueTrajPoint_Request`; 28..1228 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `joint_names` | `string` | sequence 12 | 64 | `None` |
| `point` | `trajectory_msgs/msg/JointTrajectoryPoint` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_3d37f9981d6abaca33ec0b5378fa3a1ac301791cc9be94d5bdcf4ea6aa81b8d0`.

### motoros2_interfaces/srv/QueueTrajPoint_Response

`Ros2Motoros2_interfacesSrvQueueTrajPoint_Response`; 6..518 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `result_code` | `motoros2_interfaces/msg/QueueResultEnum` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_d4887ed24d39332a5ccfd4a3d072004dd8f314fe5c166bf0bd57520a826cbccd`.

### motoros2_interfaces/srv/ReadGroupIO_Request

`Ros2Motoros2_interfacesSrvReadGroupIO_Request`; 4..4 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `address` | `uint32` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_6ee09ac379e169fc23b81a551e9a9ed21c3f82b5010859984e911b17152beb7f`.

### motoros2_interfaces/srv/ReadGroupIO_Response

`Ros2Motoros2_interfacesSrvReadGroupIO_Response`; 10..522 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `result_code` | `uint32` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |
| `success` | `bool` | scalar  | 0 | `None` |
| `value` | `uint8` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_292fcf6e8c46a2509ee4cc5238d443157f37fed0de898367248b967e9001ea0d`.

### motoros2_interfaces/srv/ReadMRegister_Request

`Ros2Motoros2_interfacesSrvReadMRegister_Request`; 4..4 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `address` | `uint32` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_f31f0983466054f5ac5dcb2ab80ab7721d606a681b833ebb376cc87f96054f6f`.

### motoros2_interfaces/srv/ReadMRegister_Response

`Ros2Motoros2_interfacesSrvReadMRegister_Response`; 11..523 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `result_code` | `uint32` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |
| `success` | `bool` | scalar  | 0 | `None` |
| `value` | `uint16` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_8d6ded2876adfa2079711205cb0110a82ead6f51db05f266bf285308cd815a04`.

### motoros2_interfaces/srv/ReadSingleIO_Request

`Ros2Motoros2_interfacesSrvReadSingleIO_Request`; 4..4 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `address` | `uint32` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_30e28db303b772f26b2b3cf6165a0ff79037d037d60e8115b4ee8e177f17e8bb`.

### motoros2_interfaces/srv/ReadSingleIO_Response

`Ros2Motoros2_interfacesSrvReadSingleIO_Response`; 13..525 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `result_code` | `uint32` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |
| `success` | `bool` | scalar  | 0 | `None` |
| `value` | `int32` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_b42013571274e85769ffac4d47129de8b76e4a675bdef3efefebc9ee19e92082`.

### motoros2_interfaces/srv/ResetError_Request

`Ros2Motoros2_interfacesSrvResetError_Request`; 0..0 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| — | 空语义组件；C 存储占位符没有线字节。 | — | — | — |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_2737855d0608478946e2d9ab7f06c92585199c1082ec8406a012f50ad56beae3`.

### motoros2_interfaces/srv/ResetError_Response

`Ros2Motoros2_interfacesSrvResetError_Response`; 6..518 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `result_code` | `motoros2_interfaces/msg/MotionReadyEnum` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_0af14ee02c157ecc39b143225a580e475473306389ccc3ba198cf22ca47d82f3`.

### motoros2_interfaces/srv/SelectMotionTool_Request

`Ros2Motoros2_interfacesSrvSelectMotionTool_Request`; 8..8 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `group_number` | `uint32` | scalar  | 0 | `None` |
| `tool_number` | `uint32` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_e6c884ae0a97337c1e441efe099b7869dc95205fcbca0a8082d4d9b06f5b438c`.

### motoros2_interfaces/srv/SelectMotionTool_Response

`Ros2Motoros2_interfacesSrvSelectMotionTool_Response`; 9..521 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `result_code` | `motoros2_interfaces/msg/SelectionResultCodes` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |
| `success` | `bool` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_088349a49c14c52282c25b428628462c48618c3b5202df560dcc5c9bed742640`.

### motoros2_interfaces/srv/StartPointQueueMode_Request

`Ros2Motoros2_interfacesSrvStartPointQueueMode_Request`; 0..0 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| — | 空语义组件；C 存储占位符没有线字节。 | — | — | — |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_58a4827fc6535ef0ffc64ee25c5c4af75aa0fe199fa0350a88a95d2e991164a1`.

### motoros2_interfaces/srv/StartPointQueueMode_Response

`Ros2Motoros2_interfacesSrvStartPointQueueMode_Response`; 6..518 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `result_code` | `motoros2_interfaces/msg/MotionReadyEnum` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_bc553d5640e1c4644a5d5bdc2dfcefc9dbe789ef1e2a23dd620f08963467b6ff`.

### motoros2_interfaces/srv/StartTrajMode_Request

`Ros2Motoros2_interfacesSrvStartTrajMode_Request`; 0..0 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| — | 空语义组件；C 存储占位符没有线字节。 | — | — | — |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_0b8b2ad5db5901047035e1070b675618afc516a1ae8c3308cfdcad1174d34789`.

### motoros2_interfaces/srv/StartTrajMode_Response

`Ros2Motoros2_interfacesSrvStartTrajMode_Response`; 6..518 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `result_code` | `motoros2_interfaces/msg/MotionReadyEnum` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_170e25737e6a2b06f5d5d9f331d748c97cf0306284271757953a4a801c722939`.

### motoros2_interfaces/srv/WriteGroupIO_Request

`Ros2Motoros2_interfacesSrvWriteGroupIO_Request`; 5..5 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `address` | `uint32` | scalar  | 0 | `None` |
| `value` | `uint8` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_2d348ed71408a0dd1dd28ee2ed2ca1db56bb07a14546d0fe13ccf64e8553d52c`.

### motoros2_interfaces/srv/WriteGroupIO_Response

`Ros2Motoros2_interfacesSrvWriteGroupIO_Response`; 9..521 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `result_code` | `uint32` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |
| `success` | `bool` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_06769934711b27fd32cdcbf849504e160189ee82ea32e0e71a2903af47c5d766`.

### motoros2_interfaces/srv/WriteMRegister_Request

`Ros2Motoros2_interfacesSrvWriteMRegister_Request`; 6..6 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `address` | `uint32` | scalar  | 0 | `None` |
| `value` | `uint16` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_8df4536be27f0632052725d5616fd5b047f49fc306fc7735854d9de4fb15d4ef`.

### motoros2_interfaces/srv/WriteMRegister_Response

`Ros2Motoros2_interfacesSrvWriteMRegister_Response`; 9..521 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `result_code` | `uint32` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |
| `success` | `bool` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_a61cc0596a7545ef4836bdc64dc9d6b4ed99b0abd18a726eb37e6215f51c729a`.

### motoros2_interfaces/srv/WriteSingleIO_Request

`Ros2Motoros2_interfacesSrvWriteSingleIO_Request`; 8..8 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `address` | `uint32` | scalar  | 0 | `None` |
| `value` | `int32` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_6361affcd8b7ebaaa1fe6b5806e64a7c18f7a96a1178614cfce487de813a6392`.

### motoros2_interfaces/srv/WriteSingleIO_Response

`Ros2Motoros2_interfacesSrvWriteSingleIO_Response`; 9..521 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `result_code` | `uint32` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |
| `success` | `bool` | scalar  | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_12328db372a572fe9b0c7207331a7971d5d7c9033376e3be410db579b85fb794`.

### sensor_msgs/msg/JointState

`Ros2Sensor_msgsMsgJointState`; 28..1196 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `header` | `std_msgs/msg/Header` | scalar  | 0 | `None` |
| `name` | `string` | sequence 12 | 64 | `None` |
| `position` | `float64` | sequence 12 | 0 | `None` |
| `velocity` | `float64` | sequence 12 | 0 | `None` |
| `effort` | `float64` | sequence 12 | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884`.

### std_srvs/srv/Trigger_Request

`Ros2Std_srvsSrvTrigger_Request`; 0..0 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| — | 空语义组件；C 存储占位符没有线字节。 | — | — | — |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77`.

### std_srvs/srv/Trigger_Response

`Ros2Std_srvsSrvTrigger_Response`; 5..517 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `success` | `bool` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d`.

### tf2_msgs/msg/TFMessage

`Ros2Tf2_msgsMsgTFMessage`; 4..10372 字节。

| 字段 | 原始类型 | 形状/容量 | 字符串字节上限 | 原始默认值 |
| --- | --- | --- | --- | --- |
| `transforms` | `geometry_msgs/msg/TransformStamped` | sequence 16 | 0 | `None` |

原生标识：未绑定；需要实际 native 导出。

Codec: `UWVMROS1_4428597a9c2783fd8f0f083a16e8fd1b3d286487f4800c55fcc5571e7f79e65a`.

### 接口组件

| Native interface | Kind | Complete roles |
| --- | --- | --- |
| `builtin_interfaces/msg/Duration` | message | `message`: `builtin_interfaces/msg/Duration` |
| `builtin_interfaces/msg/Time` | message | `message`: `builtin_interfaces/msg/Time` |
| `control_msgs/action/FollowJointTrajectory` | action | `goal`: `control_msgs/action/FollowJointTrajectory_Goal`, `result`: `control_msgs/action/FollowJointTrajectory_Result`, `feedback`: `control_msgs/action/FollowJointTrajectory_Feedback` |
| `control_msgs/msg/JointComponentTolerance` | message | `message`: `control_msgs/msg/JointComponentTolerance` |
| `control_msgs/msg/JointTolerance` | message | `message`: `control_msgs/msg/JointTolerance` |
| `geometry_msgs/msg/Quaternion` | message | `message`: `geometry_msgs/msg/Quaternion` |
| `geometry_msgs/msg/Transform` | message | `message`: `geometry_msgs/msg/Transform` |
| `geometry_msgs/msg/TransformStamped` | message | `message`: `geometry_msgs/msg/TransformStamped` |
| `geometry_msgs/msg/Twist` | message | `message`: `geometry_msgs/msg/Twist` |
| `geometry_msgs/msg/Vector3` | message | `message`: `geometry_msgs/msg/Vector3` |
| `industrial_msgs/msg/DebugLevel` | message | `message`: `industrial_msgs/msg/DebugLevel` |
| `industrial_msgs/msg/DeviceInfo` | message | `message`: `industrial_msgs/msg/DeviceInfo` |
| `industrial_msgs/msg/RobotMode` | message | `message`: `industrial_msgs/msg/RobotMode` |
| `industrial_msgs/msg/RobotStatus` | message | `message`: `industrial_msgs/msg/RobotStatus` |
| `industrial_msgs/msg/ServiceReturnCode` | message | `message`: `industrial_msgs/msg/ServiceReturnCode` |
| `industrial_msgs/msg/TriState` | message | `message`: `industrial_msgs/msg/TriState` |
| `industrial_msgs/srv/CmdJointTrajectory` | service | `request`: `industrial_msgs/srv/CmdJointTrajectory_Request`, `response`: `industrial_msgs/srv/CmdJointTrajectory_Response` |
| `industrial_msgs/srv/GetRobotInfo` | service | `request`: `industrial_msgs/srv/GetRobotInfo_Request`, `response`: `industrial_msgs/srv/GetRobotInfo_Response` |
| `industrial_msgs/srv/SetDrivePower` | service | `request`: `industrial_msgs/srv/SetDrivePower_Request`, `response`: `industrial_msgs/srv/SetDrivePower_Response` |
| `industrial_msgs/srv/SetRemoteLoggerLevel` | service | `request`: `industrial_msgs/srv/SetRemoteLoggerLevel_Request`, `response`: `industrial_msgs/srv/SetRemoteLoggerLevel_Response` |
| `industrial_msgs/srv/StartMotion` | service | `request`: `industrial_msgs/srv/StartMotion_Request`, `response`: `industrial_msgs/srv/StartMotion_Response` |
| `industrial_msgs/srv/StopMotion` | service | `request`: `industrial_msgs/srv/StopMotion_Request`, `response`: `industrial_msgs/srv/StopMotion_Response` |
| `motoros2_interfaces/msg/AlarmCauseRemedy` | message | `message`: `motoros2_interfaces/msg/AlarmCauseRemedy` |
| `motoros2_interfaces/msg/AlarmInfo` | message | `message`: `motoros2_interfaces/msg/AlarmInfo` |
| `motoros2_interfaces/msg/ErrorInfo` | message | `message`: `motoros2_interfaces/msg/ErrorInfo` |
| `motoros2_interfaces/msg/InformJobCrudResultCodes` | message | `message`: `motoros2_interfaces/msg/InformJobCrudResultCodes` |
| `motoros2_interfaces/msg/InitTrajEnum` | message | `message`: `motoros2_interfaces/msg/InitTrajEnum` |
| `motoros2_interfaces/msg/IoResultCodes` | message | `message`: `motoros2_interfaces/msg/IoResultCodes` |
| `motoros2_interfaces/msg/MotionReadyEnum` | message | `message`: `motoros2_interfaces/msg/MotionReadyEnum` |
| `motoros2_interfaces/msg/QueueResultEnum` | message | `message`: `motoros2_interfaces/msg/QueueResultEnum` |
| `motoros2_interfaces/msg/SelectionResultCodes` | message | `message`: `motoros2_interfaces/msg/SelectionResultCodes` |
| `motoros2_interfaces/srv/GetActiveAlarmInfo` | service | `request`: `motoros2_interfaces/srv/GetActiveAlarmInfo_Request`, `response`: `motoros2_interfaces/srv/GetActiveAlarmInfo_Response` |
| `motoros2_interfaces/srv/ListInformJobs` | service | `request`: `motoros2_interfaces/srv/ListInformJobs_Request`, `response`: `motoros2_interfaces/srv/ListInformJobs_Response` |
| `motoros2_interfaces/srv/QueueTrajPoint` | service | `request`: `motoros2_interfaces/srv/QueueTrajPoint_Request`, `response`: `motoros2_interfaces/srv/QueueTrajPoint_Response` |
| `motoros2_interfaces/srv/ReadGroupIO` | service | `request`: `motoros2_interfaces/srv/ReadGroupIO_Request`, `response`: `motoros2_interfaces/srv/ReadGroupIO_Response` |
| `motoros2_interfaces/srv/ReadMRegister` | service | `request`: `motoros2_interfaces/srv/ReadMRegister_Request`, `response`: `motoros2_interfaces/srv/ReadMRegister_Response` |
| `motoros2_interfaces/srv/ReadSingleIO` | service | `request`: `motoros2_interfaces/srv/ReadSingleIO_Request`, `response`: `motoros2_interfaces/srv/ReadSingleIO_Response` |
| `motoros2_interfaces/srv/ResetError` | service | `request`: `motoros2_interfaces/srv/ResetError_Request`, `response`: `motoros2_interfaces/srv/ResetError_Response` |
| `motoros2_interfaces/srv/SelectMotionTool` | service | `request`: `motoros2_interfaces/srv/SelectMotionTool_Request`, `response`: `motoros2_interfaces/srv/SelectMotionTool_Response` |
| `motoros2_interfaces/srv/StartPointQueueMode` | service | `request`: `motoros2_interfaces/srv/StartPointQueueMode_Request`, `response`: `motoros2_interfaces/srv/StartPointQueueMode_Response` |
| `motoros2_interfaces/srv/StartTrajMode` | service | `request`: `motoros2_interfaces/srv/StartTrajMode_Request`, `response`: `motoros2_interfaces/srv/StartTrajMode_Response` |
| `motoros2_interfaces/srv/WriteGroupIO` | service | `request`: `motoros2_interfaces/srv/WriteGroupIO_Request`, `response`: `motoros2_interfaces/srv/WriteGroupIO_Response` |
| `motoros2_interfaces/srv/WriteMRegister` | service | `request`: `motoros2_interfaces/srv/WriteMRegister_Request`, `response`: `motoros2_interfaces/srv/WriteMRegister_Response` |
| `motoros2_interfaces/srv/WriteSingleIO` | service | `request`: `motoros2_interfaces/srv/WriteSingleIO_Request`, `response`: `motoros2_interfaces/srv/WriteSingleIO_Response` |
| `sensor_msgs/msg/JointState` | message | `message`: `sensor_msgs/msg/JointState` |
| `std_msgs/msg/Header` | message | `message`: `std_msgs/msg/Header` |
| `std_srvs/srv/Trigger` | service | `request`: `std_srvs/srv/Trigger_Request`, `response`: `std_srvs/srv/Trigger_Response` |
| `tf2_msgs/msg/TFMessage` | message | `message`: `tf2_msgs/msg/TFMessage` |
| `trajectory_msgs/msg/JointTrajectory` | message | `message`: `trajectory_msgs/msg/JointTrajectory` |
| `trajectory_msgs/msg/JointTrajectoryPoint` | message | `message`: `trajectory_msgs/msg/JointTrajectoryPoint` |
| `trajectory_msgs/msg/MultiDOFJointTrajectory` | message | `message`: `trajectory_msgs/msg/MultiDOFJointTrajectory` |
| `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | message | `message`: `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` |
