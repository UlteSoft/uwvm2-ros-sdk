# hello_robot 完整 API 目录

本目录逐项保留原声明、字段顺序、位宽、常量、默认值和 SDK 容量。目录身份不等于原生 ROS 注册身份；测试状态记录在交付目录的 coverage.json。

## mobile_fjt_humble

ros2: 17 records, 0 services, 1 actions.

Catalog: `share/platform/hello_robot/catalogs/mobile_fjt_humble/catalog.json`. Source pins: `source-lock.json`.

上游来源: `{'upstream_sources': [{'repository': 'hello-robot/stretch_ros2', 'commit': '751e701b87d6f34dd26df1c4abc39229d68e60ff', 'branch': 'humble'}, {'repository': 'hello-robot/stretch_body', 'commit': '92c9db0cc9ade6535f822e83bbf10cbd0c68136a'}]}`.

### builtin_interfaces/msg/Duration

`Ros2Builtin_interfacesMsgDuration`; 8..8 canonical bytes. `UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4`.

| 字段 | 类型 | 形状/容量 | UTF-8/字节容量 | 原始默认值 |
| --- | --- | --- | --- | --- |
| sec | int32 | scalar | 0 | None |
| nanosec | uint32 | scalar | 0 | None |

### builtin_interfaces/msg/Time

`Ros2Builtin_interfacesMsgTime`; 8..8 canonical bytes. `UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`.

| 字段 | 类型 | 形状/容量 | UTF-8/字节容量 | 原始默认值 |
| --- | --- | --- | --- | --- |
| sec | int32 | scalar | 0 | None |
| nanosec | uint32 | scalar | 0 | None |

### std_msgs/msg/Header

`Ros2Std_msgsMsgHeader`; 12..140 canonical bytes. `UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96`.

| 字段 | 类型 | 形状/容量 | UTF-8/字节容量 | 原始默认值 |
| --- | --- | --- | --- | --- |
| stamp | builtin_interfaces/msg/Time | scalar | 0 | None |
| frame_id | string | scalar | 128 | None |

### trajectory_msgs/msg/JointTrajectoryPoint

`Ros2Trajectory_msgsMsgJointTrajectoryPoint`; 24..280 canonical bytes. `UWVMROS1_a512b971211baa8604440e02a046b586e7970293242607002ceb89196c9d99b1`.

| 字段 | 类型 | 形状/容量 | UTF-8/字节容量 | 原始默认值 |
| --- | --- | --- | --- | --- |
| positions | float64 | sequence/8 | 0 | None |
| velocities | float64 | sequence/8 | 0 | None |
| accelerations | float64 | sequence/8 | 0 | None |
| effort | float64 | sequence/8 | 0 | None |
| time_from_start | builtin_interfaces/msg/Duration | scalar | 0 | None |

### trajectory_msgs/msg/JointTrajectory

`Ros2Trajectory_msgsMsgJointTrajectory`; 20..1484 canonical bytes. `UWVMROS1_e32bd7016b5fefcab6adeb42072e2d56c45d4b9f7cb372bdb5bfac97abf8cb77`.

| 字段 | 类型 | 形状/容量 | UTF-8/字节容量 | 原始默认值 |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| joint_names | string | sequence/8 | 128 | None |
| points | trajectory_msgs/msg/JointTrajectoryPoint | sequence/1 | 0 | None |

### geometry_msgs/msg/Vector3

`Ros2Geometry_msgsMsgVector3`; 24..24 canonical bytes. `UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`.

| 字段 | 类型 | 形状/容量 | UTF-8/字节容量 | 原始默认值 |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | 0 | None |
| y | float64 | scalar | 0 | None |
| z | float64 | scalar | 0 | None |

### geometry_msgs/msg/Quaternion

`Ros2Geometry_msgsMsgQuaternion`; 32..32 canonical bytes. `UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`.

