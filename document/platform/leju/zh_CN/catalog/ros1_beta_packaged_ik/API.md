# leju：ros1_beta_packaged_ik

本目录保留所有原始字段、服务组件和动作角色。规范字节是 SDK 的有界传输格式；原生网关仍须独立核验原始 ROS 类型和完整注册表。单位、坐标系和字段顺序均遵循原始声明，不自动换算。


## motion_capture_ik/armHandPose

Symbol: `Ros1Motion_capture_ikArmHandPose`. Complete canonical extent: 136..136 bytes.
Codec identity: `UWVMROS1_7cc97650a6f0bedb8bdbc0cc534eb422e8585c69f5b0ae92b6d4f213a2d90f08`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| pos_xyz | float64 | array | 3 | - |
| quat_xyzw | float64 | array | 4 | - |
| elbow_pos_xyz | float64 | array | 3 | - |
| joint_angles | float64 | array | 7 | - |

## motion_capture_ik/armHandPoseFree

Symbol: `Ros1Motion_capture_ikArmHandPoseFree`. Complete canonical extent: 84..212 bytes.
Codec identity: `UWVMROS1_b46b274661ac382698a9bf1016ca647aecc41df8312020b740d73a87d2513caf`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| pos_xyz | float64 | array | 3 | - |
| quat_xyzw | float64 | array | 4 | - |
| elbow_pos_xyz | float64 | array | 3 | - |
| joint_angles | float64 | sequence | 16 | - |

## motion_capture_ik/changeArmCtrlModeRequest

Symbol: `Ros1Motion_capture_ikChangeArmCtrlModeRequest`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_b73d3ed01f402673124afd1c6677ced89b5b55d207a1e8c4ff1312941fc00bbd`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| control_mode | bool | scalar | - | - |

## motion_capture_ik/changeArmCtrlModeResponse

Symbol: `Ros1Motion_capture_ikChangeArmCtrlModeResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_aee11b3bf042b1e989f7ed00d2f8e72821cfd8b6ee8232e14848ccf8ee754aac`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| result | bool | scalar | - | - |

## motion_capture_ik/handPose

Symbol: `Ros1Motion_capture_ikHandPose`. Complete canonical extent: 48..48 bytes.
Codec identity: `UWVMROS1_dc924e15f38aa45188532c325292b2f9e3827f3dfa94ff946e30aa51f4fbee5f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | - | - |
| y | float64 | scalar | - | - |
| z | float64 | scalar | - | - |
| roll | float64 | scalar | - | - |
| pitch | float64 | scalar | - | - |
| yaw | float64 | scalar | - | - |

## motion_capture_ik/ikSolveError

Symbol: `Ros1Motion_capture_ikIkSolveError`. Complete canonical extent: 100..356 bytes.
Codec identity: `UWVMROS1_a20039cf8bf301a7ef643884130619c2ceb96c1c91ed15482dd6f582917e1e94`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| ik_type | string | scalar | 256 | - |
| left_pose_error | motion_capture_ik/handPose | scalar | - | - |
| right_pose_error | motion_capture_ik/handPose | scalar | - | - |

## motion_capture_ik/ikSolveParam

Symbol: `Ros1Motion_capture_ikIkSolveParam`. Complete canonical extent: 56..56 bytes.
Codec identity: `UWVMROS1_8058ba64ed6070b821470b5560062e78f2ef0fa09169e7a249b584d2d158d981`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| major_optimality_tol | float64 | scalar | - | - |
| major_feasibility_tol | float64 | scalar | - | - |
| minor_feasibility_tol | float64 | scalar | - | - |
| major_iterations_limit | float64 | scalar | - | - |
| oritation_constraint_tol | float64 | scalar | - | - |
| pos_constraint_tol | float64 | scalar | - | - |
| pos_cost_weight | float64 | scalar | - | - |

## motion_capture_ik/recordArmHandPose

Symbol: `Ros1Motion_capture_ikRecordArmHandPose`. Complete canonical extent: 272..272 bytes.
Codec identity: `UWVMROS1_815baf88f4e7fdf82316c06aa2baacbc2f30160c53eb73de10dfcbc1ecda2b4a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| left_pose | motion_capture_ik/armHandPose | scalar | - | - |
| right_pose | motion_capture_ik/armHandPose | scalar | - | - |

## motion_capture_ik/recordArmHandPoseFree

Symbol: `Ros1Motion_capture_ikRecordArmHandPoseFree`. Complete canonical extent: 168..424 bytes.
Codec identity: `UWVMROS1_895dcfe228b573faa0911f4c5ca89094cae4497c06b57ba9b827356e62071811`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| left_pose | motion_capture_ik/armHandPoseFree | scalar | - | - |
| right_pose | motion_capture_ik/armHandPoseFree | scalar | - | - |

## motion_capture_ik/robotArmQVVD

Symbol: `Ros1Motion_capture_ikRobotArmQVVD`. Complete canonical extent: 12..396 bytes.
Codec identity: `UWVMROS1_c5cfc8e6be023981b9b846a4e676e456a407479a9428f4fbe43e1af9df17fbbb`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| q | float64 | sequence | 16 | - |
| v | float64 | sequence | 16 | - |
| vd | float64 | sequence | 16 | - |

## time

Symbol: `Ros1Time`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sec | uint32 | scalar | - | - |
| nsec | uint32 | scalar | - | - |

## std_msgs/Header

Symbol: `Ros1Std_msgsHeader`. Complete canonical extent: 16..272 bytes.
Codec identity: `UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| seq | uint32 | scalar | - | - |
| stamp | time | scalar | - | - |
| frame_id | string | scalar | 256 | - |

