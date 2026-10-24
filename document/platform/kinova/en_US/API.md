# kinova complete interface reference

Field order, widths and units remain those of the original declarations. SDK quotas are separate from native ROS bounds.

## ros2_humble

`ros2` / `humble` / `mobile-fjt-humble-complete`

Every original declaration and service/action component is retained. Canonical bytes are distinct from DDS CDR and ROS1 TCPROS bytes.

### `builtin_interfaces/msg/Duration`

Kind: `message`. Components: `message=Ros2Builtin_interfacesMsgDuration`.

### `builtin_interfaces/msg/Time`

Kind: `message`. Components: `message=Ros2Builtin_interfacesMsgTime`.

### `control_msgs/action/FollowJointTrajectory`

Kind: `action`. Components: `goal=Ros2Control_msgsActionFollowJointTrajectory_Goal`, `result=Ros2Control_msgsActionFollowJointTrajectory_Result`, `feedback=Ros2Control_msgsActionFollowJointTrajectory_Feedback`.

### `control_msgs/msg/JointComponentTolerance`

Kind: `message`. Components: `message=Ros2Control_msgsMsgJointComponentTolerance`.

### `control_msgs/msg/JointTolerance`

Kind: `message`. Components: `message=Ros2Control_msgsMsgJointTolerance`.

### `geometry_msgs/msg/Quaternion`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgQuaternion`.

### `geometry_msgs/msg/Transform`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgTransform`.

### `geometry_msgs/msg/Twist`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgTwist`.

### `geometry_msgs/msg/Vector3`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgVector3`.

### `sensor_msgs/msg/JointState`

Kind: `message`. Components: `message=Ros2Sensor_msgsMsgJointState`.

### `std_msgs/msg/Header`

Kind: `message`. Components: `message=Ros2Std_msgsMsgHeader`.

### `trajectory_msgs/msg/JointTrajectory`

Kind: `message`. Components: `message=Ros2Trajectory_msgsMsgJointTrajectory`.

### `trajectory_msgs/msg/JointTrajectoryPoint`

Kind: `message`. Components: `message=Ros2Trajectory_msgsMsgJointTrajectoryPoint`.

### `trajectory_msgs/msg/MultiDOFJointTrajectory`

Kind: `message`. Components: `message=Ros2Trajectory_msgsMsgMultiDOFJointTrajectory`.

### `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint`

Kind: `message`. Components: `message=Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint`.

### `Ros2Builtin_interfacesMsgDuration`

Original: `builtin_interfaces/msg/Duration`. Canonical extent: 8..8 bytes. Semantic rule: `normalized-time`.

`UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `sec` | `int32` | scalar |  | undeclared | finite | Duration defines a period between two time points. Messages of this datatype are of ROS Time following this design: https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32 values. |
| `nanosec` | `uint32` | scalar |  | undeclared | finite | The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component. e.g. The duration -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The duration 1.7 seconds is represented as {sec: 1, nanosec: 7e8} |


### `Ros2Builtin_interfacesMsgTime`

Original: `builtin_interfaces/msg/Time`. Canonical extent: 8..8 bytes. Semantic rule: `normalized-time`.

`UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `sec` | `int32` | scalar |  | undeclared | finite | This message communicates ROS Time defined here: https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32 values. |
| `nanosec` | `uint32` | scalar |  | undeclared | finite | The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component. e.g. The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The time 1.7 seconds is represented as {sec: 1, nanosec: 7e8} |


### `Ros2Std_msgsMsgHeader`

Original: `std_msgs/msg/Header`. Canonical extent: 12..140 bytes. Semantic rule: `none`.

`UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `stamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Standard metadata for higher-level stamped data types. This is generally used to communicate timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as seconds and nanoseconds. |
| `frame_id` | `string` | scalar | 128 bytes | undeclared | finite | Transform frame with which this data is associated. |


### `Ros2Trajectory_msgsMsgJointTrajectoryPoint`

Original: `trajectory_msgs/msg/JointTrajectoryPoint`. Canonical extent: 24..280 bytes. Semantic rule: `none`.