| 字段 | 类型 | 形状/容量 | UTF-8/字节容量 | 原始默认值 |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | 0 | 0.0 |
| y | float64 | scalar | 0 | 0.0 |
| z | float64 | scalar | 0 | 0.0 |
| w | float64 | scalar | 0 | 1.0 |

### geometry_msgs/msg/Transform

`Ros2Geometry_msgsMsgTransform`; 56..56 canonical bytes. `UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b`.

| 字段 | 类型 | 形状/容量 | UTF-8/字节容量 | 原始默认值 |
| --- | --- | --- | --- | --- |
| translation | geometry_msgs/msg/Vector3 | scalar | 0 | None |
| rotation | geometry_msgs/msg/Quaternion | scalar | 0 | None |

### geometry_msgs/msg/Twist

`Ros2Geometry_msgsMsgTwist`; 48..48 canonical bytes. `UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e`.

| 字段 | 类型 | 形状/容量 | UTF-8/字节容量 | 原始默认值 |
| --- | --- | --- | --- | --- |
| linear | geometry_msgs/msg/Vector3 | scalar | 0 | None |
| angular | geometry_msgs/msg/Vector3 | scalar | 0 | None |

### trajectory_msgs/msg/MultiDOFJointTrajectoryPoint

`Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint`; 20..844 canonical bytes. `UWVMROS1_4b4b6ba78f11918fcdc138544f7ef1a140d1fc51b385349ab1ad5716472c3daf`.

| 字段 | 类型 | 形状/容量 | UTF-8/字节容量 | 原始默认值 |
| --- | --- | --- | --- | --- |
| transforms | geometry_msgs/msg/Transform | sequence/1 | 0 | None |
| velocities | geometry_msgs/msg/Twist | sequence/8 | 0 | None |
| accelerations | geometry_msgs/msg/Twist | sequence/8 | 0 | None |
| time_from_start | builtin_interfaces/msg/Duration | scalar | 0 | None |

### trajectory_msgs/msg/MultiDOFJointTrajectory

`Ros2Trajectory_msgsMsgMultiDOFJointTrajectory`; 20..2048 canonical bytes. `UWVMROS1_b822a2d5db9b83e916dcc9db4932952a314773ef53c9fbaf825902e0eb7c8cb5`.

| 字段 | 类型 | 形状/容量 | UTF-8/字节容量 | 原始默认值 |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| joint_names | string | sequence/8 | 128 | None |
| points | trajectory_msgs/msg/MultiDOFJointTrajectoryPoint | sequence/1 | 0 | None |

### control_msgs/msg/JointTolerance

`Ros2Control_msgsMsgJointTolerance`; 28..156 canonical bytes. `UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a`.

| 字段 | 类型 | 形状/容量 | UTF-8/字节容量 | 原始默认值 |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | None |
| position | float64 | scalar | 0 | None |
| velocity | float64 | scalar | 0 | None |
| acceleration | float64 | scalar | 0 | None |

### control_msgs/msg/JointComponentTolerance

`Ros2Control_msgsMsgJointComponentTolerance`; 30..158 canonical bytes. `UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb`.

| 字段 | 类型 | 形状/容量 | UTF-8/字节容量 | 原始默认值 |
| --- | --- | --- | --- | --- |
| joint_name | string | scalar | 128 | None |
| component | uint16 | scalar | 0 | None |
| position | float64 | scalar | 0 | None |
| velocity | float64 | scalar | 0 | None |
| acceleration | float64 | scalar | 0 | None |

常量（不占实例 wire 字节）：
- `X_AXIS` (uint16): `1`
- `Y_AXIS` (uint16): `2`
- `Z_AXIS` (uint16): `3`
- `TRANSLATION` (uint16): `4`
- `ROTATION` (uint16): `5`

### control_msgs/action/FollowJointTrajectory_Goal

`Ros2Control_msgsActionFollowJointTrajectory_Goal`; 64..8580 canonical bytes. `UWVMROS1_fa8334eb129cc91c50febaccfebb371f6fbdd82188d6301823344d6664300018`.

