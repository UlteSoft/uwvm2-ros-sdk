# flexiv 完整接口参考

字段保持官方定义的顺序、类型及单位；SDK 容量约束与原生 ROS 上限分别记录。

## ros1_noetic

`ros1` / `noetic` / `flexiv-ros1-noetic-complete`

原始定义与所有服务、动作组件均保留。规范编码不是 DDS CDR 或 ROS1 TCPROS 字节。

### `flexiv_msgs/JointPosVel`

Kind: `message`. Components: `message=Ros1Flexiv_msgsJointPosVel`.

### `flexiv_msgs/Mode`

Kind: `message`. Components: `message=Ros1Flexiv_msgsMode`.

### `flexiv_msgs/RobotStates`

Kind: `message`. Components: `message=Ros1Flexiv_msgsRobotStates`.

### `geometry_msgs/Accel`

Kind: `message`. Components: `message=Ros1Geometry_msgsAccel`.

### `geometry_msgs/Point`

Kind: `message`. Components: `message=Ros1Geometry_msgsPoint`.

### `geometry_msgs/Pose`

Kind: `message`. Components: `message=Ros1Geometry_msgsPose`.

### `geometry_msgs/Quaternion`

Kind: `message`. Components: `message=Ros1Geometry_msgsQuaternion`.

### `geometry_msgs/Vector3`

Kind: `message`. Components: `message=Ros1Geometry_msgsVector3`.

### `geometry_msgs/Wrench`

Kind: `message`. Components: `message=Ros1Geometry_msgsWrench`.

### `Ros1Flexiv_msgsJointPosVel`

Original: `flexiv_msgs/JointPosVel`. Canonical extent: 112..112 bytes. Semantic rule: `none`.

`UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `positions` | `float64` | array | 7 elements | undeclared | finite |  |
| `velocities` | `float64` | array | 7 elements | undeclared | finite |  |


### `Ros1Flexiv_msgsMode`

Original: `flexiv_msgs/Mode`. Canonical extent: 1..1 bytes. Semantic rule: `none`.

`UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `mode` | `int8` | scalar |  | undeclared | finite |  |

- `MODE_UNKNOWN`: `int8` = `-1`.
- `MODE_IDLE`: `int8` = `0`.
- `MODE_RT_JOINT_TORQUE`: `int8` = `1`.
- `MODE_RT_JOINT_POSITION`: `int8` = `2`.
- `MODE_NRT_JOINT_POSITION`: `int8` = `3`.
- `MODE_NRT_PLAN_EXECUTION`: `int8` = `4`.
- `MODE_NRT_PRIMITIVE_EXECUTION`: `int8` = `5`.
- `MODE_RT_CARTESIAN_MOTION_FORCE_BASE`: `int8` = `6`.
- `MODE_RT_CARTESIAN_MOTION_FORCE_TCP`: `int8` = `7`.
- `MODE_NRT_CARTESIAN_MOTION_FORCE_BASE`: `int8` = `8`.
- `MODE_NRT_CARTESIAN_MOTION_FORCE_TCP`: `int8` = `9`.

### `Ros1Geometry_msgsPoint`

Original: `geometry_msgs/Point`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This contains the position of a point in free space |
| `y` | `float64` | scalar |  | undeclared | finite |  |
| `z` | `float64` | scalar |  | undeclared | finite |  |


### `Ros1Geometry_msgsQuaternion`

Original: `geometry_msgs/Quaternion`. Canonical extent: 32..32 bytes. Semantic rule: `none`.

`UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This represents an orientation in free space in quaternion form. |
| `y` | `float64` | scalar |  | undeclared | finite |  |
| `z` | `float64` | scalar |  | undeclared | finite |  |
| `w` | `float64` | scalar |  | undeclared | finite |  |


### `Ros1Geometry_msgsPose`

Original: `geometry_msgs/Pose`. Canonical extent: 56..56 bytes. Semantic rule: `none`.

`UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `position` | `geometry_msgs/Point` | scalar |  | undeclared | finite | A representation of pose in free space, composed of position and orientation. |
| `orientation` | `geometry_msgs/Quaternion` | scalar |  | undeclared | finite |  |


### `Ros1Geometry_msgsVector3`

Original: `geometry_msgs/Vector3`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This represents a vector in free space. It is only meant to represent a direction. Therefore, it does not make sense to apply a translation to it (e.g., when applying a generic rigid transformation to a Vector3, tf2 will only apply the rotation). If you want your data to be translatable too, use the geometry_msgs/Point message instead. |
| `y` | `float64` | scalar |  | undeclared | finite |  |
| `z` | `float64` | scalar |  | undeclared | finite |  |


### `Ros1Geometry_msgsAccel`

Original: `geometry_msgs/Accel`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `linear` | `geometry_msgs/Vector3` | scalar |  | undeclared | finite | This expresses acceleration in free space broken into its linear and angular parts. |
| `angular` | `geometry_msgs/Vector3` | scalar |  | undeclared | finite |  |


### `Ros1Geometry_msgsWrench`

Original: `geometry_msgs/Wrench`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `force` | `geometry_msgs/Vector3` | scalar |  | undeclared | finite | This represents force in free space, separated into its linear and angular parts. |
| `torque` | `geometry_msgs/Vector3` | scalar |  | undeclared | finite |  |


### `Ros1Flexiv_msgsRobotStates`

Original: `flexiv_msgs/RobotStates`. Canonical extent: 864..864 bytes. Semantic rule: `none`.

`UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `q` | `float64` | array | 7 elements | undeclared | finite |  |
| `theta` | `float64` | array | 7 elements | undeclared | finite |  |
| `dq` | `float64` | array | 7 elements | undeclared | finite |  |
| `dtheta` | `float64` | array | 7 elements | undeclared | finite |  |
| `tau` | `float64` | array | 7 elements | undeclared | finite |  |
| `tau_des` | `float64` | array | 7 elements | undeclared | finite |  |
| `tau_dot` | `float64` | array | 7 elements | undeclared | finite |  |
| `tau_ext` | `float64` | array | 7 elements | undeclared | finite |  |
| `tcp_pose` | `geometry_msgs/Pose` | scalar |  | undeclared | finite |  |
| `tcp_pose_des` | `geometry_msgs/Pose` | scalar |  | undeclared | finite |  |
| `tcp_vel` | `geometry_msgs/Accel` | scalar |  | undeclared | finite |  |
| `cam_pose` | `geometry_msgs/Pose` | scalar |  | undeclared | finite |  |
| `flange_pose` | `geometry_msgs/Pose` | scalar |  | undeclared | finite |  |
| `ft_sensor_raw` | `geometry_msgs/Wrench` | scalar |  | undeclared | finite |  |
| `ext_wrench_tcp_frame` | `geometry_msgs/Wrench` | scalar |  | undeclared | finite |  |
| `ext_wrench_base_frame` | `geometry_msgs/Wrench` | scalar |  | undeclared | finite |  |


## ros2_foxy

`ros2` / `foxy` / `flexiv-ros2-foxy-complete`

原始定义与所有服务、动作组件均保留。规范编码不是 DDS CDR 或 ROS1 TCPROS 字节。

### `flexiv_msgs/msg/JointPosVel`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgJointPosVel`.

### `flexiv_msgs/msg/Mode`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgMode`.

### `flexiv_msgs/msg/RobotStates`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgRobotStates`.

### `geometry_msgs/msg/Accel`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgAccel`.

### `geometry_msgs/msg/Point`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPoint`.

### `geometry_msgs/msg/Pose`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPose`.

### `geometry_msgs/msg/Quaternion`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgQuaternion`.

### `geometry_msgs/msg/Vector3`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgVector3`.

### `geometry_msgs/msg/Wrench`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgWrench`.

### `Ros2Flexiv_msgsMsgJointPosVel`

Original: `flexiv_msgs/msg/JointPosVel`. Canonical extent: 112..112 bytes. Semantic rule: `none`.

`UWVMROS1_c56feb3a74545187381d2d82c230038aaa70fca3a9243486374d69f3fc3103a8`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `positions` | `float64` | array | 7 elements | undeclared | finite |  |
| `velocities` | `float64` | array | 7 elements | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgMode`

Original: `flexiv_msgs/msg/Mode`. Canonical extent: 1..1 bytes. Semantic rule: `none`.

`UWVMROS1_285581852d18aa98aa5f42e3d920b263b9bc6907766f17daa503c58e81a2064f`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `mode` | `int8` | scalar |  | undeclared | finite |  |

- `MODE_UNKNOWN`: `int8` = `-1`.
- `MODE_IDLE`: `int8` = `0`.
- `MODE_RT_JOINT_TORQUE`: `int8` = `1`.
- `MODE_RT_JOINT_POSITION`: `int8` = `2`.
- `MODE_NRT_JOINT_POSITION`: `int8` = `3`.
- `MODE_NRT_PLAN_EXECUTION`: `int8` = `4`.
- `MODE_NRT_PRIMITIVE_EXECUTION`: `int8` = `5`.
- `MODE_RT_CARTESIAN_MOTION_FORCE_BASE`: `int8` = `6`.
- `MODE_RT_CARTESIAN_MOTION_FORCE_TCP`: `int8` = `7`.
- `MODE_NRT_CARTESIAN_MOTION_FORCE_BASE`: `int8` = `8`.
- `MODE_NRT_CARTESIAN_MOTION_FORCE_TCP`: `int8` = `9`.

### `Ros2Geometry_msgsMsgPoint`

Original: `geometry_msgs/msg/Point`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This contains the position of a point in free space |
| `y` | `float64` | scalar |  | undeclared | finite |  |
| `z` | `float64` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgQuaternion`

Original: `geometry_msgs/msg/Quaternion`. Canonical extent: 32..32 bytes. Semantic rule: `none`.

`UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | 0.0 | finite | This represents an orientation in free space in quaternion form. |
| `y` | `float64` | scalar |  | 0.0 | finite |  |
| `z` | `float64` | scalar |  | 0.0 | finite |  |
| `w` | `float64` | scalar |  | 1.0 | finite |  |


### `Ros2Geometry_msgsMsgPose`

Original: `geometry_msgs/msg/Pose`. Canonical extent: 56..56 bytes. Semantic rule: `none`.

`UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `position` | `geometry_msgs/msg/Point` | scalar |  | undeclared | finite | A representation of pose in free space, composed of position and orientation. |
| `orientation` | `geometry_msgs/msg/Quaternion` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgVector3`

Original: `geometry_msgs/msg/Vector3`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This represents a vector in free space. This is semantically different than a point. A vector is always anchored at the origin. When a transform is applied to a vector, only the rotational component is applied. |
| `y` | `float64` | scalar |  | undeclared | finite |  |
| `z` | `float64` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgAccel`

Original: `geometry_msgs/msg/Accel`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `linear` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This expresses acceleration in free space broken into its linear and angular parts. |
| `angular` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgWrench`

Original: `geometry_msgs/msg/Wrench`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `force` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This represents force in free space, separated into its linear and angular parts. |
| `torque` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgRobotStates`

Original: `flexiv_msgs/msg/RobotStates`. Canonical extent: 864..864 bytes. Semantic rule: `none`.

`UWVMROS1_ce6c3a354edf285fa22f8cfb509c4a5f33c1ef82b7dc3d749ae1ecd29dde844b`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `q` | `float64` | array | 7 elements | undeclared | finite |  |
| `theta` | `float64` | array | 7 elements | undeclared | finite |  |
| `dq` | `float64` | array | 7 elements | undeclared | finite |  |
| `dtheta` | `float64` | array | 7 elements | undeclared | finite |  |
| `tau` | `float64` | array | 7 elements | undeclared | finite |  |
| `tau_des` | `float64` | array | 7 elements | undeclared | finite |  |
| `tau_dot` | `float64` | array | 7 elements | undeclared | finite |  |
| `tau_ext` | `float64` | array | 7 elements | undeclared | finite |  |
| `tcp_pose` | `geometry_msgs/msg/Pose` | scalar |  | undeclared | finite |  |
| `tcp_pose_des` | `geometry_msgs/msg/Pose` | scalar |  | undeclared | finite |  |
| `tcp_vel` | `geometry_msgs/msg/Accel` | scalar |  | undeclared | finite |  |
| `cam_pose` | `geometry_msgs/msg/Pose` | scalar |  | undeclared | finite |  |
| `flange_pose` | `geometry_msgs/msg/Pose` | scalar |  | undeclared | finite |  |
| `ft_sensor_raw` | `geometry_msgs/msg/Wrench` | scalar |  | undeclared | finite |  |
| `ext_wrench_tcp_frame` | `geometry_msgs/msg/Wrench` | scalar |  | undeclared | finite |  |
| `ext_wrench_base_frame` | `geometry_msgs/msg/Wrench` | scalar |  | undeclared | finite |  |


## ros2_humble_v1

`ros2` / `humble` / `flexiv-ros2-humble-v1-complete`

原始定义与所有服务、动作组件均保留。规范编码不是 DDS CDR 或 ROS1 TCPROS 字节。

### `builtin_interfaces/msg/Time`

Kind: `message`. Components: `message=Ros2Builtin_interfacesMsgTime`.

### `flexiv_msgs/action/ErrorRecovery`

Kind: `action`. Components: `goal=Ros2Flexiv_msgsActionErrorRecovery_Goal`, `result=Ros2Flexiv_msgsActionErrorRecovery_Result`, `feedback=Ros2Flexiv_msgsActionErrorRecovery_Feedback`.

### `flexiv_msgs/action/Grasp`

Kind: `action`. Components: `goal=Ros2Flexiv_msgsActionGrasp_Goal`, `result=Ros2Flexiv_msgsActionGrasp_Result`, `feedback=Ros2Flexiv_msgsActionGrasp_Feedback`.

### `flexiv_msgs/action/Move`

Kind: `action`. Components: `goal=Ros2Flexiv_msgsActionMove_Goal`, `result=Ros2Flexiv_msgsActionMove_Result`, `feedback=Ros2Flexiv_msgsActionMove_Feedback`.

### `flexiv_msgs/msg/CartesianMotionForce`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgCartesianMotionForce`.

### `flexiv_msgs/msg/Digital`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgDigital`.

### `flexiv_msgs/msg/GPIOStates`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgGPIOStates`.

### `flexiv_msgs/msg/JointImpedance`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgJointImpedance`.

### `flexiv_msgs/msg/JointInertiaScale`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgJointInertiaScale`.

### `flexiv_msgs/msg/JointPosVel`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgJointPosVel`.

### `flexiv_msgs/msg/MaxContactTorque`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgMaxContactTorque`.

### `flexiv_msgs/msg/Mode`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgMode`.

### `flexiv_msgs/msg/OperationalStatus`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgOperationalStatus`.

### `flexiv_msgs/msg/RecoveryPolicy`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgRecoveryPolicy`.

### `flexiv_msgs/msg/RobotEvent`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgRobotEvent`.

### `flexiv_msgs/msg/RobotStates`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgRobotStates`.

### `flexiv_msgs/srv/GetOperationalStatus`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvGetOperationalStatus_Request`, `response=Ros2Flexiv_msgsSrvGetOperationalStatus_Response`.

### `flexiv_msgs/srv/SetCartesianImpedance`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetCartesianImpedance_Request`, `response=Ros2Flexiv_msgsSrvSetCartesianImpedance_Response`.

### `flexiv_msgs/srv/SetCartesianMotionLimits`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request`, `response=Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response`.

### `flexiv_msgs/srv/SetForceControlAxis`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetForceControlAxis_Request`, `response=Ros2Flexiv_msgsSrvSetForceControlAxis_Response`.

### `flexiv_msgs/srv/SetForceControlFrame`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetForceControlFrame_Request`, `response=Ros2Flexiv_msgsSrvSetForceControlFrame_Response`.

### `flexiv_msgs/srv/SetJointImpedance`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetJointImpedance_Request`, `response=Ros2Flexiv_msgsSrvSetJointImpedance_Response`.

### `flexiv_msgs/srv/SetJointInertiaScale`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetJointInertiaScale_Request`, `response=Ros2Flexiv_msgsSrvSetJointInertiaScale_Response`.

### `flexiv_msgs/srv/SetMaxContactTorque`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetMaxContactTorque_Request`, `response=Ros2Flexiv_msgsSrvSetMaxContactTorque_Response`.

### `flexiv_msgs/srv/SetMaxContactWrench`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetMaxContactWrench_Request`, `response=Ros2Flexiv_msgsSrvSetMaxContactWrench_Response`.

### `flexiv_msgs/srv/SetNullSpaceObjectives`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request`, `response=Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response`.

### `flexiv_msgs/srv/SetNullSpacePosture`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetNullSpacePosture_Request`, `response=Ros2Flexiv_msgsSrvSetNullSpacePosture_Response`.

### `flexiv_msgs/srv/SetPassiveForceControl`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetPassiveForceControl_Request`, `response=Ros2Flexiv_msgsSrvSetPassiveForceControl_Response`.

### `geometry_msgs/msg/Accel`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgAccel`.

### `geometry_msgs/msg/AccelStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgAccelStamped`.

### `geometry_msgs/msg/Point`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPoint`.

### `geometry_msgs/msg/Pose`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPose`.

### `geometry_msgs/msg/PoseStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPoseStamped`.

### `geometry_msgs/msg/Quaternion`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgQuaternion`.

### `geometry_msgs/msg/Twist`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgTwist`.

### `geometry_msgs/msg/Vector3`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgVector3`.

### `geometry_msgs/msg/Wrench`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgWrench`.

### `geometry_msgs/msg/WrenchStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgWrenchStamped`.

### `std_msgs/msg/Header`

Kind: `message`. Components: `message=Ros2Std_msgsMsgHeader`.

### `Ros2Builtin_interfacesMsgTime`

Original: `builtin_interfaces/msg/Time`. Canonical extent: 8..8 bytes. Semantic rule: `normalized-time`.

`UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `sec` | `int32` | scalar |  | undeclared | finite | This message communicates ROS Time defined here: https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32 values. |
| `nanosec` | `uint32` | scalar |  | undeclared | finite | The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component. e.g. The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The time 1.7 seconds is represented as {sec: 1, nanosec: 7e8} |


### `Ros2Flexiv_msgsActionErrorRecovery_Goal`

Original: `flexiv_msgs/action/ErrorRecovery_Goal`. Canonical extent: 1..1 bytes. Semantic rule: `none`.

`UWVMROS1_255a9d152d16f6abe76bca261fbd19c385548a2f64dd421c58c74dc19f1bfd41`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `run_auto_recovery` | `bool` | scalar |  | False | finite | Recover the robot from a fault back to an operational state. On success the robot is enabled, operational and in IDLE control mode. Restoring the control mode is deliberately left to a controller restart, which re-initializes the controller's own setpoint and so cannot apply a stale pre-fault command. Run RunAutoRecovery() if the robot is in recovery state after a joint position limit violation. This moves the involved joints slowly back into the allowed range and requires a robot reboot afterwards, so it is opt-in. |


### `Ros2Flexiv_msgsActionErrorRecovery_Result`

Original: `flexiv_msgs/action/ErrorRecovery_Result`. Canonical extent: 7..263 bytes. Semantic rule: `none`.

`UWVMROS1_e1f54f9716ae64b5da8c1463f36379fbfffe35ea983a25dcb9db6e09771fcedc`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |
| `requires_controller_restart` | `bool` | scalar |  | undeclared | finite | True when the robot is operational again but controllers must be restarted to resume motion |
| `recovery_policy` | `uint8` | scalar |  | undeclared | finite | Policy that applied to the condition found, values defined in RecoveryPolicy.msg |


### `Ros2Flexiv_msgsActionErrorRecovery_Feedback`

Original: `flexiv_msgs/action/ErrorRecovery_Feedback`. Canonical extent: 9..265 bytes. Semantic rule: `none`.

`UWVMROS1_bf87aae8f76ba18d46ab7985e48a667f6b1ed99a403aa90921c80ae4d4ac197a`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `recovery_state` | `uint8` | scalar |  | undeclared | finite |  |
| `recovery_state_name` | `string` | scalar | 256 bytes | undeclared | finite | Human-readable name of the recovery state above |
| `elapsed_seconds` | `float32` | scalar |  | undeclared | finite | Seconds elapsed since the recovery started |

- `STATE_IDLE`: `uint8` = `0`.
- `STATE_CLASSIFY`: `uint8` = `1`.
- `STATE_STOP`: `uint8` = `2`.
- `STATE_CLEAR_FAULT`: `uint8` = `3`.
- `STATE_WAIT_FAULT_CLEARED`: `uint8` = `4`.
- `STATE_ENABLE`: `uint8` = `5`.
- `STATE_WAIT_OPERATIONAL`: `uint8` = `6`.
- `STATE_UNLOCK_EXTERNAL_AXES`: `uint8` = `7`.
- `STATE_RUN_AUTO_RECOVERY`: `uint8` = `8`.
- `STATE_COMPLETE`: `uint8` = `9`.
- `STATE_FAILED`: `uint8` = `10`.

### `Ros2Flexiv_msgsActionGrasp_Goal`

Original: `flexiv_msgs/action/Grasp_Goal`. Canonical extent: 8..8 bytes. Semantic rule: `none`.

`UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `force` | `float64` | scalar |  | undeclared | finite | N |


### `Ros2Flexiv_msgsActionGrasp_Result`

Original: `flexiv_msgs/action/Grasp_Result`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Flexiv_msgsActionGrasp_Feedback`

Original: `flexiv_msgs/action/Grasp_Feedback`. Canonical extent: 17..17 bytes. Semantic rule: `none`.

`UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `current_width` | `float64` | scalar |  | undeclared | finite | m |
| `current_force` | `float64` | scalar |  | undeclared | finite | N |
| `moving` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsActionMove_Goal`

Original: `flexiv_msgs/action/Move_Goal`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `width` | `float64` | scalar |  | undeclared | finite | m |
| `velocity` | `float64` | scalar |  | undeclared | finite | m/s |
| `max_force` | `float64` | scalar |  | undeclared | finite | N |


### `Ros2Flexiv_msgsActionMove_Result`

Original: `flexiv_msgs/action/Move_Result`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Flexiv_msgsActionMove_Feedback`

Original: `flexiv_msgs/action/Move_Feedback`. Canonical extent: 17..17 bytes. Semantic rule: `none`.

`UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `current_width` | `float64` | scalar |  | undeclared | finite | m |
| `current_force` | `float64` | scalar |  | undeclared | finite | N |
| `moving` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Std_msgsMsgHeader`

Original: `std_msgs/msg/Header`. Canonical extent: 12..268 bytes. Semantic rule: `none`.

`UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `stamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Standard metadata for higher-level stamped data types. This is generally used to communicate timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as seconds and nanoseconds. |
| `frame_id` | `string` | scalar | 256 bytes | undeclared | finite | Transform frame with which this data is associated. |


### `Ros2Geometry_msgsMsgPoint`

Original: `geometry_msgs/msg/Point`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This contains the position of a point in free space |
| `y` | `float64` | scalar |  | undeclared | finite |  |
| `z` | `float64` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgQuaternion`

Original: `geometry_msgs/msg/Quaternion`. Canonical extent: 32..32 bytes. Semantic rule: `none`.

`UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | 0.0 | finite | This represents an orientation in free space in quaternion form. |
| `y` | `float64` | scalar |  | 0.0 | finite |  |
| `z` | `float64` | scalar |  | 0.0 | finite |  |
| `w` | `float64` | scalar |  | 1.0 | finite |  |


### `Ros2Geometry_msgsMsgPose`

Original: `geometry_msgs/msg/Pose`. Canonical extent: 56..56 bytes. Semantic rule: `none`.

`UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `position` | `geometry_msgs/msg/Point` | scalar |  | undeclared | finite | A representation of pose in free space, composed of position and orientation. |
| `orientation` | `geometry_msgs/msg/Quaternion` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgVector3`

Original: `geometry_msgs/msg/Vector3`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This represents a vector in free space. This is semantically different than a point. A vector is always anchored at the origin. When a transform is applied to a vector, only the rotational component is applied. |
| `y` | `float64` | scalar |  | undeclared | finite |  |
| `z` | `float64` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgWrench`

Original: `geometry_msgs/msg/Wrench`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `force` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This represents force in free space, separated into its linear and angular parts. |
| `torque` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgTwist`

Original: `geometry_msgs/msg/Twist`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `linear` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This expresses velocity in free space broken into its linear and angular parts. |
| `angular` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgCartesianMotionForce`

Original: `flexiv_msgs/msg/CartesianMotionForce`. Canonical extent: 164..420 bytes. Semantic rule: `none`.

`UWVMROS1_2f8de91fe69cf2aa5a50dabb1178e9dcef6b1196602e667a8901caeeb7cba8c3`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Cartesian motion-force command for one robot, consumed by cartesian_motion_force_controller and forwarded to flexiv::rdk::Robot::SendCartesianMotionForce(). Header. frame_id is ignored: the pose is always expressed in the robot's world frame. |
| `pose` | `geometry_msgs/msg/Pose` | scalar |  | undeclared | finite | Target TCP pose in world frame. The orientation is normalized by the controller. [m] |
| `wrench` | `geometry_msgs/msg/Wrench` | scalar |  | undeclared | finite | Target TCP wrench in the force control frame, only tracked on axes enabled for force control. It is the wrench sensed at the TCP, not exerted by it: +5 N in world Z pushes the TCP down. [N]:[Nm] |
| `velocity` | `geometry_msgs/msg/Twist` | scalar |  | undeclared | finite | Target TCP velocity in world frame when reaching the pose. Leave 0 for the most robust behaviour. [m/s]:[rad/s] |


### `Ros2Flexiv_msgsMsgDigital`

Original: `flexiv_msgs/msg/Digital`. Canonical extent: 2..2 bytes. Semantic rule: `none`.

`UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `pin` | `uint8` | scalar |  | undeclared | finite |  |
| `state` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgGPIOStates`

Original: `flexiv_msgs/msg/GPIOStates`. Canonical extent: 4..68 bytes. Semantic rule: `none`.

`UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `states` | `flexiv_msgs/msg/Digital` | sequence | 32 elements | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgJointImpedance`

Original: `flexiv_msgs/msg/JointImpedance`. Canonical extent: 29..9373 bytes. Semantic rule: `none`.

`UWVMROS1_f93719074c048d0ab915eeefd2e62bcdfe16ac74f06a3aa505f06ca6d8c3515a`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Impedance properties of the robot's joint motion controller, used in the joint impedance control modes. Mirrors the arguments of flexiv::rdk::Robot::SetJointImpedance(). Header |
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | Joint names in URDF order. Every array below is indexed by this. |
| `k_q` | `float64` | sequence | 32 elements | undeclared | finite | Joint motion stiffness K_q. A joint at 0 is free-floating. [Nm/rad] |
| `z_q` | `float64` | sequence | 32 elements | undeclared | finite | Joint motion damping ratio Z_q, dimensionless. Valid range [0.3, 0.8], nominal 0.7 |
| `k_q_nom` | `float64` | sequence | 32 elements | undeclared | finite | Nominal joint motion stiffness, the upper bound of k_q. [Nm/rad] |
| `in_effect` | `bool` | scalar |  | undeclared | finite | Whether these values are in effect on the robot. False while the robot is not in a joint impedance control mode: they are held and applied on the next controller start. |


### `Ros2Flexiv_msgsMsgJointInertiaScale`

Original: `flexiv_msgs/msg/JointInertiaScale`. Canonical extent: 21..8853 bytes. Semantic rule: `none`.

`UWVMROS1_3dc5f0addd6835f698feda5133efb05cde46e480dee0e219436fcc4443018e1f`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Inertia shaping scales of the robot's joint motion controller, used in the joint impedance control modes. Mirrors the argument of flexiv::rdk::Robot::SetJointInertiaScale(). Header |
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | Joint names in URDF order. Every array below is indexed by this. |
| `inertia_scales` | `float64` | sequence | 32 elements | undeclared | finite | Inertia shaping scale sigma_q, dimensionless. Valid range [0.75, 1.0]. The nominal value 1.0 means no shaping; a smaller scale makes the joint behave as if it were lighter. |
| `in_effect` | `bool` | scalar |  | undeclared | finite | Whether these values are in effect on the robot. False while the robot is not in a joint impedance control mode: they are held and applied on the next controller start. |


### `Ros2Flexiv_msgsMsgJointPosVel`

Original: `flexiv_msgs/msg/JointPosVel`. Canonical extent: 8..520 bytes. Semantic rule: `none`.

`UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `positions` | `float64` | sequence | 32 elements | undeclared | finite |  |
| `velocities` | `float64` | sequence | 32 elements | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgMaxContactTorque`

Original: `flexiv_msgs/msg/MaxContactTorque`. Canonical extent: 25..9113 bytes. Semantic rule: `none`.

`UWVMROS1_d98ebc099077f69f5311d46c2179d08367c301b6c9d1b272b3bc55ba3df185da`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Maximum contact torques of the robot's joint motion controller, used in the joint impedance control modes. Mirrors the argument of flexiv::rdk::Robot::SetMaxContactTorque(). Header |
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | Joint names in URDF order. Every array below is indexed by this. |
| `max_contact_torques` | `float64` | sequence | 32 elements | undeclared | finite | Maximum contact torque the controller regulates its output to maintain. [Nm] |
| `tau_max` | `float64` | sequence | 32 elements | undeclared | finite | Upper software limits of joint torques, the upper bound of max_contact_torques. [Nm] |
| `in_effect` | `bool` | scalar |  | undeclared | finite | Whether these values are in effect on the robot. False while the robot is not in a joint impedance control mode: they are held and applied on the next controller start. |


### `Ros2Flexiv_msgsMsgMode`

Original: `flexiv_msgs/msg/Mode`. Canonical extent: 1..1 bytes. Semantic rule: `none`.

`UWVMROS1_79f6d3de38a4d7d514780f9d71fcc8b5cd413a3b511f1b31243c210265be0c87`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `mode` | `int8` | scalar |  | undeclared | finite |  |

- `MODE_UNKNOWN`: `int8` = `0`.
- `MODE_IDLE`: `int8` = `1`.
- `MODE_RT_JOINT_TORQUE`: `int8` = `2`.
- `MODE_RT_JOINT_IMPEDANCE`: `int8` = `3`.
- `MODE_NRT_JOINT_IMPEDANCE`: `int8` = `4`.
- `MODE_RT_JOINT_POSITION`: `int8` = `5`.
- `MODE_NRT_JOINT_POSITION`: `int8` = `6`.
- `MODE_NRT_PLAN_EXECUTION`: `int8` = `7`.
- `MODE_NRT_PRIMITIVE_EXECUTION`: `int8` = `8`.
- `MODE_RT_CARTESIAN_MOTION_FORCE`: `int8` = `9`.
- `MODE_NRT_CARTESIAN_MOTION_FORCE`: `int8` = `10`.
- `MODE_NRT_SUPER_PRIMITIVE`: `int8` = `11`.

### `Ros2Flexiv_msgsMsgRobotEvent`

Original: `flexiv_msgs/msg/RobotEvent`. Canonical extent: 29..1053 bytes. Semantic rule: `none`.

`UWVMROS1_cbc02424eaea2ae9754309d070d424f0d0fcd078e67a64b22cbb1a36848e0a17`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `level` | `uint8` | scalar |  | undeclared | finite |  |
| `id` | `int32` | scalar |  | undeclared | finite | Unique ID of the event |
| `description` | `string` | scalar | 256 bytes | undeclared | finite | Brief description of the event |
| `consequences` | `string` | scalar | 256 bytes | undeclared | finite | Consequences caused by the event |
| `probable_causes` | `string` | scalar | 256 bytes | undeclared | finite | Probable causes of the event |
| `recommended_actions` | `string` | scalar | 256 bytes | undeclared | finite | Recommended actions after the event |
| `timestamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Timestamp of the event |

