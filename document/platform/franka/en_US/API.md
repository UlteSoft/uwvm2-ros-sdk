# franka complete interface reference

Field order, widths and units remain those of the original declarations. SDK quotas are separate from native ROS bounds.

## ros1

`ros1` / `noetic` / `franka-ros1-complete`

Every original declaration and service/action component is retained. Canonical bytes are distinct from DDS CDR and ROS1 TCPROS bytes.

### `franka_example_controllers/JointTorqueComparison`

Kind: `message`. Components: `message=Ros1Franka_example_controllersJointTorqueComparison`.

### `franka_gripper/Grasp`

Kind: `action`. Components: `goal=Ros1Franka_gripperGraspGoal`, `result=Ros1Franka_gripperGraspResult`, `feedback=Ros1Franka_gripperGraspFeedback`.

### `franka_gripper/GraspEpsilon`

Kind: `message`. Components: `message=Ros1Franka_gripperGraspEpsilon`.

### `franka_gripper/Homing`

Kind: `action`. Components: `goal=Ros1Franka_gripperHomingGoal`, `result=Ros1Franka_gripperHomingResult`, `feedback=Ros1Franka_gripperHomingFeedback`.

### `franka_gripper/Move`

Kind: `action`. Components: `goal=Ros1Franka_gripperMoveGoal`, `result=Ros1Franka_gripperMoveResult`, `feedback=Ros1Franka_gripperMoveFeedback`.

### `franka_gripper/Stop`

Kind: `action`. Components: `goal=Ros1Franka_gripperStopGoal`, `result=Ros1Franka_gripperStopResult`, `feedback=Ros1Franka_gripperStopFeedback`.

### `franka_msgs/ErrorRecovery`

Kind: `action`. Components: `goal=Ros1Franka_msgsErrorRecoveryGoal`, `result=Ros1Franka_msgsErrorRecoveryResult`, `feedback=Ros1Franka_msgsErrorRecoveryFeedback`.

### `franka_msgs/Errors`

Kind: `message`. Components: `message=Ros1Franka_msgsErrors`.

### `franka_msgs/FrankaState`

Kind: `message`. Components: `message=Ros1Franka_msgsFrankaState`.

### `franka_msgs/SetCartesianImpedance`

Kind: `service`. Components: `request=Ros1Franka_msgsSetCartesianImpedanceRequest`, `response=Ros1Franka_msgsSetCartesianImpedanceResponse`.

### `franka_msgs/SetEEFrame`

Kind: `service`. Components: `request=Ros1Franka_msgsSetEEFrameRequest`, `response=Ros1Franka_msgsSetEEFrameResponse`.

### `franka_msgs/SetForceTorqueCollisionBehavior`

Kind: `service`. Components: `request=Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest`, `response=Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse`.

### `franka_msgs/SetFullCollisionBehavior`

Kind: `service`. Components: `request=Ros1Franka_msgsSetFullCollisionBehaviorRequest`, `response=Ros1Franka_msgsSetFullCollisionBehaviorResponse`.

### `franka_msgs/SetJointImpedance`

Kind: `service`. Components: `request=Ros1Franka_msgsSetJointImpedanceRequest`, `response=Ros1Franka_msgsSetJointImpedanceResponse`.

### `franka_msgs/SetKFrame`

Kind: `service`. Components: `request=Ros1Franka_msgsSetKFrameRequest`, `response=Ros1Franka_msgsSetKFrameResponse`.

### `franka_msgs/SetLoad`

Kind: `service`. Components: `request=Ros1Franka_msgsSetLoadRequest`, `response=Ros1Franka_msgsSetLoadResponse`.

### `std_msgs/Header`

Kind: `message`. Components: `message=Ros1Std_msgsHeader`.

### `Ros1Franka_example_controllersJointTorqueComparison`

Original: `franka_example_controllers/JointTorqueComparison`. Canonical extent: 176..176 bytes. Semantic rule: `none`.

`UWVMROS1_dde6eaf404002642e64af59eb5367948b00bc07c0b2fd8a57e359e9df3084254`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `tau_error` | `float64` | array | 7 elements | undeclared | finite |  |
| `tau_commanded` | `float64` | array | 7 elements | undeclared | finite |  |
| `tau_measured` | `float64` | array | 7 elements | undeclared | finite |  |
| `root_mean_square_error` | `float64` | scalar |  | undeclared | finite |  |


### `Ros1Franka_gripperGraspEpsilon`

Original: `franka_gripper/GraspEpsilon`. Canonical extent: 16..16 bytes. Semantic rule: `none`.

`UWVMROS1_538ac801e9874841f232909d2d9a16893a8d29c8380cd623c00c408690f978f9`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `inner` | `float64` | scalar |  | undeclared | finite | [m] |
| `outer` | `float64` | scalar |  | undeclared | finite | [m] |


### `Ros1Franka_gripperGraspGoal`

Original: `franka_gripper/GraspGoal`. Canonical extent: 40..40 bytes. Semantic rule: `none`.

`UWVMROS1_d3dd0d3f47e49e06a95d907a6219335b35234749518ab645e102257595ed7bcf`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `width` | `float64` | scalar |  | undeclared | finite | [m] |
| `epsilon` | `franka_gripper/GraspEpsilon` | scalar |  | undeclared | finite |  |
| `speed` | `float64` | scalar |  | undeclared | finite | [m/s] |
| `force` | `float64` | scalar |  | undeclared | finite | [N] |


### `Ros1Franka_gripperGraspResult`

Original: `franka_gripper/GraspResult`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_9ce1e4f95f16fd6c1603f0b30a9fcc33e4f8436cdb96710ea91eb20b38a1e02e`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros1Franka_gripperGraspFeedback`

Original: `franka_gripper/GraspFeedback`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_24ca23625df0bd9fb984e65c8ecd7a3af162a3db00c15951225df5e18d3a4d0d`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|


### `Ros1Franka_gripperHomingGoal`

Original: `franka_gripper/HomingGoal`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_4b4f861fa9ff44afda4217cf613720e90353b0d43c1fc3425d5937157353910f`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|


### `Ros1Franka_gripperHomingResult`

Original: `franka_gripper/HomingResult`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_1ddf202b4e7dbf100d304b4eb32aa0ce8dca6ffadcf720820f2d7932af056477`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros1Franka_gripperHomingFeedback`

Original: `franka_gripper/HomingFeedback`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_4a1118d8ab544b2bc99ff878356aae49b4d3ecb4cb5ba7e2f93f7c0c7a29512e`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|


### `Ros1Franka_gripperMoveGoal`

Original: `franka_gripper/MoveGoal`. Canonical extent: 16..16 bytes. Semantic rule: `none`.

`UWVMROS1_c83296f2540854e78cc159691c229f5d50267b3fdb31789e325a55fcd7d6830a`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `width` | `float64` | scalar |  | undeclared | finite | [m] |
| `speed` | `float64` | scalar |  | undeclared | finite | [m/s] |


### `Ros1Franka_gripperMoveResult`

Original: `franka_gripper/MoveResult`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_527adf0720dabcc91866a0858cddfbfae1ed4203d4eb34a3965ebe085d0ac3b3`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros1Franka_gripperMoveFeedback`

Original: `franka_gripper/MoveFeedback`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_8e02ca1d66ae38a5d71ca5f708aa2c57bb3df573d37b692e24986dba384c5f80`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|


### `Ros1Franka_gripperStopGoal`

Original: `franka_gripper/StopGoal`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_ecb09ccc03cb2140a457a11c174a614392ce1f9263e46c5b82427a99f7ff0245`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|


### `Ros1Franka_gripperStopResult`

Original: `franka_gripper/StopResult`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_343e16d9b839b61ed8f8c1ce93005cb3a21511a220095200eb075dfb62a40c61`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros1Franka_gripperStopFeedback`

Original: `franka_gripper/StopFeedback`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_62b637081e95f59df491f71b0ca84394a7e1f36137ca389a8f6d0d3a0f19038d`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|


### `Ros1Franka_msgsErrorRecoveryGoal`

Original: `franka_msgs/ErrorRecoveryGoal`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_b4f11555bc4919bf59aa548bd21046bdc7b1e2ed5cce6dc46298eb7486ef7b64`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|


### `Ros1Franka_msgsErrorRecoveryResult`

Original: `franka_msgs/ErrorRecoveryResult`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_6f06297f59f06dc46e3f983b72101ae3c25cd054bca44cea1f6dd11a9aaa7794`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|


### `Ros1Franka_msgsErrorRecoveryFeedback`