`UWVMROS1_a512b971211baa8604440e02a046b586e7970293242607002ceb89196c9d99b1`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `positions` | `float64` | sequence | 8 elements | undeclared | finite | Each trajectory point specifies either positions[, velocities[, accelerations]] or positions[, effort] for the trajectory to be executed. All specified values are in the same order as the joint names in JointTrajectory.msg. Single DOF joint positions for each joint relative to their "0" position. The units depend on the specific joint type: radians for revolute or continuous joints, and meters for prismatic joints. |
| `velocities` | `float64` | sequence | 8 elements | undeclared | finite | The rate of change in position of each joint. Units are joint type dependent. Radians/second for revolute or continuous joints, and meters/second for prismatic joints. |
| `accelerations` | `float64` | sequence | 8 elements | undeclared | finite | Rate of change in velocity of each joint. Units are joint type dependent. Radians/second^2 for revolute or continuous joints, and meters/second^2 for prismatic joints. |
| `effort` | `float64` | sequence | 8 elements | undeclared | finite | The torque or the force to be applied at each joint. For revolute/continuous joints effort denotes a torque in newton-meters. For prismatic joints, effort denotes a force in newtons. |
| `time_from_start` | `builtin_interfaces/msg/Duration` | scalar |  | undeclared | finite | Desired time from the trajectory start to arrive at this trajectory point. |


### `Ros2Trajectory_msgsMsgJointTrajectory`

Original: `trajectory_msgs/msg/JointTrajectory`. Canonical extent: 20..1484 bytes. Semantic rule: `none`.

`UWVMROS1_e32bd7016b5fefcab6adeb42072e2d56c45d4b9f7cb372bdb5bfac97abf8cb77`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | The header is used to specify the coordinate frame and the reference time for the trajectory durations |
| `joint_names` | `string` | sequence | 8 elements; 128 bytes | undeclared | finite | The names of the active joints in each trajectory point. These names are ordered and must correspond to the values in each trajectory point. |
| `points` | `trajectory_msgs/msg/JointTrajectoryPoint` | sequence | 1 elements | undeclared | finite | Array of trajectory points, which describe the positions, velocities, accelerations and/or efforts of the joints at each time point. |


### `Ros2Geometry_msgsMsgVector3`

Original: `geometry_msgs/msg/Vector3`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This represents a vector in free space. This is semantically different than a point. A vector is always anchored at the origin. When a transform is applied to a vector, only the rotational component is applied. |
| `y` | `float64` | scalar |  | undeclared | finite |  |
| `z` | `float64` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgQuaternion`

Original: `geometry_msgs/msg/Quaternion`. Canonical extent: 32..32 bytes. Semantic rule: `none`.

`UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | 0.0 | finite | This represents an orientation in free space in quaternion form. |
| `y` | `float64` | scalar |  | 0.0 | finite |  |
| `z` | `float64` | scalar |  | 0.0 | finite |  |
| `w` | `float64` | scalar |  | 1.0 | finite |  |


### `Ros2Geometry_msgsMsgTransform`

Original: `geometry_msgs/msg/Transform`. Canonical extent: 56..56 bytes. Semantic rule: `none`.

`UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `translation` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This represents the transform between two coordinate frames in free space. |
| `rotation` | `geometry_msgs/msg/Quaternion` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgTwist`