- `LEVEL_UNKNOWN`: `uint8` = `0`.
- `LEVEL_INFO`: `uint8` = `1`.
- `LEVEL_WARNING`: `uint8` = `2`.
- `LEVEL_ERROR`: `uint8` = `3`.
- `LEVEL_CRITICAL`: `uint8` = `4`.

### `Ros2Flexiv_msgsMsgOperationalStatus`

Original: `flexiv_msgs/msg/OperationalStatus`. Canonical extent: 34..17650 bytes. Semantic rule: `none`.

`UWVMROS1_fb8887a722a4b6d895ed17ba5db0f4145b4ddd01eecf876419b287dd07bc728b`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Operational status of the robot and of the driver supervising it. The status values mirror flexiv::rdk::OperationalStatus one-for-one. Header |
| `operational_status` | `uint8` | scalar |  | undeclared | finite |  |
| `operational_status_name` | `string` | scalar | 256 bytes | undeclared | finite | Human-readable name of the operational status above |
| `driver_state` | `uint8` | scalar |  | undeclared | finite |  |
| `connected` | `bool` | scalar |  | undeclared | finite | Robot condition flags |
| `fault` | `bool` | scalar |  | undeclared | finite |  |
| `operational` | `bool` | scalar |  | undeclared | finite |  |
| `estop_released` | `bool` | scalar |  | undeclared | finite |  |
| `reduced` | `bool` | scalar |  | undeclared | finite |  |
| `recovery_state` | `bool` | scalar |  | undeclared | finite |  |
| `control_mode` | `int8` | scalar |  | undeclared | finite | Current robot control mode, values defined in Mode.msg |
| `recovery_policy` | `uint8` | scalar |  | undeclared | finite | How the current condition should be recovered from, values defined in RecoveryPolicy.msg |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the current condition and what to do about it |
| `recent_events` | `flexiv_msgs/msg/RobotEvent` | sequence | 16 elements | undeclared | finite | Most recent error and critical events reported by the robot |

- `STATUS_UNKNOWN`: `uint8` = `0`.
- `STATUS_READY`: `uint8` = `1`.
- `STATUS_BOOTING`: `uint8` = `2`.
- `STATUS_ESTOP_NOT_RELEASED`: `uint8` = `3`.
- `STATUS_NOT_ENABLED`: `uint8` = `4`.
- `STATUS_RELEASING_BRAKE`: `uint8` = `5`.
- `STATUS_MINOR_FAULT`: `uint8` = `6`.
- `STATUS_CRITICAL_FAULT`: `uint8` = `7`.
- `STATUS_IN_REDUCED_STATE`: `uint8` = `8`.
- `STATUS_IN_RECOVERY_STATE`: `uint8` = `9`.
- `STATUS_IN_MANUAL_MODE`: `uint8` = `10`.
- `STATUS_IN_AUTO_MODE`: `uint8` = `11`.
- `DRIVER_UNINITIALIZED`: `uint8` = `0`.
- `DRIVER_READY`: `uint8` = `1`.
- `DRIVER_FAULT`: `uint8` = `2`.
- `DRIVER_RECOVERING`: `uint8` = `3`.
- `DRIVER_LOCKOUT`: `uint8` = `4`.
- `DRIVER_DISCONNECTED`: `uint8` = `5`.

### `Ros2Flexiv_msgsMsgRecoveryPolicy`

Original: `flexiv_msgs/msg/RecoveryPolicy`. Canonical extent: 1..1 bytes. Semantic rule: `none`.

`UWVMROS1_0eb43d2482caac32e0977e6cd8ae7baeeba7fca2629c5cd1e1927e8a28af42bf`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `recovery_policy` | `uint8` | scalar |  | undeclared | finite |  |

- `NONE`: `uint8` = `0`.
- `TRANSIENT`: `uint8` = `1`.
- `AUTO_RECOVERABLE`: `uint8` = `2`.
- `WAIT_OPERATOR`: `uint8` = `3`.
- `SAFETY_LOCKOUT`: `uint8` = `4`.
- `CONNECTION_LOST`: `uint8` = `5`.

### `Ros2Geometry_msgsMsgPoseStamped`

Original: `geometry_msgs/msg/PoseStamped`. Canonical extent: 68..324 bytes. Semantic rule: `none`.

`UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | A Pose with reference coordinate frame and timestamp |
| `pose` | `geometry_msgs/msg/Pose` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgAccel`

Original: `geometry_msgs/msg/Accel`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `linear` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This expresses acceleration in free space broken into its linear and angular parts. |
| `angular` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgAccelStamped`

Original: `geometry_msgs/msg/AccelStamped`. Canonical extent: 60..316 bytes. Semantic rule: `none`.

`UWVMROS1_99c561d1968cbb554a188d387fb085b6721227a88b7243a7f90682ae20782329`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | An accel with reference coordinate frame and timestamp |
| `accel` | `geometry_msgs/msg/Accel` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgWrenchStamped`

Original: `geometry_msgs/msg/WrenchStamped`. Canonical extent: 60..316 bytes. Semantic rule: `none`.

`UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | A wrench with reference coordinate frame and timestamp |
| `wrench` | `geometry_msgs/msg/Wrench` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgRobotStates`

Original: `flexiv_msgs/msg/RobotStates`. Canonical extent: 552..5160 bytes. Semantic rule: `none`.

`UWVMROS1_7e84612c73d2d16252a0b93f995b5afa7e032f3de3826f0577c89670dde1f2d2`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Header |
| `robot_timestamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Robot system timestamp |
| `q` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint positions using link-side encoder |
| `theta` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint positions using motor-side encoder |
| `dq` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint velocities using link-side encoder |
| `dtheta` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint velocities using motor-side encoder |
| `tau` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint torques |
| `tau_dot` | `float64` | sequence | 32 elements | undeclared | finite | Numerical derivative of measured joint torques |
| `tau_ext` | `float64` | sequence | 32 elements | undeclared | finite | Estimated external joint torques |
| `tau_interact` | `float64` | sequence | 32 elements | undeclared | finite | Estimated interaction joint torques |
| `temperature` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint temperatures |
| `tcp_pose` | `geometry_msgs/msg/PoseStamped` | scalar |  | undeclared | finite | Measured TCP pose expressed in world frame |
| `tcp_vel` | `geometry_msgs/msg/AccelStamped` | scalar |  | undeclared | finite | Measured TCP velocity expressed in world frame |
| `flange_pose` | `geometry_msgs/msg/PoseStamped` | scalar |  | undeclared | finite | Measured flange pose expressed in world frame |
| `ft_sensor_raw` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Force-torque (FT) sensor raw reading in flange frame |
| `ext_wrench_in_tcp` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Estimated external wrench applied on TCP and expressed in TCP frame |
| `ext_wrench_in_world` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Estimated external wrench applied on TCP and expressed in world frame |
| `ext_wrench_in_tcp_raw` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Unfiltered external wrench applied on TCP and expressed in TCP frame |
| `ext_wrench_in_world_raw` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Unfiltered external wrench applied on TCP and expressed in world frame |


### `Ros2Flexiv_msgsSrvGetOperationalStatus_Request`

Original: `flexiv_msgs/srv/GetOperationalStatus_Request`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_7fd7ea129ca031bf1bf8d008b1273bc0deb676f3ae786731b420cd009bb3ae12`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|


### `Ros2Flexiv_msgsSrvGetOperationalStatus_Response`

Original: `flexiv_msgs/srv/GetOperationalStatus_Response`. Canonical extent: 34..17650 bytes. Semantic rule: `none`.

`UWVMROS1_b804d4a8c3dfdd26b0cad4314552092a90f439f0f364831b855bca4c30d49f42`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `status` | `flexiv_msgs/msg/OperationalStatus` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsSrvSetCartesianImpedance_Request`

Original: `flexiv_msgs/srv/SetCartesianImpedance_Request`. Canonical extent: 8..520 bytes. Semantic rule: `none`.

`UWVMROS1_a121634cb756eace8772aa4fb681a103b4716f6289a1ba66608d66ce2d83ff9f`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `k_x` | `float64` | sequence | 32 elements | undeclared | finite | Set the impedance properties of the robot's Cartesian motion controller, used in the Cartesian motion-force control mode. For a robot pair, each array holds the left robot's values first.  An invalid request is rejected as a whole and nothing changes. Cartesian stiffness [k_x, k_y, k_z, k_Rx, k_Ry, k_Rz], 6 per robot. Valid range [0, k_x_nom]. Empty means k_x_nom. [N/m]:[Nm/rad] |
| `z_x` | `float64` | sequence | 32 elements | undeclared | finite | Cartesian damping ratio, 6 per robot. Valid range [0.3, 0.8]. Empty means the nominal 0.7. |


### `Ros2Flexiv_msgsSrvSetCartesianImpedance_Response`

Original: `flexiv_msgs/srv/SetCartesianImpedance_Response`. Canonical extent: 9..521 bytes. Semantic rule: `none`.

`UWVMROS1_84cb649adf8fdcbc9e499dd9c8274542c7de6c466fbab5c2721349ee76974f29`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |
| `k_x_nom` | `float64` | sequence | 32 elements | undeclared | finite | Nominal Cartesian stiffness, the upper bound of k_x, 6 per robot. [N/m]:[Nm/rad] |


### `Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request`

Original: `flexiv_msgs/srv/SetCartesianMotionLimits_Request`. Canonical extent: 16..1040 bytes. Semantic rule: `none`.

`UWVMROS1_381d447a83ce08a843476dfe3b7e1650477b2575f873706d80d458e8153a6111`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `max_linear_vel` | `float64` | sequence | 32 elements | undeclared | finite | Set the motion limits the driver passes with every Cartesian motion-force command. Each array holds one entry per robot, left first. Only accepted while the Cartesian motion-force controller is running, and reset to the defaults on every controller start.  An invalid request is rejected as a whole and nothing changes. Maximum linear velocity. Must be positive. RDK default 0.5. [m/s] |
| `max_angular_vel` | `float64` | sequence | 32 elements | undeclared | finite | Maximum angular velocity. Must be positive. RDK default 1.0. [rad/s] |
| `max_linear_acc` | `float64` | sequence | 32 elements | undeclared | finite | Maximum linear acceleration. Must be positive. RDK default 2.0. [m/s^2] |
| `max_angular_acc` | `float64` | sequence | 32 elements | undeclared | finite | Maximum angular acceleration. Must be positive. RDK default 5.0. [rad/s^2] |


### `Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response`

Original: `flexiv_msgs/srv/SetCartesianMotionLimits_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_0adcf054313396afa13673e6a125f8a6dcc85b1009d36860b6447512f52bdc36`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |


### `Ros2Flexiv_msgsSrvSetForceControlAxis_Request`

Original: `flexiv_msgs/srv/SetForceControlAxis_Request`. Canonical extent: 8..296 bytes. Semantic rule: `none`.

`UWVMROS1_f068f06ad10e40bd50d06800f4178636c89547f5302af856a00d49757b54fef0`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `enabled_axes` | `bool` | sequence | 32 elements | undeclared | finite | Set the Cartesian axes that are force-controlled in the Cartesian motion-force control mode. The other axes stay motion-controlled. For a robot pair, each array holds the left robot's values first.  An invalid request is rejected as a whole and nothing changes. Force control flags [X, Y, Z, Rx, Ry, Rz] in the force control frame, 6 per robot |
| `max_linear_vel` | `float64` | sequence | 32 elements | undeclared | finite | Velocity limit of the force-controlled linear axes [X, Y, Z], 3 per robot, protecting against contact loss under active force control. Valid range [0.005, 2.0]. Empty means 1.0. [m/s] |


### `Ros2Flexiv_msgsSrvSetForceControlAxis_Response`

Original: `flexiv_msgs/srv/SetForceControlAxis_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_26f01b6e3ddb369b49f0a6521104992e654ea628d864c0883b9ccc584234963b`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |


### `Ros2Flexiv_msgsSrvSetForceControlFrame_Request`

Original: `flexiv_msgs/srv/SetForceControlFrame_Request`. Canonical extent: 8..296 bytes. Semantic rule: `none`.

`UWVMROS1_3f061d3f029eddf256a9aa50f07767e77d5c3b2efd6ae69a2ad4a789f4692b30`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `root_coord` | `uint8` | sequence | 32 elements | undeclared | finite | Root coordinate of t_in_root, 1 per robot. WORLD is fixed, TCP moves with the end effector. |
| `t_in_root` | `float64` | sequence | 32 elements | undeclared | finite | Transformation from the root coordinate to the force control frame [x, y, z, qw, qx, qy, qz], 7 per robot. Empty means identity. [m]:[] |

- `WORLD`: `uint8` = `0`.
- `TCP`: `uint8` = `1`.

### `Ros2Flexiv_msgsSrvSetForceControlFrame_Response`

Original: `flexiv_msgs/srv/SetForceControlFrame_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_cfec8391d4df88d36f4e3afbb956b12b3274b3bd0a6a6284cb44d49f12a44bde`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |


### `Ros2Flexiv_msgsSrvSetJointImpedance_Request`

Original: `flexiv_msgs/srv/SetJointImpedance_Request`. Canonical extent: 8..520 bytes. Semantic rule: `none`.

`UWVMROS1_5b1014a3a79fcd116f94142640c2c3e9c1867a2c54b9382f7165f7fda04a8584`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `k_q` | `float64` | sequence | 32 elements | undeclared | finite | Set impedance properties of the robot's joint motion controller. Requires the driver to run with rdk_control_mode:=joint_impedance.  k_q must hold one entry per joint of the hardware component, in URDF order. z_q may be left empty to use the nominal damping ratio 0.7, matching the RDK argument default. An invalid request is rejected as a whole and nothing changes. Joint motion stiffness K_q, one entry per joint in URDF order. Valid range [0, k_q_nom]. Setting a joint to 0 makes it free-floating, which in this position-streaming driver means the joint will sag under gravity. [Nm/rad] |
| `z_q` | `float64` | sequence | 32 elements | undeclared | finite | Joint motion damping ratio Z_q, one entry per joint in URDF order, or empty for the nominal 0.7. Valid range [0.3, 0.8]. Values away from nominal may lead to performance and stability issues. |


### `Ros2Flexiv_msgsSrvSetJointImpedance_Response`

Original: `flexiv_msgs/srv/SetJointImpedance_Response`. Canonical extent: 34..9634 bytes. Semantic rule: `none`.

`UWVMROS1_95a169dd0eb880ef3e71653a5e4cdf08e743db80df706e75664db582eb927f96`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome, naming the joint and the bound on a rejection |
| `setting` | `flexiv_msgs/msg/JointImpedance` | scalar |  | undeclared | finite | The values now held by the driver, unchanged from before on a rejection |


### `Ros2Flexiv_msgsSrvSetJointInertiaScale_Request`

Original: `flexiv_msgs/srv/SetJointInertiaScale_Request`. Canonical extent: 4..260 bytes. Semantic rule: `none`.

`UWVMROS1_752da94424644200ef0e6463486a6dbc74b85c46acfaeac3b569b6248c1e2686`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `inertia_scales` | `float64` | sequence | 32 elements | undeclared | finite | Set inertia shaping scales of the robot's joint motion controller, which make the joints behave as if they were lighter. Requires the driver to run with rdk_control_mode:=joint_impedance.  inertia_scales must hold one entry per joint of the hardware component, in URDF order. An invalid request is rejected as a whole and nothing changes. Inertia shaping scale sigma_q, one entry per joint in URDF order. Valid range [0.75, 1.0]. The nominal value 1.0 means no shaping; a smaller scale corresponds to lighter inertia. |


### `Ros2Flexiv_msgsSrvSetJointInertiaScale_Response`

Original: `flexiv_msgs/srv/SetJointInertiaScale_Response`. Canonical extent: 26..9114 bytes. Semantic rule: `none`.

`UWVMROS1_2b7d36ecdc70ec1a450a03d412cfd431e735fc3aa601f321007afabe00f51931`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome, naming the joint and the bound on a rejection |
| `setting` | `flexiv_msgs/msg/JointInertiaScale` | scalar |  | undeclared | finite | The values now held by the driver, unchanged from before on a rejection |


### `Ros2Flexiv_msgsSrvSetMaxContactTorque_Request`

Original: `flexiv_msgs/srv/SetMaxContactTorque_Request`. Canonical extent: 4..260 bytes. Semantic rule: `none`.

`UWVMROS1_8850403204dc91a11797a767dde6999163008f41ad5c89360d852d037806fb43`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `max_contact_torques` | `float64` | sequence | 32 elements | undeclared | finite | Set maximum contact torques of the robot's joint motion controller. The controller regulates its output to keep contact torques with the environment under these values. Requires the driver to run with rdk_control_mode:=joint_impedance.  max_contact_torques must hold one entry per joint of the hardware component, in URDF order. An invalid request is rejected as a whole and nothing changes. Maximum contact torque, one entry per joint in URDF order. Valid range [0, tau_max]. Raising this increases the force the robot may exert on its surroundings. [Nm] |


### `Ros2Flexiv_msgsSrvSetMaxContactTorque_Response`

Original: `flexiv_msgs/srv/SetMaxContactTorque_Response`. Canonical extent: 30..9374 bytes. Semantic rule: `none`.

`UWVMROS1_602bd439ab984dd9d7f64786005dd4f5763d245121a09833f75cee914e9dd43c`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome, naming the joint and the bound on a rejection |
| `setting` | `flexiv_msgs/msg/MaxContactTorque` | scalar |  | undeclared | finite | The values now held by the driver, unchanged from before on a rejection |


### `Ros2Flexiv_msgsSrvSetMaxContactWrench_Request`

Original: `flexiv_msgs/srv/SetMaxContactWrench_Request`. Canonical extent: 4..260 bytes. Semantic rule: `none`.

`UWVMROS1_5a943fdeba115cb68b38d0a1d98e9247331419b4ec89ad0870387251fd5d9467`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `max_wrench` | `float64` | sequence | 32 elements | undeclared | finite-or-positive-infinity | Set the maximum contact wrench for the motion-controlled axes of the Cartesian motion-force control mode. For a robot pair, the array holds the left robot's values first.  An invalid request is rejected as a whole and nothing changes. Maximum contact wrench [f_x, f_y, f_z, m_x, m_y, m_z], 6 per robot. Must not be negative. Use infinity to disable the regulation. [N]:[Nm] |


### `Ros2Flexiv_msgsSrvSetMaxContactWrench_Response`

Original: `flexiv_msgs/srv/SetMaxContactWrench_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_6a39df3ba6eacc0a230a8f039f16f03574d76818fb53e9445c29f175c2e1420e`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |


### `Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request`

Original: `flexiv_msgs/srv/SetNullSpaceObjectives_Request`. Canonical extent: 12..780 bytes. Semantic rule: `none`.

`UWVMROS1_01cb5842d8e2eca55e63f74f7f2c973038bc354a5c0ef2552d4f6e82e382bc27`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `linear_manipulability` | `float64` | sequence | 32 elements | undeclared | finite | Set the weights of the three optimization objectives of the null-space posture control, used in the Cartesian motion-force control mode. Each array holds one entry per robot, left first.  An invalid request is rejected as a whole and nothing changes. Weight of translational manipulability. Valid range [0.0, 1.0]. RDK default 0.0. |
| `angular_manipulability` | `float64` | sequence | 32 elements | undeclared | finite | Weight of rotational manipulability. Valid range [0.0, 1.0]. RDK default 0.0. |
| `ref_positions_tracking` | `float64` | sequence | 32 elements | undeclared | finite | Weight of tracking the null-space posture reference. Valid range [0.1, 1.0]. RDK default 0.5. |


### `Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response`

Original: `flexiv_msgs/srv/SetNullSpaceObjectives_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_70fb3c7a3a0a6b46347624a273b6e7180ad1610ca09a5c672b5ad7a976b79298`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |


### `Ros2Flexiv_msgsSrvSetNullSpacePosture_Request`

Original: `flexiv_msgs/srv/SetNullSpacePosture_Request`. Canonical extent: 4..260 bytes. Semantic rule: `none`.

`UWVMROS1_0fb02e69195688307d15cc7f8b6f7a95f400d4083cc8c363e29071fee844b92d`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `ref_positions` | `float64` | sequence | 32 elements | undeclared | finite | Set the reference joint positions of the null-space posture control, used in the Cartesian motion-force control mode.  An invalid request is rejected as a whole and nothing changes. Reference joint positions, one entry per joint of the hardware component in URDF order. Valid range [q_min, q_max]. [rad] |


### `Ros2Flexiv_msgsSrvSetNullSpacePosture_Response`

Original: `flexiv_msgs/srv/SetNullSpacePosture_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_913c995a461fa70cd62293c1932d738a4a8b799c4ebd13a1a8afdaa8acef4293`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |


### `Ros2Flexiv_msgsSrvSetPassiveForceControl_Request`

Original: `flexiv_msgs/srv/SetPassiveForceControl_Request`. Canonical extent: 4..36 bytes. Semantic rule: `none`.

`UWVMROS1_603cd39ccf8c37d944afe9108085fe3ba72881d772e42f24f87ec380f3770d16`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `enabled` | `bool` | sequence | 32 elements | undeclared | finite | Enable or disable passive (open-loop) force control for the Cartesian motion-force control mode. Active (closed-loop) force control is the default. Only accepted while the robot is idle, i.e. before the Cartesian motion-force controller is started, and disabled again when it stops. One entry per robot, left first |


### `Ros2Flexiv_msgsSrvSetPassiveForceControl_Response`

Original: `flexiv_msgs/srv/SetPassiveForceControl_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_73fe92bbcf47063293bde2f3542c719111f0bd82aaa6b500f15122c6aa1e7d35`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |


## ros2_humble_v2

`ros2` / `humble` / `flexiv-ros2-humble-v2-complete`

原始定义与所有服务、动作组件均保留。规范编码不是 DDS CDR 或 ROS1 TCPROS 字节。

### `builtin_interfaces/msg/Time`

Kind: `message`. Components: `message=Ros2Builtin_interfacesMsgTime`.

### `flexiv_msgs/action/Grasp`

Kind: `action`. Components: `goal=Ros2Flexiv_msgsActionGrasp_Goal`, `result=Ros2Flexiv_msgsActionGrasp_Result`, `feedback=Ros2Flexiv_msgsActionGrasp_Feedback`.

### `flexiv_msgs/action/Move`

Kind: `action`. Components: `goal=Ros2Flexiv_msgsActionMove_Goal`, `result=Ros2Flexiv_msgsActionMove_Result`, `feedback=Ros2Flexiv_msgsActionMove_Feedback`.

### `flexiv_msgs/msg/Digital`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgDigital`.

### `flexiv_msgs/msg/GPIOStates`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgGPIOStates`.

### `flexiv_msgs/msg/JointPosVel`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgJointPosVel`.

### `flexiv_msgs/msg/Mode`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgMode`.

### `flexiv_msgs/msg/RobotStates`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgRobotStates`.

### `geometry_msgs/msg/Point`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPoint`.

### `geometry_msgs/msg/Pose`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPose`.

### `geometry_msgs/msg/PoseStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPoseStamped`.

### `geometry_msgs/msg/Quaternion`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgQuaternion`.

### `geometry_msgs/msg/Twist`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgTwist`.

### `geometry_msgs/msg/TwistStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgTwistStamped`.

### `geometry_msgs/msg/Vector3`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgVector3`.

### `geometry_msgs/msg/Wrench`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgWrench`.

### `geometry_msgs/msg/WrenchStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgWrenchStamped`.

### `std_msgs/msg/Header`

Kind: `message`. Components: `message=Ros2Std_msgsMsgHeader`.

### `Ros2Builtin_interfacesMsgTime`

Original: `builtin_interfaces/msg/Time`. Canonical extent: 8..8 bytes. Semantic rule: `normalized-time`.

`UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `sec` | `int32` | scalar |  | undeclared | finite | This message communicates ROS Time defined here: https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32 values. |
| `nanosec` | `uint32` | scalar |  | undeclared | finite | The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component. e.g. The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The time 1.7 seconds is represented as {sec: 1, nanosec: 7e8} |


### `Ros2Flexiv_msgsActionGrasp_Goal`

Original: `flexiv_msgs/action/Grasp_Goal`. Canonical extent: 8..8 bytes. Semantic rule: `none`.

`UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `force` | `float64` | scalar |  | undeclared | finite | N |


### `Ros2Flexiv_msgsActionGrasp_Result`

Original: `flexiv_msgs/action/Grasp_Result`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Flexiv_msgsActionGrasp_Feedback`

Original: `flexiv_msgs/action/Grasp_Feedback`. Canonical extent: 17..17 bytes. Semantic rule: `none`.

`UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `current_width` | `float64` | scalar |  | undeclared | finite | m |
| `current_force` | `float64` | scalar |  | undeclared | finite | N |
| `moving` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsActionMove_Goal`

Original: `flexiv_msgs/action/Move_Goal`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `width` | `float64` | scalar |  | undeclared | finite | m |
| `velocity` | `float64` | scalar |  | undeclared | finite | m/s |
| `max_force` | `float64` | scalar |  | undeclared | finite | N |


### `Ros2Flexiv_msgsActionMove_Result`

Original: `flexiv_msgs/action/Move_Result`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Flexiv_msgsActionMove_Feedback`

Original: `flexiv_msgs/action/Move_Feedback`. Canonical extent: 17..17 bytes. Semantic rule: `none`.

`UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `current_width` | `float64` | scalar |  | undeclared | finite | m |
| `current_force` | `float64` | scalar |  | undeclared | finite | N |
| `moving` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgDigital`

Original: `flexiv_msgs/msg/Digital`. Canonical extent: 2..2 bytes. Semantic rule: `none`.

`UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `pin` | `uint8` | scalar |  | undeclared | finite |  |
| `state` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgGPIOStates`

Original: `flexiv_msgs/msg/GPIOStates`. Canonical extent: 4..68 bytes. Semantic rule: `none`.

`UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `states` | `flexiv_msgs/msg/Digital` | sequence | 32 elements | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgJointPosVel`

Original: `flexiv_msgs/msg/JointPosVel`. Canonical extent: 8..520 bytes. Semantic rule: `none`.

`UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `positions` | `float64` | sequence | 32 elements | undeclared | finite |  |
| `velocities` | `float64` | sequence | 32 elements | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgMode`

Original: `flexiv_msgs/msg/Mode`. Canonical extent: 1..1 bytes. Semantic rule: `none`.

`UWVMROS1_cccac829b8021d3eed69844ee81fbef0b785486d73a16ac212fd38b8100eb6d6`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `mode` | `int8` | scalar |  | undeclared | finite |  |

- `MODE_UNKNOWN`: `int8` = `-1`.
- `MODE_IDLE`: `int8` = `0`.
- `MODE_RT_JOINT_TORQUE`: `int8` = `1`.
- `MODE_RT_JOINT_IMPEDANCE`: `int8` = `2`.
- `MODE_NRT_JOINT_IMPEDANCE`: `int8` = `3`.
- `MODE_RT_JOINT_POSITION`: `int8` = `4`.
- `MODE_NRT_JOINT_POSITION`: `int8` = `5`.
- `MODE_NRT_PLAN_EXECUTION`: `int8` = `6`.
- `MODE_NRT_PRIMITIVE_EXECUTION`: `int8` = `7`.
- `MODE_RT_CARTESIAN_MOTION_FORCE`: `int8` = `8`.
- `MODE_NRT_CARTESIAN_MOTION_FORCE`: `int8` = `9`.
- `MODE_NRT_SUPER_PRIMITIVE`: `int8` = `10`.

### `Ros2Std_msgsMsgHeader`

Original: `std_msgs/msg/Header`. Canonical extent: 12..268 bytes. Semantic rule: `none`.

`UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `stamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Standard metadata for higher-level stamped data types. This is generally used to communicate timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as seconds and nanoseconds. |
| `frame_id` | `string` | scalar | 256 bytes | undeclared | finite | Transform frame with which this data is associated. |


### `Ros2Geometry_msgsMsgPoint`

Original: `geometry_msgs/msg/Point`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This contains the position of a point in free space |
| `y` | `float64` | scalar |  | undeclared | finite |  |
| `z` | `float64` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgQuaternion`

Original: `geometry_msgs/msg/Quaternion`. Canonical extent: 32..32 bytes. Semantic rule: `none`.

`UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | 0.0 | finite | This represents an orientation in free space in quaternion form. |
| `y` | `float64` | scalar |  | 0.0 | finite |  |
| `z` | `float64` | scalar |  | 0.0 | finite |  |
| `w` | `float64` | scalar |  | 1.0 | finite |  |


### `Ros2Geometry_msgsMsgPose`

Original: `geometry_msgs/msg/Pose`. Canonical extent: 56..56 bytes. Semantic rule: `none`.

`UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `position` | `geometry_msgs/msg/Point` | scalar |  | undeclared | finite | A representation of pose in free space, composed of position and orientation. |
| `orientation` | `geometry_msgs/msg/Quaternion` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgPoseStamped`

Original: `geometry_msgs/msg/PoseStamped`. Canonical extent: 68..324 bytes. Semantic rule: `none`.

`UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | A Pose with reference coordinate frame and timestamp |
| `pose` | `geometry_msgs/msg/Pose` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgVector3`

Original: `geometry_msgs/msg/Vector3`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This represents a vector in free space. This is semantically different than a point. A vector is always anchored at the origin. When a transform is applied to a vector, only the rotational component is applied. |
| `y` | `float64` | scalar |  | undeclared | finite |  |
| `z` | `float64` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgTwist`

Original: `geometry_msgs/msg/Twist`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `linear` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This expresses velocity in free space broken into its linear and angular parts. |
| `angular` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgTwistStamped`

Original: `geometry_msgs/msg/TwistStamped`. Canonical extent: 60..316 bytes. Semantic rule: `none`.

`UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | A twist with reference coordinate frame and timestamp |
| `twist` | `geometry_msgs/msg/Twist` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgWrench`

Original: `geometry_msgs/msg/Wrench`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `force` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This represents force in free space, separated into its linear and angular parts. |
| `torque` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgWrenchStamped`

Original: `geometry_msgs/msg/WrenchStamped`. Canonical extent: 60..316 bytes. Semantic rule: `none`.

`UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | A wrench with reference coordinate frame and timestamp |
| `wrench` | `geometry_msgs/msg/Wrench` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgRobotStates`

Original: `flexiv_msgs/msg/RobotStates`. Canonical extent: 552..5160 bytes. Semantic rule: `none`.

`UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Header |
| `robot_timestamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Robot system timestamp |
| `q` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint positions using link-side encoder |
| `theta` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint positions using motor-side encoder |
| `dq` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint velocities using link-side encoder |
| `dtheta` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint velocities using motor-side encoder |
| `tau` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint torques |
| `tau_dot` | `float64` | sequence | 32 elements | undeclared | finite | Numerical derivative of measured joint torques |
| `tau_ext` | `float64` | sequence | 32 elements | undeclared | finite | Estimated external joint torques |
| `tau_interact` | `float64` | sequence | 32 elements | undeclared | finite | Estimated interaction joint torques |
| `temperature` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint temperatures |
| `tcp_pose` | `geometry_msgs/msg/PoseStamped` | scalar |  | undeclared | finite | Measured TCP pose expressed in world frame |
| `tcp_twist` | `geometry_msgs/msg/TwistStamped` | scalar |  | undeclared | finite | Measured TCP twist expressed in world frame |
| `flange_pose` | `geometry_msgs/msg/PoseStamped` | scalar |  | undeclared | finite | Measured flange pose expressed in world frame |
| `raw_ft_sensor` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Raw force-torque (FT) sensor reading in flange frame |
| `tcp_wrench_local` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Estimated external wrench applied on TCP and expressed in TCP frame |
| `tcp_wrench` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Estimated external wrench applied on TCP and expressed in world frame |
| `raw_tcp_wrench_local` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Unfiltered external wrench applied on TCP and expressed in TCP frame |
| `raw_tcp_wrench` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Unfiltered external wrench applied on TCP and expressed in world frame |


## ros2_humble_v2_2

`ros2` / `humble` / `flexiv-ros2-humble-v2-2-complete`

原始定义与所有服务、动作组件均保留。规范编码不是 DDS CDR 或 ROS1 TCPROS 字节。

### `builtin_interfaces/msg/Time`

Kind: `message`. Components: `message=Ros2Builtin_interfacesMsgTime`.

### `flexiv_msgs/action/ErrorRecovery`

Kind: `action`. Components: `goal=Ros2Flexiv_msgsActionErrorRecovery_Goal`, `result=Ros2Flexiv_msgsActionErrorRecovery_Result`, `feedback=Ros2Flexiv_msgsActionErrorRecovery_Feedback`.

### `flexiv_msgs/action/Grasp`

Kind: `action`. Components: `goal=Ros2Flexiv_msgsActionGrasp_Goal`, `result=Ros2Flexiv_msgsActionGrasp_Result`, `feedback=Ros2Flexiv_msgsActionGrasp_Feedback`.

### `flexiv_msgs/action/Move`

Kind: `action`. Components: `goal=Ros2Flexiv_msgsActionMove_Goal`, `result=Ros2Flexiv_msgsActionMove_Result`, `feedback=Ros2Flexiv_msgsActionMove_Feedback`.

### `flexiv_msgs/msg/Digital`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgDigital`.

### `flexiv_msgs/msg/GPIOStates`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgGPIOStates`.

### `flexiv_msgs/msg/JointImpedance`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgJointImpedance`.

### `flexiv_msgs/msg/JointInertiaScale`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgJointInertiaScale`.

### `flexiv_msgs/msg/JointPosVel`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgJointPosVel`.

### `flexiv_msgs/msg/MaxContactTorque`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgMaxContactTorque`.

### `flexiv_msgs/msg/Mode`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgMode`.

### `flexiv_msgs/msg/OperationalStatus`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgOperationalStatus`.

### `flexiv_msgs/msg/RecoveryPolicy`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgRecoveryPolicy`.

### `flexiv_msgs/msg/RobotEvent`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgRobotEvent`.

### `flexiv_msgs/msg/RobotStates`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgRobotStates`.

### `flexiv_msgs/srv/GetOperationalStatus`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvGetOperationalStatus_Request`, `response=Ros2Flexiv_msgsSrvGetOperationalStatus_Response`.

### `flexiv_msgs/srv/SetJointImpedance`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetJointImpedance_Request`, `response=Ros2Flexiv_msgsSrvSetJointImpedance_Response`.

### `flexiv_msgs/srv/SetJointInertiaScale`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetJointInertiaScale_Request`, `response=Ros2Flexiv_msgsSrvSetJointInertiaScale_Response`.

### `flexiv_msgs/srv/SetMaxContactTorque`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetMaxContactTorque_Request`, `response=Ros2Flexiv_msgsSrvSetMaxContactTorque_Response`.

### `geometry_msgs/msg/Point`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPoint`.

### `geometry_msgs/msg/Pose`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPose`.

### `geometry_msgs/msg/PoseStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPoseStamped`.

### `geometry_msgs/msg/Quaternion`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgQuaternion`.

### `geometry_msgs/msg/Twist`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgTwist`.

### `geometry_msgs/msg/TwistStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgTwistStamped`.

### `geometry_msgs/msg/Vector3`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgVector3`.

### `geometry_msgs/msg/Wrench`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgWrench`.

### `geometry_msgs/msg/WrenchStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgWrenchStamped`.

### `std_msgs/msg/Header`

Kind: `message`. Components: `message=Ros2Std_msgsMsgHeader`.

### `Ros2Builtin_interfacesMsgTime`

Original: `builtin_interfaces/msg/Time`. Canonical extent: 8..8 bytes. Semantic rule: `normalized-time`.

`UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `sec` | `int32` | scalar |  | undeclared | finite | This message communicates ROS Time defined here: https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32 values. |
| `nanosec` | `uint32` | scalar |  | undeclared | finite | The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component. e.g. The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The time 1.7 seconds is represented as {sec: 1, nanosec: 7e8} |


### `Ros2Flexiv_msgsActionErrorRecovery_Goal`

Original: `flexiv_msgs/action/ErrorRecovery_Goal`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_a034d73edc5891f3a17f52efce4e491e8d08655b3e32d9cf58338547ad412830`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|


### `Ros2Flexiv_msgsActionErrorRecovery_Result`

Original: `flexiv_msgs/action/ErrorRecovery_Result`. Canonical extent: 7..263 bytes. Semantic rule: `none`.

`UWVMROS1_e1f54f9716ae64b5da8c1463f36379fbfffe35ea983a25dcb9db6e09771fcedc`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |
| `requires_controller_restart` | `bool` | scalar |  | undeclared | finite | True when the robot is operational again but controllers must be restarted to resume motion |
| `recovery_policy` | `uint8` | scalar |  | undeclared | finite | Policy that applied to the condition found, values defined in RecoveryPolicy.msg |


### `Ros2Flexiv_msgsActionErrorRecovery_Feedback`

Original: `flexiv_msgs/action/ErrorRecovery_Feedback`. Canonical extent: 9..265 bytes. Semantic rule: `none`.

`UWVMROS1_eeafe196440ce0e03c9bd313aaeac627eaf8e2f1bc4f2ced2d94bcdf22088739`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `recovery_state` | `uint8` | scalar |  | undeclared | finite |  |
| `recovery_state_name` | `string` | scalar | 256 bytes | undeclared | finite | Human-readable name of the recovery state above |
| `elapsed_seconds` | `float32` | scalar |  | undeclared | finite | Seconds elapsed since the recovery started |

- `STATE_IDLE`: `uint8` = `0`.
- `STATE_CLASSIFY`: `uint8` = `1`.
- `STATE_STOP`: `uint8` = `2`.
- `STATE_CLEAR_FAULT`: `uint8` = `3`.
- `STATE_WAIT_FAULT_CLEARED`: `uint8` = `4`.
- `STATE_SERVO_ON`: `uint8` = `5`.
- `STATE_WAIT_OPERATIONAL`: `uint8` = `6`.
- `STATE_COMPLETE`: `uint8` = `7`.
- `STATE_FAILED`: `uint8` = `8`.

### `Ros2Flexiv_msgsActionGrasp_Goal`

Original: `flexiv_msgs/action/Grasp_Goal`. Canonical extent: 8..8 bytes. Semantic rule: `none`.

`UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `force` | `float64` | scalar |  | undeclared | finite | N |


### `Ros2Flexiv_msgsActionGrasp_Result`

Original: `flexiv_msgs/action/Grasp_Result`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Flexiv_msgsActionGrasp_Feedback`

Original: `flexiv_msgs/action/Grasp_Feedback`. Canonical extent: 17..17 bytes. Semantic rule: `none`.

`UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `current_width` | `float64` | scalar |  | undeclared | finite | m |
| `current_force` | `float64` | scalar |  | undeclared | finite | N |
| `moving` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsActionMove_Goal`

Original: `flexiv_msgs/action/Move_Goal`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `width` | `float64` | scalar |  | undeclared | finite | m |
| `velocity` | `float64` | scalar |  | undeclared | finite | m/s |
| `max_force` | `float64` | scalar |  | undeclared | finite | N |


### `Ros2Flexiv_msgsActionMove_Result`

Original: `flexiv_msgs/action/Move_Result`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Flexiv_msgsActionMove_Feedback`

Original: `flexiv_msgs/action/Move_Feedback`. Canonical extent: 17..17 bytes. Semantic rule: `none`.

`UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `current_width` | `float64` | scalar |  | undeclared | finite | m |
| `current_force` | `float64` | scalar |  | undeclared | finite | N |
| `moving` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgDigital`

Original: `flexiv_msgs/msg/Digital`. Canonical extent: 2..2 bytes. Semantic rule: `none`.

`UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `pin` | `uint8` | scalar |  | undeclared | finite |  |
| `state` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgGPIOStates`

Original: `flexiv_msgs/msg/GPIOStates`. Canonical extent: 4..68 bytes. Semantic rule: `none`.

`UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `states` | `flexiv_msgs/msg/Digital` | sequence | 32 elements | undeclared | finite |  |


### `Ros2Std_msgsMsgHeader`

Original: `std_msgs/msg/Header`. Canonical extent: 12..268 bytes. Semantic rule: `none`.

`UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `stamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Standard metadata for higher-level stamped data types. This is generally used to communicate timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as seconds and nanoseconds. |
| `frame_id` | `string` | scalar | 256 bytes | undeclared | finite | Transform frame with which this data is associated. |


### `Ros2Flexiv_msgsMsgJointImpedance`

Original: `flexiv_msgs/msg/JointImpedance`. Canonical extent: 29..9373 bytes. Semantic rule: `none`.

`UWVMROS1_f93719074c048d0ab915eeefd2e62bcdfe16ac74f06a3aa505f06ca6d8c3515a`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Impedance properties of the robot's joint motion controller, used in the joint impedance control modes. Mirrors the arguments of flexiv::rdk::Robot::SetJointImpedance(). Header |
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | Joint names in URDF order. Every array below is indexed by this. Only the arm joints of the robot are covered: the robot reports no nominal joint stiffness for external axes. |
| `k_q` | `float64` | sequence | 32 elements | undeclared | finite | Joint motion stiffness K_q. A joint at 0 is free-floating. [Nm/rad] |
| `z_q` | `float64` | sequence | 32 elements | undeclared | finite | Joint motion damping ratio Z_q, dimensionless. Valid range [0.3, 0.8], nominal 0.7 |
| `k_q_nom` | `float64` | sequence | 32 elements | undeclared | finite | Nominal joint motion stiffness, the upper bound of k_q. [Nm/rad] |
| `in_effect` | `bool` | scalar |  | undeclared | finite | Whether these values are in effect on the robot. False while the robot is not in a joint impedance control mode: they are held and applied on the next controller start. |


### `Ros2Flexiv_msgsMsgJointInertiaScale`

Original: `flexiv_msgs/msg/JointInertiaScale`. Canonical extent: 21..8853 bytes. Semantic rule: `none`.

`UWVMROS1_3dc5f0addd6835f698feda5133efb05cde46e480dee0e219436fcc4443018e1f`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Inertia shaping scales of the robot's joint motion controller, used in the joint impedance control modes. Mirrors the argument of flexiv::rdk::Robot::SetJointInertiaScale(). Header |
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | Joint names in URDF order. Every array below is indexed by this. Only the arm joints of the robot are covered, matching JointImpedance.msg. |
| `inertia_scales` | `float64` | sequence | 32 elements | undeclared | finite | Inertia shaping scale sigma_q, dimensionless. Valid range [0.75, 1.0]. The nominal value 1.0 means no shaping; a smaller scale makes the joint behave as if it were lighter. |
| `in_effect` | `bool` | scalar |  | undeclared | finite | Whether these values are in effect on the robot. False while the robot is not in a joint impedance control mode: they are held and applied on the next controller start. |


### `Ros2Flexiv_msgsMsgJointPosVel`

Original: `flexiv_msgs/msg/JointPosVel`. Canonical extent: 8..520 bytes. Semantic rule: `none`.

`UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `positions` | `float64` | sequence | 32 elements | undeclared | finite |  |
| `velocities` | `float64` | sequence | 32 elements | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgMaxContactTorque`

Original: `flexiv_msgs/msg/MaxContactTorque`. Canonical extent: 25..9113 bytes. Semantic rule: `none`.

`UWVMROS1_d98ebc099077f69f5311d46c2179d08367c301b6c9d1b272b3bc55ba3df185da`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Maximum contact torques of the robot's joint motion controller, used in the joint impedance control modes. Mirrors the argument of flexiv::rdk::Robot::SetMaxContactTorque(). Header |
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | Joint names in URDF order. Every array below is indexed by this. Only the arm joints of the robot are covered, matching JointImpedance.msg. |
| `max_contact_torques` | `float64` | sequence | 32 elements | undeclared | finite | Maximum contact torque the controller regulates its output to maintain. [Nm] |
| `tau_max` | `float64` | sequence | 32 elements | undeclared | finite | Upper software limits of joint torques, the upper bound of max_contact_torques. [Nm] |
| `in_effect` | `bool` | scalar |  | undeclared | finite | Whether these values are in effect on the robot. False while the robot is not in a joint impedance control mode: they are held and applied on the next controller start. |


### `Ros2Flexiv_msgsMsgMode`

Original: `flexiv_msgs/msg/Mode`. Canonical extent: 1..1 bytes. Semantic rule: `none`.

`UWVMROS1_79f6d3de38a4d7d514780f9d71fcc8b5cd413a3b511f1b31243c210265be0c87`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `mode` | `int8` | scalar |  | undeclared | finite |  |

- `MODE_UNKNOWN`: `int8` = `0`.
- `MODE_IDLE`: `int8` = `1`.
- `MODE_RT_JOINT_TORQUE`: `int8` = `2`.
- `MODE_RT_JOINT_IMPEDANCE`: `int8` = `3`.
- `MODE_NRT_JOINT_IMPEDANCE`: `int8` = `4`.
- `MODE_RT_JOINT_POSITION`: `int8` = `5`.
- `MODE_NRT_JOINT_POSITION`: `int8` = `6`.
- `MODE_NRT_PLAN_EXECUTION`: `int8` = `7`.
- `MODE_NRT_PRIMITIVE_EXECUTION`: `int8` = `8`.
- `MODE_RT_CARTESIAN_MOTION_FORCE`: `int8` = `9`.
- `MODE_NRT_CARTESIAN_MOTION_FORCE`: `int8` = `10`.
- `MODE_NRT_SUPER_PRIMITIVE`: `int8` = `11`.

### `Ros2Flexiv_msgsMsgRobotEvent`

Original: `flexiv_msgs/msg/RobotEvent`. Canonical extent: 29..1053 bytes. Semantic rule: `none`.

`UWVMROS1_cbc02424eaea2ae9754309d070d424f0d0fcd078e67a64b22cbb1a36848e0a17`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `level` | `uint8` | scalar |  | undeclared | finite |  |
| `id` | `int32` | scalar |  | undeclared | finite | Unique ID of the event |
| `description` | `string` | scalar | 256 bytes | undeclared | finite | Brief description of the event |
| `consequences` | `string` | scalar | 256 bytes | undeclared | finite | Consequences caused by the event |
| `probable_causes` | `string` | scalar | 256 bytes | undeclared | finite | Probable causes of the event |
| `recommended_actions` | `string` | scalar | 256 bytes | undeclared | finite | Recommended actions after the event |
| `timestamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Timestamp of the event |

- `LEVEL_UNKNOWN`: `uint8` = `0`.
- `LEVEL_INFO`: `uint8` = `1`.
- `LEVEL_WARNING`: `uint8` = `2`.
- `LEVEL_ERROR`: `uint8` = `3`.
- `LEVEL_CRITICAL`: `uint8` = `4`.

### `Ros2Flexiv_msgsMsgOperationalStatus`

Original: `flexiv_msgs/msg/OperationalStatus`. Canonical extent: 34..17650 bytes. Semantic rule: `none`.

`UWVMROS1_89c0f96c20a56eb45bb21b617945cbe727558f12094a8377414fe5729d147a62`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Operational status of the robot and of the driver supervising it. The status values mirror flexiv::rdk::OperationalStatus one-for-one. Header |
| `operational_status` | `uint8` | scalar |  | undeclared | finite |  |
| `operational_status_name` | `string` | scalar | 256 bytes | undeclared | finite | Human-readable name of the operational status above |
| `driver_state` | `uint8` | scalar |  | undeclared | finite |  |
| `connected` | `bool` | scalar |  | undeclared | finite | Robot condition flags |
| `fault` | `bool` | scalar |  | undeclared | finite |  |
| `operational` | `bool` | scalar |  | undeclared | finite |  |
| `estop_released` | `bool` | scalar |  | undeclared | finite |  |
| `reduced` | `bool` | scalar |  | undeclared | finite |  |
| `recovery_state` | `bool` | scalar |  | undeclared | finite |  |
| `control_mode` | `int8` | scalar |  | undeclared | finite | Current robot control mode, values defined in Mode.msg |
| `recovery_policy` | `uint8` | scalar |  | undeclared | finite | How the current condition should be recovered from, values defined in RecoveryPolicy.msg |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the current condition and what to do about it |
| `recent_events` | `flexiv_msgs/msg/RobotEvent` | sequence | 16 elements | undeclared | finite | Most recent error and critical events reported by the robot |

- `STATUS_UNKNOWN`: `uint8` = `0`.
- `STATUS_READY`: `uint8` = `1`.
- `STATUS_BOOTING`: `uint8` = `2`.
- `STATUS_ESTOP_NOT_RELEASED`: `uint8` = `3`.
- `STATUS_NOT_SERVO_ON`: `uint8` = `4`.
- `STATUS_RELEASING_BRAKE`: `uint8` = `5`.
- `STATUS_MINOR_FAULT`: `uint8` = `6`.
- `STATUS_CRITICAL_FAULT`: `uint8` = `7`.
- `STATUS_IN_REDUCED_STATE`: `uint8` = `8`.
- `STATUS_IN_RECOVERY_STATE`: `uint8` = `9`.
- `STATUS_IN_MANUAL_MODE`: `uint8` = `10`.
- `STATUS_IN_AUTO_MODE`: `uint8` = `11`.
- `DRIVER_UNINITIALIZED`: `uint8` = `0`.
- `DRIVER_READY`: `uint8` = `1`.
- `DRIVER_FAULT`: `uint8` = `2`.
- `DRIVER_RECOVERING`: `uint8` = `3`.
- `DRIVER_LOCKOUT`: `uint8` = `4`.
- `DRIVER_DISCONNECTED`: `uint8` = `5`.

### `Ros2Flexiv_msgsMsgRecoveryPolicy`

Original: `flexiv_msgs/msg/RecoveryPolicy`. Canonical extent: 1..1 bytes. Semantic rule: `none`.

`UWVMROS1_0eb43d2482caac32e0977e6cd8ae7baeeba7fca2629c5cd1e1927e8a28af42bf`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `recovery_policy` | `uint8` | scalar |  | undeclared | finite |  |

- `NONE`: `uint8` = `0`.
- `TRANSIENT`: `uint8` = `1`.
- `AUTO_RECOVERABLE`: `uint8` = `2`.
- `WAIT_OPERATOR`: `uint8` = `3`.
- `SAFETY_LOCKOUT`: `uint8` = `4`.
- `CONNECTION_LOST`: `uint8` = `5`.

### `Ros2Geometry_msgsMsgPoint`

Original: `geometry_msgs/msg/Point`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This contains the position of a point in free space |
| `y` | `float64` | scalar |  | undeclared | finite |  |
| `z` | `float64` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgQuaternion`

Original: `geometry_msgs/msg/Quaternion`. Canonical extent: 32..32 bytes. Semantic rule: `none`.

`UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | 0.0 | finite | This represents an orientation in free space in quaternion form. |
| `y` | `float64` | scalar |  | 0.0 | finite |  |
| `z` | `float64` | scalar |  | 0.0 | finite |  |
| `w` | `float64` | scalar |  | 1.0 | finite |  |


### `Ros2Geometry_msgsMsgPose`

Original: `geometry_msgs/msg/Pose`. Canonical extent: 56..56 bytes. Semantic rule: `none`.

`UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `position` | `geometry_msgs/msg/Point` | scalar |  | undeclared | finite | A representation of pose in free space, composed of position and orientation. |
| `orientation` | `geometry_msgs/msg/Quaternion` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgPoseStamped`

Original: `geometry_msgs/msg/PoseStamped`. Canonical extent: 68..324 bytes. Semantic rule: `none`.

`UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | A Pose with reference coordinate frame and timestamp |
| `pose` | `geometry_msgs/msg/Pose` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgVector3`

Original: `geometry_msgs/msg/Vector3`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This represents a vector in free space. This is semantically different than a point. A vector is always anchored at the origin. When a transform is applied to a vector, only the rotational component is applied. |
| `y` | `float64` | scalar |  | undeclared | finite |  |
| `z` | `float64` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgTwist`

Original: `geometry_msgs/msg/Twist`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `linear` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This expresses velocity in free space broken into its linear and angular parts. |
| `angular` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgTwistStamped`

Original: `geometry_msgs/msg/TwistStamped`. Canonical extent: 60..316 bytes. Semantic rule: `none`.

`UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | A twist with reference coordinate frame and timestamp |
| `twist` | `geometry_msgs/msg/Twist` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgWrench`

Original: `geometry_msgs/msg/Wrench`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `force` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This represents force in free space, separated into its linear and angular parts. |
| `torque` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgWrenchStamped`

Original: `geometry_msgs/msg/WrenchStamped`. Canonical extent: 60..316 bytes. Semantic rule: `none`.

`UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | A wrench with reference coordinate frame and timestamp |
| `wrench` | `geometry_msgs/msg/Wrench` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgRobotStates`

Original: `flexiv_msgs/msg/RobotStates`. Canonical extent: 552..5160 bytes. Semantic rule: `none`.

`UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Header |
| `robot_timestamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Robot system timestamp |
| `q` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint positions using link-side encoder |
| `theta` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint positions using motor-side encoder |
| `dq` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint velocities using link-side encoder |
| `dtheta` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint velocities using motor-side encoder |
| `tau` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint torques |
| `tau_dot` | `float64` | sequence | 32 elements | undeclared | finite | Numerical derivative of measured joint torques |
| `tau_ext` | `float64` | sequence | 32 elements | undeclared | finite | Estimated external joint torques |
| `tau_interact` | `float64` | sequence | 32 elements | undeclared | finite | Estimated interaction joint torques |
| `temperature` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint temperatures |
| `tcp_pose` | `geometry_msgs/msg/PoseStamped` | scalar |  | undeclared | finite | Measured TCP pose expressed in world frame |
| `tcp_twist` | `geometry_msgs/msg/TwistStamped` | scalar |  | undeclared | finite | Measured TCP twist expressed in world frame |
| `flange_pose` | `geometry_msgs/msg/PoseStamped` | scalar |  | undeclared | finite | Measured flange pose expressed in world frame |
| `raw_ft_sensor` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Raw force-torque (FT) sensor reading in flange frame |
| `tcp_wrench_local` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Estimated external wrench applied on TCP and expressed in TCP frame |
| `tcp_wrench` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Estimated external wrench applied on TCP and expressed in world frame |
| `raw_tcp_wrench_local` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Unfiltered external wrench applied on TCP and expressed in TCP frame |
| `raw_tcp_wrench` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Unfiltered external wrench applied on TCP and expressed in world frame |


### `Ros2Flexiv_msgsSrvGetOperationalStatus_Request`

Original: `flexiv_msgs/srv/GetOperationalStatus_Request`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_7fd7ea129ca031bf1bf8d008b1273bc0deb676f3ae786731b420cd009bb3ae12`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|


### `Ros2Flexiv_msgsSrvGetOperationalStatus_Response`

Original: `flexiv_msgs/srv/GetOperationalStatus_Response`. Canonical extent: 34..17650 bytes. Semantic rule: `none`.

`UWVMROS1_c0c5d8eabf0e036c0854728e784564c68669a6cdbb5e22f7f5934956d9e4e7da`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `status` | `flexiv_msgs/msg/OperationalStatus` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsSrvSetJointImpedance_Request`

