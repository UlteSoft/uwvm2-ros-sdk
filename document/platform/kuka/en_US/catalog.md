# kuka complete API catalog

Original field spellings are preserved. Array capacities count elements; text capacities count UTF-8 bytes. Numeric units, frames and clock domains come from the unchanged original `.msg/.srv/.action` comments; codecs never scale values. Source names and canonical identities do not establish native type identities.

## kuka-ros2-complete

| Interface | Kind | Complete component types |
| --- | --- | --- |
| `builtin_interfaces/msg/Duration` | message | `message: Ros2Builtin_interfacesMsgDuration` |
| `builtin_interfaces/msg/Time` | message | `message: Ros2Builtin_interfacesMsgTime` |
| `control_msgs/action/FollowJointTrajectory` | action | `goal: Ros2Control_msgsActionFollowJointTrajectory_Goal`, `result: Ros2Control_msgsActionFollowJointTrajectory_Result`, `feedback: Ros2Control_msgsActionFollowJointTrajectory_Feedback` |
| `control_msgs/msg/JointComponentTolerance` | message | `message: Ros2Control_msgsMsgJointComponentTolerance` |
| `control_msgs/msg/JointTolerance` | message | `message: Ros2Control_msgsMsgJointTolerance` |
| `geometry_msgs/msg/Quaternion` | message | `message: Ros2Geometry_msgsMsgQuaternion` |
| `geometry_msgs/msg/Transform` | message | `message: Ros2Geometry_msgsMsgTransform` |
| `geometry_msgs/msg/Twist` | message | `message: Ros2Geometry_msgsMsgTwist` |
| `geometry_msgs/msg/Vector3` | message | `message: Ros2Geometry_msgsMsgVector3` |
| `kuka_driver_interfaces/msg/FRIState` | message | `message: Ros2Kuka_driver_interfacesMsgFRIState` |
| `kuka_driver_interfaces/msg/FRIStateArray` | message | `message: Ros2Kuka_driver_interfacesMsgFRIStateArray` |
| `kuka_driver_interfaces/msg/FriConfiguration` | message | `message: Ros2Kuka_driver_interfacesMsgFriConfiguration` |
| `kuka_driver_interfaces/msg/HardwareEvent` | message | `message: Ros2Kuka_driver_interfacesMsgHardwareEvent` |
| `kuka_driver_interfaces/msg/KssStatus` | message | `message: Ros2Kuka_driver_interfacesMsgKssStatus` |
| `kuka_driver_interfaces/msg/KssStatusArray` | message | `message: Ros2Kuka_driver_interfacesMsgKssStatusArray` |
| `lifecycle_msgs/msg/State` | message | `message: Ros2Lifecycle_msgsMsgState` |
| `lifecycle_msgs/msg/Transition` | message | `message: Ros2Lifecycle_msgsMsgTransition` |
| `lifecycle_msgs/srv/ChangeState` | service | `request: Ros2Lifecycle_msgsSrvChangeState_Request`, `response: Ros2Lifecycle_msgsSrvChangeState_Response` |
| `lifecycle_msgs/srv/GetState` | service | `request: Ros2Lifecycle_msgsSrvGetState_Request`, `response: Ros2Lifecycle_msgsSrvGetState_Response` |
| `sensor_msgs/msg/JointState` | message | `message: Ros2Sensor_msgsMsgJointState` |
| `std_msgs/msg/Header` | message | `message: Ros2Std_msgsMsgHeader` |
| `std_srvs/srv/Trigger` | service | `request: Ros2Std_srvsSrvTrigger_Request`, `response: Ros2Std_srvsSrvTrigger_Response` |
| `trajectory_msgs/msg/JointTrajectory` | message | `message: Ros2Trajectory_msgsMsgJointTrajectory` |
| `trajectory_msgs/msg/JointTrajectoryPoint` | message | `message: Ros2Trajectory_msgsMsgJointTrajectoryPoint` |
| `trajectory_msgs/msg/MultiDOFJointTrajectory` | message | `message: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory` |
| `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | message | `message: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint` |

### builtin_interfaces/msg/Duration

`Ros2Builtin_interfacesMsgDuration`; 8..8 canonical bytes. Codec identity: `UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `sec` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `nanosec` | `uint32` | scalar | — | `implicit zero/empty/nested` |