Original: `franka_msgs/ErrorRecoveryFeedback`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_3faee6d8afdc0524598cec0fe30fd51bd723e8e44849f035368723e59be87a21`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|


### `Ros1Franka_msgsErrors`

Original: `franka_msgs/Errors`. Canonical extent: 41..41 bytes. Semantic rule: `none`.

`UWVMROS1_80e3d1157d53bf80d4db3621f9f22b35a1ef665382974599ff016709c6a629ca`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `joint_position_limits_violation` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_position_limits_violation` | `bool` | scalar |  | undeclared | finite |  |
| `self_collision_avoidance_violation` | `bool` | scalar |  | undeclared | finite |  |
| `joint_velocity_violation` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_velocity_violation` | `bool` | scalar |  | undeclared | finite |  |
| `force_control_safety_violation` | `bool` | scalar |  | undeclared | finite |  |
| `joint_reflex` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_reflex` | `bool` | scalar |  | undeclared | finite |  |
| `max_goal_pose_deviation_violation` | `bool` | scalar |  | undeclared | finite |  |
| `max_path_pose_deviation_violation` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_velocity_profile_safety_violation` | `bool` | scalar |  | undeclared | finite |  |
| `joint_position_motion_generator_start_pose_invalid` | `bool` | scalar |  | undeclared | finite |  |
| `joint_motion_generator_position_limits_violation` | `bool` | scalar |  | undeclared | finite |  |
| `joint_motion_generator_velocity_limits_violation` | `bool` | scalar |  | undeclared | finite |  |
| `joint_motion_generator_velocity_discontinuity` | `bool` | scalar |  | undeclared | finite |  |
| `joint_motion_generator_acceleration_discontinuity` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_position_motion_generator_start_pose_invalid` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_motion_generator_elbow_limit_violation` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_motion_generator_velocity_limits_violation` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_motion_generator_velocity_discontinuity` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_motion_generator_acceleration_discontinuity` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_motion_generator_elbow_sign_inconsistent` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_motion_generator_start_elbow_invalid` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_motion_generator_joint_position_limits_violation` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_motion_generator_joint_velocity_limits_violation` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_motion_generator_joint_velocity_discontinuity` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_motion_generator_joint_acceleration_discontinuity` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_position_motion_generator_invalid_frame` | `bool` | scalar |  | undeclared | finite |  |
| `force_controller_desired_force_tolerance_violation` | `bool` | scalar |  | undeclared | finite |  |
| `controller_torque_discontinuity` | `bool` | scalar |  | undeclared | finite |  |
| `start_elbow_sign_inconsistent` | `bool` | scalar |  | undeclared | finite |  |
| `communication_constraints_violation` | `bool` | scalar |  | undeclared | finite |  |
| `power_limit_violation` | `bool` | scalar |  | undeclared | finite |  |
| `joint_p2p_insufficient_torque_for_planning` | `bool` | scalar |  | undeclared | finite |  |
| `tau_j_range_violation` | `bool` | scalar |  | undeclared | finite |  |
| `instability_detected` | `bool` | scalar |  | undeclared | finite |  |
| `joint_move_in_wrong_direction` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_spline_motion_generator_violation` | `bool` | scalar |  | undeclared | finite |  |
| `joint_via_motion_generator_planning_joint_limit_violation` | `bool` | scalar |  | undeclared | finite |  |
| `base_acceleration_initialization_timeout` | `bool` | scalar |  | undeclared | finite |  |
| `base_acceleration_invalid_reading` | `bool` | scalar |  | undeclared | finite |  |


### `Ros1Time`

Original: `time`. Canonical extent: 8..8 bytes. Semantic rule: `normalized-time`.

`UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `sec` | `uint32` | scalar |  | undeclared | finite | No additional unit or meaning declared. |
| `nsec` | `uint32` | scalar |  | undeclared | finite | No additional unit or meaning declared. |


### `Ros1Std_msgsHeader`

Original: `std_msgs/Header`. Canonical extent: 16..144 bytes. Semantic rule: `none`.

`UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `seq` | `uint32` | scalar |  | undeclared | finite | Standard metadata for higher-level stamped data types. This is generally used to communicate timestamped data in a particular coordinate frame.  sequence ID: consecutively increasing ID |
| `stamp` | `time` | scalar |  | undeclared | finite | Two-integer timestamp that is expressed as: * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs') * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs') time-handling sugar is provided by the client library |
| `frame_id` | `string` | scalar | 128 bytes | undeclared | finite | Frame this data is associated with |


### `Ros1Franka_msgsFrankaState`

Original: `franka_msgs/FrankaState`. Canonical extent: 2491..2619 bytes. Semantic rule: `none`.

`UWVMROS1_79f22f36ce2c11f519ee29e65a248ec1b67240e27712b2667e9b803a2562ee71`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/Header` | scalar |  | undeclared | finite |  |
| `cartesian_collision` | `float64` | array | 6 elements | undeclared | finite |  |
| `cartesian_contact` | `float64` | array | 6 elements | undeclared | finite |  |
| `q` | `float64` | array | 7 elements | undeclared | finite |  |
| `q_d` | `float64` | array | 7 elements | undeclared | finite |  |
| `dq` | `float64` | array | 7 elements | undeclared | finite |  |
| `dq_d` | `float64` | array | 7 elements | undeclared | finite |  |
| `ddq_d` | `float64` | array | 7 elements | undeclared | finite |  |
| `theta` | `float64` | array | 7 elements | undeclared | finite |  |
| `dtheta` | `float64` | array | 7 elements | undeclared | finite |  |
| `tau_J` | `float64` | array | 7 elements | undeclared | finite |  |
| `dtau_J` | `float64` | array | 7 elements | undeclared | finite |  |
| `tau_J_d` | `float64` | array | 7 elements | undeclared | finite |  |
| `K_F_ext_hat_K` | `float64` | array | 6 elements | undeclared | finite |  |
| `elbow` | `float64` | array | 2 elements | undeclared | finite |  |
| `elbow_d` | `float64` | array | 2 elements | undeclared | finite |  |
| `elbow_c` | `float64` | array | 2 elements | undeclared | finite |  |
| `delbow_c` | `float64` | array | 2 elements | undeclared | finite |  |
| `ddelbow_c` | `float64` | array | 2 elements | undeclared | finite |  |
| `joint_collision` | `float64` | array | 7 elements | undeclared | finite |  |
| `joint_contact` | `float64` | array | 7 elements | undeclared | finite |  |
| `O_F_ext_hat_K` | `float64` | array | 6 elements | undeclared | finite |  |
| `O_dP_EE_d` | `float64` | array | 6 elements | undeclared | finite |  |
| `O_ddP_O` | `float64` | array | 3 elements | undeclared | finite |  |
| `O_dP_EE_c` | `float64` | array | 6 elements | undeclared | finite |  |
| `O_ddP_EE_c` | `float64` | array | 6 elements | undeclared | finite |  |
| `tau_ext_hat_filtered` | `float64` | array | 7 elements | undeclared | finite |  |
| `m_ee` | `float64` | scalar |  | undeclared | finite |  |
| `F_x_Cee` | `float64` | array | 3 elements | undeclared | finite |  |
| `I_ee` | `float64` | array | 9 elements | undeclared | finite |  |
| `m_load` | `float64` | scalar |  | undeclared | finite |  |
| `F_x_Cload` | `float64` | array | 3 elements | undeclared | finite |  |
| `I_load` | `float64` | array | 9 elements | undeclared | finite |  |
| `m_total` | `float64` | scalar |  | undeclared | finite |  |
| `F_x_Ctotal` | `float64` | array | 3 elements | undeclared | finite |  |
| `I_total` | `float64` | array | 9 elements | undeclared | finite |  |
| `O_T_EE` | `float64` | array | 16 elements | undeclared | finite |  |
| `O_T_EE_d` | `float64` | array | 16 elements | undeclared | finite |  |
| `O_T_EE_c` | `float64` | array | 16 elements | undeclared | finite |  |
| `F_T_EE` | `float64` | array | 16 elements | undeclared | finite |  |
| `F_T_NE` | `float64` | array | 16 elements | undeclared | finite |  |
| `NE_T_EE` | `float64` | array | 16 elements | undeclared | finite |  |
| `EE_T_K` | `float64` | array | 16 elements | undeclared | finite |  |
| `time` | `float64` | scalar |  | undeclared | finite |  |
| `control_command_success_rate` | `float64` | scalar |  | undeclared | finite |  |
| `robot_mode` | `uint8` | scalar |  | undeclared | finite |  |
| `current_errors` | `franka_msgs/Errors` | scalar |  | undeclared | finite |  |
| `last_motion_errors` | `franka_msgs/Errors` | scalar |  | undeclared | finite |  |

- `ROBOT_MODE_OTHER`: `uint8` = `0`.
- `ROBOT_MODE_IDLE`: `uint8` = `1`.
- `ROBOT_MODE_MOVE`: `uint8` = `2`.
- `ROBOT_MODE_GUIDING`: `uint8` = `3`.
- `ROBOT_MODE_REFLEX`: `uint8` = `4`.
- `ROBOT_MODE_USER_STOPPED`: `uint8` = `5`.
- `ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY`: `uint8` = `6`.

### `Ros1Franka_msgsSetCartesianImpedanceRequest`

Original: `franka_msgs/SetCartesianImpedanceRequest`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_ff604aae9ab1ef36b5af107966e64ee2115ee17618a4ece6f15997c889cacbdf`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `cartesian_stiffness` | `float64` | array | 6 elements | undeclared | finite |  |