Original: `flexiv_msgs/srv/SetJointImpedance_Request`. Canonical extent: 12..8844 bytes. Semantic rule: `none`.

`UWVMROS1_37adbcb0beeef85996da45424e76b2d67bcbf245d22eae89f05e43d015527e08`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | Set impedance properties of the robot's joint motion controller. Requires the driver to run with rdk_control_mode:=joint_impedance.  An invalid request is rejected as a whole and nothing changes. Joints to set, named exactly as published on ~/joint_impedance. Leave empty to address every joint the interface covers, in that published order. On a dual-arm robot this is how a single arm is set on its own: name that arm's joints and the other arm is left untouched. |
| `k_q` | `float64` | sequence | 32 elements | undeclared | finite | Joint motion stiffness K_q, one entry per joint in joint_names, or one per covered joint when joint_names is empty. Valid range [0, k_q_nom]. Setting a joint to 0 makes it free-floating, which in this position-streaming driver means the joint will sag under gravity. [Nm/rad] |
| `z_q` | `float64` | sequence | 32 elements | undeclared | finite | Joint motion damping ratio Z_q, matching k_q entry for entry, or empty for the nominal 0.7. Valid range [0.3, 0.8]. Values away from nominal may lead to performance and stability issues. |


### `Ros2Flexiv_msgsSrvSetJointImpedance_Response`

Original: `flexiv_msgs/srv/SetJointImpedance_Response`. Canonical extent: 34..9634 bytes. Semantic rule: `none`.

`UWVMROS1_95a169dd0eb880ef3e71653a5e4cdf08e743db80df706e75664db582eb927f96`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome, naming the joint and the bound on a rejection |
| `setting` | `flexiv_msgs/msg/JointImpedance` | scalar |  | undeclared | finite | Every joint the interface covers and the values now held for it, unchanged from before on a rejection. Joints the request did not name keep the value they already had. |


### `Ros2Flexiv_msgsSrvSetJointInertiaScale_Request`

Original: `flexiv_msgs/srv/SetJointInertiaScale_Request`. Canonical extent: 8..8584 bytes. Semantic rule: `none`.

`UWVMROS1_03aeec1174b3eda7777dc74548c9781915c532bef92af3f4383a801e3b8ff625`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | Set inertia shaping scales of the robot's joint motion controller, which make the joints behave as if they were lighter. Requires the driver to run with rdk_control_mode:=joint_impedance.  An invalid request is rejected as a whole and nothing changes. Joints to set, named exactly as published on ~/joint_inertia_scale. Leave empty to address every joint the interface covers, in that published order. On a dual-arm robot this is how a single arm is set on its own: name that arm's joints and the other arm is left untouched. |
| `inertia_scales` | `float64` | sequence | 32 elements | undeclared | finite | Inertia shaping scale sigma_q, one entry per joint in joint_names, or one per covered joint when joint_names is empty. Valid range [0.75, 1.0]. The nominal value 1.0 means no shaping; a smaller scale corresponds to lighter inertia. |


### `Ros2Flexiv_msgsSrvSetJointInertiaScale_Response`

Original: `flexiv_msgs/srv/SetJointInertiaScale_Response`. Canonical extent: 26..9114 bytes. Semantic rule: `none`.

`UWVMROS1_2b7d36ecdc70ec1a450a03d412cfd431e735fc3aa601f321007afabe00f51931`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome, naming the joint and the bound on a rejection |
| `setting` | `flexiv_msgs/msg/JointInertiaScale` | scalar |  | undeclared | finite | Every joint the interface covers and the values now held for it, unchanged from before on a rejection. Joints the request did not name keep the value they already had. |


### `Ros2Flexiv_msgsSrvSetMaxContactTorque_Request`

Original: `flexiv_msgs/srv/SetMaxContactTorque_Request`. Canonical extent: 8..8584 bytes. Semantic rule: `none`.

`UWVMROS1_cfbd80557b3c0529a3af3557b87908c05817d873401e3efb3c5ba8203af6b69e`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | Set maximum contact torques of the robot's joint motion controller. The controller regulates its output to keep contact torques with the environment under these values. Requires the driver to run with rdk_control_mode:=joint_impedance.  An invalid request is rejected as a whole and nothing changes. Joints to set, named exactly as published on ~/max_contact_torque. Leave empty to address every joint the interface covers, in that published order. On a dual-arm robot this is how a single arm is set on its own: name that arm's joints and the other arm is left untouched. |
| `max_contact_torques` | `float64` | sequence | 32 elements | undeclared | finite | Maximum contact torque, one entry per joint in joint_names, or one per covered joint when joint_names is empty. Valid range [0, tau_max]. Raising this increases the force the robot may exert on its surroundings. [Nm] |


### `Ros2Flexiv_msgsSrvSetMaxContactTorque_Response`

Original: `flexiv_msgs/srv/SetMaxContactTorque_Response`. Canonical extent: 30..9374 bytes. Semantic rule: `none`.

`UWVMROS1_602bd439ab984dd9d7f64786005dd4f5763d245121a09833f75cee914e9dd43c`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome, naming the joint and the bound on a rejection |
| `setting` | `flexiv_msgs/msg/MaxContactTorque` | scalar |  | undeclared | finite | Every joint the interface covers and the values now held for it, unchanged from before on a rejection. Joints the request did not name keep the value they already had. |


## ros2_jazzy_v1

`ros2` / `jazzy` / `flexiv-ros2-jazzy-v1-complete`

原始定义与所有服务、动作组件均保留。规范编码不是 DDS CDR 或 ROS1 TCPROS 字节。

### `builtin_interfaces/msg/Time`

Kind: `message`. Components: `message=Ros2Builtin_interfacesMsgTime`.

### `flexiv_msgs/action/ErrorRecovery`

Kind: `action`. Components: `goal=Ros2Flexiv_msgsActionErrorRecovery_Goal`, `result=Ros2Flexiv_msgsActionErrorRecovery_Result`, `feedback=Ros2Flexiv_msgsActionErrorRecovery_Feedback`.

### `flexiv_msgs/action/Grasp`

Kind: `action`. Components: `goal=Ros2Flexiv_msgsActionGrasp_Goal`, `result=Ros2Flexiv_msgsActionGrasp_Result`, `feedback=Ros2Flexiv_msgsActionGrasp_Feedback`.

### `flexiv_msgs/action/Move`

Kind: `action`. Components: `goal=Ros2Flexiv_msgsActionMove_Goal`, `result=Ros2Flexiv_msgsActionMove_Result`, `feedback=Ros2Flexiv_msgsActionMove_Feedback`.

### `flexiv_msgs/msg/CartesianMotionForce`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgCartesianMotionForce`.

### `flexiv_msgs/msg/Digital`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgDigital`.

### `flexiv_msgs/msg/GPIOStates`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgGPIOStates`.

### `flexiv_msgs/msg/JointImpedance`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgJointImpedance`.

### `flexiv_msgs/msg/JointInertiaScale`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgJointInertiaScale`.

### `flexiv_msgs/msg/JointPosVel`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgJointPosVel`.

### `flexiv_msgs/msg/MaxContactTorque`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgMaxContactTorque`.

### `flexiv_msgs/msg/Mode`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgMode`.

### `flexiv_msgs/msg/OperationalStatus`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgOperationalStatus`.

### `flexiv_msgs/msg/RecoveryPolicy`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgRecoveryPolicy`.

### `flexiv_msgs/msg/RobotEvent`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgRobotEvent`.

### `flexiv_msgs/msg/RobotStates`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgRobotStates`.

### `flexiv_msgs/srv/GetOperationalStatus`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvGetOperationalStatus_Request`, `response=Ros2Flexiv_msgsSrvGetOperationalStatus_Response`.

### `flexiv_msgs/srv/SetCartesianImpedance`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetCartesianImpedance_Request`, `response=Ros2Flexiv_msgsSrvSetCartesianImpedance_Response`.

### `flexiv_msgs/srv/SetCartesianMotionLimits`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request`, `response=Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response`.

### `flexiv_msgs/srv/SetForceControlAxis`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetForceControlAxis_Request`, `response=Ros2Flexiv_msgsSrvSetForceControlAxis_Response`.

### `flexiv_msgs/srv/SetForceControlFrame`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetForceControlFrame_Request`, `response=Ros2Flexiv_msgsSrvSetForceControlFrame_Response`.

### `flexiv_msgs/srv/SetJointImpedance`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetJointImpedance_Request`, `response=Ros2Flexiv_msgsSrvSetJointImpedance_Response`.

### `flexiv_msgs/srv/SetJointInertiaScale`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetJointInertiaScale_Request`, `response=Ros2Flexiv_msgsSrvSetJointInertiaScale_Response`.

### `flexiv_msgs/srv/SetMaxContactTorque`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetMaxContactTorque_Request`, `response=Ros2Flexiv_msgsSrvSetMaxContactTorque_Response`.

### `flexiv_msgs/srv/SetMaxContactWrench`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetMaxContactWrench_Request`, `response=Ros2Flexiv_msgsSrvSetMaxContactWrench_Response`.

### `flexiv_msgs/srv/SetNullSpaceObjectives`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request`, `response=Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response`.

### `flexiv_msgs/srv/SetNullSpacePosture`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetNullSpacePosture_Request`, `response=Ros2Flexiv_msgsSrvSetNullSpacePosture_Response`.

### `flexiv_msgs/srv/SetPassiveForceControl`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetPassiveForceControl_Request`, `response=Ros2Flexiv_msgsSrvSetPassiveForceControl_Response`.

### `geometry_msgs/msg/Accel`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgAccel`.

### `geometry_msgs/msg/AccelStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgAccelStamped`.

### `geometry_msgs/msg/Point`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPoint`.

### `geometry_msgs/msg/Pose`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPose`.

### `geometry_msgs/msg/PoseStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPoseStamped`.

### `geometry_msgs/msg/Quaternion`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgQuaternion`.

### `geometry_msgs/msg/Twist`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgTwist`.

### `geometry_msgs/msg/Vector3`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgVector3`.

### `geometry_msgs/msg/Wrench`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgWrench`.

### `geometry_msgs/msg/WrenchStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgWrenchStamped`.

### `std_msgs/msg/Header`

Kind: `message`. Components: `message=Ros2Std_msgsMsgHeader`.

### `Ros2Builtin_interfacesMsgTime`

Original: `builtin_interfaces/msg/Time`. Canonical extent: 8..8 bytes. Semantic rule: `normalized-time`.

`UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `sec` | `int32` | scalar |  | undeclared | finite | This message communicates ROS Time defined here: https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32 values. |
| `nanosec` | `uint32` | scalar |  | undeclared | finite | The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component. e.g. The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The time 1.7 seconds is represented as {sec: 1, nanosec: 7e8} |


### `Ros2Flexiv_msgsActionErrorRecovery_Goal`

Original: `flexiv_msgs/action/ErrorRecovery_Goal`. Canonical extent: 1..1 bytes. Semantic rule: `none`.

`UWVMROS1_255a9d152d16f6abe76bca261fbd19c385548a2f64dd421c58c74dc19f1bfd41`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `run_auto_recovery` | `bool` | scalar |  | False | finite | Recover the robot from a fault back to an operational state. On success the robot is enabled, operational and in IDLE control mode. Restoring the control mode is deliberately left to a controller restart, which re-initializes the controller's own setpoint and so cannot apply a stale pre-fault command. Run RunAutoRecovery() if the robot is in recovery state after a joint position limit violation. This moves the involved joints slowly back into the allowed range and requires a robot reboot afterwards, so it is opt-in. |


### `Ros2Flexiv_msgsActionErrorRecovery_Result`

Original: `flexiv_msgs/action/ErrorRecovery_Result`. Canonical extent: 7..263 bytes. Semantic rule: `none`.

`UWVMROS1_e1f54f9716ae64b5da8c1463f36379fbfffe35ea983a25dcb9db6e09771fcedc`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |
| `requires_controller_restart` | `bool` | scalar |  | undeclared | finite | True when the robot is operational again but controllers must be restarted to resume motion |
| `recovery_policy` | `uint8` | scalar |  | undeclared | finite | Policy that applied to the condition found, values defined in RecoveryPolicy.msg |


### `Ros2Flexiv_msgsActionErrorRecovery_Feedback`

Original: `flexiv_msgs/action/ErrorRecovery_Feedback`. Canonical extent: 9..265 bytes. Semantic rule: `none`.

`UWVMROS1_bf87aae8f76ba18d46ab7985e48a667f6b1ed99a403aa90921c80ae4d4ac197a`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `recovery_state` | `uint8` | scalar |  | undeclared | finite |  |
| `recovery_state_name` | `string` | scalar | 256 bytes | undeclared | finite | Human-readable name of the recovery state above |
| `elapsed_seconds` | `float32` | scalar |  | undeclared | finite | Seconds elapsed since the recovery started |

- `STATE_IDLE`: `uint8` = `0`.
- `STATE_CLASSIFY`: `uint8` = `1`.
- `STATE_STOP`: `uint8` = `2`.
- `STATE_CLEAR_FAULT`: `uint8` = `3`.
- `STATE_WAIT_FAULT_CLEARED`: `uint8` = `4`.
- `STATE_ENABLE`: `uint8` = `5`.
- `STATE_WAIT_OPERATIONAL`: `uint8` = `6`.
- `STATE_UNLOCK_EXTERNAL_AXES`: `uint8` = `7`.
- `STATE_RUN_AUTO_RECOVERY`: `uint8` = `8`.
- `STATE_COMPLETE`: `uint8` = `9`.
- `STATE_FAILED`: `uint8` = `10`.

### `Ros2Flexiv_msgsActionGrasp_Goal`

Original: `flexiv_msgs/action/Grasp_Goal`. Canonical extent: 8..8 bytes. Semantic rule: `none`.

`UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `force` | `float64` | scalar |  | undeclared | finite | N |


### `Ros2Flexiv_msgsActionGrasp_Result`

Original: `flexiv_msgs/action/Grasp_Result`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Flexiv_msgsActionGrasp_Feedback`

Original: `flexiv_msgs/action/Grasp_Feedback`. Canonical extent: 17..17 bytes. Semantic rule: `none`.

`UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `current_width` | `float64` | scalar |  | undeclared | finite | m |
| `current_force` | `float64` | scalar |  | undeclared | finite | N |
| `moving` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsActionMove_Goal`

Original: `flexiv_msgs/action/Move_Goal`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `width` | `float64` | scalar |  | undeclared | finite | m |
| `velocity` | `float64` | scalar |  | undeclared | finite | m/s |
| `max_force` | `float64` | scalar |  | undeclared | finite | N |


### `Ros2Flexiv_msgsActionMove_Result`

Original: `flexiv_msgs/action/Move_Result`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Flexiv_msgsActionMove_Feedback`

Original: `flexiv_msgs/action/Move_Feedback`. Canonical extent: 17..17 bytes. Semantic rule: `none`.

`UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `current_width` | `float64` | scalar |  | undeclared | finite | m |
| `current_force` | `float64` | scalar |  | undeclared | finite | N |
| `moving` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Std_msgsMsgHeader`

Original: `std_msgs/msg/Header`. Canonical extent: 12..268 bytes. Semantic rule: `none`.

`UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `stamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Standard metadata for higher-level stamped data types. This is generally used to communicate timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as seconds and nanoseconds. |
| `frame_id` | `string` | scalar | 256 bytes | undeclared | finite | Transform frame with which this data is associated. |


### `Ros2Geometry_msgsMsgPoint`

Original: `geometry_msgs/msg/Point`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This contains the position of a point in free space |
| `y` | `float64` | scalar |  | undeclared | finite |  |
| `z` | `float64` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgQuaternion`

Original: `geometry_msgs/msg/Quaternion`. Canonical extent: 32..32 bytes. Semantic rule: `none`.

`UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | 0.0 | finite | This represents an orientation in free space in quaternion form. |
| `y` | `float64` | scalar |  | 0.0 | finite |  |
| `z` | `float64` | scalar |  | 0.0 | finite |  |
| `w` | `float64` | scalar |  | 1.0 | finite |  |


### `Ros2Geometry_msgsMsgPose`

Original: `geometry_msgs/msg/Pose`. Canonical extent: 56..56 bytes. Semantic rule: `none`.

`UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `position` | `geometry_msgs/msg/Point` | scalar |  | undeclared | finite | A representation of pose in free space, composed of position and orientation. |
| `orientation` | `geometry_msgs/msg/Quaternion` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgVector3`

Original: `geometry_msgs/msg/Vector3`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This represents a vector in free space. This is semantically different than a point. A vector is always anchored at the origin. When a transform is applied to a vector, only the rotational component is applied. |
| `y` | `float64` | scalar |  | undeclared | finite |  |
| `z` | `float64` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgWrench`

Original: `geometry_msgs/msg/Wrench`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `force` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This represents force in free space, separated into its linear and angular parts. |
| `torque` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgTwist`

Original: `geometry_msgs/msg/Twist`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `linear` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This expresses velocity in free space broken into its linear and angular parts. |
| `angular` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgCartesianMotionForce`

Original: `flexiv_msgs/msg/CartesianMotionForce`. Canonical extent: 164..420 bytes. Semantic rule: `none`.

`UWVMROS1_2f8de91fe69cf2aa5a50dabb1178e9dcef6b1196602e667a8901caeeb7cba8c3`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Cartesian motion-force command for one robot, consumed by cartesian_motion_force_controller and forwarded to flexiv::rdk::Robot::SendCartesianMotionForce(). Header. frame_id is ignored: the pose is always expressed in the robot's world frame. |
| `pose` | `geometry_msgs/msg/Pose` | scalar |  | undeclared | finite | Target TCP pose in world frame. The orientation is normalized by the controller. [m] |
| `wrench` | `geometry_msgs/msg/Wrench` | scalar |  | undeclared | finite | Target TCP wrench in the force control frame, only tracked on axes enabled for force control. It is the wrench sensed at the TCP, not exerted by it: +5 N in world Z pushes the TCP down. [N]:[Nm] |
| `velocity` | `geometry_msgs/msg/Twist` | scalar |  | undeclared | finite | Target TCP velocity in world frame when reaching the pose. Leave 0 for the most robust behaviour. [m/s]:[rad/s] |


### `Ros2Flexiv_msgsMsgDigital`

Original: `flexiv_msgs/msg/Digital`. Canonical extent: 2..2 bytes. Semantic rule: `none`.

`UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `pin` | `uint8` | scalar |  | undeclared | finite |  |
| `state` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgGPIOStates`

Original: `flexiv_msgs/msg/GPIOStates`. Canonical extent: 4..68 bytes. Semantic rule: `none`.

`UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `states` | `flexiv_msgs/msg/Digital` | sequence | 32 elements | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgJointImpedance`

Original: `flexiv_msgs/msg/JointImpedance`. Canonical extent: 29..9373 bytes. Semantic rule: `none`.

`UWVMROS1_f93719074c048d0ab915eeefd2e62bcdfe16ac74f06a3aa505f06ca6d8c3515a`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Impedance properties of the robot's joint motion controller, used in the joint impedance control modes. Mirrors the arguments of flexiv::rdk::Robot::SetJointImpedance(). Header |
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | Joint names in URDF order. Every array below is indexed by this. |
| `k_q` | `float64` | sequence | 32 elements | undeclared | finite | Joint motion stiffness K_q. A joint at 0 is free-floating. [Nm/rad] |
| `z_q` | `float64` | sequence | 32 elements | undeclared | finite | Joint motion damping ratio Z_q, dimensionless. Valid range [0.3, 0.8], nominal 0.7 |
| `k_q_nom` | `float64` | sequence | 32 elements | undeclared | finite | Nominal joint motion stiffness, the upper bound of k_q. [Nm/rad] |
| `in_effect` | `bool` | scalar |  | undeclared | finite | Whether these values are in effect on the robot. False while the robot is not in a joint impedance control mode: they are held and applied on the next controller start. |


### `Ros2Flexiv_msgsMsgJointInertiaScale`

Original: `flexiv_msgs/msg/JointInertiaScale`. Canonical extent: 21..8853 bytes. Semantic rule: `none`.

`UWVMROS1_3dc5f0addd6835f698feda5133efb05cde46e480dee0e219436fcc4443018e1f`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Inertia shaping scales of the robot's joint motion controller, used in the joint impedance control modes. Mirrors the argument of flexiv::rdk::Robot::SetJointInertiaScale(). Header |
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | Joint names in URDF order. Every array below is indexed by this. |
| `inertia_scales` | `float64` | sequence | 32 elements | undeclared | finite | Inertia shaping scale sigma_q, dimensionless. Valid range [0.75, 1.0]. The nominal value 1.0 means no shaping; a smaller scale makes the joint behave as if it were lighter. |
| `in_effect` | `bool` | scalar |  | undeclared | finite | Whether these values are in effect on the robot. False while the robot is not in a joint impedance control mode: they are held and applied on the next controller start. |


### `Ros2Flexiv_msgsMsgJointPosVel`

Original: `flexiv_msgs/msg/JointPosVel`. Canonical extent: 8..520 bytes. Semantic rule: `none`.

`UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `positions` | `float64` | sequence | 32 elements | undeclared | finite |  |
| `velocities` | `float64` | sequence | 32 elements | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgMaxContactTorque`

Original: `flexiv_msgs/msg/MaxContactTorque`. Canonical extent: 25..9113 bytes. Semantic rule: `none`.

`UWVMROS1_d98ebc099077f69f5311d46c2179d08367c301b6c9d1b272b3bc55ba3df185da`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Maximum contact torques of the robot's joint motion controller, used in the joint impedance control modes. Mirrors the argument of flexiv::rdk::Robot::SetMaxContactTorque(). Header |
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | Joint names in URDF order. Every array below is indexed by this. |
| `max_contact_torques` | `float64` | sequence | 32 elements | undeclared | finite | Maximum contact torque the controller regulates its output to maintain. [Nm] |
| `tau_max` | `float64` | sequence | 32 elements | undeclared | finite | Upper software limits of joint torques, the upper bound of max_contact_torques. [Nm] |
| `in_effect` | `bool` | scalar |  | undeclared | finite | Whether these values are in effect on the robot. False while the robot is not in a joint impedance control mode: they are held and applied on the next controller start. |


### `Ros2Flexiv_msgsMsgMode`

Original: `flexiv_msgs/msg/Mode`. Canonical extent: 1..1 bytes. Semantic rule: `none`.

`UWVMROS1_79f6d3de38a4d7d514780f9d71fcc8b5cd413a3b511f1b31243c210265be0c87`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `mode` | `int8` | scalar |  | undeclared | finite |  |

- `MODE_UNKNOWN`: `int8` = `0`.
- `MODE_IDLE`: `int8` = `1`.
- `MODE_RT_JOINT_TORQUE`: `int8` = `2`.
- `MODE_RT_JOINT_IMPEDANCE`: `int8` = `3`.
- `MODE_NRT_JOINT_IMPEDANCE`: `int8` = `4`.
- `MODE_RT_JOINT_POSITION`: `int8` = `5`.
- `MODE_NRT_JOINT_POSITION`: `int8` = `6`.
- `MODE_NRT_PLAN_EXECUTION`: `int8` = `7`.
- `MODE_NRT_PRIMITIVE_EXECUTION`: `int8` = `8`.
- `MODE_RT_CARTESIAN_MOTION_FORCE`: `int8` = `9`.
- `MODE_NRT_CARTESIAN_MOTION_FORCE`: `int8` = `10`.
- `MODE_NRT_SUPER_PRIMITIVE`: `int8` = `11`.

### `Ros2Flexiv_msgsMsgRobotEvent`

Original: `flexiv_msgs/msg/RobotEvent`. Canonical extent: 29..1053 bytes. Semantic rule: `none`.

`UWVMROS1_cbc02424eaea2ae9754309d070d424f0d0fcd078e67a64b22cbb1a36848e0a17`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `level` | `uint8` | scalar |  | undeclared | finite |  |
| `id` | `int32` | scalar |  | undeclared | finite | Unique ID of the event |
| `description` | `string` | scalar | 256 bytes | undeclared | finite | Brief description of the event |
| `consequences` | `string` | scalar | 256 bytes | undeclared | finite | Consequences caused by the event |
| `probable_causes` | `string` | scalar | 256 bytes | undeclared | finite | Probable causes of the event |
| `recommended_actions` | `string` | scalar | 256 bytes | undeclared | finite | Recommended actions after the event |
| `timestamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Timestamp of the event |

- `LEVEL_UNKNOWN`: `uint8` = `0`.
- `LEVEL_INFO`: `uint8` = `1`.
- `LEVEL_WARNING`: `uint8` = `2`.
- `LEVEL_ERROR`: `uint8` = `3`.
- `LEVEL_CRITICAL`: `uint8` = `4`.

### `Ros2Flexiv_msgsMsgOperationalStatus`

Original: `flexiv_msgs/msg/OperationalStatus`. Canonical extent: 34..17650 bytes. Semantic rule: `none`.

`UWVMROS1_fb8887a722a4b6d895ed17ba5db0f4145b4ddd01eecf876419b287dd07bc728b`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Operational status of the robot and of the driver supervising it. The status values mirror flexiv::rdk::OperationalStatus one-for-one. Header |
| `operational_status` | `uint8` | scalar |  | undeclared | finite |  |
| `operational_status_name` | `string` | scalar | 256 bytes | undeclared | finite | Human-readable name of the operational status above |
| `driver_state` | `uint8` | scalar |  | undeclared | finite |  |
| `connected` | `bool` | scalar |  | undeclared | finite | Robot condition flags |
| `fault` | `bool` | scalar |  | undeclared | finite |  |
| `operational` | `bool` | scalar |  | undeclared | finite |  |
| `estop_released` | `bool` | scalar |  | undeclared | finite |  |
| `reduced` | `bool` | scalar |  | undeclared | finite |  |
| `recovery_state` | `bool` | scalar |  | undeclared | finite |  |
| `control_mode` | `int8` | scalar |  | undeclared | finite | Current robot control mode, values defined in Mode.msg |
| `recovery_policy` | `uint8` | scalar |  | undeclared | finite | How the current condition should be recovered from, values defined in RecoveryPolicy.msg |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the current condition and what to do about it |
| `recent_events` | `flexiv_msgs/msg/RobotEvent` | sequence | 16 elements | undeclared | finite | Most recent error and critical events reported by the robot |

- `STATUS_UNKNOWN`: `uint8` = `0`.
- `STATUS_READY`: `uint8` = `1`.
- `STATUS_BOOTING`: `uint8` = `2`.
- `STATUS_ESTOP_NOT_RELEASED`: `uint8` = `3`.
- `STATUS_NOT_ENABLED`: `uint8` = `4`.
- `STATUS_RELEASING_BRAKE`: `uint8` = `5`.
- `STATUS_MINOR_FAULT`: `uint8` = `6`.
- `STATUS_CRITICAL_FAULT`: `uint8` = `7`.
- `STATUS_IN_REDUCED_STATE`: `uint8` = `8`.
- `STATUS_IN_RECOVERY_STATE`: `uint8` = `9`.
- `STATUS_IN_MANUAL_MODE`: `uint8` = `10`.
- `STATUS_IN_AUTO_MODE`: `uint8` = `11`.
- `DRIVER_UNINITIALIZED`: `uint8` = `0`.
- `DRIVER_READY`: `uint8` = `1`.
- `DRIVER_FAULT`: `uint8` = `2`.
- `DRIVER_RECOVERING`: `uint8` = `3`.
- `DRIVER_LOCKOUT`: `uint8` = `4`.
- `DRIVER_DISCONNECTED`: `uint8` = `5`.

### `Ros2Flexiv_msgsMsgRecoveryPolicy`

Original: `flexiv_msgs/msg/RecoveryPolicy`. Canonical extent: 1..1 bytes. Semantic rule: `none`.

`UWVMROS1_0eb43d2482caac32e0977e6cd8ae7baeeba7fca2629c5cd1e1927e8a28af42bf`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `recovery_policy` | `uint8` | scalar |  | undeclared | finite |  |

- `NONE`: `uint8` = `0`.
- `TRANSIENT`: `uint8` = `1`.
- `AUTO_RECOVERABLE`: `uint8` = `2`.
- `WAIT_OPERATOR`: `uint8` = `3`.
- `SAFETY_LOCKOUT`: `uint8` = `4`.
- `CONNECTION_LOST`: `uint8` = `5`.

### `Ros2Geometry_msgsMsgPoseStamped`

Original: `geometry_msgs/msg/PoseStamped`. Canonical extent: 68..324 bytes. Semantic rule: `none`.

`UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | A Pose with reference coordinate frame and timestamp |
| `pose` | `geometry_msgs/msg/Pose` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgAccel`