### builtin_interfaces/msg/Time

`Ros2Builtin_interfacesMsgTime`; 8..8 canonical bytes. Codec identity: `UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `sec` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `nanosec` | `uint32` | scalar | — | `implicit zero/empty/nested` |

### std_msgs/msg/Header

`Ros2Std_msgsMsgHeader`; 12..76 canonical bytes. Codec identity: `UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `stamp` | `builtin_interfaces/msg/Time` | scalar | — | `implicit zero/empty/nested` |
| `frame_id` | `string` | scalar | 64 | `implicit zero/empty/nested` |

### trajectory_msgs/msg/JointTrajectoryPoint

`Ros2Trajectory_msgsMsgJointTrajectoryPoint`; 24..408 canonical bytes. Codec identity: `UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `positions` | `float64` | sequence | 12 | `implicit zero/empty/nested` |
| `velocities` | `float64` | sequence | 12 | `implicit zero/empty/nested` |
| `accelerations` | `float64` | sequence | 12 | `implicit zero/empty/nested` |
| `effort` | `float64` | sequence | 12 | `implicit zero/empty/nested` |
| `time_from_start` | `builtin_interfaces/msg/Duration` | scalar | — | `implicit zero/empty/nested` |

### trajectory_msgs/msg/JointTrajectory

`Ros2Trajectory_msgsMsgJointTrajectory`; 20..4164 canonical bytes. Codec identity: `UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `joint_names` | `string` | sequence | 12 | `implicit zero/empty/nested` |
| `points` | `trajectory_msgs/msg/JointTrajectoryPoint` | sequence | 8 | `implicit zero/empty/nested` |

### geometry_msgs/msg/Vector3

`Ros2Geometry_msgsMsgVector3`; 24..24 canonical bytes. Codec identity: `UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `x` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `y` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `z` | `float64` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/msg/Quaternion

`Ros2Geometry_msgsMsgQuaternion`; 32..32 canonical bytes. Codec identity: `UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `x` | `float64` | scalar | — | `0.0` |
| `y` | `float64` | scalar | — | `0.0` |
| `z` | `float64` | scalar | — | `0.0` |
| `w` | `float64` | scalar | — | `1.0` |

### geometry_msgs/msg/Transform

`Ros2Geometry_msgsMsgTransform`; 56..56 canonical bytes. Codec identity: `UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `translation` | `geometry_msgs/msg/Vector3` | scalar | — | `implicit zero/empty/nested` |
| `rotation` | `geometry_msgs/msg/Quaternion` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/msg/Twist

`Ros2Geometry_msgsMsgTwist`; 48..48 canonical bytes. Codec identity: `UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `linear` | `geometry_msgs/msg/Vector3` | scalar | — | `implicit zero/empty/nested` |
| `angular` | `geometry_msgs/msg/Vector3` | scalar | — | `implicit zero/empty/nested` |

### trajectory_msgs/msg/MultiDOFJointTrajectoryPoint

`Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint`; 20..324 canonical bytes. Codec identity: `UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `transforms` | `geometry_msgs/msg/Transform` | sequence | 2 | `implicit zero/empty/nested` |
| `velocities` | `geometry_msgs/msg/Twist` | sequence | 2 | `implicit zero/empty/nested` |
| `accelerations` | `geometry_msgs/msg/Twist` | sequence | 2 | `implicit zero/empty/nested` |
| `time_from_start` | `builtin_interfaces/msg/Duration` | scalar | — | `implicit zero/empty/nested` |

### trajectory_msgs/msg/MultiDOFJointTrajectory

`Ros2Trajectory_msgsMsgMultiDOFJointTrajectory`; 20..1516 canonical bytes. Codec identity: `UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `joint_names` | `string` | sequence | 2 | `implicit zero/empty/nested` |
| `points` | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | sequence | 4 | `implicit zero/empty/nested` |