| 字段 | 类型 | 形状/容量 | UTF-8/字节容量 | 原始默认值 |
| --- | --- | --- | --- | --- |
| trajectory | trajectory_msgs/msg/JointTrajectory | scalar | 0 | None |
| multi_dof_trajectory | trajectory_msgs/msg/MultiDOFJointTrajectory | scalar | 0 | None |
| path_tolerance | control_msgs/msg/JointTolerance | sequence/8 | 0 | None |
| component_path_tolerance | control_msgs/msg/JointComponentTolerance | sequence/8 | 0 | None |
| goal_tolerance | control_msgs/msg/JointTolerance | sequence/8 | 0 | None |
| component_goal_tolerance | control_msgs/msg/JointComponentTolerance | sequence/8 | 0 | None |
| goal_time_tolerance | builtin_interfaces/msg/Duration | scalar | 0 | None |

### control_msgs/action/FollowJointTrajectory_Result

`Ros2Control_msgsActionFollowJointTrajectory_Result`; 8..264 canonical bytes. `UWVMROS1_df1e08076a5c725b865cc8807462d9ccf9577df11cbb71fcc0d280d77d0e5649`.

| 字段 | 类型 | 形状/容量 | UTF-8/字节容量 | 原始默认值 |
| --- | --- | --- | --- | --- |
| error_code | int32 | scalar | 0 | None |
| error_string | string | scalar | 256 | None |

常量（不占实例 wire 字节）：
- `SUCCESSFUL` (int32): `0`
- `INVALID_GOAL` (int32): `-1`
- `INVALID_JOINTS` (int32): `-2`
- `OLD_HEADER_TIMESTAMP` (int32): `-3`
- `PATH_TOLERANCE_VIOLATED` (int32): `-4`
- `GOAL_TOLERANCE_VIOLATED` (int32): `-5`

### control_msgs/action/FollowJointTrajectory_Feedback

`Ros2Control_msgsActionFollowJointTrajectory_Feedback`; 152..4708 canonical bytes. `UWVMROS1_ae2175027c3e45997d272b9610d15ef52cc665d23c0a371892d10b3d100e3529`.

| 字段 | 类型 | 形状/容量 | UTF-8/字节容量 | 原始默认值 |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| joint_names | string | sequence/8 | 128 | None |
| desired | trajectory_msgs/msg/JointTrajectoryPoint | scalar | 0 | None |
| actual | trajectory_msgs/msg/JointTrajectoryPoint | scalar | 0 | None |
| error | trajectory_msgs/msg/JointTrajectoryPoint | scalar | 0 | None |
| multi_dof_joint_names | string | sequence/1 | 128 | None |
| multi_dof_desired | trajectory_msgs/msg/MultiDOFJointTrajectoryPoint | scalar | 0 | None |
| multi_dof_actual | trajectory_msgs/msg/MultiDOFJointTrajectoryPoint | scalar | 0 | None |
| multi_dof_error | trajectory_msgs/msg/MultiDOFJointTrajectoryPoint | scalar | 0 | None |

### sensor_msgs/msg/JointState

`Ros2Sensor_msgsMsgJointState`; 28..1404 canonical bytes. `UWVMROS1_bba20c36db70a98b594ba603d05b8a979038fb95b701221ba3b8689f55b06b11`.

| 字段 | 类型 | 形状/容量 | UTF-8/字节容量 | 原始默认值 |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| name | string | sequence/8 | 128 | None |
| position | float64 | sequence/8 | 0 | None |
| velocity | float64 | sequence/8 | 0 | None |
| effort | float64 | sequence/8 | 0 | None |

### 完整协议组件