### `Ros1Franka_msgsSetCartesianImpedanceResponse`

Original: `franka_msgs/SetCartesianImpedanceResponse`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_b091d2fe98c84528460ba3d84524c38355e725c161456edf0034e62c6f63ab5b`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros1Franka_msgsSetEEFrameRequest`

Original: `franka_msgs/SetEEFrameRequest`. Canonical extent: 128..128 bytes. Semantic rule: `none`.

`UWVMROS1_1bc740d3998a14dd6c0604d5024ebda2b4916a8497950841b14a8073c6c1ecfc`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `NE_T_EE` | `float64` | array | 16 elements | undeclared | finite |  |


### `Ros1Franka_msgsSetEEFrameResponse`

Original: `franka_msgs/SetEEFrameResponse`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_b40c9595d57d6ed52ea4eca78e21f2c3d81f5a0afaad2420511211931f7d1c67`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest`

Original: `franka_msgs/SetForceTorqueCollisionBehaviorRequest`. Canonical extent: 208..208 bytes. Semantic rule: `none`.

`UWVMROS1_2513f0ea74bf6a871a85ce00c0f822891f2c0bed890b87e35d25a637aa62c4b5`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `lower_torque_thresholds_nominal` | `float64` | array | 7 elements | undeclared | finite |  |
| `upper_torque_thresholds_nominal` | `float64` | array | 7 elements | undeclared | finite |  |
| `lower_force_thresholds_nominal` | `float64` | array | 6 elements | undeclared | finite |  |
| `upper_force_thresholds_nominal` | `float64` | array | 6 elements | undeclared | finite |  |


### `Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse`

Original: `franka_msgs/SetForceTorqueCollisionBehaviorResponse`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_72418d73d504ae385d7ddce7e3cef859a104346dbfea7fc9da82e0f7e33ca2f5`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros1Franka_msgsSetFullCollisionBehaviorRequest`

Original: `franka_msgs/SetFullCollisionBehaviorRequest`. Canonical extent: 416..416 bytes. Semantic rule: `none`.

`UWVMROS1_47a86620ec5abdd6cc820b095d8f5f4214c1d9af00ac1ff0740137bbdda7217c`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `lower_torque_thresholds_acceleration` | `float64` | array | 7 elements | undeclared | finite |  |
| `upper_torque_thresholds_acceleration` | `float64` | array | 7 elements | undeclared | finite |  |
| `lower_torque_thresholds_nominal` | `float64` | array | 7 elements | undeclared | finite |  |
| `upper_torque_thresholds_nominal` | `float64` | array | 7 elements | undeclared | finite |  |
| `lower_force_thresholds_acceleration` | `float64` | array | 6 elements | undeclared | finite |  |
| `upper_force_thresholds_acceleration` | `float64` | array | 6 elements | undeclared | finite |  |
| `lower_force_thresholds_nominal` | `float64` | array | 6 elements | undeclared | finite |  |
| `upper_force_thresholds_nominal` | `float64` | array | 6 elements | undeclared | finite |  |


### `Ros1Franka_msgsSetFullCollisionBehaviorResponse`

Original: `franka_msgs/SetFullCollisionBehaviorResponse`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_26f46e286c42d51a8ef45db7c8b3bf315fb02faf7b2be5d3741563d43169a0e2`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros1Franka_msgsSetJointImpedanceRequest`

Original: `franka_msgs/SetJointImpedanceRequest`. Canonical extent: 56..56 bytes. Semantic rule: `none`.

`UWVMROS1_29b5419f698b39452d38fbc58a0e3c572b8d285b70c8acf7d326c440eb417c53`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `joint_stiffness` | `float64` | array | 7 elements | undeclared | finite |  |


### `Ros1Franka_msgsSetJointImpedanceResponse`

Original: `franka_msgs/SetJointImpedanceResponse`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_1ae0cd7c4ad89de09ccffd6c4999435fa6965509e99a9adb98b7f3ebb3ea4c55`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros1Franka_msgsSetKFrameRequest`

Original: `franka_msgs/SetKFrameRequest`. Canonical extent: 128..128 bytes. Semantic rule: `none`.

`UWVMROS1_36afcdc6402259fb5a71ae1b27be0bb8623a64dd93caffa376adea7862c86446`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `EE_T_K` | `float64` | array | 16 elements | undeclared | finite |  |


### `Ros1Franka_msgsSetKFrameResponse`

Original: `franka_msgs/SetKFrameResponse`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_4ea77d3e827a9b9eaf3c3f9805f78c38bfe91789555d0469cffd4ff4266cd443`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros1Franka_msgsSetLoadRequest`

Original: `franka_msgs/SetLoadRequest`. Canonical extent: 104..104 bytes. Semantic rule: `none`.

`UWVMROS1_d7c08dd9105cb7b83cb251e80c7d2dd1e9f7bb2a43f614bff6d00d808cccbcb5`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `mass` | `float64` | scalar |  | undeclared | finite |  |
| `F_x_center_load` | `float64` | array | 3 elements | undeclared | finite |  |
| `load_inertia` | `float64` | array | 9 elements | undeclared | finite |  |


### `Ros1Franka_msgsSetLoadResponse`

Original: `franka_msgs/SetLoadResponse`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_f18952407bf9e2813deeaa3734a781e90b74cb79892919c1218812ad71255cf3`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


## ros2

`ros2` / `jazzy` / `franka-ros2-complete`

Every original declaration and service/action component is retained. Canonical bytes are distinct from DDS CDR and ROS1 TCPROS bytes.

### `builtin_interfaces/msg/Time`

Kind: `message`. Components: `message=Ros2Builtin_interfacesMsgTime`.

### `franka_msgs/action/ErrorRecovery`

Kind: `action`. Components: `goal=Ros2Franka_msgsActionErrorRecovery_Goal`, `result=Ros2Franka_msgsActionErrorRecovery_Result`, `feedback=Ros2Franka_msgsActionErrorRecovery_Feedback`.

### `franka_msgs/action/Grasp`

Kind: `action`. Components: `goal=Ros2Franka_msgsActionGrasp_Goal`, `result=Ros2Franka_msgsActionGrasp_Result`, `feedback=Ros2Franka_msgsActionGrasp_Feedback`.

### `franka_msgs/action/Homing`

Kind: `action`. Components: `goal=Ros2Franka_msgsActionHoming_Goal`, `result=Ros2Franka_msgsActionHoming_Result`, `feedback=Ros2Franka_msgsActionHoming_Feedback`.

### `franka_msgs/action/Move`

Kind: `action`. Components: `goal=Ros2Franka_msgsActionMove_Goal`, `result=Ros2Franka_msgsActionMove_Result`, `feedback=Ros2Franka_msgsActionMove_Feedback`.

### `franka_msgs/action/PTPMotion`

Kind: `action`. Components: `goal=Ros2Franka_msgsActionPTPMotion_Goal`, `result=Ros2Franka_msgsActionPTPMotion_Result`, `feedback=Ros2Franka_msgsActionPTPMotion_Feedback`.

### `franka_msgs/msg/CollisionIndicators`

Kind: `message`. Components: `message=Ros2Franka_msgsMsgCollisionIndicators`.

### `franka_msgs/msg/Elbow`

Kind: `message`. Components: `message=Ros2Franka_msgsMsgElbow`.

### `franka_msgs/msg/Errors`

Kind: `message`. Components: `message=Ros2Franka_msgsMsgErrors`.

### `franka_msgs/msg/FrankaRobotState`

Kind: `message`. Components: `message=Ros2Franka_msgsMsgFrankaRobotState`.

### `franka_msgs/msg/GraspEpsilon`

Kind: `message`. Components: `message=Ros2Franka_msgsMsgGraspEpsilon`.

### `franka_msgs/msg/TargetStatus`

Kind: `message`. Components: `message=Ros2Franka_msgsMsgTargetStatus`.

### `franka_msgs/srv/SetCartesianStiffness`

Kind: `service`. Components: `request=Ros2Franka_msgsSrvSetCartesianStiffness_Request`, `response=Ros2Franka_msgsSrvSetCartesianStiffness_Response`.

### `franka_msgs/srv/SetForceTorqueCollisionBehavior`

Kind: `service`. Components: `request=Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request`, `response=Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response`.

### `franka_msgs/srv/SetFullCollisionBehavior`

Kind: `service`. Components: `request=Ros2Franka_msgsSrvSetFullCollisionBehavior_Request`, `response=Ros2Franka_msgsSrvSetFullCollisionBehavior_Response`.

### `franka_msgs/srv/SetJointStiffness`

Kind: `service`. Components: `request=Ros2Franka_msgsSrvSetJointStiffness_Request`, `response=Ros2Franka_msgsSrvSetJointStiffness_Response`.

### `franka_msgs/srv/SetLoad`

Kind: `service`. Components: `request=Ros2Franka_msgsSrvSetLoad_Request`, `response=Ros2Franka_msgsSrvSetLoad_Response`.

### `franka_msgs/srv/SetStiffnessFrame`

Kind: `service`. Components: `request=Ros2Franka_msgsSrvSetStiffnessFrame_Request`, `response=Ros2Franka_msgsSrvSetStiffnessFrame_Response`.

### `franka_msgs/srv/SetTCPFrame`

Kind: `service`. Components: `request=Ros2Franka_msgsSrvSetTCPFrame_Request`, `response=Ros2Franka_msgsSrvSetTCPFrame_Response`.

### `franka_spine_msgs/action/MoveAbsolute`

Kind: `action`. Components: `goal=Ros2Franka_spine_msgsActionMoveAbsolute_Goal`, `result=Ros2Franka_spine_msgsActionMoveAbsolute_Result`, `feedback=Ros2Franka_spine_msgsActionMoveAbsolute_Feedback`.

### `franka_spine_msgs/msg/SpineParameters`

Kind: `message`. Components: `message=Ros2Franka_spine_msgsMsgSpineParameters`.

### `franka_spine_msgs/msg/SpinePosition`

Kind: `message`. Components: `message=Ros2Franka_spine_msgsMsgSpinePosition`.

### `franka_spine_msgs/msg/SpineState`

Kind: `message`. Components: `message=Ros2Franka_spine_msgsMsgSpineState`.

### `franka_spine_msgs/msg/UserLimits`

Kind: `message`. Components: `message=Ros2Franka_spine_msgsMsgUserLimits`.

### `franka_spine_msgs/srv/FaultReset`

Kind: `service`. Components: `request=Ros2Franka_spine_msgsSrvFaultReset_Request`, `response=Ros2Franka_spine_msgsSrvFaultReset_Response`.

### `franka_spine_msgs/srv/GetParameters`

Kind: `service`. Components: `request=Ros2Franka_spine_msgsSrvGetParameters_Request`, `response=Ros2Franka_spine_msgsSrvGetParameters_Response`.

### `franka_spine_msgs/srv/GetPosition`

Kind: `service`. Components: `request=Ros2Franka_spine_msgsSrvGetPosition_Request`, `response=Ros2Franka_spine_msgsSrvGetPosition_Response`.

### `franka_spine_msgs/srv/GetSpineState`

Kind: `service`. Components: `request=Ros2Franka_spine_msgsSrvGetSpineState_Request`, `response=Ros2Franka_spine_msgsSrvGetSpineState_Response`.

### `franka_spine_msgs/srv/Halt`

Kind: `service`. Components: `request=Ros2Franka_spine_msgsSrvHalt_Request`, `response=Ros2Franka_spine_msgsSrvHalt_Response`.

### `franka_spine_msgs/srv/SwitchOff`

Kind: `service`. Components: `request=Ros2Franka_spine_msgsSrvSwitchOff_Request`, `response=Ros2Franka_spine_msgsSrvSwitchOff_Response`.

### `franka_spine_msgs/srv/SwitchOn`

Kind: `service`. Components: `request=Ros2Franka_spine_msgsSrvSwitchOn_Request`, `response=Ros2Franka_spine_msgsSrvSwitchOn_Response`.

### `geometry_msgs/msg/Accel`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgAccel`.