### control_msgs/msg/JointTolerance

`Ros2Control_msgsMsgJointTolerance`; 28..92 canonical bytes. Codec identity: `UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `name` | `string` | scalar | 64 | `implicit zero/empty/nested` |
| `position` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `velocity` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `acceleration` | `float64` | scalar | — | `implicit zero/empty/nested` |

### control_msgs/msg/JointComponentTolerance

`Ros2Control_msgsMsgJointComponentTolerance`; 30..542 canonical bytes. Codec identity: `UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `joint_name` | `string` | scalar | 512 | `implicit zero/empty/nested` |
| `component` | `uint16` | scalar | — | `implicit zero/empty/nested` |
| `position` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `velocity` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `acceleration` | `float64` | scalar | — | `implicit zero/empty/nested` |

Original constants: `X_AXIS: uint16 = 1`; `Y_AXIS: uint16 = 2`; `Z_AXIS: uint16 = 3`; `TRANSLATION: uint16 = 4`; `ROTATION: uint16 = 5`.

### control_msgs/action/FollowJointTrajectory_Goal

`Ros2Control_msgsActionFollowJointTrajectory_Goal`; 64..20920 canonical bytes. Codec identity: `UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `trajectory` | `trajectory_msgs/msg/JointTrajectory` | scalar | — | `implicit zero/empty/nested` |
| `multi_dof_trajectory` | `trajectory_msgs/msg/MultiDOFJointTrajectory` | scalar | — | `implicit zero/empty/nested` |
| `path_tolerance` | `control_msgs/msg/JointTolerance` | sequence | 12 | `implicit zero/empty/nested` |
| `component_path_tolerance` | `control_msgs/msg/JointComponentTolerance` | sequence | 12 | `implicit zero/empty/nested` |
| `goal_tolerance` | `control_msgs/msg/JointTolerance` | sequence | 12 | `implicit zero/empty/nested` |
| `component_goal_tolerance` | `control_msgs/msg/JointComponentTolerance` | sequence | 12 | `implicit zero/empty/nested` |
| `goal_time_tolerance` | `builtin_interfaces/msg/Duration` | scalar | — | `implicit zero/empty/nested` |

### control_msgs/action/FollowJointTrajectory_Result

`Ros2Control_msgsActionFollowJointTrajectory_Result`; 8..4104 canonical bytes. Codec identity: `UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `error_code` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `error_string` | `string` | scalar | 4096 | `implicit zero/empty/nested` |

Original constants: `SUCCESSFUL: int32 = 0`; `INVALID_GOAL: int32 = -1`; `INVALID_JOINTS: int32 = -2`; `OLD_HEADER_TIMESTAMP: int32 = -3`; `PATH_TOLERANCE_VIOLATED: int32 = -4`; `GOAL_TOLERANCE_VIOLATED: int32 = -5`.

### control_msgs/action/FollowJointTrajectory_Feedback

`Ros2Control_msgsActionFollowJointTrajectory_Feedback`; 152..4128 canonical bytes. Codec identity: `UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `joint_names` | `string` | sequence | 12 | `implicit zero/empty/nested` |
| `desired` | `trajectory_msgs/msg/JointTrajectoryPoint` | scalar | — | `implicit zero/empty/nested` |
| `actual` | `trajectory_msgs/msg/JointTrajectoryPoint` | scalar | — | `implicit zero/empty/nested` |
| `error` | `trajectory_msgs/msg/JointTrajectoryPoint` | scalar | — | `implicit zero/empty/nested` |
| `multi_dof_joint_names` | `string` | sequence | 2 | `implicit zero/empty/nested` |
| `multi_dof_desired` | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | scalar | — | `implicit zero/empty/nested` |
| `multi_dof_actual` | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | scalar | — | `implicit zero/empty/nested` |
| `multi_dof_error` | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | scalar | — | `implicit zero/empty/nested` |

### kuka_driver_interfaces/msg/FRIState

`Ros2Kuka_driver_interfacesMsgFRIState`; 40..40 canonical bytes. Codec identity: `UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `session_state` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `connection_quality` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `safety_state` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `command_mode` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `control_mode` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `operation_mode` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `drive_state` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `overlay_type` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `tracking_performance` | `float64` | scalar | — | `implicit zero/empty/nested` |