Original: `geometry_msgs/msg/Twist`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `linear` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This expresses velocity in free space broken into its linear and angular parts. |
| `angular` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint`

Original: `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint`. Canonical extent: 20..844 bytes. Semantic rule: `none`.

`UWVMROS1_4b4b6ba78f11918fcdc138544f7ef1a140d1fc51b385349ab1ad5716472c3daf`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `transforms` | `geometry_msgs/msg/Transform` | sequence | 1 elements | undeclared | finite | Each multi-dof joint can specify a transform (up to 6 DOF). |
| `velocities` | `geometry_msgs/msg/Twist` | sequence | 8 elements | undeclared | finite | There can be a velocity specified for the origin of the joint. |
| `accelerations` | `geometry_msgs/msg/Twist` | sequence | 8 elements | undeclared | finite | There can be an acceleration specified for the origin of the joint. |
| `time_from_start` | `builtin_interfaces/msg/Duration` | scalar |  | undeclared | finite | Desired time from the trajectory start to arrive at this trajectory point. |


### `Ros2Trajectory_msgsMsgMultiDOFJointTrajectory`

Original: `trajectory_msgs/msg/MultiDOFJointTrajectory`. Canonical extent: 20..2048 bytes. Semantic rule: `none`.

`UWVMROS1_b822a2d5db9b83e916dcc9db4932952a314773ef53c9fbaf825902e0eb7c8cb5`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | The header is used to specify the coordinate frame and the reference time for the trajectory durations |
| `joint_names` | `string` | sequence | 8 elements; 128 bytes | undeclared | finite | A representation of a multi-dof joint trajectory (each point is a transformation) Each point along the trajectory will include an array of positions/velocities/accelerations that has the same length as the array of joint names, and has the same order of joints as the joint names array. |
| `points` | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | sequence | 1 elements | undeclared | finite |  |


### `Ros2Control_msgsMsgJointTolerance`

Original: `control_msgs/msg/JointTolerance`. Canonical extent: 28..156 bytes. Semantic rule: `none`.

`UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `name` | `string` | scalar | 128 bytes | undeclared | finite | The tolerances specify the amount the position, velocity, and accelerations can vary from the setpoints.  For example, in the case of trajectory control, when the actual position varies beyond (desired position + position tolerance), the trajectory goal may abort.  There are two special values for tolerances: * 0 - The tolerance is unspecified and will remain at whatever the default is * -1 - The tolerance is "erased".  If there was a default, the joint will be allowed to move without restriction. |
| `position` | `float64` | scalar |  | undeclared | finite | in radians or meters (for a revolute or prismatic joint, respectively) |
| `velocity` | `float64` | scalar |  | undeclared | finite | in rad/sec or m/sec |
| `acceleration` | `float64` | scalar |  | undeclared | finite | in rad/sec^2 or m/sec^2 |


### `Ros2Control_msgsMsgJointComponentTolerance`

Original: `control_msgs/msg/JointComponentTolerance`. Canonical extent: 30..158 bytes. Semantic rule: `none`.

`UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `joint_name` | `string` | scalar | 128 bytes | undeclared | finite |  |
| `component` | `uint16` | scalar |  | undeclared | finite |  |
| `position` | `float64` | scalar |  | undeclared | finite |  |
| `velocity` | `float64` | scalar |  | undeclared | finite |  |
| `acceleration` | `float64` | scalar |  | undeclared | finite |  |

- `X_AXIS`: `uint16` = `1`.
- `Y_AXIS`: `uint16` = `2`.
- `Z_AXIS`: `uint16` = `3`.
- `TRANSLATION`: `uint16` = `4`.
- `ROTATION`: `uint16` = `5`.

### `Ros2Control_msgsActionFollowJointTrajectory_Goal`

Original: `control_msgs/action/FollowJointTrajectory_Goal`. Canonical extent: 64..8580 bytes. Semantic rule: `none`.

`UWVMROS1_fa8334eb129cc91c50febaccfebb371f6fbdd82188d6301823344d6664300018`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `trajectory` | `trajectory_msgs/msg/JointTrajectory` | scalar |  | undeclared | finite | The trajectory for all revolute, continuous or prismatic joints |
| `multi_dof_trajectory` | `trajectory_msgs/msg/MultiDOFJointTrajectory` | scalar |  | undeclared | finite | The trajectory for all planar or floating joints (i.e. individual joints with more than one DOF) |
| `path_tolerance` | `control_msgs/msg/JointTolerance` | sequence | 8 elements | undeclared | finite | Tolerances for the trajectory.  If the measured joint values fall outside the tolerances the trajectory goal is aborted.  Any tolerances that are not specified (by being omitted or set to 0) are set to the defaults for the action server (often taken from the parameter server). Tolerances applied to the joints as the trajectory is executed.  If violated, the goal aborts with error_code set to PATH_TOLERANCE_VIOLATED. |
| `component_path_tolerance` | `control_msgs/msg/JointComponentTolerance` | sequence | 8 elements | undeclared | finite |  |
| `goal_tolerance` | `control_msgs/msg/JointTolerance` | sequence | 8 elements | undeclared | finite | To report success, the joints must be within goal_tolerance of the final trajectory value.  The goal must be achieved by time the trajectory ends plus goal_time_tolerance.  (goal_time_tolerance allows some leeway in time, so that the trajectory goal can still succeed even if the joints reach the goal some time after the precise end time of the trajectory).  If the joints are not within goal_tolerance after "trajectory finish time" + goal_time_tolerance, the goal aborts with error_code set to GOAL_TOLERANCE_VIOLATED |
| `component_goal_tolerance` | `control_msgs/msg/JointComponentTolerance` | sequence | 8 elements | undeclared | finite |  |
| `goal_time_tolerance` | `builtin_interfaces/msg/Duration` | scalar |  | undeclared | finite |  |


### `Ros2Control_msgsActionFollowJointTrajectory_Result`

Original: `control_msgs/action/FollowJointTrajectory_Result`. Canonical extent: 8..264 bytes. Semantic rule: `none`.

`UWVMROS1_df1e08076a5c725b865cc8807462d9ccf9577df11cbb71fcc0d280d77d0e5649`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `error_code` | `int32` | scalar |  | undeclared | finite |  |
| `error_string` | `string` | scalar | 256 bytes | undeclared | finite | Human readable description of the error code. Contains complementary information that is especially useful when execution fails, for instance: - INVALID_GOAL: The reason for the invalid goal (e.g., the requested trajectory is in the past). - INVALID_JOINTS: The mismatch between the expected controller joints and those provided in the goal. - PATH_TOLERANCE_VIOLATED and GOAL_TOLERANCE_VIOLATED: Which joint violated which tolerance, and by how much. |

- `SUCCESSFUL`: `int32` = `0`.
- `INVALID_GOAL`: `int32` = `-1`.
- `INVALID_JOINTS`: `int32` = `-2`.
- `OLD_HEADER_TIMESTAMP`: `int32` = `-3`.
- `PATH_TOLERANCE_VIOLATED`: `int32` = `-4`.
- `GOAL_TOLERANCE_VIOLATED`: `int32` = `-5`.

### `Ros2Control_msgsActionFollowJointTrajectory_Feedback`

Original: `control_msgs/action/FollowJointTrajectory_Feedback`. Canonical extent: 152..4708 bytes. Semantic rule: `none`.

`UWVMROS1_ae2175027c3e45997d272b9610d15ef52cc665d23c0a371892d10b3d100e3529`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite |  |
| `joint_names` | `string` | sequence | 8 elements; 128 bytes | undeclared | finite |  |
| `desired` | `trajectory_msgs/msg/JointTrajectoryPoint` | scalar |  | undeclared | finite |  |
| `actual` | `trajectory_msgs/msg/JointTrajectoryPoint` | scalar |  | undeclared | finite |  |
| `error` | `trajectory_msgs/msg/JointTrajectoryPoint` | scalar |  | undeclared | finite |  |
| `multi_dof_joint_names` | `string` | sequence | 1 elements; 128 bytes | undeclared | finite |  |
| `multi_dof_desired` | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | scalar |  | undeclared | finite |  |
| `multi_dof_actual` | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | scalar |  | undeclared | finite |  |
| `multi_dof_error` | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | scalar |  | undeclared | finite |  |


### `Ros2Sensor_msgsMsgJointState`

Original: `sensor_msgs/msg/JointState`. Canonical extent: 28..1404 bytes. Semantic rule: `joint-state-optional-equal-length-arrays`.

`UWVMROS1_bba20c36db70a98b594ba603d05b8a979038fb95b701221ba3b8689f55b06b11`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | This is a message that holds data to describe the state of a set of torque controlled joints.  The state of each joint (revolute or prismatic) is defined by: * the position of the joint (rad or m), * the velocity of the joint (rad/s or m/s) and * the effort that is applied in the joint (Nm or N).  Each joint is uniquely identified by its name The header specifies the time at which the joint states were recorded. All the joint states in one message have to be recorded at the same time.  This message consists of a multiple arrays, one for each part of the joint state. The goal is to make each of the fields optional. When e.g. your joints have no effort associated with them, you can leave the effort array empty.  All arrays in this message should have the same size, or be empty. This is the only way to uniquely associate the joint name with the correct states. |
| `name` | `string` | sequence | 8 elements; 128 bytes | undeclared | finite |  |
| `position` | `float64` | sequence | 8 elements | undeclared | finite |  |
| `velocity` | `float64` | sequence | 8 elements | undeclared | finite |  |
| `effort` | `float64` | sequence | 8 elements | undeclared | finite |  |