Original: `geometry_msgs/msg/Accel`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `linear` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This expresses acceleration in free space broken into its linear and angular parts. |
| `angular` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgAccelStamped`

Original: `geometry_msgs/msg/AccelStamped`. Canonical extent: 60..316 bytes. Semantic rule: `none`.

`UWVMROS1_99c561d1968cbb554a188d387fb085b6721227a88b7243a7f90682ae20782329`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | An accel with reference coordinate frame and timestamp |
| `accel` | `geometry_msgs/msg/Accel` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgWrenchStamped`

Original: `geometry_msgs/msg/WrenchStamped`. Canonical extent: 60..316 bytes. Semantic rule: `none`.

`UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | A wrench with reference coordinate frame and timestamp |
| `wrench` | `geometry_msgs/msg/Wrench` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgRobotStates`

Original: `flexiv_msgs/msg/RobotStates`. Canonical extent: 552..5160 bytes. Semantic rule: `none`.

`UWVMROS1_7e84612c73d2d16252a0b93f995b5afa7e032f3de3826f0577c89670dde1f2d2`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Header |
| `robot_timestamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Robot system timestamp |
| `q` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint positions using link-side encoder |
| `theta` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint positions using motor-side encoder |
| `dq` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint velocities using link-side encoder |
| `dtheta` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint velocities using motor-side encoder |
| `tau` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint torques |
| `tau_dot` | `float64` | sequence | 32 elements | undeclared | finite | Numerical derivative of measured joint torques |
| `tau_ext` | `float64` | sequence | 32 elements | undeclared | finite | Estimated external joint torques |
| `tau_interact` | `float64` | sequence | 32 elements | undeclared | finite | Estimated interaction joint torques |
| `temperature` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint temperatures |
| `tcp_pose` | `geometry_msgs/msg/PoseStamped` | scalar |  | undeclared | finite | Measured TCP pose expressed in world frame |
| `tcp_vel` | `geometry_msgs/msg/AccelStamped` | scalar |  | undeclared | finite | Measured TCP velocity expressed in world frame |
| `flange_pose` | `geometry_msgs/msg/PoseStamped` | scalar |  | undeclared | finite | Measured flange pose expressed in world frame |
| `ft_sensor_raw` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Force-torque (FT) sensor raw reading in flange frame |
| `ext_wrench_in_tcp` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Estimated external wrench applied on TCP and expressed in TCP frame |
| `ext_wrench_in_world` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Estimated external wrench applied on TCP and expressed in world frame |
| `ext_wrench_in_tcp_raw` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Unfiltered external wrench applied on TCP and expressed in TCP frame |
| `ext_wrench_in_world_raw` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Unfiltered external wrench applied on TCP and expressed in world frame |


### `Ros2Flexiv_msgsSrvGetOperationalStatus_Request`

Original: `flexiv_msgs/srv/GetOperationalStatus_Request`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_7fd7ea129ca031bf1bf8d008b1273bc0deb676f3ae786731b420cd009bb3ae12`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|


### `Ros2Flexiv_msgsSrvGetOperationalStatus_Response`

Original: `flexiv_msgs/srv/GetOperationalStatus_Response`. Canonical extent: 34..17650 bytes. Semantic rule: `none`.

`UWVMROS1_b804d4a8c3dfdd26b0cad4314552092a90f439f0f364831b855bca4c30d49f42`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `status` | `flexiv_msgs/msg/OperationalStatus` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsSrvSetCartesianImpedance_Request`

Original: `flexiv_msgs/srv/SetCartesianImpedance_Request`. Canonical extent: 8..520 bytes. Semantic rule: `none`.

`UWVMROS1_a121634cb756eace8772aa4fb681a103b4716f6289a1ba66608d66ce2d83ff9f`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `k_x` | `float64` | sequence | 32 elements | undeclared | finite | Set the impedance properties of the robot's Cartesian motion controller, used in the Cartesian motion-force control mode. For a robot pair, each array holds the left robot's values first.  An invalid request is rejected as a whole and nothing changes. Cartesian stiffness [k_x, k_y, k_z, k_Rx, k_Ry, k_Rz], 6 per robot. Valid range [0, k_x_nom]. Empty means k_x_nom. [N/m]:[Nm/rad] |
| `z_x` | `float64` | sequence | 32 elements | undeclared | finite | Cartesian damping ratio, 6 per robot. Valid range [0.3, 0.8]. Empty means the nominal 0.7. |


### `Ros2Flexiv_msgsSrvSetCartesianImpedance_Response`

Original: `flexiv_msgs/srv/SetCartesianImpedance_Response`. Canonical extent: 9..521 bytes. Semantic rule: `none`.

`UWVMROS1_84cb649adf8fdcbc9e499dd9c8274542c7de6c466fbab5c2721349ee76974f29`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |
| `k_x_nom` | `float64` | sequence | 32 elements | undeclared | finite | Nominal Cartesian stiffness, the upper bound of k_x, 6 per robot. [N/m]:[Nm/rad] |


### `Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request`

Original: `flexiv_msgs/srv/SetCartesianMotionLimits_Request`. Canonical extent: 16..1040 bytes. Semantic rule: `none`.

`UWVMROS1_381d447a83ce08a843476dfe3b7e1650477b2575f873706d80d458e8153a6111`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `max_linear_vel` | `float64` | sequence | 32 elements | undeclared | finite | Set the motion limits the driver passes with every Cartesian motion-force command. Each array holds one entry per robot, left first. Only accepted while the Cartesian motion-force controller is running, and reset to the defaults on every controller start.  An invalid request is rejected as a whole and nothing changes. Maximum linear velocity. Must be positive. RDK default 0.5. [m/s] |
| `max_angular_vel` | `float64` | sequence | 32 elements | undeclared | finite | Maximum angular velocity. Must be positive. RDK default 1.0. [rad/s] |
| `max_linear_acc` | `float64` | sequence | 32 elements | undeclared | finite | Maximum linear acceleration. Must be positive. RDK default 2.0. [m/s^2] |
| `max_angular_acc` | `float64` | sequence | 32 elements | undeclared | finite | Maximum angular acceleration. Must be positive. RDK default 5.0. [rad/s^2] |


### `Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response`

Original: `flexiv_msgs/srv/SetCartesianMotionLimits_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_0adcf054313396afa13673e6a125f8a6dcc85b1009d36860b6447512f52bdc36`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |


### `Ros2Flexiv_msgsSrvSetForceControlAxis_Request`

Original: `flexiv_msgs/srv/SetForceControlAxis_Request`. Canonical extent: 8..296 bytes. Semantic rule: `none`.

`UWVMROS1_f068f06ad10e40bd50d06800f4178636c89547f5302af856a00d49757b54fef0`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `enabled_axes` | `bool` | sequence | 32 elements | undeclared | finite | Set the Cartesian axes that are force-controlled in the Cartesian motion-force control mode. The other axes stay motion-controlled. For a robot pair, each array holds the left robot's values first.  An invalid request is rejected as a whole and nothing changes. Force control flags [X, Y, Z, Rx, Ry, Rz] in the force control frame, 6 per robot |
| `max_linear_vel` | `float64` | sequence | 32 elements | undeclared | finite | Velocity limit of the force-controlled linear axes [X, Y, Z], 3 per robot, protecting against contact loss under active force control. Valid range [0.005, 2.0]. Empty means 1.0. [m/s] |


### `Ros2Flexiv_msgsSrvSetForceControlAxis_Response`

Original: `flexiv_msgs/srv/SetForceControlAxis_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_26f01b6e3ddb369b49f0a6521104992e654ea628d864c0883b9ccc584234963b`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |


### `Ros2Flexiv_msgsSrvSetForceControlFrame_Request`

Original: `flexiv_msgs/srv/SetForceControlFrame_Request`. Canonical extent: 8..296 bytes. Semantic rule: `none`.

`UWVMROS1_3f061d3f029eddf256a9aa50f07767e77d5c3b2efd6ae69a2ad4a789f4692b30`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `root_coord` | `uint8` | sequence | 32 elements | undeclared | finite | Root coordinate of t_in_root, 1 per robot. WORLD is fixed, TCP moves with the end effector. |
| `t_in_root` | `float64` | sequence | 32 elements | undeclared | finite | Transformation from the root coordinate to the force control frame [x, y, z, qw, qx, qy, qz], 7 per robot. Empty means identity. [m]:[] |

- `WORLD`: `uint8` = `0`.
- `TCP`: `uint8` = `1`.

### `Ros2Flexiv_msgsSrvSetForceControlFrame_Response`

Original: `flexiv_msgs/srv/SetForceControlFrame_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_cfec8391d4df88d36f4e3afbb956b12b3274b3bd0a6a6284cb44d49f12a44bde`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |


### `Ros2Flexiv_msgsSrvSetJointImpedance_Request`

Original: `flexiv_msgs/srv/SetJointImpedance_Request`. Canonical extent: 8..520 bytes. Semantic rule: `none`.

`UWVMROS1_5b1014a3a79fcd116f94142640c2c3e9c1867a2c54b9382f7165f7fda04a8584`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `k_q` | `float64` | sequence | 32 elements | undeclared | finite | Set impedance properties of the robot's joint motion controller. Requires the driver to run with rdk_control_mode:=joint_impedance.  k_q must hold one entry per joint of the hardware component, in URDF order. z_q may be left empty to use the nominal damping ratio 0.7, matching the RDK argument default. An invalid request is rejected as a whole and nothing changes. Joint motion stiffness K_q, one entry per joint in URDF order. Valid range [0, k_q_nom]. Setting a joint to 0 makes it free-floating, which in this position-streaming driver means the joint will sag under gravity. [Nm/rad] |
| `z_q` | `float64` | sequence | 32 elements | undeclared | finite | Joint motion damping ratio Z_q, one entry per joint in URDF order, or empty for the nominal 0.7. Valid range [0.3, 0.8]. Values away from nominal may lead to performance and stability issues. |


### `Ros2Flexiv_msgsSrvSetJointImpedance_Response`

Original: `flexiv_msgs/srv/SetJointImpedance_Response`. Canonical extent: 34..9634 bytes. Semantic rule: `none`.

`UWVMROS1_95a169dd0eb880ef3e71653a5e4cdf08e743db80df706e75664db582eb927f96`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome, naming the joint and the bound on a rejection |
| `setting` | `flexiv_msgs/msg/JointImpedance` | scalar |  | undeclared | finite | The values now held by the driver, unchanged from before on a rejection |


### `Ros2Flexiv_msgsSrvSetJointInertiaScale_Request`

Original: `flexiv_msgs/srv/SetJointInertiaScale_Request`. Canonical extent: 4..260 bytes. Semantic rule: `none`.

`UWVMROS1_752da94424644200ef0e6463486a6dbc74b85c46acfaeac3b569b6248c1e2686`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `inertia_scales` | `float64` | sequence | 32 elements | undeclared | finite | Set inertia shaping scales of the robot's joint motion controller, which make the joints behave as if they were lighter. Requires the driver to run with rdk_control_mode:=joint_impedance.  inertia_scales must hold one entry per joint of the hardware component, in URDF order. An invalid request is rejected as a whole and nothing changes. Inertia shaping scale sigma_q, one entry per joint in URDF order. Valid range [0.75, 1.0]. The nominal value 1.0 means no shaping; a smaller scale corresponds to lighter inertia. |


### `Ros2Flexiv_msgsSrvSetJointInertiaScale_Response`

Original: `flexiv_msgs/srv/SetJointInertiaScale_Response`. Canonical extent: 26..9114 bytes. Semantic rule: `none`.

`UWVMROS1_2b7d36ecdc70ec1a450a03d412cfd431e735fc3aa601f321007afabe00f51931`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome, naming the joint and the bound on a rejection |
| `setting` | `flexiv_msgs/msg/JointInertiaScale` | scalar |  | undeclared | finite | The values now held by the driver, unchanged from before on a rejection |


### `Ros2Flexiv_msgsSrvSetMaxContactTorque_Request`

Original: `flexiv_msgs/srv/SetMaxContactTorque_Request`. Canonical extent: 4..260 bytes. Semantic rule: `none`.

`UWVMROS1_8850403204dc91a11797a767dde6999163008f41ad5c89360d852d037806fb43`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `max_contact_torques` | `float64` | sequence | 32 elements | undeclared | finite | Set maximum contact torques of the robot's joint motion controller. The controller regulates its output to keep contact torques with the environment under these values. Requires the driver to run with rdk_control_mode:=joint_impedance.  max_contact_torques must hold one entry per joint of the hardware component, in URDF order. An invalid request is rejected as a whole and nothing changes. Maximum contact torque, one entry per joint in URDF order. Valid range [0, tau_max]. Raising this increases the force the robot may exert on its surroundings. [Nm] |


### `Ros2Flexiv_msgsSrvSetMaxContactTorque_Response`

Original: `flexiv_msgs/srv/SetMaxContactTorque_Response`. Canonical extent: 30..9374 bytes. Semantic rule: `none`.

`UWVMROS1_602bd439ab984dd9d7f64786005dd4f5763d245121a09833f75cee914e9dd43c`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome, naming the joint and the bound on a rejection |
| `setting` | `flexiv_msgs/msg/MaxContactTorque` | scalar |  | undeclared | finite | The values now held by the driver, unchanged from before on a rejection |


### `Ros2Flexiv_msgsSrvSetMaxContactWrench_Request`

Original: `flexiv_msgs/srv/SetMaxContactWrench_Request`. Canonical extent: 4..260 bytes. Semantic rule: `none`.

`UWVMROS1_5a943fdeba115cb68b38d0a1d98e9247331419b4ec89ad0870387251fd5d9467`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `max_wrench` | `float64` | sequence | 32 elements | undeclared | finite-or-positive-infinity | Set the maximum contact wrench for the motion-controlled axes of the Cartesian motion-force control mode. For a robot pair, the array holds the left robot's values first.  An invalid request is rejected as a whole and nothing changes. Maximum contact wrench [f_x, f_y, f_z, m_x, m_y, m_z], 6 per robot. Must not be negative. Use infinity to disable the regulation. [N]:[Nm] |


### `Ros2Flexiv_msgsSrvSetMaxContactWrench_Response`

Original: `flexiv_msgs/srv/SetMaxContactWrench_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_6a39df3ba6eacc0a230a8f039f16f03574d76818fb53e9445c29f175c2e1420e`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |


### `Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request`

Original: `flexiv_msgs/srv/SetNullSpaceObjectives_Request`. Canonical extent: 12..780 bytes. Semantic rule: `none`.

`UWVMROS1_01cb5842d8e2eca55e63f74f7f2c973038bc354a5c0ef2552d4f6e82e382bc27`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `linear_manipulability` | `float64` | sequence | 32 elements | undeclared | finite | Set the weights of the three optimization objectives of the null-space posture control, used in the Cartesian motion-force control mode. Each array holds one entry per robot, left first.  An invalid request is rejected as a whole and nothing changes. Weight of translational manipulability. Valid range [0.0, 1.0]. RDK default 0.0. |
| `angular_manipulability` | `float64` | sequence | 32 elements | undeclared | finite | Weight of rotational manipulability. Valid range [0.0, 1.0]. RDK default 0.0. |
| `ref_positions_tracking` | `float64` | sequence | 32 elements | undeclared | finite | Weight of tracking the null-space posture reference. Valid range [0.1, 1.0]. RDK default 0.5. |


### `Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response`

Original: `flexiv_msgs/srv/SetNullSpaceObjectives_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_70fb3c7a3a0a6b46347624a273b6e7180ad1610ca09a5c672b5ad7a976b79298`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |


### `Ros2Flexiv_msgsSrvSetNullSpacePosture_Request`

Original: `flexiv_msgs/srv/SetNullSpacePosture_Request`. Canonical extent: 4..260 bytes. Semantic rule: `none`.

`UWVMROS1_0fb02e69195688307d15cc7f8b6f7a95f400d4083cc8c363e29071fee844b92d`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `ref_positions` | `float64` | sequence | 32 elements | undeclared | finite | Set the reference joint positions of the null-space posture control, used in the Cartesian motion-force control mode.  An invalid request is rejected as a whole and nothing changes. Reference joint positions, one entry per joint of the hardware component in URDF order. Valid range [q_min, q_max]. [rad] |


### `Ros2Flexiv_msgsSrvSetNullSpacePosture_Response`

Original: `flexiv_msgs/srv/SetNullSpacePosture_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_913c995a461fa70cd62293c1932d738a4a8b799c4ebd13a1a8afdaa8acef4293`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |


### `Ros2Flexiv_msgsSrvSetPassiveForceControl_Request`

Original: `flexiv_msgs/srv/SetPassiveForceControl_Request`. Canonical extent: 4..36 bytes. Semantic rule: `none`.

`UWVMROS1_603cd39ccf8c37d944afe9108085fe3ba72881d772e42f24f87ec380f3770d16`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `enabled` | `bool` | sequence | 32 elements | undeclared | finite | Enable or disable passive (open-loop) force control for the Cartesian motion-force control mode. Active (closed-loop) force control is the default. Only accepted while the robot is idle, i.e. before the Cartesian motion-force controller is started, and disabled again when it stops. One entry per robot, left first |


### `Ros2Flexiv_msgsSrvSetPassiveForceControl_Response`

Original: `flexiv_msgs/srv/SetPassiveForceControl_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_73fe92bbcf47063293bde2f3542c719111f0bd82aaa6b500f15122c6aa1e7d35`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |


## ros2_jazzy_v2

`ros2` / `jazzy` / `flexiv-ros2-jazzy-v2-complete`

原始定义与所有服务、动作组件均保留。规范编码不是 DDS CDR 或 ROS1 TCPROS 字节。

### `builtin_interfaces/msg/Time`

Kind: `message`. Components: `message=Ros2Builtin_interfacesMsgTime`.

### `flexiv_msgs/action/Grasp`

Kind: `action`. Components: `goal=Ros2Flexiv_msgsActionGrasp_Goal`, `result=Ros2Flexiv_msgsActionGrasp_Result`, `feedback=Ros2Flexiv_msgsActionGrasp_Feedback`.

### `flexiv_msgs/action/Move`

Kind: `action`. Components: `goal=Ros2Flexiv_msgsActionMove_Goal`, `result=Ros2Flexiv_msgsActionMove_Result`, `feedback=Ros2Flexiv_msgsActionMove_Feedback`.

### `flexiv_msgs/msg/Digital`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgDigital`.

### `flexiv_msgs/msg/GPIOStates`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgGPIOStates`.

### `flexiv_msgs/msg/JointPosVel`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgJointPosVel`.

### `flexiv_msgs/msg/Mode`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgMode`.

### `flexiv_msgs/msg/RobotStates`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgRobotStates`.

### `geometry_msgs/msg/Point`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPoint`.

### `geometry_msgs/msg/Pose`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPose`.

### `geometry_msgs/msg/PoseStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPoseStamped`.

### `geometry_msgs/msg/Quaternion`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgQuaternion`.

### `geometry_msgs/msg/Twist`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgTwist`.

### `geometry_msgs/msg/TwistStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgTwistStamped`.

### `geometry_msgs/msg/Vector3`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgVector3`.

### `geometry_msgs/msg/Wrench`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgWrench`.

### `geometry_msgs/msg/WrenchStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgWrenchStamped`.

### `std_msgs/msg/Header`

Kind: `message`. Components: `message=Ros2Std_msgsMsgHeader`.

### `Ros2Builtin_interfacesMsgTime`

Original: `builtin_interfaces/msg/Time`. Canonical extent: 8..8 bytes. Semantic rule: `normalized-time`.

`UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `sec` | `int32` | scalar |  | undeclared | finite | This message communicates ROS Time defined here: https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32 values. |
| `nanosec` | `uint32` | scalar |  | undeclared | finite | The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component. e.g. The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The time 1.7 seconds is represented as {sec: 1, nanosec: 7e8} |


### `Ros2Flexiv_msgsActionGrasp_Goal`

Original: `flexiv_msgs/action/Grasp_Goal`. Canonical extent: 8..8 bytes. Semantic rule: `none`.

`UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `force` | `float64` | scalar |  | undeclared | finite | N |


### `Ros2Flexiv_msgsActionGrasp_Result`

Original: `flexiv_msgs/action/Grasp_Result`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Flexiv_msgsActionGrasp_Feedback`

Original: `flexiv_msgs/action/Grasp_Feedback`. Canonical extent: 17..17 bytes. Semantic rule: `none`.

`UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `current_width` | `float64` | scalar |  | undeclared | finite | m |
| `current_force` | `float64` | scalar |  | undeclared | finite | N |
| `moving` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsActionMove_Goal`

Original: `flexiv_msgs/action/Move_Goal`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `width` | `float64` | scalar |  | undeclared | finite | m |
| `velocity` | `float64` | scalar |  | undeclared | finite | m/s |
| `max_force` | `float64` | scalar |  | undeclared | finite | N |


### `Ros2Flexiv_msgsActionMove_Result`

Original: `flexiv_msgs/action/Move_Result`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Flexiv_msgsActionMove_Feedback`

Original: `flexiv_msgs/action/Move_Feedback`. Canonical extent: 17..17 bytes. Semantic rule: `none`.

`UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `current_width` | `float64` | scalar |  | undeclared | finite | m |
| `current_force` | `float64` | scalar |  | undeclared | finite | N |
| `moving` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgDigital`

Original: `flexiv_msgs/msg/Digital`. Canonical extent: 2..2 bytes. Semantic rule: `none`.

`UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `pin` | `uint8` | scalar |  | undeclared | finite |  |
| `state` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgGPIOStates`

Original: `flexiv_msgs/msg/GPIOStates`. Canonical extent: 4..68 bytes. Semantic rule: `none`.

`UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `states` | `flexiv_msgs/msg/Digital` | sequence | 32 elements | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgJointPosVel`

Original: `flexiv_msgs/msg/JointPosVel`. Canonical extent: 8..520 bytes. Semantic rule: `none`.

`UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `positions` | `float64` | sequence | 32 elements | undeclared | finite |  |
| `velocities` | `float64` | sequence | 32 elements | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgMode`

Original: `flexiv_msgs/msg/Mode`. Canonical extent: 1..1 bytes. Semantic rule: `none`.

`UWVMROS1_cccac829b8021d3eed69844ee81fbef0b785486d73a16ac212fd38b8100eb6d6`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `mode` | `int8` | scalar |  | undeclared | finite |  |

- `MODE_UNKNOWN`: `int8` = `-1`.
- `MODE_IDLE`: `int8` = `0`.
- `MODE_RT_JOINT_TORQUE`: `int8` = `1`.
- `MODE_RT_JOINT_IMPEDANCE`: `int8` = `2`.
- `MODE_NRT_JOINT_IMPEDANCE`: `int8` = `3`.
- `MODE_RT_JOINT_POSITION`: `int8` = `4`.
- `MODE_NRT_JOINT_POSITION`: `int8` = `5`.
- `MODE_NRT_PLAN_EXECUTION`: `int8` = `6`.
- `MODE_NRT_PRIMITIVE_EXECUTION`: `int8` = `7`.
- `MODE_RT_CARTESIAN_MOTION_FORCE`: `int8` = `8`.
- `MODE_NRT_CARTESIAN_MOTION_FORCE`: `int8` = `9`.
- `MODE_NRT_SUPER_PRIMITIVE`: `int8` = `10`.

### `Ros2Std_msgsMsgHeader`

Original: `std_msgs/msg/Header`. Canonical extent: 12..268 bytes. Semantic rule: `none`.

`UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `stamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Standard metadata for higher-level stamped data types. This is generally used to communicate timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as seconds and nanoseconds. |
| `frame_id` | `string` | scalar | 256 bytes | undeclared | finite | Transform frame with which this data is associated. |


### `Ros2Geometry_msgsMsgPoint`

Original: `geometry_msgs/msg/Point`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This contains the position of a point in free space |
| `y` | `float64` | scalar |  | undeclared | finite |  |
| `z` | `float64` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgQuaternion`

Original: `geometry_msgs/msg/Quaternion`. Canonical extent: 32..32 bytes. Semantic rule: `none`.

`UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | 0.0 | finite | This represents an orientation in free space in quaternion form. |
| `y` | `float64` | scalar |  | 0.0 | finite |  |
| `z` | `float64` | scalar |  | 0.0 | finite |  |
| `w` | `float64` | scalar |  | 1.0 | finite |  |


### `Ros2Geometry_msgsMsgPose`

Original: `geometry_msgs/msg/Pose`. Canonical extent: 56..56 bytes. Semantic rule: `none`.

`UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `position` | `geometry_msgs/msg/Point` | scalar |  | undeclared | finite | A representation of pose in free space, composed of position and orientation. |
| `orientation` | `geometry_msgs/msg/Quaternion` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgPoseStamped`

Original: `geometry_msgs/msg/PoseStamped`. Canonical extent: 68..324 bytes. Semantic rule: `none`.

`UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | A Pose with reference coordinate frame and timestamp |
| `pose` | `geometry_msgs/msg/Pose` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgVector3`

Original: `geometry_msgs/msg/Vector3`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This represents a vector in free space. This is semantically different than a point. A vector is always anchored at the origin. When a transform is applied to a vector, only the rotational component is applied. |
| `y` | `float64` | scalar |  | undeclared | finite |  |
| `z` | `float64` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgTwist`

Original: `geometry_msgs/msg/Twist`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `linear` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This expresses velocity in free space broken into its linear and angular parts. |
| `angular` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgTwistStamped`

Original: `geometry_msgs/msg/TwistStamped`. Canonical extent: 60..316 bytes. Semantic rule: `none`.

`UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | A twist with reference coordinate frame and timestamp |
| `twist` | `geometry_msgs/msg/Twist` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgWrench`

Original: `geometry_msgs/msg/Wrench`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `force` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This represents force in free space, separated into its linear and angular parts. |
| `torque` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgWrenchStamped`

Original: `geometry_msgs/msg/WrenchStamped`. Canonical extent: 60..316 bytes. Semantic rule: `none`.

`UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | A wrench with reference coordinate frame and timestamp |
| `wrench` | `geometry_msgs/msg/Wrench` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgRobotStates`

Original: `flexiv_msgs/msg/RobotStates`. Canonical extent: 552..5160 bytes. Semantic rule: `none`.

`UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Header |
| `robot_timestamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Robot system timestamp |
| `q` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint positions using link-side encoder |
| `theta` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint positions using motor-side encoder |
| `dq` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint velocities using link-side encoder |
| `dtheta` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint velocities using motor-side encoder |
| `tau` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint torques |
| `tau_dot` | `float64` | sequence | 32 elements | undeclared | finite | Numerical derivative of measured joint torques |
| `tau_ext` | `float64` | sequence | 32 elements | undeclared | finite | Estimated external joint torques |
| `tau_interact` | `float64` | sequence | 32 elements | undeclared | finite | Estimated interaction joint torques |
| `temperature` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint temperatures |
| `tcp_pose` | `geometry_msgs/msg/PoseStamped` | scalar |  | undeclared | finite | Measured TCP pose expressed in world frame |
| `tcp_twist` | `geometry_msgs/msg/TwistStamped` | scalar |  | undeclared | finite | Measured TCP twist expressed in world frame |
| `flange_pose` | `geometry_msgs/msg/PoseStamped` | scalar |  | undeclared | finite | Measured flange pose expressed in world frame |
| `raw_ft_sensor` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Raw force-torque (FT) sensor reading in flange frame |
| `tcp_wrench_local` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Estimated external wrench applied on TCP and expressed in TCP frame |
| `tcp_wrench` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Estimated external wrench applied on TCP and expressed in world frame |
| `raw_tcp_wrench_local` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Unfiltered external wrench applied on TCP and expressed in TCP frame |
| `raw_tcp_wrench` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Unfiltered external wrench applied on TCP and expressed in world frame |


## ros2_jazzy_v2_2

`ros2` / `jazzy` / `flexiv-ros2-jazzy-v2-2-complete`

原始定义与所有服务、动作组件均保留。规范编码不是 DDS CDR 或 ROS1 TCPROS 字节。

### `builtin_interfaces/msg/Time`

Kind: `message`. Components: `message=Ros2Builtin_interfacesMsgTime`.

### `flexiv_msgs/action/ErrorRecovery`

Kind: `action`. Components: `goal=Ros2Flexiv_msgsActionErrorRecovery_Goal`, `result=Ros2Flexiv_msgsActionErrorRecovery_Result`, `feedback=Ros2Flexiv_msgsActionErrorRecovery_Feedback`.

### `flexiv_msgs/action/Grasp`

Kind: `action`. Components: `goal=Ros2Flexiv_msgsActionGrasp_Goal`, `result=Ros2Flexiv_msgsActionGrasp_Result`, `feedback=Ros2Flexiv_msgsActionGrasp_Feedback`.

### `flexiv_msgs/action/Move`

Kind: `action`. Components: `goal=Ros2Flexiv_msgsActionMove_Goal`, `result=Ros2Flexiv_msgsActionMove_Result`, `feedback=Ros2Flexiv_msgsActionMove_Feedback`.

### `flexiv_msgs/msg/Digital`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgDigital`.