### kuka_driver_interfaces/msg/FRIStateArray

`Ros2Kuka_driver_interfacesMsgFRIStateArray`; 8..1736 canonical bytes. Codec identity: `UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `robot_names` | `string` | sequence | 16 | `implicit zero/empty/nested` |
| `states` | `kuka_driver_interfaces/msg/FRIState` | sequence | 16 | `implicit zero/empty/nested` |

### kuka_driver_interfaces/msg/FriConfiguration

`Ros2Kuka_driver_interfacesMsgFriConfiguration`; 8..8 canonical bytes. Codec identity: `UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `receive_multiplier` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `send_period_ms` | `int32` | scalar | — | `implicit zero/empty/nested` |

### kuka_driver_interfaces/msg/HardwareEvent

`Ros2Kuka_driver_interfacesMsgHardwareEvent`; 5..517 canonical bytes. Codec identity: `UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `robot_name` | `string` | scalar | 512 | `implicit zero/empty/nested` |
| `event` | `uint8` | scalar | — | `implicit zero/empty/nested` |

### kuka_driver_interfaces/msg/KssStatus

`Ros2Kuka_driver_interfacesMsgKssStatus`; 9..9 canonical bytes. Codec identity: `UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `control_mode` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `cycle_time` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `drives_powered` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `emergency_stop` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `guard_stop` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `in_motion` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `motion_possible` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `operation_mode` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `robot_stopped` | `bool` | scalar | — | `implicit zero/empty/nested` |

Original constants: `UNSPECIFIED: uint8 = 0`; `JOINT_POSITION_CONTROL: uint8 = 1`; `CARTESIAN_POSITION_CONTROL: uint8 = 5`; `RSI_4MS: uint8 = 1`; `RSI_12MS: uint8 = 2`; `T1: uint8 = 1`; `T2: uint8 = 2`; `AUT: uint8 = 3`; `EXT: uint8 = 4`.

### kuka_driver_interfaces/msg/KssStatusArray

`Ros2Kuka_driver_interfacesMsgKssStatusArray`; 8..1240 canonical bytes. Codec identity: `UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `robot_names` | `string` | sequence | 16 | `implicit zero/empty/nested` |
| `statuses` | `kuka_driver_interfaces/msg/KssStatus` | sequence | 16 | `implicit zero/empty/nested` |

### lifecycle_msgs/msg/State

`Ros2Lifecycle_msgsMsgState`; 5..517 canonical bytes. Codec identity: `UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `id` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `label` | `string` | scalar | 512 | `implicit zero/empty/nested` |

Original constants: `PRIMARY_STATE_UNKNOWN: uint8 = 0`; `PRIMARY_STATE_UNCONFIGURED: uint8 = 1`; `PRIMARY_STATE_INACTIVE: uint8 = 2`; `PRIMARY_STATE_ACTIVE: uint8 = 3`; `PRIMARY_STATE_FINALIZED: uint8 = 4`; `TRANSITION_STATE_CONFIGURING: uint8 = 10`; `TRANSITION_STATE_CLEANINGUP: uint8 = 11`; `TRANSITION_STATE_SHUTTINGDOWN: uint8 = 12`; `TRANSITION_STATE_ACTIVATING: uint8 = 13`; `TRANSITION_STATE_DEACTIVATING: uint8 = 14`; `TRANSITION_STATE_ERRORPROCESSING: uint8 = 15`.

### lifecycle_msgs/msg/Transition