### `geometry_msgs/msg/AccelStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgAccelStamped`.

### `geometry_msgs/msg/Inertia`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgInertia`.

### `geometry_msgs/msg/InertiaStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgInertiaStamped`.

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

### `geometry_msgs/msg/Vector3Stamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgVector3Stamped`.

### `geometry_msgs/msg/Wrench`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgWrench`.

### `geometry_msgs/msg/WrenchStamped`

Kind: `message`. Components: `message=Ros2Geometry_msgsMsgWrenchStamped`.

### `sensor_msgs/msg/JointState`

Kind: `message`. Components: `message=Ros2Sensor_msgsMsgJointState`.

### `std_msgs/msg/Header`

Kind: `message`. Components: `message=Ros2Std_msgsMsgHeader`.

### `Ros2Builtin_interfacesMsgTime`

Original: `builtin_interfaces/msg/Time`. Canonical extent: 8..8 bytes. Semantic rule: `normalized-time`.

`UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `sec` | `int32` | scalar |  | undeclared | finite | This message communicates ROS Time defined here: https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32 values. |
| `nanosec` | `uint32` | scalar |  | undeclared | finite | The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component. e.g. The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The time 1.7 seconds is represented as {sec: 1, nanosec: 7e8} |


### `Ros2Franka_msgsActionErrorRecovery_Goal`

Original: `franka_msgs/action/ErrorRecovery_Goal`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_2caee3e8d5c04f12239a71f6e9a9259b818b9f1ad75103442bfc9d2343a3a070`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|


### `Ros2Franka_msgsActionErrorRecovery_Result`

Original: `franka_msgs/action/ErrorRecovery_Result`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_9112b16c42034737b96214f23249d499ab6a9f0aee529cfec34c67cdc76809e9`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|


### `Ros2Franka_msgsActionErrorRecovery_Feedback`

Original: `franka_msgs/action/ErrorRecovery_Feedback`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_cc817bcbe5790860e83c71e50a8c3610cf3965e34036b3099712cdcdb426127f`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|


### `Ros2Franka_msgsMsgGraspEpsilon`

Original: `franka_msgs/msg/GraspEpsilon`. Canonical extent: 16..16 bytes. Semantic rule: `none`.

`UWVMROS1_21787ae5929dc83b9f644f4914e22da9ddd3e4f7ad3d8c6cda6bbcdfeba20c38`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `inner` | `float64` | scalar |  | 0.005 | finite | Maximum tolerated deviation when the actual grasped width is smaller than the commanded grasp width. Unit: [m] |
| `outer` | `float64` | scalar |  | 0.005 | finite | Maximum tolerated deviation when the actual grasped width is larger than the commanded grasp width. Unit: [m] |


### `Ros2Franka_msgsActionGrasp_Goal`

Original: `franka_msgs/action/Grasp_Goal`. Canonical extent: 40..40 bytes. Semantic rule: `none`.

`UWVMROS1_b7ef701e9fd93b5da9894499234d3647ecc4cea1936f637105c172f4579b6e1f`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `width` | `float64` | scalar |  | undeclared | finite | [m] |
| `epsilon` | `franka_msgs/msg/GraspEpsilon` | scalar |  | undeclared | finite |  |
| `speed` | `float64` | scalar |  | undeclared | finite | [m/s] |
| `force` | `float64` | scalar |  | undeclared | finite | [N] |


### `Ros2Franka_msgsActionGrasp_Result`

Original: `franka_msgs/action/Grasp_Result`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_9a4c3150c0c2d5eb8ff3dad403473a9546ee37cc3086a55a628a1a85b905b733`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Franka_msgsActionGrasp_Feedback`

Original: `franka_msgs/action/Grasp_Feedback`. Canonical extent: 8..8 bytes. Semantic rule: `none`.

`UWVMROS1_2e7697286c002e2d891e9c3167aa0dd1664acfc66c649fff6e8f9101c42703fe`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `current_width` | `float64` | scalar |  | undeclared | finite | [m] |


### `Ros2Franka_msgsActionHoming_Goal`