### `flexiv_msgs/msg/GPIOStates`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgGPIOStates`.

### `flexiv_msgs/msg/JointImpedance`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgJointImpedance`.

### `flexiv_msgs/msg/JointInertiaScale`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgJointInertiaScale`.

### `flexiv_msgs/msg/JointPosVel`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgJointPosVel`.

### `flexiv_msgs/msg/MaxContactTorque`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgMaxContactTorque`.

### `flexiv_msgs/msg/Mode`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgMode`.

### `flexiv_msgs/msg/OperationalStatus`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgOperationalStatus`.

### `flexiv_msgs/msg/RecoveryPolicy`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgRecoveryPolicy`.

### `flexiv_msgs/msg/RobotEvent`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgRobotEvent`.

### `flexiv_msgs/msg/RobotStates`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgRobotStates`.

### `flexiv_msgs/srv/GetOperationalStatus`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvGetOperationalStatus_Request`, `response=Ros2Flexiv_msgsSrvGetOperationalStatus_Response`.

### `flexiv_msgs/srv/SetJointImpedance`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetJointImpedance_Request`, `response=Ros2Flexiv_msgsSrvSetJointImpedance_Response`.

### `flexiv_msgs/srv/SetJointInertiaScale`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetJointInertiaScale_Request`, `response=Ros2Flexiv_msgsSrvSetJointInertiaScale_Response`.

### `flexiv_msgs/srv/SetMaxContactTorque`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetMaxContactTorque_Request`, `response=Ros2Flexiv_msgsSrvSetMaxContactTorque_Response`.

### `geometry_msgs/msg/Point`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPoint`.

### `geometry_msgs/msg/Pose`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPose`.

### `geometry_msgs/msg/PoseStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPoseStamped`.

### `geometry_msgs/msg/Quaternion`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgQuaternion`.

### `geometry_msgs/msg/Twist`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgTwist`.

### `geometry_msgs/msg/TwistStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgTwistStamped`.

### `geometry_msgs/msg/Vector3`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgVector3`.

### `geometry_msgs/msg/Wrench`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgWrench`.

### `geometry_msgs/msg/WrenchStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgWrenchStamped`.

### `std_msgs/msg/Header`

Kind: `message`. Components: `message=Ros2Std_msgsMsgHeader`.

### `Ros2Builtin_interfacesMsgTime`

Original: `builtin_interfaces/msg/Time`. Canonical extent: 8..8 bytes. Semantic rule: `normalized-time`.

`UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `sec` | `int32` | scalar |  | undeclared | finite | This message communicates ROS Time defined here: https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32 values. |
| `nanosec` | `uint32` | scalar |  | undeclared | finite | The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component. e.g. The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The time 1.7 seconds is represented as {sec: 1, nanosec: 7e8} |


### `Ros2Flexiv_msgsActionErrorRecovery_Goal`

Original: `flexiv_msgs/action/ErrorRecovery_Goal`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_a034d73edc5891f3a17f52efce4e491e8d08655b3e32d9cf58338547ad412830`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|


### `Ros2Flexiv_msgsActionErrorRecovery_Result`

Original: `flexiv_msgs/action/ErrorRecovery_Result`. Canonical extent: 7..263 bytes. Semantic rule: `none`.

`UWVMROS1_e1f54f9716ae64b5da8c1463f36379fbfffe35ea983a25dcb9db6e09771fcedc`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |
| `requires_controller_restart` | `bool` | scalar |  | undeclared | finite | True when the robot is operational again but controllers must be restarted to resume motion |
| `recovery_policy` | `uint8` | scalar |  | undeclared | finite | Policy that applied to the condition found, values defined in RecoveryPolicy.msg |


### `Ros2Flexiv_msgsActionErrorRecovery_Feedback`

Original: `flexiv_msgs/action/ErrorRecovery_Feedback`. Canonical extent: 9..265 bytes. Semantic rule: `none`.

`UWVMROS1_eeafe196440ce0e03c9bd313aaeac627eaf8e2f1bc4f2ced2d94bcdf22088739`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `recovery_state` | `uint8` | scalar |  | undeclared | finite |  |
| `recovery_state_name` | `string` | scalar | 256 bytes | undeclared | finite | Human-readable name of the recovery state above |
| `elapsed_seconds` | `float32` | scalar |  | undeclared | finite | Seconds elapsed since the recovery started |

- `STATE_IDLE`: `uint8` = `0`.
- `STATE_CLASSIFY`: `uint8` = `1`.
- `STATE_STOP`: `uint8` = `2`.
- `STATE_CLEAR_FAULT`: `uint8` = `3`.
- `STATE_WAIT_FAULT_CLEARED`: `uint8` = `4`.
- `STATE_SERVO_ON`: `uint8` = `5`.
- `STATE_WAIT_OPERATIONAL`: `uint8` = `6`.
- `STATE_COMPLETE`: `uint8` = `7`.
- `STATE_FAILED`: `uint8` = `8`.

### `Ros2Flexiv_msgsActionGrasp_Goal`

Original: `flexiv_msgs/action/Grasp_Goal`. Canonical extent: 8..8 bytes. Semantic rule: `none`.

`UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `force` | `float64` | scalar |  | undeclared | finite | N |


### `Ros2Flexiv_msgsActionGrasp_Result`

Original: `flexiv_msgs/action/Grasp_Result`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Flexiv_msgsActionGrasp_Feedback`

Original: `flexiv_msgs/action/Grasp_Feedback`. Canonical extent: 17..17 bytes. Semantic rule: `none`.

`UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `current_width` | `float64` | scalar |  | undeclared | finite | m |
| `current_force` | `float64` | scalar |  | undeclared | finite | N |
| `moving` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsActionMove_Goal`

Original: `flexiv_msgs/action/Move_Goal`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `width` | `float64` | scalar |  | undeclared | finite | m |
| `velocity` | `float64` | scalar |  | undeclared | finite | m/s |
| `max_force` | `float64` | scalar |  | undeclared | finite | N |


### `Ros2Flexiv_msgsActionMove_Result`

Original: `flexiv_msgs/action/Move_Result`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Flexiv_msgsActionMove_Feedback`

Original: `flexiv_msgs/action/Move_Feedback`. Canonical extent: 17..17 bytes. Semantic rule: `none`.

`UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `current_width` | `float64` | scalar |  | undeclared | finite | m |
| `current_force` | `float64` | scalar |  | undeclared | finite | N |
| `moving` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgDigital`

Original: `flexiv_msgs/msg/Digital`. Canonical extent: 2..2 bytes. Semantic rule: `none`.

`UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `pin` | `uint8` | scalar |  | undeclared | finite |  |
| `state` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgGPIOStates`

Original: `flexiv_msgs/msg/GPIOStates`. Canonical extent: 4..68 bytes. Semantic rule: `none`.

`UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `states` | `flexiv_msgs/msg/Digital` | sequence | 32 elements | undeclared | finite |  |


### `Ros2Std_msgsMsgHeader`

Original: `std_msgs/msg/Header`. Canonical extent: 12..268 bytes. Semantic rule: `none`.

`UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `stamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Standard metadata for higher-level stamped data types. This is generally used to communicate timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as seconds and nanoseconds. |
| `frame_id` | `string` | scalar | 256 bytes | undeclared | finite | Transform frame with which this data is associated. |


### `Ros2Flexiv_msgsMsgJointImpedance`

Original: `flexiv_msgs/msg/JointImpedance`. Canonical extent: 29..9373 bytes. Semantic rule: `none`.

`UWVMROS1_f93719074c048d0ab915eeefd2e62bcdfe16ac74f06a3aa505f06ca6d8c3515a`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Impedance properties of the robot's joint motion controller, used in the joint impedance control modes. Mirrors the arguments of flexiv::rdk::Robot::SetJointImpedance(). Header |
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | Joint names in URDF order. Every array below is indexed by this. Only the arm joints of the robot are covered: the robot reports no nominal joint stiffness for external axes. |
| `k_q` | `float64` | sequence | 32 elements | undeclared | finite | Joint motion stiffness K_q. A joint at 0 is free-floating. [Nm/rad] |
| `z_q` | `float64` | sequence | 32 elements | undeclared | finite | Joint motion damping ratio Z_q, dimensionless. Valid range [0.3, 0.8], nominal 0.7 |
| `k_q_nom` | `float64` | sequence | 32 elements | undeclared | finite | Nominal joint motion stiffness, the upper bound of k_q. [Nm/rad] |
| `in_effect` | `bool` | scalar |  | undeclared | finite | Whether these values are in effect on the robot. False while the robot is not in a joint impedance control mode: they are held and applied on the next controller start. |


### `Ros2Flexiv_msgsMsgJointInertiaScale`

Original: `flexiv_msgs/msg/JointInertiaScale`. Canonical extent: 21..8853 bytes. Semantic rule: `none`.

`UWVMROS1_3dc5f0addd6835f698feda5133efb05cde46e480dee0e219436fcc4443018e1f`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Inertia shaping scales of the robot's joint motion controller, used in the joint impedance control modes. Mirrors the argument of flexiv::rdk::Robot::SetJointInertiaScale(). Header |
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | Joint names in URDF order. Every array below is indexed by this. Only the arm joints of the robot are covered, matching JointImpedance.msg. |
| `inertia_scales` | `float64` | sequence | 32 elements | undeclared | finite | Inertia shaping scale sigma_q, dimensionless. Valid range [0.75, 1.0]. The nominal value 1.0 means no shaping; a smaller scale makes the joint behave as if it were lighter. |
| `in_effect` | `bool` | scalar |  | undeclared | finite | Whether these values are in effect on the robot. False while the robot is not in a joint impedance control mode: they are held and applied on the next controller start. |


### `Ros2Flexiv_msgsMsgJointPosVel`

Original: `flexiv_msgs/msg/JointPosVel`. Canonical extent: 8..520 bytes. Semantic rule: `none`.

`UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `positions` | `float64` | sequence | 32 elements | undeclared | finite |  |
| `velocities` | `float64` | sequence | 32 elements | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgMaxContactTorque`

Original: `flexiv_msgs/msg/MaxContactTorque`. Canonical extent: 25..9113 bytes. Semantic rule: `none`.

`UWVMROS1_d98ebc099077f69f5311d46c2179d08367c301b6c9d1b272b3bc55ba3df185da`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Maximum contact torques of the robot's joint motion controller, used in the joint impedance control modes. Mirrors the argument of flexiv::rdk::Robot::SetMaxContactTorque(). Header |
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | Joint names in URDF order. Every array below is indexed by this. Only the arm joints of the robot are covered, matching JointImpedance.msg. |
| `max_contact_torques` | `float64` | sequence | 32 elements | undeclared | finite | Maximum contact torque the controller regulates its output to maintain. [Nm] |
| `tau_max` | `float64` | sequence | 32 elements | undeclared | finite | Upper software limits of joint torques, the upper bound of max_contact_torques. [Nm] |
| `in_effect` | `bool` | scalar |  | undeclared | finite | Whether these values are in effect on the robot. False while the robot is not in a joint impedance control mode: they are held and applied on the next controller start. |


### `Ros2Flexiv_msgsMsgMode`

Original: `flexiv_msgs/msg/Mode`. Canonical extent: 1..1 bytes. Semantic rule: `none`.

`UWVMROS1_79f6d3de38a4d7d514780f9d71fcc8b5cd413a3b511f1b31243c210265be0c87`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `mode` | `int8` | scalar |  | undeclared | finite |  |

- `MODE_UNKNOWN`: `int8` = `0`.
- `MODE_IDLE`: `int8` = `1`.
- `MODE_RT_JOINT_TORQUE`: `int8` = `2`.
- `MODE_RT_JOINT_IMPEDANCE`: `int8` = `3`.
- `MODE_NRT_JOINT_IMPEDANCE`: `int8` = `4`.
- `MODE_RT_JOINT_POSITION`: `int8` = `5`.
- `MODE_NRT_JOINT_POSITION`: `int8` = `6`.
- `MODE_NRT_PLAN_EXECUTION`: `int8` = `7`.
- `MODE_NRT_PRIMITIVE_EXECUTION`: `int8` = `8`.
- `MODE_RT_CARTESIAN_MOTION_FORCE`: `int8` = `9`.
- `MODE_NRT_CARTESIAN_MOTION_FORCE`: `int8` = `10`.
- `MODE_NRT_SUPER_PRIMITIVE`: `int8` = `11`.

### `Ros2Flexiv_msgsMsgRobotEvent`

Original: `flexiv_msgs/msg/RobotEvent`. Canonical extent: 29..1053 bytes. Semantic rule: `none`.

`UWVMROS1_cbc02424eaea2ae9754309d070d424f0d0fcd078e67a64b22cbb1a36848e0a17`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `level` | `uint8` | scalar |  | undeclared | finite |  |
| `id` | `int32` | scalar |  | undeclared | finite | Unique ID of the event |
| `description` | `string` | scalar | 256 bytes | undeclared | finite | Brief description of the event |
| `consequences` | `string` | scalar | 256 bytes | undeclared | finite | Consequences caused by the event |
| `probable_causes` | `string` | scalar | 256 bytes | undeclared | finite | Probable causes of the event |
| `recommended_actions` | `string` | scalar | 256 bytes | undeclared | finite | Recommended actions after the event |
| `timestamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Timestamp of the event |

- `LEVEL_UNKNOWN`: `uint8` = `0`.
- `LEVEL_INFO`: `uint8` = `1`.
- `LEVEL_WARNING`: `uint8` = `2`.
- `LEVEL_ERROR`: `uint8` = `3`.
- `LEVEL_CRITICAL`: `uint8` = `4`.

### `Ros2Flexiv_msgsMsgOperationalStatus`

Original: `flexiv_msgs/msg/OperationalStatus`. Canonical extent: 34..17650 bytes. Semantic rule: `none`.

`UWVMROS1_89c0f96c20a56eb45bb21b617945cbe727558f12094a8377414fe5729d147a62`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Operational status of the robot and of the driver supervising it. The status values mirror flexiv::rdk::OperationalStatus one-for-one. Header |
| `operational_status` | `uint8` | scalar |  | undeclared | finite |  |
| `operational_status_name` | `string` | scalar | 256 bytes | undeclared | finite | Human-readable name of the operational status above |
| `driver_state` | `uint8` | scalar |  | undeclared | finite |  |
| `connected` | `bool` | scalar |  | undeclared | finite | Robot condition flags |
| `fault` | `bool` | scalar |  | undeclared | finite |  |
| `operational` | `bool` | scalar |  | undeclared | finite |  |
| `estop_released` | `bool` | scalar |  | undeclared | finite |  |
| `reduced` | `bool` | scalar |  | undeclared | finite |  |
| `recovery_state` | `bool` | scalar |  | undeclared | finite |  |
| `control_mode` | `int8` | scalar |  | undeclared | finite | Current robot control mode, values defined in Mode.msg |
| `recovery_policy` | `uint8` | scalar |  | undeclared | finite | How the current condition should be recovered from, values defined in RecoveryPolicy.msg |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the current condition and what to do about it |
| `recent_events` | `flexiv_msgs/msg/RobotEvent` | sequence | 16 elements | undeclared | finite | Most recent error and critical events reported by the robot |

- `STATUS_UNKNOWN`: `uint8` = `0`.
- `STATUS_READY`: `uint8` = `1`.
- `STATUS_BOOTING`: `uint8` = `2`.
- `STATUS_ESTOP_NOT_RELEASED`: `uint8` = `3`.
- `STATUS_NOT_SERVO_ON`: `uint8` = `4`.
- `STATUS_RELEASING_BRAKE`: `uint8` = `5`.
- `STATUS_MINOR_FAULT`: `uint8` = `6`.
- `STATUS_CRITICAL_FAULT`: `uint8` = `7`.
- `STATUS_IN_REDUCED_STATE`: `uint8` = `8`.
- `STATUS_IN_RECOVERY_STATE`: `uint8` = `9`.
- `STATUS_IN_MANUAL_MODE`: `uint8` = `10`.
- `STATUS_IN_AUTO_MODE`: `uint8` = `11`.
- `DRIVER_UNINITIALIZED`: `uint8` = `0`.
- `DRIVER_READY`: `uint8` = `1`.
- `DRIVER_FAULT`: `uint8` = `2`.
- `DRIVER_RECOVERING`: `uint8` = `3`.
- `DRIVER_LOCKOUT`: `uint8` = `4`.
- `DRIVER_DISCONNECTED`: `uint8` = `5`.

### `Ros2Flexiv_msgsMsgRecoveryPolicy`

Original: `flexiv_msgs/msg/RecoveryPolicy`. Canonical extent: 1..1 bytes. Semantic rule: `none`.

`UWVMROS1_0eb43d2482caac32e0977e6cd8ae7baeeba7fca2629c5cd1e1927e8a28af42bf`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `recovery_policy` | `uint8` | scalar |  | undeclared | finite |  |

- `NONE`: `uint8` = `0`.
- `TRANSIENT`: `uint8` = `1`.
- `AUTO_RECOVERABLE`: `uint8` = `2`.
- `WAIT_OPERATOR`: `uint8` = `3`.
- `SAFETY_LOCKOUT`: `uint8` = `4`.
- `CONNECTION_LOST`: `uint8` = `5`.

### `Ros2Geometry_msgsMsgPoint`

Original: `geometry_msgs/msg/Point`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This contains the position of a point in free space |
| `y` | `float64` | scalar |  | undeclared | finite |  |
| `z` | `float64` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgQuaternion`

Original: `geometry_msgs/msg/Quaternion`. Canonical extent: 32..32 bytes. Semantic rule: `none`.

`UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | 0.0 | finite | This represents an orientation in free space in quaternion form. |
| `y` | `float64` | scalar |  | 0.0 | finite |  |
| `z` | `float64` | scalar |  | 0.0 | finite |  |
| `w` | `float64` | scalar |  | 1.0 | finite |  |


### `Ros2Geometry_msgsMsgPose`

Original: `geometry_msgs/msg/Pose`. Canonical extent: 56..56 bytes. Semantic rule: `none`.

`UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `position` | `geometry_msgs/msg/Point` | scalar |  | undeclared | finite | A representation of pose in free space, composed of position and orientation. |
| `orientation` | `geometry_msgs/msg/Quaternion` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgPoseStamped`

Original: `geometry_msgs/msg/PoseStamped`. Canonical extent: 68..324 bytes. Semantic rule: `none`.

`UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | A Pose with reference coordinate frame and timestamp |
| `pose` | `geometry_msgs/msg/Pose` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgVector3`

Original: `geometry_msgs/msg/Vector3`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This represents a vector in free space. This is semantically different than a point. A vector is always anchored at the origin. When a transform is applied to a vector, only the rotational component is applied. |
| `y` | `float64` | scalar |  | undeclared | finite |  |
| `z` | `float64` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgTwist`

Original: `geometry_msgs/msg/Twist`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `linear` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This expresses velocity in free space broken into its linear and angular parts. |
| `angular` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgTwistStamped`

Original: `geometry_msgs/msg/TwistStamped`. Canonical extent: 60..316 bytes. Semantic rule: `none`.

`UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | A twist with reference coordinate frame and timestamp |
| `twist` | `geometry_msgs/msg/Twist` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgWrench`

Original: `geometry_msgs/msg/Wrench`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `force` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This represents force in free space, separated into its linear and angular parts. |
| `torque` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgWrenchStamped`

Original: `geometry_msgs/msg/WrenchStamped`. Canonical extent: 60..316 bytes. Semantic rule: `none`.

`UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | A wrench with reference coordinate frame and timestamp |
| `wrench` | `geometry_msgs/msg/Wrench` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgRobotStates`

Original: `flexiv_msgs/msg/RobotStates`. Canonical extent: 552..5160 bytes. Semantic rule: `none`.

`UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Header |
| `robot_timestamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Robot system timestamp |
| `q` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint positions using link-side encoder |
| `theta` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint positions using motor-side encoder |
| `dq` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint velocities using link-side encoder |
| `dtheta` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint velocities using motor-side encoder |
| `tau` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint torques |
| `tau_dot` | `float64` | sequence | 32 elements | undeclared | finite | Numerical derivative of measured joint torques |
| `tau_ext` | `float64` | sequence | 32 elements | undeclared | finite | Estimated external joint torques |
| `tau_interact` | `float64` | sequence | 32 elements | undeclared | finite | Estimated interaction joint torques |
| `temperature` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint temperatures |
| `tcp_pose` | `geometry_msgs/msg/PoseStamped` | scalar |  | undeclared | finite | Measured TCP pose expressed in world frame |
| `tcp_twist` | `geometry_msgs/msg/TwistStamped` | scalar |  | undeclared | finite | Measured TCP twist expressed in world frame |
| `flange_pose` | `geometry_msgs/msg/PoseStamped` | scalar |  | undeclared | finite | Measured flange pose expressed in world frame |
| `raw_ft_sensor` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Raw force-torque (FT) sensor reading in flange frame |
| `tcp_wrench_local` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Estimated external wrench applied on TCP and expressed in TCP frame |
| `tcp_wrench` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Estimated external wrench applied on TCP and expressed in world frame |
| `raw_tcp_wrench_local` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Unfiltered external wrench applied on TCP and expressed in TCP frame |
| `raw_tcp_wrench` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Unfiltered external wrench applied on TCP and expressed in world frame |


### `Ros2Flexiv_msgsSrvGetOperationalStatus_Request`

Original: `flexiv_msgs/srv/GetOperationalStatus_Request`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_7fd7ea129ca031bf1bf8d008b1273bc0deb676f3ae786731b420cd009bb3ae12`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|


### `Ros2Flexiv_msgsSrvGetOperationalStatus_Response`

Original: `flexiv_msgs/srv/GetOperationalStatus_Response`. Canonical extent: 34..17650 bytes. Semantic rule: `none`.

`UWVMROS1_c0c5d8eabf0e036c0854728e784564c68669a6cdbb5e22f7f5934956d9e4e7da`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `status` | `flexiv_msgs/msg/OperationalStatus` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsSrvSetJointImpedance_Request`

Original: `flexiv_msgs/srv/SetJointImpedance_Request`. Canonical extent: 12..8844 bytes. Semantic rule: `none`.

`UWVMROS1_37adbcb0beeef85996da45424e76b2d67bcbf245d22eae89f05e43d015527e08`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | Set impedance properties of the robot's joint motion controller. Requires the driver to run with rdk_control_mode:=joint_impedance.  An invalid request is rejected as a whole and nothing changes. Joints to set, named exactly as published on ~/joint_impedance. Leave empty to address every joint the interface covers, in that published order. On a dual-arm robot this is how a single arm is set on its own: name that arm's joints and the other arm is left untouched. |
| `k_q` | `float64` | sequence | 32 elements | undeclared | finite | Joint motion stiffness K_q, one entry per joint in joint_names, or one per covered joint when joint_names is empty. Valid range [0, k_q_nom]. Setting a joint to 0 makes it free-floating, which in this position-streaming driver means the joint will sag under gravity. [Nm/rad] |
| `z_q` | `float64` | sequence | 32 elements | undeclared | finite | Joint motion damping ratio Z_q, matching k_q entry for entry, or empty for the nominal 0.7. Valid range [0.3, 0.8]. Values away from nominal may lead to performance and stability issues. |


### `Ros2Flexiv_msgsSrvSetJointImpedance_Response`

Original: `flexiv_msgs/srv/SetJointImpedance_Response`. Canonical extent: 34..9634 bytes. Semantic rule: `none`.

`UWVMROS1_95a169dd0eb880ef3e71653a5e4cdf08e743db80df706e75664db582eb927f96`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome, naming the joint and the bound on a rejection |
| `setting` | `flexiv_msgs/msg/JointImpedance` | scalar |  | undeclared | finite | Every joint the interface covers and the values now held for it, unchanged from before on a rejection. Joints the request did not name keep the value they already had. |


### `Ros2Flexiv_msgsSrvSetJointInertiaScale_Request`

Original: `flexiv_msgs/srv/SetJointInertiaScale_Request`. Canonical extent: 8..8584 bytes. Semantic rule: `none`.

`UWVMROS1_03aeec1174b3eda7777dc74548c9781915c532bef92af3f4383a801e3b8ff625`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | Set inertia shaping scales of the robot's joint motion controller, which make the joints behave as if they were lighter. Requires the driver to run with rdk_control_mode:=joint_impedance.  An invalid request is rejected as a whole and nothing changes. Joints to set, named exactly as published on ~/joint_inertia_scale. Leave empty to address every joint the interface covers, in that published order. On a dual-arm robot this is how a single arm is set on its own: name that arm's joints and the other arm is left untouched. |
| `inertia_scales` | `float64` | sequence | 32 elements | undeclared | finite | Inertia shaping scale sigma_q, one entry per joint in joint_names, or one per covered joint when joint_names is empty. Valid range [0.75, 1.0]. The nominal value 1.0 means no shaping; a smaller scale corresponds to lighter inertia. |


### `Ros2Flexiv_msgsSrvSetJointInertiaScale_Response`

Original: `flexiv_msgs/srv/SetJointInertiaScale_Response`. Canonical extent: 26..9114 bytes. Semantic rule: `none`.

`UWVMROS1_2b7d36ecdc70ec1a450a03d412cfd431e735fc3aa601f321007afabe00f51931`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome, naming the joint and the bound on a rejection |
| `setting` | `flexiv_msgs/msg/JointInertiaScale` | scalar |  | undeclared | finite | Every joint the interface covers and the values now held for it, unchanged from before on a rejection. Joints the request did not name keep the value they already had. |


### `Ros2Flexiv_msgsSrvSetMaxContactTorque_Request`

Original: `flexiv_msgs/srv/SetMaxContactTorque_Request`. Canonical extent: 8..8584 bytes. Semantic rule: `none`.

`UWVMROS1_cfbd80557b3c0529a3af3557b87908c05817d873401e3efb3c5ba8203af6b69e`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | Set maximum contact torques of the robot's joint motion controller. The controller regulates its output to keep contact torques with the environment under these values. Requires the driver to run with rdk_control_mode:=joint_impedance.  An invalid request is rejected as a whole and nothing changes. Joints to set, named exactly as published on ~/max_contact_torque. Leave empty to address every joint the interface covers, in that published order. On a dual-arm robot this is how a single arm is set on its own: name that arm's joints and the other arm is left untouched. |
| `max_contact_torques` | `float64` | sequence | 32 elements | undeclared | finite | Maximum contact torque, one entry per joint in joint_names, or one per covered joint when joint_names is empty. Valid range [0, tau_max]. Raising this increases the force the robot may exert on its surroundings. [Nm] |


### `Ros2Flexiv_msgsSrvSetMaxContactTorque_Response`

Original: `flexiv_msgs/srv/SetMaxContactTorque_Response`. Canonical extent: 30..9374 bytes. Semantic rule: `none`.

`UWVMROS1_602bd439ab984dd9d7f64786005dd4f5763d245121a09833f75cee914e9dd43c`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome, naming the joint and the bound on a rejection |
| `setting` | `flexiv_msgs/msg/MaxContactTorque` | scalar |  | undeclared | finite | Every joint the interface covers and the values now held for it, unchanged from before on a rejection. Joints the request did not name keep the value they already had. |


## ros2_lyrical_v1

`ros2` / `lyrical` / `flexiv-ros2-lyrical-v1-complete`

原始定义与所有服务、动作组件均保留。规范编码不是 DDS CDR 或 ROS1 TCPROS 字节。

### `builtin_interfaces/msg/Time`

Kind: `message`. Components: `message=Ros2Builtin_interfacesMsgTime`.

### `flexiv_msgs/action/ErrorRecovery`

Kind: `action`. Components: `goal=Ros2Flexiv_msgsActionErrorRecovery_Goal`, `result=Ros2Flexiv_msgsActionErrorRecovery_Result`, `feedback=Ros2Flexiv_msgsActionErrorRecovery_Feedback`.

### `flexiv_msgs/action/Grasp`

Kind: `action`. Components: `goal=Ros2Flexiv_msgsActionGrasp_Goal`, `result=Ros2Flexiv_msgsActionGrasp_Result`, `feedback=Ros2Flexiv_msgsActionGrasp_Feedback`.

### `flexiv_msgs/action/Move`

Kind: `action`. Components: `goal=Ros2Flexiv_msgsActionMove_Goal`, `result=Ros2Flexiv_msgsActionMove_Result`, `feedback=Ros2Flexiv_msgsActionMove_Feedback`.

### `flexiv_msgs/msg/CartesianMotionForce`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgCartesianMotionForce`.

### `flexiv_msgs/msg/Digital`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgDigital`.

### `flexiv_msgs/msg/GPIOStates`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgGPIOStates`.

### `flexiv_msgs/msg/JointImpedance`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgJointImpedance`.

### `flexiv_msgs/msg/JointInertiaScale`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgJointInertiaScale`.

### `flexiv_msgs/msg/JointPosVel`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgJointPosVel`.

### `flexiv_msgs/msg/MaxContactTorque`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgMaxContactTorque`.