`Ros2Lifecycle_msgsMsgTransition`; 5..517 canonical bytes. Codec identity: `UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `id` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `label` | `string` | scalar | 512 | `implicit zero/empty/nested` |

Original constants: `TRANSITION_CREATE: uint8 = 0`; `TRANSITION_CONFIGURE: uint8 = 1`; `TRANSITION_CLEANUP: uint8 = 2`; `TRANSITION_ACTIVATE: uint8 = 3`; `TRANSITION_DEACTIVATE: uint8 = 4`; `TRANSITION_UNCONFIGURED_SHUTDOWN: uint8 = 5`; `TRANSITION_INACTIVE_SHUTDOWN: uint8 = 6`; `TRANSITION_ACTIVE_SHUTDOWN: uint8 = 7`; `TRANSITION_DESTROY: uint8 = 8`; `TRANSITION_ON_CONFIGURE_SUCCESS: uint8 = 10`; `TRANSITION_ON_CONFIGURE_FAILURE: uint8 = 11`; `TRANSITION_ON_CONFIGURE_ERROR: uint8 = 12`; `TRANSITION_ON_CLEANUP_SUCCESS: uint8 = 20`; `TRANSITION_ON_CLEANUP_FAILURE: uint8 = 21`; `TRANSITION_ON_CLEANUP_ERROR: uint8 = 22`; `TRANSITION_ON_ACTIVATE_SUCCESS: uint8 = 30`; `TRANSITION_ON_ACTIVATE_FAILURE: uint8 = 31`; `TRANSITION_ON_ACTIVATE_ERROR: uint8 = 32`; `TRANSITION_ON_DEACTIVATE_SUCCESS: uint8 = 40`; `TRANSITION_ON_DEACTIVATE_FAILURE: uint8 = 41`; `TRANSITION_ON_DEACTIVATE_ERROR: uint8 = 42`; `TRANSITION_ON_SHUTDOWN_SUCCESS: uint8 = 50`; `TRANSITION_ON_SHUTDOWN_FAILURE: uint8 = 51`; `TRANSITION_ON_SHUTDOWN_ERROR: uint8 = 52`; `TRANSITION_ON_ERROR_SUCCESS: uint8 = 60`; `TRANSITION_ON_ERROR_FAILURE: uint8 = 61`; `TRANSITION_ON_ERROR_ERROR: uint8 = 62`; `TRANSITION_CALLBACK_SUCCESS: uint8 = 97`; `TRANSITION_CALLBACK_FAILURE: uint8 = 98`; `TRANSITION_CALLBACK_ERROR: uint8 = 99`.

### lifecycle_msgs/srv/ChangeState_Request

`Ros2Lifecycle_msgsSrvChangeState_Request`; 5..517 canonical bytes. Codec identity: `UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `transition` | `lifecycle_msgs/msg/Transition` | scalar | — | `implicit zero/empty/nested` |

### lifecycle_msgs/srv/ChangeState_Response

`Ros2Lifecycle_msgsSrvChangeState_Response`; 1..1 canonical bytes. Codec identity: `UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### lifecycle_msgs/srv/GetState_Request

`Ros2Lifecycle_msgsSrvGetState_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### lifecycle_msgs/srv/GetState_Response

`Ros2Lifecycle_msgsSrvGetState_Response`; 5..517 canonical bytes. Codec identity: `UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `current_state` | `lifecycle_msgs/msg/State` | scalar | — | `implicit zero/empty/nested` |

### sensor_msgs/msg/JointState

`Ros2Sensor_msgsMsgJointState`; 28..1196 canonical bytes. Codec identity: `UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `name` | `string` | sequence | 12 | `implicit zero/empty/nested` |
| `position` | `float64` | sequence | 12 | `implicit zero/empty/nested` |
| `velocity` | `float64` | sequence | 12 | `implicit zero/empty/nested` |
| `effort` | `float64` | sequence | 12 | `implicit zero/empty/nested` |

### std_srvs/srv/Trigger_Request

`Ros2Std_srvsSrvTrigger_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### std_srvs/srv/Trigger_Response

`Ros2Std_srvsSrvTrigger_Response`; 5..517 canonical bytes. Codec identity: `UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `message` | `string` | scalar | 512 | `implicit zero/empty/nested` |