- `builtin_interfaces/msg/Duration` (message): `{'message': {'version': 2, 'name': 'builtin_interfaces/msg/Duration', 'members': [{'name': 'sec', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'nanosec', 'type': 'uint32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interfaces/upstream/rcl_humble/builtin_interfaces/msg/Duration.msg', 'bytes': 497, 'sha256': 'a8f4349a6332f8576f9dfe24cf77a751abb115cfd1310dab9b774e3602516f39'}, 'component': '', 'owner': 'builtin_interfaces/msg/Duration', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8, 'constants': []}}`.
- `builtin_interfaces/msg/Time` (message): `{'message': {'version': 2, 'name': 'builtin_interfaces/msg/Time', 'members': [{'name': 'sec', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'nanosec', 'type': 'uint32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interfaces/upstream/rcl_humble/builtin_interfaces/msg/Time.msg', 'bytes': 420, 'sha256': '0e6f429967a29ba34b224c5c0236c938084e82ee1279deeaf0666768cba220ae'}, 'component': '', 'owner': 'builtin_interfaces/msg/Time', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8, 'constants': []}}`.
- `control_msgs/action/FollowJointTrajectory` (action): `{'goal': {'version': 2, 'name': 'control_msgs/action/FollowJointTrajectory_Goal', 'members': [{'name': 'trajectory', 'type': 'trajectory_msgs/msg/JointTrajectory', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'multi_dof_trajectory', 'type': 'trajectory_msgs/msg/MultiDOFJointTrajectory', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'path_tolerance', 'type': 'control_msgs/msg/JointTolerance', 'array': 'sequence', 'count': 8, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'component_path_tolerance', 'type': 'control_msgs/msg/JointComponentTolerance', 'array': 'sequence', 'count': 8, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'goal_tolerance', 'type': 'control_msgs/msg/JointTolerance', 'array': 'sequence', 'count': 8, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'component_goal_tolerance', 'type': 'control_msgs/msg/JointComponentTolerance', 'array': 'sequence', 'count': 8, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'goal_time_tolerance', 'type': 'builtin_interfaces/msg/Duration', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interfaces/upstream/control_humble/control_msgs/action/FollowJointTrajectory.action', 'bytes': 2551, 'sha256': '31a124428ee490da22c15cc70a9ac2c89d07bbbba7d3bf370ca7596b229cb9f0'}, 'component': 'goal', 'owner': 'control_msgs/action/FollowJointTrajectory', 'kind': 'action', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 64, 'maximum': 8580, 'nodes': 417, 'depth': 8, 'codec_identity': 'UWVMROS1_fa8334eb129cc91c50febaccfebb371f6fbdd82188d6301823344d6664300018', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8580, 'constants': []}, 'result': {'version': 2, 'name': 'control_msgs/action/FollowJointTrajectory_Result', 'members': [{'name': 'error_code', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'error_string', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interfaces/upstream/control_humble/control_msgs/action/FollowJointTrajectory.action', 'bytes': 2551, 'sha256': '31a124428ee490da22c15cc70a9ac2c89d07bbbba7d3bf370ca7596b229cb9f0'}, 'component': 'result', 'owner': 'control_msgs/action/FollowJointTrajectory', 'kind': 'action', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 264, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_df1e08076a5c725b865cc8807462d9ccf9577df11cbb71fcc0d280d77d0e5649', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 264, 'constants': [{'name': 'SUCCESSFUL', 'type': 'int32', 'native_type': 'int32', 'literal': '0', 'value': '0'}, {'name': 'INVALID_GOAL', 'type': 'int32', 'native_type': 'int32', 'literal': '-1', 'value': '-1'}, {'name': 'INVALID_JOINTS', 'type': 'int32', 'native_type': 'int32', 'literal': '-2', 'value': '-2'}, {'name': 'OLD_HEADER_TIMESTAMP', 'type': 'int32', 'native_type': 'int32', 'literal': '-3', 'value': '-3'}, {'name': 'PATH_TOLERANCE_VIOLATED', 'type': 'int32', 'native_type': 'int32', 'literal': '-4', 'value': '-4'}, {'name': 'GOAL_TOLERANCE_VIOLATED', 'type': 'int32', 'native_type': 'int32', 'literal': '-5', 'value': '-5'}]}, 'feedback': {'version': 2, 'name': 'control_msgs/action/FollowJointTrajectory_Feedback', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_names', 'type': 'string', 'array': 'sequence', 'count': 8, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'desired', 'type': 'trajectory_msgs/msg/JointTrajectoryPoint', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'actual', 'type': 'trajectory_msgs/msg/JointTrajectoryPoint', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'error', 'type': 'trajectory_msgs/msg/JointTrajectoryPoint', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'multi_dof_joint_names', 'type': 'string', 'array': 'sequence', 'count': 1, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'multi_dof_desired', 'type': 'trajectory_msgs/msg/MultiDOFJointTrajectoryPoint', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'multi_dof_actual', 'type': 'trajectory_msgs/msg/MultiDOFJointTrajectoryPoint', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'multi_dof_error', 'type': 'trajectory_msgs/msg/MultiDOFJointTrajectoryPoint', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interfaces/upstream/control_humble/control_msgs/action/FollowJointTrajectory.action', 'bytes': 2551, 'sha256': '31a124428ee490da22c15cc70a9ac2c89d07bbbba7d3bf370ca7596b229cb9f0'}, 'component': 'feedback', 'owner': 'control_msgs/action/FollowJointTrajectory', 'kind': 'action', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 152, 'maximum': 4708, 'nodes': 620, 'depth': 6, 'codec_identity': 'UWVMROS1_ae2175027c3e45997d272b9610d15ef52cc665d23c0a371892d10b3d100e3529', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4708, 'constants': []}}`.
- `control_msgs/msg/JointComponentTolerance` (message): `{'message': {'version': 2, 'name': 'control_msgs/msg/JointComponentTolerance', 'members': [{'name': 'joint_name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'component', 'type': 'uint16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'position', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'velocity', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'acceleration', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interfaces/upstream/control_humble/control_msgs/msg/JointComponentTolerance.msg', 'bytes': 1161, 'sha256': '6b09271d0f74e0a3a701f3ddb997b0ad4a588bdd9ab7d7899ddc70063ba924dd'}, 'component': '', 'owner': 'control_msgs/msg/JointComponentTolerance', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 30, 'maximum': 158, 'nodes': 6, 'depth': 2, 'codec_identity': 'UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 158, 'constants': [{'name': 'X_AXIS', 'type': 'uint16', 'native_type': 'uint16', 'literal': '1', 'value': '1'}, {'name': 'Y_AXIS', 'type': 'uint16', 'native_type': 'uint16', 'literal': '2', 'value': '2'}, {'name': 'Z_AXIS', 'type': 'uint16', 'native_type': 'uint16', 'literal': '3', 'value': '3'}, {'name': 'TRANSLATION', 'type': 'uint16', 'native_type': 'uint16', 'literal': '4', 'value': '4'}, {'name': 'ROTATION', 'type': 'uint16', 'native_type': 'uint16', 'literal': '5', 'value': '5'}]}}`.
- `control_msgs/msg/JointTolerance` (message): `{'message': {'version': 2, 'name': 'control_msgs/msg/JointTolerance', 'members': [{'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'position', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'velocity', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'acceleration', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interfaces/upstream/control_humble/control_msgs/msg/JointTolerance.msg', 'bytes': 724, 'sha256': '8208718f17c1b1feb9418c3ed7ca73d029566cbf298ecda819c9e0b78cb379d3'}, 'component': '', 'owner': 'control_msgs/msg/JointTolerance', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 28, 'maximum': 156, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 156, 'constants': []}}`.
- `geometry_msgs/msg/Quaternion` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Quaternion', 'members': [{'name': 'x', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': '0.0', 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'y', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': '0.0', 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'z', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': '0.0', 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'w', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': '1.0', 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interfaces/upstream/common_humble/geometry_msgs/msg/Quaternion.msg', 'bytes': 116, 'sha256': '298495eb67a139642ffd37cc9029eae085e6c39a8789828b7517868a487939ed'}, 'component': '', 'owner': 'geometry_msgs/msg/Quaternion', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 32, 'maximum': 32, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 32, 'constants': []}}`.
- `geometry_msgs/msg/Transform` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Transform', 'members': [{'name': 'translation', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'rotation', 'type': 'geometry_msgs/msg/Quaternion', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interfaces/upstream/common_humble/geometry_msgs/msg/Transform.msg', 'bytes': 118, 'sha256': 'c8916279f0a429dd9561158bd2133bc4e2d780277c3c594116b240a27e7a2993'}, 'component': '', 'owner': 'geometry_msgs/msg/Transform', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 56, 'maximum': 56, 'nodes': 10, 'depth': 3, 'codec_identity': 'UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 56, 'constants': []}}`.
- `geometry_msgs/msg/Twist` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Twist', 'members': [{'name': 'linear', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angular', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interfaces/upstream/common_humble/geometry_msgs/msg/Twist.msg', 'bytes': 116, 'sha256': 'ed471ef861f65af991b1f64d66ef941dd41dd4c0702f6222512b1a16c62d58b0'}, 'component': '', 'owner': 'geometry_msgs/msg/Twist', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 48, 'maximum': 48, 'nodes': 9, 'depth': 3, 'codec_identity': 'UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 48, 'constants': []}}`.
- `geometry_msgs/msg/Vector3` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Vector3', 'members': [{'name': 'x', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'y', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'z', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interfaces/upstream/common_humble/geometry_msgs/msg/Vector3.msg', 'bytes': 251, 'sha256': 'd8b9ea9aad1f424faf4d2b94dae1e1368af1e5d59de11aeed019399cff7f9e1d'}, 'component': '', 'owner': 'geometry_msgs/msg/Vector3', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 24, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 24, 'constants': []}}`.
- `sensor_msgs/msg/JointState` (message): `{'message': {'version': 2, 'name': 'sensor_msgs/msg/JointState', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': 'sequence', 'count': 8, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'position', 'type': 'float64', 'array': 'sequence', 'count': 8, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'velocity', 'type': 'float64', 'array': 'sequence', 'count': 8, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'effort', 'type': 'float64', 'array': 'sequence', 'count': 8, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interfaces/upstream/common_humble/sensor_msgs/msg/JointState.msg', 'bytes': 999, 'sha256': '711d1771a002c7190e5bbe746a163a67477c1e2a45482a64f1fe339815ca6f5d'}, 'component': '', 'owner': 'sensor_msgs/msg/JointState', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 28, 'maximum': 1404, 'nodes': 42, 'depth': 4, 'codec_identity': 'UWVMROS1_bba20c36db70a98b594ba603d05b8a979038fb95b701221ba3b8689f55b06b11', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 1404, 'constants': []}}`.
- `std_msgs/msg/Header` (message): `{'message': {'version': 2, 'name': 'std_msgs/msg/Header', 'members': [{'name': 'stamp', 'type': 'builtin_interfaces/msg/Time', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'frame_id', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interfaces/upstream/common_humble/std_msgs/msg/Header.msg', 'bytes': 322, 'sha256': 'd2cea14630e39ed0fa5b432ba9160a7c38855b9427d3344f99e83e83facb53c2'}, 'component': '', 'owner': 'std_msgs/msg/Header', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 140, 'nodes': 5, 'depth': 3, 'codec_identity': 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 140, 'constants': []}}`.
- `trajectory_msgs/msg/JointTrajectory` (message): `{'message': {'version': 2, 'name': 'trajectory_msgs/msg/JointTrajectory', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_names', 'type': 'string', 'array': 'sequence', 'count': 8, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'points', 'type': 'trajectory_msgs/msg/JointTrajectoryPoint', 'array': 'sequence', 'count': 1, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interfaces/upstream/common_humble/trajectory_msgs/msg/JointTrajectory.msg', 'bytes': 465, 'sha256': 'd63cda4a5ec81824ed4acd737e6b5903449fb1a7e2f5cdcdcc4c49285f01117c'}, 'component': '', 'owner': 'trajectory_msgs/msg/JointTrajectory', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 20, 'maximum': 1484, 'nodes': 56, 'depth': 5, 'codec_identity': 'UWVMROS1_e32bd7016b5fefcab6adeb42072e2d56c45d4b9f7cb372bdb5bfac97abf8cb77', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 1484, 'constants': []}}`.
- `trajectory_msgs/msg/JointTrajectoryPoint` (message): `{'message': {'version': 2, 'name': 'trajectory_msgs/msg/JointTrajectoryPoint', 'members': [{'name': 'positions', 'type': 'float64', 'array': 'sequence', 'count': 8, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'velocities', 'type': 'float64', 'array': 'sequence', 'count': 8, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'accelerations', 'type': 'float64', 'array': 'sequence', 'count': 8, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'effort', 'type': 'float64', 'array': 'sequence', 'count': 8, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'time_from_start', 'type': 'builtin_interfaces/msg/Duration', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interfaces/upstream/common_humble/trajectory_msgs/msg/JointTrajectoryPoint.msg', 'bytes': 1176, 'sha256': '2358055d26d27c0c302e921f90d5aa59cb5feb3e22937f8ac98314b0c52ba8f4'}, 'component': '', 'owner': 'trajectory_msgs/msg/JointTrajectoryPoint', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 280, 'nodes': 40, 'depth': 3, 'codec_identity': 'UWVMROS1_a512b971211baa8604440e02a046b586e7970293242607002ceb89196c9d99b1', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 280, 'constants': []}}`.
- `trajectory_msgs/msg/MultiDOFJointTrajectory` (message): `{'message': {'version': 2, 'name': 'trajectory_msgs/msg/MultiDOFJointTrajectory', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_names', 'type': 'string', 'array': 'sequence', 'count': 8, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'points', 'type': 'trajectory_msgs/msg/MultiDOFJointTrajectoryPoint', 'array': 'sequence', 'count': 1, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interfaces/upstream/common_humble/trajectory_msgs/msg/MultiDOFJointTrajectory.msg', 'bytes': 485, 'sha256': '070af6b4c9f4238d9de36621105d78c999dbad2045d0cb2a633f86a17f73f6b7'}, 'component': '', 'owner': 'trajectory_msgs/msg/MultiDOFJointTrajectory', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 20, 'maximum': 2048, 'nodes': 177, 'depth': 7, 'codec_identity': 'UWVMROS1_b822a2d5db9b83e916dcc9db4932952a314773ef53c9fbaf825902e0eb7c8cb5', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 2048, 'constants': []}}`.
- `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` (message): `{'message': {'version': 2, 'name': 'trajectory_msgs/msg/MultiDOFJointTrajectoryPoint', 'members': [{'name': 'transforms', 'type': 'geometry_msgs/msg/Transform', 'array': 'sequence', 'count': 1, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'velocities', 'type': 'geometry_msgs/msg/Twist', 'array': 'sequence', 'count': 8, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'accelerations', 'type': 'geometry_msgs/msg/Twist', 'array': 'sequence', 'count': 8, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'time_from_start', 'type': 'builtin_interfaces/msg/Duration', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interfaces/upstream/common_humble/trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.msg', 'bytes': 427, 'sha256': '7e3a4b150ff7ce8d7d897a480d8d324a244a0afb4a07fdf6241074071170ac7a'}, 'component': '', 'owner': 'trajectory_msgs/msg/MultiDOFJointTrajectoryPoint', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 20, 'maximum': 844, 'nodes': 161, 'depth': 5, 'codec_identity': 'UWVMROS1_4b4b6ba78f11918fcdc138544f7ef1a140d1fc51b385349ab1ad5716472c3daf', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 844, 'constants': []}}`.