### `flexiv_msgs/msg/Mode`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgMode`.

### `flexiv_msgs/msg/OperationalStatus`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgOperationalStatus`.

### `flexiv_msgs/msg/RecoveryPolicy`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgRecoveryPolicy`.

### `flexiv_msgs/msg/RobotEvent`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgRobotEvent`.

### `flexiv_msgs/msg/RobotStates`

Kind: `message`. Components: `message=Ros2Flexiv_msgsMsgRobotStates`.

### `flexiv_msgs/srv/GetOperationalStatus`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvGetOperationalStatus_Request`, `response=Ros2Flexiv_msgsSrvGetOperationalStatus_Response`.

### `flexiv_msgs/srv/SetCartesianImpedance`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetCartesianImpedance_Request`, `response=Ros2Flexiv_msgsSrvSetCartesianImpedance_Response`.

### `flexiv_msgs/srv/SetCartesianMotionLimits`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request`, `response=Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response`.

### `flexiv_msgs/srv/SetForceControlAxis`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetForceControlAxis_Request`, `response=Ros2Flexiv_msgsSrvSetForceControlAxis_Response`.

### `flexiv_msgs/srv/SetForceControlFrame`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetForceControlFrame_Request`, `response=Ros2Flexiv_msgsSrvSetForceControlFrame_Response`.

### `flexiv_msgs/srv/SetJointImpedance`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetJointImpedance_Request`, `response=Ros2Flexiv_msgsSrvSetJointImpedance_Response`.

### `flexiv_msgs/srv/SetJointInertiaScale`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetJointInertiaScale_Request`, `response=Ros2Flexiv_msgsSrvSetJointInertiaScale_Response`.

### `flexiv_msgs/srv/SetMaxContactTorque`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetMaxContactTorque_Request`, `response=Ros2Flexiv_msgsSrvSetMaxContactTorque_Response`.

### `flexiv_msgs/srv/SetMaxContactWrench`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetMaxContactWrench_Request`, `response=Ros2Flexiv_msgsSrvSetMaxContactWrench_Response`.

### `flexiv_msgs/srv/SetNullSpaceObjectives`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request`, `response=Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response`.

### `flexiv_msgs/srv/SetNullSpacePosture`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetNullSpacePosture_Request`, `response=Ros2Flexiv_msgsSrvSetNullSpacePosture_Response`.

### `flexiv_msgs/srv/SetPassiveForceControl`

Kind: `service`. Components: `request=Ros2Flexiv_msgsSrvSetPassiveForceControl_Request`, `response=Ros2Flexiv_msgsSrvSetPassiveForceControl_Response`.

### `geometry_msgs/msg/Accel`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgAccel`.

### `geometry_msgs/msg/AccelStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgAccelStamped`.

### `geometry_msgs/msg/Point`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPoint`.

### `geometry_msgs/msg/Pose`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPose`.

### `geometry_msgs/msg/PoseStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgPoseStamped`.

### `geometry_msgs/msg/Quaternion`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgQuaternion`.

### `geometry_msgs/msg/Twist`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgTwist`.

### `geometry_msgs/msg/Vector3`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgVector3`.

### `geometry_msgs/msg/Wrench`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgWrench`.

### `geometry_msgs/msg/WrenchStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgWrenchStamped`.

### `std_msgs/msg/Header`

Kind: `message`. Components: `message=Ros2Std_msgsMsgHeader`.

### `Ros2Builtin_interfacesMsgTime`

Original: `builtin_interfaces/msg/Time`. Canonical extent: 8..8 bytes. Semantic rule: `normalized-time`.

`UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `sec` | `int32` | scalar |  | undeclared | finite | This message communicates ROS Time defined here: https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32 values. |
| `nanosec` | `uint32` | scalar |  | undeclared | finite | The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component. e.g. The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The time 1.7 seconds is represented as {sec: 1, nanosec: 7e8} |


### `Ros2Flexiv_msgsActionErrorRecovery_Goal`

Original: `flexiv_msgs/action/ErrorRecovery_Goal`. Canonical extent: 1..1 bytes. Semantic rule: `none`.

`UWVMROS1_255a9d152d16f6abe76bca261fbd19c385548a2f64dd421c58c74dc19f1bfd41`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `run_auto_recovery` | `bool` | scalar |  | False | finite | Recover the robot from a fault back to an operational state. On success the robot is enabled, operational and in IDLE control mode. Restoring the control mode is deliberately left to a controller restart, which re-initializes the controller's own setpoint and so cannot apply a stale pre-fault command. Run RunAutoRecovery() if the robot is in recovery state after a joint position limit violation. This moves the involved joints slowly back into the allowed range and requires a robot reboot afterwards, so it is opt-in. |


### `Ros2Flexiv_msgsActionErrorRecovery_Result`

Original: `flexiv_msgs/action/ErrorRecovery_Result`. Canonical extent: 7..263 bytes. Semantic rule: `none`.

`UWVMROS1_e1f54f9716ae64b5da8c1463f36379fbfffe35ea983a25dcb9db6e09771fcedc`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |
| `requires_controller_restart` | `bool` | scalar |  | undeclared | finite | True when the robot is operational again but controllers must be restarted to resume motion |
| `recovery_policy` | `uint8` | scalar |  | undeclared | finite | Policy that applied to the condition found, values defined in RecoveryPolicy.msg |


### `Ros2Flexiv_msgsActionErrorRecovery_Feedback`

Original: `flexiv_msgs/action/ErrorRecovery_Feedback`. Canonical extent: 9..265 bytes. Semantic rule: `none`.

`UWVMROS1_bf87aae8f76ba18d46ab7985e48a667f6b1ed99a403aa90921c80ae4d4ac197a`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `recovery_state` | `uint8` | scalar |  | undeclared | finite |  |
| `recovery_state_name` | `string` | scalar | 256 bytes | undeclared | finite | Human-readable name of the recovery state above |
| `elapsed_seconds` | `float32` | scalar |  | undeclared | finite | Seconds elapsed since the recovery started |

- `STATE_IDLE`: `uint8` = `0`.
- `STATE_CLASSIFY`: `uint8` = `1`.
- `STATE_STOP`: `uint8` = `2`.
- `STATE_CLEAR_FAULT`: `uint8` = `3`.
- `STATE_WAIT_FAULT_CLEARED`: `uint8` = `4`.
- `STATE_ENABLE`: `uint8` = `5`.
- `STATE_WAIT_OPERATIONAL`: `uint8` = `6`.
- `STATE_UNLOCK_EXTERNAL_AXES`: `uint8` = `7`.
- `STATE_RUN_AUTO_RECOVERY`: `uint8` = `8`.
- `STATE_COMPLETE`: `uint8` = `9`.
- `STATE_FAILED`: `uint8` = `10`.

### `Ros2Flexiv_msgsActionGrasp_Goal`

Original: `flexiv_msgs/action/Grasp_Goal`. Canonical extent: 8..8 bytes. Semantic rule: `none`.

`UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `force` | `float64` | scalar |  | undeclared | finite | N |


### `Ros2Flexiv_msgsActionGrasp_Result`

Original: `flexiv_msgs/action/Grasp_Result`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Flexiv_msgsActionGrasp_Feedback`

Original: `flexiv_msgs/action/Grasp_Feedback`. Canonical extent: 17..17 bytes. Semantic rule: `none`.

`UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `current_width` | `float64` | scalar |  | undeclared | finite | m |
| `current_force` | `float64` | scalar |  | undeclared | finite | N |
| `moving` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsActionMove_Goal`

Original: `flexiv_msgs/action/Move_Goal`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `width` | `float64` | scalar |  | undeclared | finite | m |
| `velocity` | `float64` | scalar |  | undeclared | finite | m/s |
| `max_force` | `float64` | scalar |  | undeclared | finite | N |


### `Ros2Flexiv_msgsActionMove_Result`

Original: `flexiv_msgs/action/Move_Result`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Flexiv_msgsActionMove_Feedback`

Original: `flexiv_msgs/action/Move_Feedback`. Canonical extent: 17..17 bytes. Semantic rule: `none`.

`UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `current_width` | `float64` | scalar |  | undeclared | finite | m |
| `current_force` | `float64` | scalar |  | undeclared | finite | N |
| `moving` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Std_msgsMsgHeader`

Original: `std_msgs/msg/Header`. Canonical extent: 12..268 bytes. Semantic rule: `none`.

`UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `stamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Standard metadata for higher-level stamped data types. This is generally used to communicate timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as seconds and nanoseconds. |
| `frame_id` | `string` | scalar | 256 bytes | undeclared | finite | Transform frame with which this data is associated. |


### `Ros2Geometry_msgsMsgPoint`

Original: `geometry_msgs/msg/Point`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This contains the position of a point in free space |
| `y` | `float64` | scalar |  | undeclared | finite |  |
| `z` | `float64` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgQuaternion`

Original: `geometry_msgs/msg/Quaternion`. Canonical extent: 32..32 bytes. Semantic rule: `none`.

`UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | 0.0 | finite | This represents an orientation in free space in quaternion form. |
| `y` | `float64` | scalar |  | 0.0 | finite |  |
| `z` | `float64` | scalar |  | 0.0 | finite |  |
| `w` | `float64` | scalar |  | 1.0 | finite |  |


### `Ros2Geometry_msgsMsgPose`

Original: `geometry_msgs/msg/Pose`. Canonical extent: 56..56 bytes. Semantic rule: `none`.

`UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `position` | `geometry_msgs/msg/Point` | scalar |  | undeclared | finite | A representation of pose in free space, composed of position and orientation. |
| `orientation` | `geometry_msgs/msg/Quaternion` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgVector3`

Original: `geometry_msgs/msg/Vector3`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This represents a vector in free space. This is semantically different than a point. A vector is always anchored at the origin. When a transform is applied to a vector, only the rotational component is applied. |
| `y` | `float64` | scalar |  | undeclared | finite |  |
| `z` | `float64` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgWrench`

Original: `geometry_msgs/msg/Wrench`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `force` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This represents force in free space, separated into its linear and angular parts. |
| `torque` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgTwist`

Original: `geometry_msgs/msg/Twist`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `linear` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This expresses velocity in free space broken into its linear and angular parts. |
| `angular` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgCartesianMotionForce`

Original: `flexiv_msgs/msg/CartesianMotionForce`. Canonical extent: 164..420 bytes. Semantic rule: `none`.

`UWVMROS1_2f8de91fe69cf2aa5a50dabb1178e9dcef6b1196602e667a8901caeeb7cba8c3`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Cartesian motion-force command for one robot, consumed by cartesian_motion_force_controller and forwarded to flexiv::rdk::Robot::SendCartesianMotionForce(). Header. frame_id is ignored: the pose is always expressed in the robot's world frame. |
| `pose` | `geometry_msgs/msg/Pose` | scalar |  | undeclared | finite | Target TCP pose in world frame. The orientation is normalized by the controller. [m] |
| `wrench` | `geometry_msgs/msg/Wrench` | scalar |  | undeclared | finite | Target TCP wrench in the force control frame, only tracked on axes enabled for force control. It is the wrench sensed at the TCP, not exerted by it: +5 N in world Z pushes the TCP down. [N]:[Nm] |
| `velocity` | `geometry_msgs/msg/Twist` | scalar |  | undeclared | finite | Target TCP velocity in world frame when reaching the pose. Leave 0 for the most robust behaviour. [m/s]:[rad/s] |


### `Ros2Flexiv_msgsMsgDigital`

Original: `flexiv_msgs/msg/Digital`. Canonical extent: 2..2 bytes. Semantic rule: `none`.

`UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `pin` | `uint8` | scalar |  | undeclared | finite |  |
| `state` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgGPIOStates`

Original: `flexiv_msgs/msg/GPIOStates`. Canonical extent: 4..68 bytes. Semantic rule: `none`.

`UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `states` | `flexiv_msgs/msg/Digital` | sequence | 32 elements | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgJointImpedance`

Original: `flexiv_msgs/msg/JointImpedance`. Canonical extent: 29..9373 bytes. Semantic rule: `none`.

`UWVMROS1_f93719074c048d0ab915eeefd2e62bcdfe16ac74f06a3aa505f06ca6d8c3515a`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Impedance properties of the robot's joint motion controller, used in the joint impedance control modes. Mirrors the arguments of flexiv::rdk::Robot::SetJointImpedance(). Header |
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | Joint names in URDF order. Every array below is indexed by this. |
| `k_q` | `float64` | sequence | 32 elements | undeclared | finite | Joint motion stiffness K_q. A joint at 0 is free-floating. [Nm/rad] |
| `z_q` | `float64` | sequence | 32 elements | undeclared | finite | Joint motion damping ratio Z_q, dimensionless. Valid range [0.3, 0.8], nominal 0.7 |
| `k_q_nom` | `float64` | sequence | 32 elements | undeclared | finite | Nominal joint motion stiffness, the upper bound of k_q. [Nm/rad] |
| `in_effect` | `bool` | scalar |  | undeclared | finite | Whether these values are in effect on the robot. False while the robot is not in a joint impedance control mode: they are held and applied on the next controller start. |


### `Ros2Flexiv_msgsMsgJointInertiaScale`

Original: `flexiv_msgs/msg/JointInertiaScale`. Canonical extent: 21..8853 bytes. Semantic rule: `none`.

`UWVMROS1_3dc5f0addd6835f698feda5133efb05cde46e480dee0e219436fcc4443018e1f`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Inertia shaping scales of the robot's joint motion controller, used in the joint impedance control modes. Mirrors the argument of flexiv::rdk::Robot::SetJointInertiaScale(). Header |
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | Joint names in URDF order. Every array below is indexed by this. |
| `inertia_scales` | `float64` | sequence | 32 elements | undeclared | finite | Inertia shaping scale sigma_q, dimensionless. Valid range [0.75, 1.0]. The nominal value 1.0 means no shaping; a smaller scale makes the joint behave as if it were lighter. |
| `in_effect` | `bool` | scalar |  | undeclared | finite | Whether these values are in effect on the robot. False while the robot is not in a joint impedance control mode: they are held and applied on the next controller start. |


### `Ros2Flexiv_msgsMsgJointPosVel`

Original: `flexiv_msgs/msg/JointPosVel`. Canonical extent: 8..520 bytes. Semantic rule: `none`.

`UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `positions` | `float64` | sequence | 32 elements | undeclared | finite |  |
| `velocities` | `float64` | sequence | 32 elements | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgMaxContactTorque`

Original: `flexiv_msgs/msg/MaxContactTorque`. Canonical extent: 25..9113 bytes. Semantic rule: `none`.

`UWVMROS1_d98ebc099077f69f5311d46c2179d08367c301b6c9d1b272b3bc55ba3df185da`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Maximum contact torques of the robot's joint motion controller, used in the joint impedance control modes. Mirrors the argument of flexiv::rdk::Robot::SetMaxContactTorque(). Header |
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | Joint names in URDF order. Every array below is indexed by this. |
| `max_contact_torques` | `float64` | sequence | 32 elements | undeclared | finite | Maximum contact torque the controller regulates its output to maintain. [Nm] |
| `tau_max` | `float64` | sequence | 32 elements | undeclared | finite | Upper software limits of joint torques, the upper bound of max_contact_torques. [Nm] |
| `in_effect` | `bool` | scalar |  | undeclared | finite | Whether these values are in effect on the robot. False while the robot is not in a joint impedance control mode: they are held and applied on the next controller start. |


### `Ros2Flexiv_msgsMsgMode`

Original: `flexiv_msgs/msg/Mode`. Canonical extent: 1..1 bytes. Semantic rule: `none`.

`UWVMROS1_79f6d3de38a4d7d514780f9d71fcc8b5cd413a3b511f1b31243c210265be0c87`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `mode` | `int8` | scalar |  | undeclared | finite |  |

- `MODE_UNKNOWN`: `int8` = `0`.
- `MODE_IDLE`: `int8` = `1`.
- `MODE_RT_JOINT_TORQUE`: `int8` = `2`.
- `MODE_RT_JOINT_IMPEDANCE`: `int8` = `3`.
- `MODE_NRT_JOINT_IMPEDANCE`: `int8` = `4`.
- `MODE_RT_JOINT_POSITION`: `int8` = `5`.
- `MODE_NRT_JOINT_POSITION`: `int8` = `6`.
- `MODE_NRT_PLAN_EXECUTION`: `int8` = `7`.
- `MODE_NRT_PRIMITIVE_EXECUTION`: `int8` = `8`.
- `MODE_RT_CARTESIAN_MOTION_FORCE`: `int8` = `9`.
- `MODE_NRT_CARTESIAN_MOTION_FORCE`: `int8` = `10`.
- `MODE_NRT_SUPER_PRIMITIVE`: `int8` = `11`.

### `Ros2Flexiv_msgsMsgRobotEvent`

Original: `flexiv_msgs/msg/RobotEvent`. Canonical extent: 29..1053 bytes. Semantic rule: `none`.

`UWVMROS1_cbc02424eaea2ae9754309d070d424f0d0fcd078e67a64b22cbb1a36848e0a17`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `level` | `uint8` | scalar |  | undeclared | finite |  |
| `id` | `int32` | scalar |  | undeclared | finite | Unique ID of the event |
| `description` | `string` | scalar | 256 bytes | undeclared | finite | Brief description of the event |
| `consequences` | `string` | scalar | 256 bytes | undeclared | finite | Consequences caused by the event |
| `probable_causes` | `string` | scalar | 256 bytes | undeclared | finite | Probable causes of the event |
| `recommended_actions` | `string` | scalar | 256 bytes | undeclared | finite | Recommended actions after the event |
| `timestamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Timestamp of the event |

- `LEVEL_UNKNOWN`: `uint8` = `0`.
- `LEVEL_INFO`: `uint8` = `1`.
- `LEVEL_WARNING`: `uint8` = `2`.
- `LEVEL_ERROR`: `uint8` = `3`.
- `LEVEL_CRITICAL`: `uint8` = `4`.

### `Ros2Flexiv_msgsMsgOperationalStatus`

Original: `flexiv_msgs/msg/OperationalStatus`. Canonical extent: 34..17650 bytes. Semantic rule: `none`.

`UWVMROS1_fb8887a722a4b6d895ed17ba5db0f4145b4ddd01eecf876419b287dd07bc728b`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Operational status of the robot and of the driver supervising it. The status values mirror flexiv::rdk::OperationalStatus one-for-one. Header |
| `operational_status` | `uint8` | scalar |  | undeclared | finite |  |
| `operational_status_name` | `string` | scalar | 256 bytes | undeclared | finite | Human-readable name of the operational status above |
| `driver_state` | `uint8` | scalar |  | undeclared | finite |  |
| `connected` | `bool` | scalar |  | undeclared | finite | Robot condition flags |
| `fault` | `bool` | scalar |  | undeclared | finite |  |
| `operational` | `bool` | scalar |  | undeclared | finite |  |
| `estop_released` | `bool` | scalar |  | undeclared | finite |  |
| `reduced` | `bool` | scalar |  | undeclared | finite |  |
| `recovery_state` | `bool` | scalar |  | undeclared | finite |  |
| `control_mode` | `int8` | scalar |  | undeclared | finite | Current robot control mode, values defined in Mode.msg |
| `recovery_policy` | `uint8` | scalar |  | undeclared | finite | How the current condition should be recovered from, values defined in RecoveryPolicy.msg |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the current condition and what to do about it |
| `recent_events` | `flexiv_msgs/msg/RobotEvent` | sequence | 16 elements | undeclared | finite | Most recent error and critical events reported by the robot |

- `STATUS_UNKNOWN`: `uint8` = `0`.
- `STATUS_READY`: `uint8` = `1`.
- `STATUS_BOOTING`: `uint8` = `2`.
- `STATUS_ESTOP_NOT_RELEASED`: `uint8` = `3`.
- `STATUS_NOT_ENABLED`: `uint8` = `4`.
- `STATUS_RELEASING_BRAKE`: `uint8` = `5`.
- `STATUS_MINOR_FAULT`: `uint8` = `6`.
- `STATUS_CRITICAL_FAULT`: `uint8` = `7`.
- `STATUS_IN_REDUCED_STATE`: `uint8` = `8`.
- `STATUS_IN_RECOVERY_STATE`: `uint8` = `9`.
- `STATUS_IN_MANUAL_MODE`: `uint8` = `10`.
- `STATUS_IN_AUTO_MODE`: `uint8` = `11`.
- `DRIVER_UNINITIALIZED`: `uint8` = `0`.
- `DRIVER_READY`: `uint8` = `1`.
- `DRIVER_FAULT`: `uint8` = `2`.
- `DRIVER_RECOVERING`: `uint8` = `3`.
- `DRIVER_LOCKOUT`: `uint8` = `4`.
- `DRIVER_DISCONNECTED`: `uint8` = `5`.

### `Ros2Flexiv_msgsMsgRecoveryPolicy`

Original: `flexiv_msgs/msg/RecoveryPolicy`. Canonical extent: 1..1 bytes. Semantic rule: `none`.

`UWVMROS1_0eb43d2482caac32e0977e6cd8ae7baeeba7fca2629c5cd1e1927e8a28af42bf`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `recovery_policy` | `uint8` | scalar |  | undeclared | finite |  |

- `NONE`: `uint8` = `0`.
- `TRANSIENT`: `uint8` = `1`.
- `AUTO_RECOVERABLE`: `uint8` = `2`.
- `WAIT_OPERATOR`: `uint8` = `3`.
- `SAFETY_LOCKOUT`: `uint8` = `4`.
- `CONNECTION_LOST`: `uint8` = `5`.

### `Ros2Geometry_msgsMsgPoseStamped`

Original: `geometry_msgs/msg/PoseStamped`. Canonical extent: 68..324 bytes. Semantic rule: `none`.

`UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | A Pose with reference coordinate frame and timestamp |
| `pose` | `geometry_msgs/msg/Pose` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgAccel`

Original: `geometry_msgs/msg/Accel`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `linear` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This expresses acceleration in free space broken into its linear and angular parts. |
| `angular` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgAccelStamped`

Original: `geometry_msgs/msg/AccelStamped`. Canonical extent: 60..316 bytes. Semantic rule: `none`.

`UWVMROS1_99c561d1968cbb554a188d387fb085b6721227a88b7243a7f90682ae20782329`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | An accel with reference coordinate frame and timestamp |
| `accel` | `geometry_msgs/msg/Accel` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgWrenchStamped`

Original: `geometry_msgs/msg/WrenchStamped`. Canonical extent: 60..316 bytes. Semantic rule: `none`.

`UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | A wrench with reference coordinate frame and timestamp |
| `wrench` | `geometry_msgs/msg/Wrench` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsMsgRobotStates`

Original: `flexiv_msgs/msg/RobotStates`. Canonical extent: 552..5160 bytes. Semantic rule: `none`.

`UWVMROS1_7e84612c73d2d16252a0b93f995b5afa7e032f3de3826f0577c89670dde1f2d2`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Header |
| `robot_timestamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Robot system timestamp |
| `q` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint positions using link-side encoder |
| `theta` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint positions using motor-side encoder |
| `dq` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint velocities using link-side encoder |
| `dtheta` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint velocities using motor-side encoder |
| `tau` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint torques |
| `tau_dot` | `float64` | sequence | 32 elements | undeclared | finite | Numerical derivative of measured joint torques |
| `tau_ext` | `float64` | sequence | 32 elements | undeclared | finite | Estimated external joint torques |
| `tau_interact` | `float64` | sequence | 32 elements | undeclared | finite | Estimated interaction joint torques |
| `temperature` | `float64` | sequence | 32 elements | undeclared | finite | Measured joint temperatures |
| `tcp_pose` | `geometry_msgs/msg/PoseStamped` | scalar |  | undeclared | finite | Measured TCP pose expressed in world frame |
| `tcp_vel` | `geometry_msgs/msg/AccelStamped` | scalar |  | undeclared | finite | Measured TCP velocity expressed in world frame |
| `flange_pose` | `geometry_msgs/msg/PoseStamped` | scalar |  | undeclared | finite | Measured flange pose expressed in world frame |
| `ft_sensor_raw` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Force-torque (FT) sensor raw reading in flange frame |
| `ext_wrench_in_tcp` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Estimated external wrench applied on TCP and expressed in TCP frame |
| `ext_wrench_in_world` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Estimated external wrench applied on TCP and expressed in world frame |
| `ext_wrench_in_tcp_raw` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Unfiltered external wrench applied on TCP and expressed in TCP frame |
| `ext_wrench_in_world_raw` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | Unfiltered external wrench applied on TCP and expressed in world frame |


### `Ros2Flexiv_msgsSrvGetOperationalStatus_Request`

Original: `flexiv_msgs/srv/GetOperationalStatus_Request`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_7fd7ea129ca031bf1bf8d008b1273bc0deb676f3ae786731b420cd009bb3ae12`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|


### `Ros2Flexiv_msgsSrvGetOperationalStatus_Response`

Original: `flexiv_msgs/srv/GetOperationalStatus_Response`. Canonical extent: 34..17650 bytes. Semantic rule: `none`.

`UWVMROS1_b804d4a8c3dfdd26b0cad4314552092a90f439f0f364831b855bca4c30d49f42`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `status` | `flexiv_msgs/msg/OperationalStatus` | scalar |  | undeclared | finite |  |


### `Ros2Flexiv_msgsSrvSetCartesianImpedance_Request`

Original: `flexiv_msgs/srv/SetCartesianImpedance_Request`. Canonical extent: 8..520 bytes. Semantic rule: `none`.

`UWVMROS1_a121634cb756eace8772aa4fb681a103b4716f6289a1ba66608d66ce2d83ff9f`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `k_x` | `float64` | sequence | 32 elements | undeclared | finite | Set the impedance properties of the robot's Cartesian motion controller, used in the Cartesian motion-force control mode. For a robot pair, each array holds the left robot's values first.  An invalid request is rejected as a whole and nothing changes. Cartesian stiffness [k_x, k_y, k_z, k_Rx, k_Ry, k_Rz], 6 per robot. Valid range [0, k_x_nom]. Empty means k_x_nom. [N/m]:[Nm/rad] |
| `z_x` | `float64` | sequence | 32 elements | undeclared | finite | Cartesian damping ratio, 6 per robot. Valid range [0.3, 0.8]. Empty means the nominal 0.7. |


### `Ros2Flexiv_msgsSrvSetCartesianImpedance_Response`

Original: `flexiv_msgs/srv/SetCartesianImpedance_Response`. Canonical extent: 9..521 bytes. Semantic rule: `none`.

`UWVMROS1_84cb649adf8fdcbc9e499dd9c8274542c7de6c466fbab5c2721349ee76974f29`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |
| `k_x_nom` | `float64` | sequence | 32 elements | undeclared | finite | Nominal Cartesian stiffness, the upper bound of k_x, 6 per robot. [N/m]:[Nm/rad] |


### `Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request`

Original: `flexiv_msgs/srv/SetCartesianMotionLimits_Request`. Canonical extent: 16..1040 bytes. Semantic rule: `none`.

`UWVMROS1_381d447a83ce08a843476dfe3b7e1650477b2575f873706d80d458e8153a6111`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `max_linear_vel` | `float64` | sequence | 32 elements | undeclared | finite | Set the motion limits the driver passes with every Cartesian motion-force command. Each array holds one entry per robot, left first. Only accepted while the Cartesian motion-force controller is running, and reset to the defaults on every controller start.  An invalid request is rejected as a whole and nothing changes. Maximum linear velocity. Must be positive. RDK default 0.5. [m/s] |
| `max_angular_vel` | `float64` | sequence | 32 elements | undeclared | finite | Maximum angular velocity. Must be positive. RDK default 1.0. [rad/s] |
| `max_linear_acc` | `float64` | sequence | 32 elements | undeclared | finite | Maximum linear acceleration. Must be positive. RDK default 2.0. [m/s^2] |
| `max_angular_acc` | `float64` | sequence | 32 elements | undeclared | finite | Maximum angular acceleration. Must be positive. RDK default 5.0. [rad/s^2] |


### `Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response`

Original: `flexiv_msgs/srv/SetCartesianMotionLimits_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_0adcf054313396afa13673e6a125f8a6dcc85b1009d36860b6447512f52bdc36`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |


### `Ros2Flexiv_msgsSrvSetForceControlAxis_Request`

Original: `flexiv_msgs/srv/SetForceControlAxis_Request`. Canonical extent: 8..296 bytes. Semantic rule: `none`.

`UWVMROS1_f068f06ad10e40bd50d06800f4178636c89547f5302af856a00d49757b54fef0`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `enabled_axes` | `bool` | sequence | 32 elements | undeclared | finite | Set the Cartesian axes that are force-controlled in the Cartesian motion-force control mode. The other axes stay motion-controlled. For a robot pair, each array holds the left robot's values first.  An invalid request is rejected as a whole and nothing changes. Force control flags [X, Y, Z, Rx, Ry, Rz] in the force control frame, 6 per robot |
| `max_linear_vel` | `float64` | sequence | 32 elements | undeclared | finite | Velocity limit of the force-controlled linear axes [X, Y, Z], 3 per robot, protecting against contact loss under active force control. Valid range [0.005, 2.0]. Empty means 1.0. [m/s] |