Original: `franka_msgs/action/Homing_Goal`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_8008426ce3fa8c8d62133704f8738201b8154b324ba07e7b6f605cd3132a885d`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|


### `Ros2Franka_msgsActionHoming_Result`

Original: `franka_msgs/action/Homing_Result`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_74a9677213ffa9ba3a26b3053956350b8f75d5d1769152e5e3d4d26370bcd77c`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Franka_msgsActionHoming_Feedback`

Original: `franka_msgs/action/Homing_Feedback`. Canonical extent: 8..8 bytes. Semantic rule: `none`.

`UWVMROS1_2260e092d369a0d2e4bf97ca2dfa78c02b6836b8167e71d63e76b5c0c40a6b46`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `current_width` | `float64` | scalar |  | undeclared | finite | [m] |


### `Ros2Franka_msgsActionMove_Goal`

Original: `franka_msgs/action/Move_Goal`. Canonical extent: 16..16 bytes. Semantic rule: `none`.

`UWVMROS1_9f9e308ebd034344ee73b22a07d005944975c037943279504b2414bdd9ad206f`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `width` | `float64` | scalar |  | undeclared | finite | [m] |
| `speed` | `float64` | scalar |  | undeclared | finite | [m/s] |


### `Ros2Franka_msgsActionMove_Result`

Original: `franka_msgs/action/Move_Result`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_66aa505c035357274c68be773e1b502c7d77f195f3dca848e818811ce95dd266`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Franka_msgsActionMove_Feedback`

Original: `franka_msgs/action/Move_Feedback`. Canonical extent: 8..8 bytes. Semantic rule: `none`.

`UWVMROS1_18d0e658f109492380c135e787adbdcc026b051e9a547fcea70453bbd9750596`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `current_width` | `float64` | scalar |  | undeclared | finite | [m] |


### `Ros2Franka_msgsActionPTPMotion_Goal`

Original: `franka_msgs/action/PTPMotion_Goal`. Canonical extent: 16..128 bytes. Semantic rule: `none`.

`UWVMROS1_7e1b02257a7be37e7bccd0870ebced1e1560e7250eaeaa4547836e721f2ea2cc`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `goal_joint_configuration` | `float64` | sequence | 7 elements | undeclared | finite | ## This defines a PTPMotion action for controlling a Franka robot using point-to-point motion commands. The goal_joint_configuration specifies the desired joint angles. [rad] |
| `maximum_joint_velocities` | `float64` | sequence | 7 elements | undeclared | finite | The maximum allowed joint velocities for the motion. [rad/s] |
| `goal_tolerance` | `float64` | scalar |  | undeclared | finite | The acceptable goal tolerance for the motion. The 'target reached condition is met when - the absolute difference between the current and goal joint positions is within this goal_tolerance - the joint velocities are below a small threshold [rad] |


### `Ros2Franka_msgsMsgTargetStatus`

Original: `franka_msgs/msg/TargetStatus`. Canonical extent: 1..1 bytes. Semantic rule: `none`.

`UWVMROS1_df49eedc13cd8be2055361d8640c519bfa018ed2a421aa2b59b35c8828eac585`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `status` | `uint8` | scalar |  | undeclared | finite | # The current status of the motion (one of the above states) |

- `IDLE`: `uint8` = `0`.
- `EXECUTING`: `uint8` = `1`.
- `TARGET_REACHED`: `uint8` = `2`.
- `ABORTED`: `uint8` = `3`.

### `Ros2Franka_msgsActionPTPMotion_Result`

Original: `franka_msgs/action/PTPMotion_Result`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_b61fabf13a3d8d910a35a5145e87b4dd80180b0678ef5580784f461e850fa4c1`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `target_status` | `franka_msgs/msg/TargetStatus` | scalar |  | undeclared | finite | Result of the point-to-point motion action |
| `error_message` | `string` | scalar | 256 bytes | undeclared | finite | In case of failure, an error message describing the issue |


### `Ros2Franka_msgsActionPTPMotion_Feedback`

Original: `franka_msgs/action/PTPMotion_Feedback`. Canonical extent: 1..1 bytes. Semantic rule: `none`.

`UWVMROS1_c4dcfeb668595ebc341d76b5cbc606c1ae4c38b28a1b329f8436e61f506a0300`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `target_status` | `franka_msgs/msg/TargetStatus` | scalar |  | undeclared | finite | Feedback during the execution of the point-to-point motion |


### `Ros2Geometry_msgsMsgVector3`

Original: `geometry_msgs/msg/Vector3`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This represents a vector in free space. This is semantically different than a point. A vector is always anchored at the origin. When a transform is applied to a vector, only the rotational component is applied. |
| `y` | `float64` | scalar |  | undeclared | finite |  |
| `z` | `float64` | scalar |  | undeclared | finite |  |


### `Ros2Franka_msgsMsgCollisionIndicators`

Original: `franka_msgs/msg/CollisionIndicators`. Canonical extent: 208..208 bytes. Semantic rule: `none`.

`UWVMROS1_2bdfb3ece01b47b07fae84a998b23c56fc9482a0518969e43304b318d4ee0ce1`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `is_cartesian_linear_collision` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | ## Indicates which dimensions have an active contact/collision flag raised |
| `is_cartesian_angular_collision` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |
| `is_cartesian_linear_contact` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |
| `is_cartesian_angular_contact` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |
| `is_joint_collision` | `float64` | array | 7 elements | undeclared | finite |  |
| `is_joint_contact` | `float64` | array | 7 elements | undeclared | finite |  |


### `Ros2Franka_msgsMsgElbow`

Original: `franka_msgs/msg/Elbow`. Canonical extent: 80..80 bytes. Semantic rule: `none`.

`UWVMROS1_686cf2da29007046f9855ffeecac304c159245ec3da153990ab83be4ffce53b6`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `position` | `float64` | array | 2 elements | undeclared | finite | ## The state of the elbow |
| `desired_position` | `float64` | array | 2 elements | undeclared | finite |  |
| `commanded_position` | `float64` | array | 2 elements | undeclared | finite |  |
| `commanded_velocity` | `float64` | array | 2 elements | undeclared | finite |  |
| `commanded_acceleration` | `float64` | array | 2 elements | undeclared | finite |  |


### `Ros2Franka_msgsMsgErrors`

Original: `franka_msgs/msg/Errors`. Canonical extent: 36..36 bytes. Semantic rule: `none`.

`UWVMROS1_c7927af1abe7710bb686574ad6f2459f8425af1d6cdb3189160bb732b5a6bc8c`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `joint_position_limits_violation` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_position_limits_violation` | `bool` | scalar |  | undeclared | finite |  |
| `self_collision_avoidance_violation` | `bool` | scalar |  | undeclared | finite |  |
| `joint_velocity_violation` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_velocity_violation` | `bool` | scalar |  | undeclared | finite |  |
| `force_control_safety_violation` | `bool` | scalar |  | undeclared | finite |  |
| `joint_reflex` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_reflex` | `bool` | scalar |  | undeclared | finite |  |
| `max_goal_pose_deviation_violation` | `bool` | scalar |  | undeclared | finite |  |
| `max_path_pose_deviation_violation` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_velocity_profile_safety_violation` | `bool` | scalar |  | undeclared | finite |  |
| `joint_position_motion_generator_start_pose_invalid` | `bool` | scalar |  | undeclared | finite |  |
| `joint_motion_generator_position_limits_violation` | `bool` | scalar |  | undeclared | finite |  |
| `joint_motion_generator_velocity_limits_violation` | `bool` | scalar |  | undeclared | finite |  |
| `joint_motion_generator_velocity_discontinuity` | `bool` | scalar |  | undeclared | finite |  |
| `joint_motion_generator_acceleration_discontinuity` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_position_motion_generator_start_pose_invalid` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_motion_generator_elbow_limit_violation` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_motion_generator_velocity_limits_violation` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_motion_generator_velocity_discontinuity` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_motion_generator_acceleration_discontinuity` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_motion_generator_elbow_sign_inconsistent` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_motion_generator_start_elbow_invalid` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_motion_generator_joint_position_limits_violation` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_motion_generator_joint_velocity_limits_violation` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_motion_generator_joint_velocity_discontinuity` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_motion_generator_joint_acceleration_discontinuity` | `bool` | scalar |  | undeclared | finite |  |
| `cartesian_position_motion_generator_invalid_frame` | `bool` | scalar |  | undeclared | finite |  |
| `force_controller_desired_force_tolerance_violation` | `bool` | scalar |  | undeclared | finite |  |
| `controller_torque_discontinuity` | `bool` | scalar |  | undeclared | finite |  |
| `start_elbow_sign_inconsistent` | `bool` | scalar |  | undeclared | finite |  |
| `communication_constraints_violation` | `bool` | scalar |  | undeclared | finite |  |
| `power_limit_violation` | `bool` | scalar |  | undeclared | finite |  |
| `joint_p2p_insufficient_torque_for_planning` | `bool` | scalar |  | undeclared | finite |  |
| `tau_j_range_violation` | `bool` | scalar |  | undeclared | finite |  |
| `instability_detected` | `bool` | scalar |  | undeclared | finite |  |


### `Ros2Std_msgsMsgHeader`

Original: `std_msgs/msg/Header`. Canonical extent: 12..140 bytes. Semantic rule: `none`.

`UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `stamp` | `builtin_interfaces/msg/Time` | scalar |  | undeclared | finite | Standard metadata for higher-level stamped data types. This is generally used to communicate timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as seconds and nanoseconds. |
| `frame_id` | `string` | scalar | 128 bytes | undeclared | finite | Transform frame with which this data is associated. |


### `Ros2Sensor_msgsMsgJointState`

Original: `sensor_msgs/msg/JointState`. Canonical extent: 28..1248 bytes. Semantic rule: `joint-state-optional-equal-length-arrays`.

`UWVMROS1_912ba4261e2dfbec0e4a543ea8e5d308ef1d26877b4a7d71162a981ac64c40a3`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | This is a message that holds data to describe the state of a set of torque controlled joints.  The state of each joint (revolute or prismatic) is defined by: * the position of the joint (rad or m), * the velocity of the joint (rad/s or m/s) and * the effort that is applied in the joint (Nm or N).  Each joint is uniquely identified by its name The header specifies the time at which the joint states were recorded. All the joint states in one message have to be recorded at the same time.  This message consists of a multiple arrays, one for each part of the joint state. The goal is to make each of the fields optional. When e.g. your joints have no effort associated with them, you can leave the effort array empty.  All arrays in this message should have the same size, or be empty. This is the only way to uniquely associate the joint name with the correct states. |
| `name` | `string` | sequence | 7 elements; 128 bytes | undeclared | finite |  |
| `position` | `float64` | sequence | 7 elements | undeclared | finite |  |
| `velocity` | `float64` | sequence | 7 elements | undeclared | finite |  |
| `effort` | `float64` | sequence | 7 elements | undeclared | finite |  |