## motion_capture_ik/robotHandPosition

Symbol: `Ros1Motion_capture_ikRobotHandPosition`. Complete canonical extent: 24..792 bytes.
Codec identity: `UWVMROS1_16c4f8c128cde34eba2cf878bad0706916193ba3b54f02dcd1e4556128e3b0aa`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| left_hand_position | uint8 | sequence | 256 | - |
| right_hand_position | uint8 | sequence | 256 | - |

## motion_capture_ik/twoArmHandPose

Symbol: `Ros1Motion_capture_ikTwoArmHandPose`. Complete canonical extent: 288..544 bytes.
Codec identity: `UWVMROS1_12c87f2d727015a1dd0d5c344812528ae43bfd48168fdaa68bac006fe0bbc181`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| left_pose | motion_capture_ik/armHandPose | scalar | - | - |
| right_pose | motion_capture_ik/armHandPose | scalar | - | - |

## motion_capture_ik/twoArmHandPoseCmd

Symbol: `Ros1Motion_capture_ikTwoArmHandPoseCmd`. Complete canonical extent: 346..602 bytes.
Codec identity: `UWVMROS1_aa53de9aca25b5e5ad518a3e3fd6a36f9501d620da4fbd56721a15b693ce6acc`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| hand_poses | motion_capture_ik/twoArmHandPose | scalar | - | - |
| use_custom_ik_param | bool | scalar | - | - |
| joint_angles_as_q0 | bool | scalar | - | - |
| ik_param | motion_capture_ik/ikSolveParam | scalar | - | - |

## motion_capture_ik/twoArmHandPoseFree

Symbol: `Ros1Motion_capture_ikTwoArmHandPoseFree`. Complete canonical extent: 184..696 bytes.
Codec identity: `UWVMROS1_2b0e1aadf4405084b26888548a9c33bb9be57ec8f606122857a3b18c2a6f572c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| left_pose | motion_capture_ik/armHandPoseFree | scalar | - | - |
| right_pose | motion_capture_ik/armHandPoseFree | scalar | - | - |

## motion_capture_ik/twoArmHandPoseCmdFree

Symbol: `Ros1Motion_capture_ikTwoArmHandPoseCmdFree`. Complete canonical extent: 242..754 bytes.
Codec identity: `UWVMROS1_425b1b5b856ec8d0d019829cf48728723199ff79e2b6fa5aaa3f045f1c4f8773`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| hand_poses | motion_capture_ik/twoArmHandPoseFree | scalar | - | - |
| use_custom_ik_param | bool | scalar | - | - |
| joint_angles_as_q0 | bool | scalar | - | - |
| ik_param | motion_capture_ik/ikSolveParam | scalar | - | - |

## Interfaces

| Interface | Kind | Complete components |
| --- | --- | --- |
| motion_capture_ik/armHandPose | message | message: motion_capture_ik/armHandPose |
| motion_capture_ik/armHandPoseFree | message | message: motion_capture_ik/armHandPoseFree |
| motion_capture_ik/changeArmCtrlMode | service | request: motion_capture_ik/changeArmCtrlModeRequest, response: motion_capture_ik/changeArmCtrlModeResponse |
| motion_capture_ik/handPose | message | message: motion_capture_ik/handPose |
| motion_capture_ik/ikSolveError | message | message: motion_capture_ik/ikSolveError |
| motion_capture_ik/ikSolveParam | message | message: motion_capture_ik/ikSolveParam |
| motion_capture_ik/recordArmHandPose | message | message: motion_capture_ik/recordArmHandPose |
| motion_capture_ik/recordArmHandPoseFree | message | message: motion_capture_ik/recordArmHandPoseFree |
| motion_capture_ik/robotArmQVVD | message | message: motion_capture_ik/robotArmQVVD |
| motion_capture_ik/robotHandPosition | message | message: motion_capture_ik/robotHandPosition |
| motion_capture_ik/twoArmHandPose | message | message: motion_capture_ik/twoArmHandPose |
| motion_capture_ik/twoArmHandPoseCmd | message | message: motion_capture_ik/twoArmHandPoseCmd |
| motion_capture_ik/twoArmHandPoseCmdFree | message | message: motion_capture_ik/twoArmHandPoseCmdFree |
| motion_capture_ik/twoArmHandPoseFree | message | message: motion_capture_ik/twoArmHandPoseFree |
| std_msgs/Header | message | message: std_msgs/Header |