### `Ros2Flexiv_msgsSrvSetForceControlAxis_Response`

Original: `flexiv_msgs/srv/SetForceControlAxis_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_26f01b6e3ddb369b49f0a6521104992e654ea628d864c0883b9ccc584234963b`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |


### `Ros2Flexiv_msgsSrvSetForceControlFrame_Request`

Original: `flexiv_msgs/srv/SetForceControlFrame_Request`. Canonical extent: 8..296 bytes. Semantic rule: `none`.

`UWVMROS1_3f061d3f029eddf256a9aa50f07767e77d5c3b2efd6ae69a2ad4a789f4692b30`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `root_coord` | `uint8` | sequence | 32 elements | undeclared | finite | Root coordinate of t_in_root, 1 per robot. WORLD is fixed, TCP moves with the end effector. |
| `t_in_root` | `float64` | sequence | 32 elements | undeclared | finite | Transformation from the root coordinate to the force control frame [x, y, z, qw, qx, qy, qz], 7 per robot. Empty means identity. [m]:[] |

- `WORLD`: `uint8` = `0`.
- `TCP`: `uint8` = `1`.

### `Ros2Flexiv_msgsSrvSetForceControlFrame_Response`

Original: `flexiv_msgs/srv/SetForceControlFrame_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_cfec8391d4df88d36f4e3afbb956b12b3274b3bd0a6a6284cb44d49f12a44bde`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |


### `Ros2Flexiv_msgsSrvSetJointImpedance_Request`

Original: `flexiv_msgs/srv/SetJointImpedance_Request`. Canonical extent: 8..520 bytes. Semantic rule: `none`.

`UWVMROS1_5b1014a3a79fcd116f94142640c2c3e9c1867a2c54b9382f7165f7fda04a8584`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `k_q` | `float64` | sequence | 32 elements | undeclared | finite | Set impedance properties of the robot's joint motion controller. Requires the driver to run with rdk_control_mode:=joint_impedance.  k_q must hold one entry per joint of the hardware component, in URDF order. z_q may be left empty to use the nominal damping ratio 0.7, matching the RDK argument default. An invalid request is rejected as a whole and nothing changes. Joint motion stiffness K_q, one entry per joint in URDF order. Valid range [0, k_q_nom]. Setting a joint to 0 makes it free-floating, which in this position-streaming driver means the joint will sag under gravity. [Nm/rad] |
| `z_q` | `float64` | sequence | 32 elements | undeclared | finite | Joint motion damping ratio Z_q, one entry per joint in URDF order, or empty for the nominal 0.7. Valid range [0.3, 0.8]. Values away from nominal may lead to performance and stability issues. |


### `Ros2Flexiv_msgsSrvSetJointImpedance_Response`

Original: `flexiv_msgs/srv/SetJointImpedance_Response`. Canonical extent: 34..9634 bytes. Semantic rule: `none`.

`UWVMROS1_95a169dd0eb880ef3e71653a5e4cdf08e743db80df706e75664db582eb927f96`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome, naming the joint and the bound on a rejection |
| `setting` | `flexiv_msgs/msg/JointImpedance` | scalar |  | undeclared | finite | The values now held by the driver, unchanged from before on a rejection |


### `Ros2Flexiv_msgsSrvSetJointInertiaScale_Request`

Original: `flexiv_msgs/srv/SetJointInertiaScale_Request`. Canonical extent: 4..260 bytes. Semantic rule: `none`.

`UWVMROS1_752da94424644200ef0e6463486a6dbc74b85c46acfaeac3b569b6248c1e2686`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `inertia_scales` | `float64` | sequence | 32 elements | undeclared | finite | Set inertia shaping scales of the robot's joint motion controller, which make the joints behave as if they were lighter. Requires the driver to run with rdk_control_mode:=joint_impedance.  inertia_scales must hold one entry per joint of the hardware component, in URDF order. An invalid request is rejected as a whole and nothing changes. Inertia shaping scale sigma_q, one entry per joint in URDF order. Valid range [0.75, 1.0]. The nominal value 1.0 means no shaping; a smaller scale corresponds to lighter inertia. |


### `Ros2Flexiv_msgsSrvSetJointInertiaScale_Response`

Original: `flexiv_msgs/srv/SetJointInertiaScale_Response`. Canonical extent: 26..9114 bytes. Semantic rule: `none`.

`UWVMROS1_2b7d36ecdc70ec1a450a03d412cfd431e735fc3aa601f321007afabe00f51931`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome, naming the joint and the bound on a rejection |
| `setting` | `flexiv_msgs/msg/JointInertiaScale` | scalar |  | undeclared | finite | The values now held by the driver, unchanged from before on a rejection |


### `Ros2Flexiv_msgsSrvSetMaxContactTorque_Request`

Original: `flexiv_msgs/srv/SetMaxContactTorque_Request`. Canonical extent: 4..260 bytes. Semantic rule: `none`.

`UWVMROS1_8850403204dc91a11797a767dde6999163008f41ad5c89360d852d037806fb43`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `max_contact_torques` | `float64` | sequence | 32 elements | undeclared | finite | Set maximum contact torques of the robot's joint motion controller. The controller regulates its output to keep contact torques with the environment under these values. Requires the driver to run with rdk_control_mode:=joint_impedance.  max_contact_torques must hold one entry per joint of the hardware component, in URDF order. An invalid request is rejected as a whole and nothing changes. Maximum contact torque, one entry per joint in URDF order. Valid range [0, tau_max]. Raising this increases the force the robot may exert on its surroundings. [Nm] |


### `Ros2Flexiv_msgsSrvSetMaxContactTorque_Response`

Original: `flexiv_msgs/srv/SetMaxContactTorque_Response`. Canonical extent: 30..9374 bytes. Semantic rule: `none`.

`UWVMROS1_602bd439ab984dd9d7f64786005dd4f5763d245121a09833f75cee914e9dd43c`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome, naming the joint and the bound on a rejection |
| `setting` | `flexiv_msgs/msg/MaxContactTorque` | scalar |  | undeclared | finite | The values now held by the driver, unchanged from before on a rejection |


### `Ros2Flexiv_msgsSrvSetMaxContactWrench_Request`

Original: `flexiv_msgs/srv/SetMaxContactWrench_Request`. Canonical extent: 4..260 bytes. Semantic rule: `none`.

`UWVMROS1_5a943fdeba115cb68b38d0a1d98e9247331419b4ec89ad0870387251fd5d9467`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `max_wrench` | `float64` | sequence | 32 elements | undeclared | finite-or-positive-infinity | Set the maximum contact wrench for the motion-controlled axes of the Cartesian motion-force control mode. For a robot pair, the array holds the left robot's values first.  An invalid request is rejected as a whole and nothing changes. Maximum contact wrench [f_x, f_y, f_z, m_x, m_y, m_z], 6 per robot. Must not be negative. Use infinity to disable the regulation. [N]:[Nm] |


### `Ros2Flexiv_msgsSrvSetMaxContactWrench_Response`

Original: `flexiv_msgs/srv/SetMaxContactWrench_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_6a39df3ba6eacc0a230a8f039f16f03574d76818fb53e9445c29f175c2e1420e`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |


### `Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request`

Original: `flexiv_msgs/srv/SetNullSpaceObjectives_Request`. Canonical extent: 12..780 bytes. Semantic rule: `none`.

`UWVMROS1_01cb5842d8e2eca55e63f74f7f2c973038bc354a5c0ef2552d4f6e82e382bc27`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `linear_manipulability` | `float64` | sequence | 32 elements | undeclared | finite | Set the weights of the three optimization objectives of the null-space posture control, used in the Cartesian motion-force control mode. Each array holds one entry per robot, left first.  An invalid request is rejected as a whole and nothing changes. Weight of translational manipulability. Valid range [0.0, 1.0]. RDK default 0.0. |
| `angular_manipulability` | `float64` | sequence | 32 elements | undeclared | finite | Weight of rotational manipulability. Valid range [0.0, 1.0]. RDK default 0.0. |
| `ref_positions_tracking` | `float64` | sequence | 32 elements | undeclared | finite | Weight of tracking the null-space posture reference. Valid range [0.1, 1.0]. RDK default 0.5. |


### `Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response`

Original: `flexiv_msgs/srv/SetNullSpaceObjectives_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_70fb3c7a3a0a6b46347624a273b6e7180ad1610ca09a5c672b5ad7a976b79298`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |


### `Ros2Flexiv_msgsSrvSetNullSpacePosture_Request`

Original: `flexiv_msgs/srv/SetNullSpacePosture_Request`. Canonical extent: 4..260 bytes. Semantic rule: `none`.

`UWVMROS1_0fb02e69195688307d15cc7f8b6f7a95f400d4083cc8c363e29071fee844b92d`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `ref_positions` | `float64` | sequence | 32 elements | undeclared | finite | Set the reference joint positions of the null-space posture control, used in the Cartesian motion-force control mode.  An invalid request is rejected as a whole and nothing changes. Reference joint positions, one entry per joint of the hardware component in URDF order. Valid range [q_min, q_max]. [rad] |


### `Ros2Flexiv_msgsSrvSetNullSpacePosture_Response`

Original: `flexiv_msgs/srv/SetNullSpacePosture_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_913c995a461fa70cd62293c1932d738a4a8b799c4ebd13a1a8afdaa8acef4293`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |


### `Ros2Flexiv_msgsSrvSetPassiveForceControl_Request`

Original: `flexiv_msgs/srv/SetPassiveForceControl_Request`. Canonical extent: 4..36 bytes. Semantic rule: `none`.

`UWVMROS1_603cd39ccf8c37d944afe9108085fe3ba72881d772e42f24f87ec380f3770d16`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `enabled` | `bool` | sequence | 32 elements | undeclared | finite | Enable or disable passive (open-loop) force control for the Cartesian motion-force control mode. Active (closed-loop) force control is the default. Only accepted while the robot is idle, i.e. before the Cartesian motion-force controller is started, and disabled again when it stops. One entry per robot, left first |


### `Ros2Flexiv_msgsSrvSetPassiveForceControl_Response`

Original: `flexiv_msgs/srv/SetPassiveForceControl_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_73fe92bbcf47063293bde2f3542c719111f0bd82aaa6b500f15122c6aa1e7d35`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Operator-facing explanation of the outcome |


## controller_core_foxy

`ros2` / `foxy` / `flexiv-controller-core-foxy-complete`

原始定义与所有服务、动作组件均保留。规范编码不是 DDS CDR 或 ROS1 TCPROS 字节。

### `builtin_interfaces/msg/Time`

Kind: `message`. Components: `message=Ros2Builtin_interfacesMsgTime`.

### `builtin_interfaces/msg/Duration`

Kind: `message`. Components: `message=Ros2Builtin_interfacesMsgDuration`.

### `std_msgs/msg/Header`

Kind: `message`. Components: `message=Ros2Std_msgsMsgHeader`.

### `sensor_msgs/msg/JointState`

Kind: `message`. Components: `message=Ros2Sensor_msgsMsgJointState`.

### `trajectory_msgs/msg/JointTrajectoryPoint`

Kind: `message`. Components: `message=Ros2Trajectory_msgsMsgJointTrajectoryPoint`.

### `trajectory_msgs/msg/JointTrajectory`

Kind: `message`. Components: `message=Ros2Trajectory_msgsMsgJointTrajectory`.

### `std_msgs/msg/MultiArrayDimension`

Kind: `message`. Components: `message=Ros2Std_msgsMsgMultiArrayDimension`.

### `std_msgs/msg/MultiArrayLayout`

Kind: `message`. Components: `message=Ros2Std_msgsMsgMultiArrayLayout`.

### `std_msgs/msg/Float64MultiArray`

Kind: `message`. Components: `message=Ros2Std_msgsMsgFloat64MultiArray`.

### `Ros2Builtin_interfacesMsgTime`

Original: `builtin_interfaces/msg/Time`. Canonical extent: 8..8 bytes. Semantic rule: `normalized-time`.

`UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `sec` | `int32` | scalar |  | undeclared | finite | Time indicates a specific point in time, relative to a clock's 0 point. The seconds component, valid over all int32 values. |
| `nanosec` | `uint32` | scalar |  | undeclared | finite | The nanoseconds component, valid in the range [0, 10e9). |


### `Ros2Builtin_interfacesMsgDuration`

Original: `builtin_interfaces/msg/Duration`. Canonical extent: 8..8 bytes. Semantic rule: `normalized-time`.

`UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `sec` | `int32` | scalar |  | undeclared | finite | Duration defines a period between two time points. It is comprised of a seconds component and a nanoseconds component. Seconds component, range is valid over any possible int32 value. |
| `nanosec` | `uint32` | scalar |  | undeclared | finite | Nanoseconds component in the range of [0, 10e9). |


### `Ros2Std_msgsMsgHeader`

Original: `std_msgs/msg/Header`. Canonical extent: 12..268 bytes. Semantic rule: `none`.

`UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `stamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Standard metadata for higher-level stamped data types. This is generally used to communicate timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as seconds and nanoseconds. |
| `frame_id` | `string` | scalar | 256 bytes | undeclared | finite | Transform frame with which this data is associated. |


### `Ros2Sensor_msgsMsgJointState`

Original: `sensor_msgs/msg/JointState`. Canonical extent: 28..9372 bytes. Semantic rule: `joint-state-optional-equal-length-arrays`.

`UWVMROS1_3faa9cdc746cb2cf7ac581bb2b0b6e32e2c6601d72043c7893249142730d8556`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | This is a message that holds data to describe the state of a set of torque controlled joints.  The state of each joint (revolute or prismatic) is defined by: * the position of the joint (rad or m), * the velocity of the joint (rad/s or m/s) and * the effort that is applied in the joint (Nm or N).  Each joint is uniquely identified by its name The header specifies the time at which the joint states were recorded. All the joint states in one message have to be recorded at the same time.  This message consists of a multiple arrays, one for each part of the joint state. The goal is to make each of the fields optional. When e.g. your joints have no effort associated with them, you can leave the effort array empty.  All arrays in this message should have the same size, or be empty. This is the only way to uniquely associate the joint name with the correct states. |
| `name` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite |  |
| `position` | `float64` | sequence | 32 elements | undeclared | finite |  |
| `velocity` | `float64` | sequence | 32 elements | undeclared | finite |  |
| `effort` | `float64` | sequence | 32 elements | undeclared | finite |  |


### `Ros2Trajectory_msgsMsgJointTrajectoryPoint`

Original: `trajectory_msgs/msg/JointTrajectoryPoint`. Canonical extent: 24..1048 bytes. Semantic rule: `none`.

`UWVMROS1_8320f791cea3b2edbbe7b78c9a3750708fb0284ae6a322058921c8c105f7130c`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `positions` | `float64` | sequence | 32 elements | undeclared | finite | Each trajectory point specifies either positions[, velocities[, accelerations]] or positions[, effort] for the trajectory to be executed. All specified values are in the same order as the joint names in JointTrajectory.msg. Single DOF joint positions for each joint relative to their "0" position. The units depend on the specific joint type: radians for revolute or continuous joints, and meters for prismatic joints. |
| `velocities` | `float64` | sequence | 32 elements | undeclared | finite | The rate of change in position of each joint. Units are joint type dependent. Radians/second for revolute or continuous joints, and meters/second for prismatic joints. |
| `accelerations` | `float64` | sequence | 32 elements | undeclared | finite | Rate of change in velocity of each joint. Units are joint type dependent. Radians/second^2 for revolute or continuous joints, and meters/second^2 for prismatic joints. |
| `effort` | `float64` | sequence | 32 elements | undeclared | finite | The torque or the force to be applied at each joint. For revolute/continuous joints effort denotes a torque in newton-meters. For prismatic joints, effort denotes a force in newtons. |
| `time_from_start` | `builtin_interfaces/msg/Duration` | scalar |  | undeclared | finite | Desired time from the trajectory start to arrive at this trajectory point. |


### `Ros2Trajectory_msgsMsgJointTrajectory`

Original: `trajectory_msgs/msg/JointTrajectory`. Canonical extent: 20..16980 bytes. Semantic rule: `none`.

`UWVMROS1_0b691c3ed52f8cc3bf5e4c5a7cec1d82a15d08b7d2575bd30b34c49e37877af4`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | The header is used to specify the coordinate frame and the reference time for the trajectory durations |
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | The names of the active joints in each trajectory point. These names are ordered and must correspond to the values in each trajectory point. |
| `points` | `trajectory_msgs/msg/JointTrajectoryPoint` | sequence | 8 elements | undeclared | finite | Array of trajectory points, which describe the positions, velocities, accelerations and/or efforts of the joints at each time point. |


### `Ros2Std_msgsMsgMultiArrayDimension`

Original: `std_msgs/msg/MultiArrayDimension`. Canonical extent: 12..268 bytes. Semantic rule: `none`.

`UWVMROS1_95110a90e1600af2696a69f4dec6bfde2afe315bfd453bda2e1c84f5984ae80d`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `label` | `string` | scalar | 256 bytes | undeclared | finite | This was originally provided as an example message. It is deprecated as of Foxy It is recommended to create your own semantically meaningful message. However if you would like to continue using this please use the equivalent in example_msgs. label of given dimension |
| `size` | `uint32` | scalar |  | undeclared | finite | size of given dimension (in type units) |
| `stride` | `uint32` | scalar |  | undeclared | finite | stride of given dimension |


### `Ros2Std_msgsMsgMultiArrayLayout`

Original: `std_msgs/msg/MultiArrayLayout`. Canonical extent: 8..2152 bytes. Semantic rule: `none`.

`UWVMROS1_1e1ea54500602a3813c1cc3b5db7dfd9a7dd9260a3d5af43e8495f6b48e32f40`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `dim` | `std_msgs/msg/MultiArrayDimension` | sequence | 8 elements | undeclared | finite | This was originally provided as an example message. It is deprecated as of Foxy It is recommended to create your own semantically meaningful message. However if you would like to continue using this please use the equivalent in example_msgs. The multiarray declares a generic multi-dimensional array of a particular data type.  Dimensions are ordered from outer most to inner most.  Accessors should ALWAYS be written in terms of dimension stride and specified outer-most dimension first.  multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]  A standard, 3-channel 640x480 image with interleaved color channels would be specified as:  dim[0].label  = "height" dim[0].size   = 480 dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image) dim[1].label  = "width" dim[1].size   = 640 dim[1].stride = 3*640 = 1920 dim[2].label  = "channel" dim[2].size   = 3 dim[2].stride = 3  multiarray(i,j,k) refers to the ith row, jth column, and kth channel. Array of dimension properties |
| `data_offset` | `uint32` | scalar |  | undeclared | finite | padding bytes at front of data |


### `Ros2Std_msgsMsgFloat64MultiArray`

Original: `std_msgs/msg/Float64MultiArray`. Canonical extent: 12..2412 bytes. Semantic rule: `none`.

`UWVMROS1_9950573380aa134d889e1662549f28ffd493e8c4da68170fd076c4c9cc3db8c2`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `layout` | `std_msgs/msg/MultiArrayLayout` | scalar |  | undeclared | finite | This was originally provided as an example message. It is deprecated as of Foxy It is recommended to create your own semantically meaningful message. However if you would like to continue using this please use the equivalent in example_msgs. Please look at the MultiArrayLayout message definition for documentation on all multiarrays. specification of data layout |
| `data` | `float64` | sequence | 32 elements | undeclared | finite | array of data |


## controller_core_humble

`ros2` / `humble` / `flexiv-controller-core-humble-complete`

原始定义与所有服务、动作组件均保留。规范编码不是 DDS CDR 或 ROS1 TCPROS 字节。

### `builtin_interfaces/msg/Time`

Kind: `message`. Components: `message=Ros2Builtin_interfacesMsgTime`.

### `builtin_interfaces/msg/Duration`

Kind: `message`. Components: `message=Ros2Builtin_interfacesMsgDuration`.

### `std_msgs/msg/Header`

Kind: `message`. Components: `message=Ros2Std_msgsMsgHeader`.

### `sensor_msgs/msg/JointState`

Kind: `message`. Components: `message=Ros2Sensor_msgsMsgJointState`.

### `trajectory_msgs/msg/JointTrajectoryPoint`

Kind: `message`. Components: `message=Ros2Trajectory_msgsMsgJointTrajectoryPoint`.

### `trajectory_msgs/msg/JointTrajectory`

Kind: `message`. Components: `message=Ros2Trajectory_msgsMsgJointTrajectory`.

### `std_msgs/msg/MultiArrayDimension`

Kind: `message`. Components: `message=Ros2Std_msgsMsgMultiArrayDimension`.

### `std_msgs/msg/MultiArrayLayout`

Kind: `message`. Components: `message=Ros2Std_msgsMsgMultiArrayLayout`.

### `std_msgs/msg/Float64MultiArray`

Kind: `message`. Components: `message=Ros2Std_msgsMsgFloat64MultiArray`.

### `Ros2Builtin_interfacesMsgTime`

Original: `builtin_interfaces/msg/Time`. Canonical extent: 8..8 bytes. Semantic rule: `normalized-time`.

`UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `sec` | `int32` | scalar |  | undeclared | finite | This message communicates ROS Time defined here: https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32 values. |
| `nanosec` | `uint32` | scalar |  | undeclared | finite | The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component. e.g. The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The time 1.7 seconds is represented as {sec: 1, nanosec: 7e8} |


### `Ros2Builtin_interfacesMsgDuration`

Original: `builtin_interfaces/msg/Duration`. Canonical extent: 8..8 bytes. Semantic rule: `normalized-time`.

`UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `sec` | `int32` | scalar |  | undeclared | finite | Duration defines a period between two time points. Messages of this datatype are of ROS Time following this design: https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32 values. |
| `nanosec` | `uint32` | scalar |  | undeclared | finite | The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component. e.g. The duration -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The duration 1.7 seconds is represented as {sec: 1, nanosec: 7e8} |


### `Ros2Std_msgsMsgHeader`

Original: `std_msgs/msg/Header`. Canonical extent: 12..268 bytes. Semantic rule: `none`.

`UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `stamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Standard metadata for higher-level stamped data types. This is generally used to communicate timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as seconds and nanoseconds. |
| `frame_id` | `string` | scalar | 256 bytes | undeclared | finite | Transform frame with which this data is associated. |


### `Ros2Sensor_msgsMsgJointState`

Original: `sensor_msgs/msg/JointState`. Canonical extent: 28..9372 bytes. Semantic rule: `joint-state-optional-equal-length-arrays`.

`UWVMROS1_3faa9cdc746cb2cf7ac581bb2b0b6e32e2c6601d72043c7893249142730d8556`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | This is a message that holds data to describe the state of a set of torque controlled joints.  The state of each joint (revolute or prismatic) is defined by: * the position of the joint (rad or m), * the velocity of the joint (rad/s or m/s) and * the effort that is applied in the joint (Nm or N).  Each joint is uniquely identified by its name The header specifies the time at which the joint states were recorded. All the joint states in one message have to be recorded at the same time.  This message consists of a multiple arrays, one for each part of the joint state. The goal is to make each of the fields optional. When e.g. your joints have no effort associated with them, you can leave the effort array empty.  All arrays in this message should have the same size, or be empty. This is the only way to uniquely associate the joint name with the correct states. |
| `name` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite |  |
| `position` | `float64` | sequence | 32 elements | undeclared | finite |  |
| `velocity` | `float64` | sequence | 32 elements | undeclared | finite |  |
| `effort` | `float64` | sequence | 32 elements | undeclared | finite |  |


### `Ros2Trajectory_msgsMsgJointTrajectoryPoint`

Original: `trajectory_msgs/msg/JointTrajectoryPoint`. Canonical extent: 24..1048 bytes. Semantic rule: `none`.

`UWVMROS1_8320f791cea3b2edbbe7b78c9a3750708fb0284ae6a322058921c8c105f7130c`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `positions` | `float64` | sequence | 32 elements | undeclared | finite | Each trajectory point specifies either positions[, velocities[, accelerations]] or positions[, effort] for the trajectory to be executed. All specified values are in the same order as the joint names in JointTrajectory.msg. Single DOF joint positions for each joint relative to their "0" position. The units depend on the specific joint type: radians for revolute or continuous joints, and meters for prismatic joints. |
| `velocities` | `float64` | sequence | 32 elements | undeclared | finite | The rate of change in position of each joint. Units are joint type dependent. Radians/second for revolute or continuous joints, and meters/second for prismatic joints. |
| `accelerations` | `float64` | sequence | 32 elements | undeclared | finite | Rate of change in velocity of each joint. Units are joint type dependent. Radians/second^2 for revolute or continuous joints, and meters/second^2 for prismatic joints. |
| `effort` | `float64` | sequence | 32 elements | undeclared | finite | The torque or the force to be applied at each joint. For revolute/continuous joints effort denotes a torque in newton-meters. For prismatic joints, effort denotes a force in newtons. |
| `time_from_start` | `builtin_interfaces/msg/Duration` | scalar |  | undeclared | finite | Desired time from the trajectory start to arrive at this trajectory point. |


### `Ros2Trajectory_msgsMsgJointTrajectory`

Original: `trajectory_msgs/msg/JointTrajectory`. Canonical extent: 20..16980 bytes. Semantic rule: `none`.

`UWVMROS1_0b691c3ed52f8cc3bf5e4c5a7cec1d82a15d08b7d2575bd30b34c49e37877af4`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | The header is used to specify the coordinate frame and the reference time for the trajectory durations |
| `joint_names` | `string` | sequence | 32 elements; 256 bytes | undeclared | finite | The names of the active joints in each trajectory point. These names are ordered and must correspond to the values in each trajectory point. |
| `points` | `trajectory_msgs/msg/JointTrajectoryPoint` | sequence | 8 elements | undeclared | finite | Array of trajectory points, which describe the positions, velocities, accelerations and/or efforts of the joints at each time point. |


### `Ros2Std_msgsMsgMultiArrayDimension`

Original: `std_msgs/msg/MultiArrayDimension`. Canonical extent: 12..268 bytes. Semantic rule: `none`.

`UWVMROS1_95110a90e1600af2696a69f4dec6bfde2afe315bfd453bda2e1c84f5984ae80d`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `label` | `string` | scalar | 256 bytes | undeclared | finite | This was originally provided as an example message. It is deprecated as of Foxy It is recommended to create your own semantically meaningful message. However if you would like to continue using this please use the equivalent in example_msgs. label of given dimension |
| `size` | `uint32` | scalar |  | undeclared | finite | size of given dimension (in type units) |
| `stride` | `uint32` | scalar |  | undeclared | finite | stride of given dimension |


### `Ros2Std_msgsMsgMultiArrayLayout`

Original: `std_msgs/msg/MultiArrayLayout`. Canonical extent: 8..2152 bytes. Semantic rule: `none`.

`UWVMROS1_1e1ea54500602a3813c1cc3b5db7dfd9a7dd9260a3d5af43e8495f6b48e32f40`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `dim` | `std_msgs/msg/MultiArrayDimension` | sequence | 8 elements | undeclared | finite | This was originally provided as an example message. It is deprecated as of Foxy It is recommended to create your own semantically meaningful message. However if you would like to continue using this please use the equivalent in example_msgs. The multiarray declares a generic multi-dimensional array of a particular data type.  Dimensions are ordered from outer most to inner most.  Accessors should ALWAYS be written in terms of dimension stride and specified outer-most dimension first.  multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]  A standard, 3-channel 640x480 image with interleaved color channels would be specified as:  dim[0].label  = "height" dim[0].size   = 480 dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image) dim[1].label  = "width" dim[1].size   = 640 dim[1].stride = 3*640 = 1920 dim[2].label  = "channel" dim[2].size   = 3 dim[2].stride = 3  multiarray(i,j,k) refers to the ith row, jth column, and kth channel. Array of dimension properties |
| `data_offset` | `uint32` | scalar |  | undeclared | finite | padding bytes at front of data |


### `Ros2Std_msgsMsgFloat64MultiArray`

Original: `std_msgs/msg/Float64MultiArray`. Canonical extent: 12..2412 bytes. Semantic rule: `none`.

`UWVMROS1_9950573380aa134d889e1662549f28ffd493e8c4da68170fd076c4c9cc3db8c2`

| 字段 | 类型 | 形状 | SDK 容量 | 官方默认值 | 浮点策略 | 原始单位/坐标系/说明 |
|---|---|---|---|---|---|---|
| `layout` | `std_msgs/msg/MultiArrayLayout` | scalar |  | undeclared | finite | This was originally provided as an example message. It is deprecated as of Foxy It is recommended to create your own semantically meaningful message. However if you would like to continue using this please use the equivalent in example_msgs. Please look at the MultiArrayLayout message definition for documentation on all multiarrays. specification of data layout |
| `data` | `float64` | sequence | 32 elements | undeclared | finite | array of data |