### `Ros2Geometry_msgsMsgWrench`

Original: `geometry_msgs/msg/Wrench`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `force` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This represents force in free space, separated into its linear and angular parts. |
| `torque` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgWrenchStamped`

Original: `geometry_msgs/msg/WrenchStamped`. Canonical extent: 60..188 bytes. Semantic rule: `none`.

`UWVMROS1_e23600874a626ba9d52f043e14ed04beb3e316d47c3bca8bd87cfeed3f5d9d66`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | A wrench with reference coordinate frame and timestamp |
| `wrench` | `geometry_msgs/msg/Wrench` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgInertia`

Original: `geometry_msgs/msg/Inertia`. Canonical extent: 80..80 bytes. Semantic rule: `none`.

`UWVMROS1_4a1b7a6a2516724a9a12e5eb166a85cd73d33fc6075c8d517ff2a279fd29e12a`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `m` | `float64` | scalar |  | undeclared | finite | Mass [kg] |
| `com` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | Center of mass [m] |
| `ixx` | `float64` | scalar |  | undeclared | finite | Inertia Tensor [kg-m^2] about the center of mass \| ixx ixy ixz \| I = \| ixy iyy iyz \| \| ixz iyz izz \| |
| `ixy` | `float64` | scalar |  | undeclared | finite |  |
| `ixz` | `float64` | scalar |  | undeclared | finite |  |
| `iyy` | `float64` | scalar |  | undeclared | finite |  |
| `iyz` | `float64` | scalar |  | undeclared | finite |  |
| `izz` | `float64` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgInertiaStamped`

Original: `geometry_msgs/msg/InertiaStamped`. Canonical extent: 92..220 bytes. Semantic rule: `none`.

`UWVMROS1_19b0b442c5858ff1eee20e4658ecc3a2b76fdd64c4a21a1642fae5ab38198576`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | An Inertia with a time stamp and reference frame. |
| `inertia` | `geometry_msgs/msg/Inertia` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgPoint`

Original: `geometry_msgs/msg/Point`. Canonical extent: 24..24 bytes. Semantic rule: `none`.

`UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `x` | `float64` | scalar |  | undeclared | finite | This contains the position of a point in free space |
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


### `Ros2Geometry_msgsMsgPose`

Original: `geometry_msgs/msg/Pose`. Canonical extent: 56..56 bytes. Semantic rule: `none`.

`UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `position` | `geometry_msgs/msg/Point` | scalar |  | undeclared | finite | A representation of pose in free space, composed of position and orientation. |
| `orientation` | `geometry_msgs/msg/Quaternion` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgPoseStamped`

Original: `geometry_msgs/msg/PoseStamped`. Canonical extent: 68..196 bytes. Semantic rule: `none`.

`UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | A Pose with reference coordinate frame and timestamp |
| `pose` | `geometry_msgs/msg/Pose` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgTwist`

Original: `geometry_msgs/msg/Twist`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `linear` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This expresses velocity in free space broken into its linear and angular parts. |
| `angular` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgTwistStamped`

Original: `geometry_msgs/msg/TwistStamped`. Canonical extent: 60..188 bytes. Semantic rule: `none`.

`UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | A twist with reference coordinate frame and timestamp |
| `twist` | `geometry_msgs/msg/Twist` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgAccel`

Original: `geometry_msgs/msg/Accel`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `linear` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite | This expresses acceleration in free space broken into its linear and angular parts. |
| `angular` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgAccelStamped`

Original: `geometry_msgs/msg/AccelStamped`. Canonical extent: 60..188 bytes. Semantic rule: `none`.

`UWVMROS1_c04d3ae310bd82f7c4c9f30c2ff185ab54989aa3adcc759c7d3eb19853819899`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | An accel with reference coordinate frame and timestamp |
| `accel` | `geometry_msgs/msg/Accel` | scalar |  | undeclared | finite |  |


### `Ros2Geometry_msgsMsgVector3Stamped`

Original: `geometry_msgs/msg/Vector3Stamped`. Canonical extent: 36..164 bytes. Semantic rule: `none`.

`UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | This represents a Vector3 with reference coordinate frame and timestamp Note that this follows vector semantics with it always anchored at the origin, so the rotational elements of a transform are the only parts applied when transforming. |
| `vector` | `geometry_msgs/msg/Vector3` | scalar |  | undeclared | finite |  |


### `Ros2Franka_msgsMsgFrankaRobotState`

Original: `franka_msgs/msg/FrankaRobotState`. Canonical extent: 1961..10169 bytes. Semantic rule: `none`.

`UWVMROS1_0fdc5c99a098f4c891956bb6cd81505995d5dda41a740f88ee456f48f6e07282`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | ## Default parts of the message |
| `collision_indicators` | `franka_msgs/msg/CollisionIndicators` | scalar |  | undeclared | finite | ## Indicates which dimensions have an active contact/collision flag raised |
| `measured_joint_state` | `sensor_msgs/msg/JointState` | scalar |  | undeclared | finite | ## The state of the arm in joint space The joint state consisting out of position (q), velocity (dq) and effort (tau_J) |
| `desired_joint_state` | `sensor_msgs/msg/JointState` | scalar |  | undeclared | finite | The desired joint state consisting out of position (q_d), velocity (dq_d) and effort (tau_J_d) |
| `measured_joint_motor_state` | `sensor_msgs/msg/JointState` | scalar |  | undeclared | finite | The measured motor state of the joints consisting out of position (theta) and velocity (dtheta) |
| `ddq_d` | `float64` | array | 7 elements | undeclared | finite | The desired joint acceleration |
| `dtau_j` | `float64` | array | 7 elements | undeclared | finite | The derivative of the measured torque signal |
| `tau_ext_hat_filtered` | `sensor_msgs/msg/JointState` | scalar |  | undeclared | finite | Filtered external torque. The JointState consists out of effort (tau_ext_hat_filtered) |
| `elbow` | `franka_msgs/msg/Elbow` | scalar |  | undeclared | finite | ## The state of the elbow |
| `k_f_ext_hat_k` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | ## The active wrenches acting on the stiffness frame expressed relative to stiffness frame |
| `o_f_ext_hat_k` | `geometry_msgs/msg/WrenchStamped` | scalar |  | undeclared | finite | base frame |
| `inertia_ee` | `geometry_msgs/msg/InertiaStamped` | scalar |  | undeclared | finite | ## The different inertias of the arm The end-effector inertia |
| `inertia_load` | `geometry_msgs/msg/InertiaStamped` | scalar |  | undeclared | finite | The load inertia |
| `inertia_total` | `geometry_msgs/msg/InertiaStamped` | scalar |  | undeclared | finite | The total (end-effector + load) inertia |
| `o_t_ee` | `geometry_msgs/msg/PoseStamped` | scalar |  | undeclared | finite | ## The poses describing the transformations between different frames of the arm Measured end-effector pose in base frame |
| `o_t_ee_d` | `geometry_msgs/msg/PoseStamped` | scalar |  | undeclared | finite | Last desired end-effector pose of motion generation in base frame |
| `o_t_ee_c` | `geometry_msgs/msg/PoseStamped` | scalar |  | undeclared | finite | Last commanded end-effector pose of motion generation in base frame |
| `f_t_ee` | `geometry_msgs/msg/PoseStamped` | scalar |  | undeclared | finite | Flange to end-effector frame |
| `ee_t_k` | `geometry_msgs/msg/PoseStamped` | scalar |  | undeclared | finite | End-effector to stiffness frame |
| `o_dp_ee_d` | `geometry_msgs/msg/TwistStamped` | scalar |  | undeclared | finite | Desired end effector twist in base frame |
| `o_dp_ee_c` | `geometry_msgs/msg/TwistStamped` | scalar |  | undeclared | finite | Last commanded end effector twist in base frame |
| `o_ddp_ee_c` | `geometry_msgs/msg/AccelStamped` | scalar |  | undeclared | finite | Last commanded end effector acceleration in base frame |
| `time` | `float64` | scalar |  | undeclared | finite | ## Additional information |
| `control_command_success_rate` | `float64` | scalar |  | undeclared | finite |  |
| `robot_mode` | `uint8` | scalar |  | undeclared | finite |  |
| `current_errors` | `franka_msgs/msg/Errors` | scalar |  | undeclared | finite |  |
| `last_motion_errors` | `franka_msgs/msg/Errors` | scalar |  | undeclared | finite |  |
| `accelerometer_top` | `geometry_msgs/msg/Vector3Stamped` | array | 6 elements | undeclared | finite | ## Translational acceleration data from the joint-mounted accelerometers, expressed in the "&lt;prefix&gt;link&lt;i&gt;_accelerometer_&lt;side&gt;" frame named in each header (joints 1 through 6, mounted on links 0 through 5; no accelerometer on joint 7) |
| `accelerometer_bottom` | `geometry_msgs/msg/Vector3Stamped` | array | 6 elements | undeclared | finite |  |

- `ROBOT_MODE_OTHER`: `uint8` = `0`.
- `ROBOT_MODE_IDLE`: `uint8` = `1`.
- `ROBOT_MODE_MOVE`: `uint8` = `2`.
- `ROBOT_MODE_GUIDING`: `uint8` = `3`.
- `ROBOT_MODE_REFLEX`: `uint8` = `4`.
- `ROBOT_MODE_USER_STOPPED`: `uint8` = `5`.
- `ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY`: `uint8` = `6`.

### `Ros2Franka_msgsSrvSetCartesianStiffness_Request`

Original: `franka_msgs/srv/SetCartesianStiffness_Request`. Canonical extent: 48..48 bytes. Semantic rule: `none`.

`UWVMROS1_ae78b9887a5419225cfe0727bac83d8c53f789acd53bd47f024485b02aa98260`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `cartesian_stiffness` | `float64` | array | 6 elements | undeclared | finite | Cartesian stiffness represented as (x, y, z, roll, pitch, yaw). The values are used in the direction of the stiffness frame. |


### `Ros2Franka_msgsSrvSetCartesianStiffness_Response`

Original: `franka_msgs/srv/SetCartesianStiffness_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_3194f7469bbf228e653f5a93336fd5de4a1b2d7c1fe9542f3fadc8ad4fd51afa`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request`

Original: `franka_msgs/srv/SetForceTorqueCollisionBehavior_Request`. Canonical extent: 208..208 bytes. Semantic rule: `none`.

`UWVMROS1_829642a9ea418a53f7252f7489bd7f5ed976bf3689443012daf216db895cf99c`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `lower_torque_thresholds_nominal` | `float64` | array | 7 elements | undeclared | finite |  |
| `upper_torque_thresholds_nominal` | `float64` | array | 7 elements | undeclared | finite |  |
| `lower_force_thresholds_nominal` | `float64` | array | 6 elements | undeclared | finite |  |
| `upper_force_thresholds_nominal` | `float64` | array | 6 elements | undeclared | finite |  |


### `Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response`

Original: `franka_msgs/srv/SetForceTorqueCollisionBehavior_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_7d5640c34446e4262a8c00f0b242b68c0095688f0208fd692f21d855003eb47a`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Franka_msgsSrvSetFullCollisionBehavior_Request`

Original: `franka_msgs/srv/SetFullCollisionBehavior_Request`. Canonical extent: 416..416 bytes. Semantic rule: `none`.

`UWVMROS1_d6898555d931aee3a5b4f5f97830cb9982f2e378c59c40bcaa0201840d2f2824`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `lower_torque_thresholds_acceleration` | `float64` | array | 7 elements | undeclared | finite |  |
| `upper_torque_thresholds_acceleration` | `float64` | array | 7 elements | undeclared | finite |  |
| `lower_torque_thresholds_nominal` | `float64` | array | 7 elements | undeclared | finite |  |
| `upper_torque_thresholds_nominal` | `float64` | array | 7 elements | undeclared | finite |  |
| `lower_force_thresholds_acceleration` | `float64` | array | 6 elements | undeclared | finite |  |
| `upper_force_thresholds_acceleration` | `float64` | array | 6 elements | undeclared | finite |  |
| `lower_force_thresholds_nominal` | `float64` | array | 6 elements | undeclared | finite |  |
| `upper_force_thresholds_nominal` | `float64` | array | 6 elements | undeclared | finite |  |


### `Ros2Franka_msgsSrvSetFullCollisionBehavior_Response`

Original: `franka_msgs/srv/SetFullCollisionBehavior_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_76430e384e9ad8b3f3c937e3004e8dc15a51d28abecd108c698e60d39c54f300`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Franka_msgsSrvSetJointStiffness_Request`

Original: `franka_msgs/srv/SetJointStiffness_Request`. Canonical extent: 56..56 bytes. Semantic rule: `none`.

`UWVMROS1_65b5d6599d1b97a0356f599102c22e0ae8c33b85f14c5a49b6c097eb227d334c`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `joint_stiffness` | `float64` | array | 7 elements | undeclared | finite | Impedance for each joint in the internal controller |


### `Ros2Franka_msgsSrvSetJointStiffness_Response`

Original: `franka_msgs/srv/SetJointStiffness_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_1a857ab809079e0eec664250a9521ddc1cdf66e61aa2e0f22eae8442f5231c4d`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Franka_msgsSrvSetLoad_Request`

Original: `franka_msgs/srv/SetLoad_Request`. Canonical extent: 104..104 bytes. Semantic rule: `none`.

`UWVMROS1_a616a844864b7bbf4ee18ac481ddd8406bec47354b4519a0e17f8a305635b7f8`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `mass` | `float64` | scalar |  | undeclared | finite | The mass of the object |
| `center_of_mass` | `float64` | array | 3 elements | undeclared | finite | Position of the center of mass |
| `load_inertia` | `float64` | array | 9 elements | undeclared | finite | Inertia of the object - the provided 3x3 matrix is in column major form. |


### `Ros2Franka_msgsSrvSetLoad_Response`

Original: `franka_msgs/srv/SetLoad_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_991ff575719ef9442063a13c45a9660c672f5607e6e40cf6ab5c7a3173fa00bf`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Franka_msgsSrvSetStiffnessFrame_Request`

Original: `franka_msgs/srv/SetStiffnessFrame_Request`. Canonical extent: 128..128 bytes. Semantic rule: `none`.

`UWVMROS1_f8ee91daba1642286b63178c18bf2a005597e94951f11a185241193132c9f402`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `transformation` | `float64` | array | 16 elements | undeclared | finite | Sets the transformation matrix describing the stiffness frame relative to the TCP frame. A 4x4 column-major transformation matrix representing the position and orientation. |


### `Ros2Franka_msgsSrvSetStiffnessFrame_Response`

Original: `franka_msgs/srv/SetStiffnessFrame_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_e32cb83b1f0f3cda363566525c0b1fe367190f2e66f68282b330f4517f6ea744`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Franka_msgsSrvSetTCPFrame_Request`

Original: `franka_msgs/srv/SetTCPFrame_Request`. Canonical extent: 128..128 bytes. Semantic rule: `none`.

`UWVMROS1_2ef445bfa494a6bc50ee3337695562255c06890216c30ba17df95e691871441f`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `transformation` | `float64` | array | 16 elements | undeclared | finite | Sets the transformation matrix describing the tcp frame to the end-effector frame. A 4x4 column-major transformation matrix representing the position and orientation. |


### `Ros2Franka_msgsSrvSetTCPFrame_Response`

Original: `franka_msgs/srv/SetTCPFrame_Response`. Canonical extent: 5..261 bytes. Semantic rule: `none`.

`UWVMROS1_87e4f5556c292289fe17898a40f1f5dd6161e7cc87ca570c86e9f69080d1df38`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite |  |
| `error` | `string` | scalar | 256 bytes | undeclared | finite |  |


### `Ros2Franka_spine_msgsActionMoveAbsolute_Goal`

Original: `franka_spine_msgs/action/MoveAbsolute_Goal`. Canonical extent: 32..32 bytes. Semantic rule: `none`.

`UWVMROS1_a0c2f9037fd6730641b19b6da6ce1c6ca03bbd517fdd791c159effc93290cf13`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `position` | `float64` | scalar |  | undeclared | finite | Command an absolute move of the Franka Spine. Target position [m] |
| `velocity` | `float64` | scalar |  | undeclared | finite | Motion velocity [m/s], must be &gt; 0 |
| `acceleration` | `float64` | scalar |  | undeclared | finite | Motion acceleration [m/s²], must be &gt; 0 |
| `deceleration` | `float64` | scalar |  | undeclared | finite | Motion deceleration [m/s²], must be &gt; 0 |


### `Ros2Franka_spine_msgsActionMoveAbsolute_Result`

Original: `franka_spine_msgs/action/MoveAbsolute_Result`. Canonical extent: 9..521 bytes. Semantic rule: `none`.

`UWVMROS1_86b5c823e6e6604595462a76cd259daef420b2dff169f6dbe00f742f079155d5`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `success` | `bool` | scalar |  | undeclared | finite | True if the target position was reached |
| `stop_by` | `string` | scalar | 256 bytes | undeclared | finite | How the motion was stopped (from spine response) |
| `error` | `string` | scalar | 256 bytes | undeclared | finite | Error description if success is false |


### `Ros2Franka_spine_msgsActionMoveAbsolute_Feedback`

Original: `franka_spine_msgs/action/MoveAbsolute_Feedback`. Canonical extent: 8..8 bytes. Semantic rule: `none`.

`UWVMROS1_cf2f760313ab8c6cc01dd79271619926320021746451f376e56d18f63ffad929`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `current_position` | `float64` | scalar |  | undeclared | finite | Current spine position [m] |


### `Ros2Franka_spine_msgsMsgUserLimits`

Original: `franka_spine_msgs/msg/UserLimits`. Canonical extent: 16..16 bytes. Semantic rule: `none`.

`UWVMROS1_20256e37f0ae710b5cb9ab9438b5ff8144ce2ab6fc606c5335d0f5de5384e368`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `lower_limit` | `float64` | scalar |  | undeclared | finite | User-defined soft motion limits for the spine. Lower motion limit [m] |
| `upper_limit` | `float64` | scalar |  | undeclared | finite | Upper motion limit [m] |


### `Ros2Franka_spine_msgsMsgSpineParameters`

Original: `franka_spine_msgs/msg/SpineParameters`. Canonical extent: 16..16 bytes. Semantic rule: `none`.

`UWVMROS1_4d4c45cfccf278c99a189e92d438d0b11b2b693012cb0f76b65b6822eb816223`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `user_limits` | `franka_spine_msgs/msg/UserLimits` | scalar |  | undeclared | finite | Aggregated spine parameters returned by the GetParameters service. User-defined motion limits |


### `Ros2Franka_spine_msgsMsgSpinePosition`

Original: `franka_spine_msgs/msg/SpinePosition`. Canonical extent: 21..149 bytes. Semantic rule: `none`.

`UWVMROS1_71be15c40f39074dfdbe79a3587847ae512c5a3c8df23cc9415d5bfe59d05775`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Periodic spine position sample published on ~/position. Subscribe to this instead of polling the GetPosition service in a loop. |
| `position` | `float64` | scalar |  | undeclared | finite | Last known position [m] |
| `valid` | `bool` | scalar |  | undeclared | finite | False when the sample is stale because the REST read failed |


### `Ros2Franka_spine_msgsMsgSpineState`

Original: `franka_spine_msgs/msg/SpineState`. Canonical extent: 25..921 bytes. Semantic rule: `none`.

`UWVMROS1_ad0b5dc5d79956da854582765c147d3d33edab569c4829e69cc7990edfb89441`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `header` | `std_msgs/msg/Header` | scalar |  | undeclared | finite | Periodic spine state sample published on ~/state. Subscribe to this instead of polling the GetSpineState service in a loop. Possible states: NotReadyToSwitchOn, SwitchedOff, ReadyToSwitchOn, MotorOff, SwitchedOn, QuickStopActive, FaultReactionActive, Fault, Unknown. |
| `state` | `string` | scalar | 256 bytes | undeclared | finite | Current spine state |
| `error_code` | `string` | scalar | 256 bytes | undeclared | finite | Error code (empty when no error) |
| `error_description` | `string` | scalar | 256 bytes | undeclared | finite | Human-readable error description |
| `valid` | `bool` | scalar |  | undeclared | finite | False when the sample is stale because the REST read failed |


### `Ros2Franka_spine_msgsSrvFaultReset_Request`

Original: `franka_spine_msgs/srv/FaultReset_Request`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_0f836229e8e8a1713b9e9a8d7f0f43677ad93380e1f7350ff1597d25067b7f33`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|


### `Ros2Franka_spine_msgsSrvFaultReset_Response`

Original: `franka_spine_msgs/srv/FaultReset_Response`. Canonical extent: 9..521 bytes. Semantic rule: `none`.

`UWVMROS1_1ebeded0dbe4a4197a52de3fa43dc57fa372bd4e6ef5e2ded2558ccbf691410c`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `state` | `string` | scalar | 256 bytes | undeclared | finite | Spine state after the reset |
| `success` | `bool` | scalar |  | undeclared | finite | True if the fault was cleared |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Human-readable status or error description |


### `Ros2Franka_spine_msgsSrvGetParameters_Request`

Original: `franka_spine_msgs/srv/GetParameters_Request`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_80ef5d2ef6ff2df9d14f29417d1928429315c0b7be9ec59513b9b3943a970b14`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|


### `Ros2Franka_spine_msgsSrvGetParameters_Response`

Original: `franka_spine_msgs/srv/GetParameters_Response`. Canonical extent: 21..277 bytes. Semantic rule: `none`.

`UWVMROS1_8e648792534d7f4996179f31d353d2594cf63031edef4451fd20a3838dc896ed`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `parameters` | `franka_spine_msgs/msg/SpineParameters` | scalar |  | undeclared | finite | Calibration and limit values |
| `success` | `bool` | scalar |  | undeclared | finite | True if the REST call succeeded |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Human-readable status or error description |


### `Ros2Franka_spine_msgsSrvGetPosition_Request`

Original: `franka_spine_msgs/srv/GetPosition_Request`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_66b05d1f08331161cafed301b3ab95a60dbb16aeb1a930ee780db163cb37c6c2`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|


### `Ros2Franka_spine_msgsSrvGetPosition_Response`

Original: `franka_spine_msgs/srv/GetPosition_Response`. Canonical extent: 9..9 bytes. Semantic rule: `none`.

`UWVMROS1_18d9af57cc9f82c3c03d01e850da254e9431820b8291f03dafd2e8f74e849ab8`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `position` | `float64` | scalar |  | undeclared | finite | Current position [m] |
| `success` | `bool` | scalar |  | undeclared | finite | True if the REST call succeeded |


### `Ros2Franka_spine_msgsSrvGetSpineState_Request`

Original: `franka_spine_msgs/srv/GetSpineState_Request`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_c4c456174d7b6647d09d986d37c041b942418941a5e01c447486727e919b8a67`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|


### `Ros2Franka_spine_msgsSrvGetSpineState_Response`

Original: `franka_spine_msgs/srv/GetSpineState_Response`. Canonical extent: 13..781 bytes. Semantic rule: `none`.

`UWVMROS1_297d70e2c5c24dcea4bdf8c5f9e5c8c32256e8f35f1900d8afd914ab2acfdcd1`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `state` | `string` | scalar | 256 bytes | undeclared | finite | Current spine state |
| `error_code` | `string` | scalar | 256 bytes | undeclared | finite | Error code (empty when no error) |
| `error_description` | `string` | scalar | 256 bytes | undeclared | finite | Human-readable error description |
| `success` | `bool` | scalar |  | undeclared | finite | True if the REST call succeeded |


### `Ros2Franka_spine_msgsSrvHalt_Request`

Original: `franka_spine_msgs/srv/Halt_Request`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_50af7625abf7ec20a30ec49b01e8d32de2ee0d4710820c8de659df211be8c111`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|


### `Ros2Franka_spine_msgsSrvHalt_Response`

Original: `franka_spine_msgs/srv/Halt_Response`. Canonical extent: 9..521 bytes. Semantic rule: `none`.

`UWVMROS1_150e1d90b485a6ddf79f771379a0e1d3f99a77f88ab1cf1f569d614a63ac3d77`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `state` | `string` | scalar | 256 bytes | undeclared | finite | Spine state after the halt |
| `success` | `bool` | scalar |  | undeclared | finite | True if the halt was executed |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Human-readable status or error description |


### `Ros2Franka_spine_msgsSrvSwitchOff_Request`

Original: `franka_spine_msgs/srv/SwitchOff_Request`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_097f00adfdc8d1a49615792158a36052917c41385683b39de6686f591964fc16`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|


### `Ros2Franka_spine_msgsSrvSwitchOff_Response`

Original: `franka_spine_msgs/srv/SwitchOff_Response`. Canonical extent: 9..521 bytes. Semantic rule: `none`.

`UWVMROS1_d3ab8516e62428b2caf71673f398ccc7199b7b25aac4c37b42c15a79878e54ad`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `state` | `string` | scalar | 256 bytes | undeclared | finite | Spine state after switching off |
| `success` | `bool` | scalar |  | undeclared | finite | True if the transition succeeded |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Human-readable status or error description |


### `Ros2Franka_spine_msgsSrvSwitchOn_Request`

Original: `franka_spine_msgs/srv/SwitchOn_Request`. Canonical extent: 0..0 bytes. Semantic rule: `none`.

`UWVMROS1_840d12dbe4d4a8558e72c2facbccfc547de35536f749573b6de60ce9a9238a56`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|


### `Ros2Franka_spine_msgsSrvSwitchOn_Response`

Original: `franka_spine_msgs/srv/SwitchOn_Response`. Canonical extent: 9..521 bytes. Semantic rule: `none`.

`UWVMROS1_8c58d63385a5fc6f160585504b3c9c5ca5375c6187f7a494c3db696c5cc7a37d`

| Field | Type | Shape | SDK bound | Original default | Float policy | Original units/frame/meaning |
|---|---|---|---|---|---|---|
| `state` | `string` | scalar | 256 bytes | undeclared | finite | Spine state after switching on |
| `success` | `bool` | scalar |  | undeclared | finite | True if the transition succeeded |
| `message` | `string` | scalar | 256 bytes | undeclared | finite | Human-readable status or error description |

