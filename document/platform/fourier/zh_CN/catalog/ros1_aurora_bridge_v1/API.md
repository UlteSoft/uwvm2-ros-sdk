# fourier：ros1_aurora_bridge_v1

本目录保留所有原始字段、服务组件和动作角色。规范字节是 SDK 的有界传输格式；原生网关仍须独立核验原始 ROS 类型和完整注册表。单位、坐标系和字段顺序均遵循原始声明，不自动换算。


## uwvm_fourier_bridge/MotionRecipe

Symbol: `Ros1Uwvm_fourier_bridgeMotionRecipe`. Complete canonical extent: 18..1170 bytes.
Codec identity: `UWVMROS1_f154f5af7297a77af5c7ab98bc78c54cb0163760dfe7b1eadedb02318cfbfd8a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| move_type | uint8 | scalar | - | - |
| group | string | scalar | 128 | - |
| position | float64 | sequence | 64 | - |
| has_velocity | bool | scalar | - | - |
| velocity | float64 | sequence | 64 | - |
| expected_velocity | int32 | scalar | - | - |

## uwvm_fourier_bridge/ExecuteMoveRequest

Symbol: `Ros1Uwvm_fourier_bridgeExecuteMoveRequest`. Complete canonical extent: 12..9372 bytes.
Codec identity: `UWVMROS1_25e369f6b32bdc9983664fd4d857000a6a664364cb8bd0ff3d123cbc3c87e61b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| moves | uwvm_fourier_bridge/MotionRecipe | sequence | 8 | - |

## uwvm_fourier_bridge/ExecuteMoveResponse

Symbol: `Ros1Uwvm_fourier_bridgeExecuteMoveResponse`. Complete canonical extent: 8..136 bytes.
Codec identity: `UWVMROS1_9a801e77130d12c30d67a874cb1e8c5a7cc912a2968af304d1cfd263e6242115`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |

## uwvm_fourier_bridge/GetBaseDataRequest

Symbol: `Ros1Uwvm_fourier_bridgeGetBaseDataRequest`. Complete canonical extent: 12..140 bytes.
Codec identity: `UWVMROS1_17883b19f1dcc3d68263b6196eb5ec7afb8c902b8ab4f9b7eb66a58ef5e78528`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| key | string | scalar | 128 | - |

## uwvm_fourier_bridge/GetBaseDataResponse

Symbol: `Ros1Uwvm_fourier_bridgeGetBaseDataResponse`. Complete canonical extent: 12..652 bytes.
Codec identity: `UWVMROS1_e8928e07d6dd18cfa8a7031e0a947fa6b2f36bb608f5d2178ec01b92bb78b79a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| values | float64 | sequence | 64 | - |

## uwvm_fourier_bridge/GetCartesianStateRequest

Symbol: `Ros1Uwvm_fourier_bridgeGetCartesianStateRequest`. Complete canonical extent: 16..272 bytes.
Codec identity: `UWVMROS1_658626f7fbd0f788149208230f03cef299bcb2a6ca4cf96d4e3af807d9b336ae`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| group | string | scalar | 128 | - |
| key | string | scalar | 128 | - |

## uwvm_fourier_bridge/GetCartesianStateResponse

Symbol: `Ros1Uwvm_fourier_bridgeGetCartesianStateResponse`. Complete canonical extent: 12..652 bytes.
Codec identity: `UWVMROS1_a4fcd5f01a992b9aed4089b2c77ecda4656fe9aeb11c40777603805af964f671`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| values | float64 | sequence | 64 | - |

## uwvm_fourier_bridge/GetContactDataRequest

Symbol: `Ros1Uwvm_fourier_bridgeGetContactDataRequest`. Complete canonical extent: 12..140 bytes.
Codec identity: `UWVMROS1_38d1fa3409948748e19fdff39259fbb51503a98e03e996addb560cb404931787`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| key | string | scalar | 128 | - |

## uwvm_fourier_bridge/GetContactDataResponse

Symbol: `Ros1Uwvm_fourier_bridgeGetContactDataResponse`. Complete canonical extent: 12..652 bytes.
Codec identity: `UWVMROS1_c4381d31ad73640e2f4302bd200d4507cd5a1a4ca4ee180ad009589864f3f293`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| values | float64 | sequence | 64 | - |

## uwvm_fourier_bridge/GetFsmNameRequest

Symbol: `Ros1Uwvm_fourier_bridgeGetFsmNameRequest`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_4257279fd241dee60ef24d1d5ebdcadbc84701b2e8709a6e269d2259b9293b33`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |

## uwvm_fourier_bridge/GetFsmNameResponse

Symbol: `Ros1Uwvm_fourier_bridgeGetFsmNameResponse`. Complete canonical extent: 12..268 bytes.
Codec identity: `UWVMROS1_9016d706e2afed027dd150f1534e615e551c3f26d581313bb3d36a279e1d7c55`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| value | string | scalar | 128 | - |

## uwvm_fourier_bridge/GetFsmStateRequest

Symbol: `Ros1Uwvm_fourier_bridgeGetFsmStateRequest`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_573f497168578dce3680e1d423f64993e9fccf7774cc2fc0db38ccce8286ee3e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |

## uwvm_fourier_bridge/GetFsmStateResponse

Symbol: `Ros1Uwvm_fourier_bridgeGetFsmStateResponse`. Complete canonical extent: 12..140 bytes.
Codec identity: `UWVMROS1_1d25f46d335312a766f3c0a7f410a45f283515396c8c6bfc4a49bcf6bc37a812`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| value | int32 | scalar | - | - |

## uwvm_fourier_bridge/GetGroupMotionStateRequest

Symbol: `Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest`. Complete canonical extent: 12..140 bytes.
Codec identity: `UWVMROS1_a2b6c77c903d5d4dc5ca20805e1ed2fa7dfa0852bc3f590638a577cec9d7248f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| group | string | scalar | 128 | - |

## uwvm_fourier_bridge/GetGroupMotionStateResponse

Symbol: `Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse`. Complete canonical extent: 12..140 bytes.
Codec identity: `UWVMROS1_e41b911990c306e8f264f1f9d961b822fb6669ad1ca5ee8f81609ba13a0fc8a2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| value | int32 | scalar | - | - |

## uwvm_fourier_bridge/GetGroupMotorCfgRequest

Symbol: `Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest`. Complete canonical extent: 16..272 bytes.
Codec identity: `UWVMROS1_bbcfb5561a970d7d086aa5a3a832dfbd8c3e2c2a9b4c5e9bea8224c6c7fc0576`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| group | string | scalar | 128 | - |
| key | string | scalar | 128 | - |

## uwvm_fourier_bridge/GetGroupMotorCfgResponse

Symbol: `Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse`. Complete canonical extent: 12..652 bytes.
Codec identity: `UWVMROS1_cf7f2a81246842d851104edb7d422ff5342fc65dc56e573d552b10d02c81ad72`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| values | float64 | sequence | 64 | - |

## uwvm_fourier_bridge/GetGroupStateRequest

Symbol: `Ros1Uwvm_fourier_bridgeGetGroupStateRequest`. Complete canonical extent: 16..272 bytes.
Codec identity: `UWVMROS1_d24ebea89b1c6e7963c8058109704033c9e1f1f74673732093412c5ac453b8fc`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| group | string | scalar | 128 | - |
| key | string | scalar | 128 | - |

## uwvm_fourier_bridge/GetGroupStateResponse

Symbol: `Ros1Uwvm_fourier_bridgeGetGroupStateResponse`. Complete canonical extent: 12..652 bytes.
Codec identity: `UWVMROS1_e21f17f91821b5a3154e108d0bcdb027a320b948d32e5637d20745c85edb0acb`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| values | float64 | sequence | 64 | - |

## uwvm_fourier_bridge/GetSnapshotRequest

Symbol: `Ros1Uwvm_fourier_bridgeGetSnapshotRequest`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_384b9be938d41321afe3ef0765bdd442baa4f0c10049efd656c52d5ac1c89d4c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |

## uwvm_fourier_bridge/GroupState

Symbol: `Ros1Uwvm_fourier_bridgeGroupState`. Complete canonical extent: 20..1684 bytes.
Codec identity: `UWVMROS1_473838de7c48b3719be265fd7c7554bb35a8a1a111e2e9290953d6a660650855`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| group | string | scalar | 128 | - |
| position | float64 | sequence | 64 | - |
| velocity | float64 | sequence | 64 | - |
| effort | float64 | sequence | 64 | - |
| motion_state | int32 | scalar | - | - |

## uwvm_fourier_bridge/Status

Symbol: `Ros1Uwvm_fourier_bridgeStatus`. Complete canonical extent: 32..14400 bytes.
Codec identity: `UWVMROS1_b08737c90dd86078c8ef968fc86b5b77562148b569cd8c271195c7b758190e3e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| fsm_state | int32 | scalar | - | - |
| fsm_name | string | scalar | 128 | - |
| upper_fsm_state | int32 | scalar | - | - |
| upper_fsm_name | string | scalar | 128 | - |
| velocity_source | int32 | scalar | - | - |
| velocity_source_name | string | scalar | 128 | - |
| stand_pose | float64 | sequence | 64 | - |
| groups | uwvm_fourier_bridge/GroupState | sequence | 8 | - |

## uwvm_fourier_bridge/GetSnapshotResponse

Symbol: `Ros1Uwvm_fourier_bridgeGetSnapshotResponse`. Complete canonical extent: 40..14536 bytes.
Codec identity: `UWVMROS1_3b8b79195d53d3e0d22ac318e8f0898cb774cfaed35bebbc5210288273137c6a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| value | uwvm_fourier_bridge/Status | scalar | - | - |

## uwvm_fourier_bridge/GetStandPoseRequest

Symbol: `Ros1Uwvm_fourier_bridgeGetStandPoseRequest`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_5c3b18c383a9a9a162bf3b656007f56e791c26125e0dc59fd8dc87bd3ef54738`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |

## uwvm_fourier_bridge/GetStandPoseResponse

Symbol: `Ros1Uwvm_fourier_bridgeGetStandPoseResponse`. Complete canonical extent: 12..652 bytes.
Codec identity: `UWVMROS1_302692ae2e86c23efb3edf132e0b7a6e48fc2072a34bb941039db459f99cd15d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| values | float64 | sequence | 64 | - |

## uwvm_fourier_bridge/GetUpperFsmNameRequest

Symbol: `Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_57fbba93abe5e136ae1522ad47155377e8a55ddaa3f02793e8a605e3b596115a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |

## uwvm_fourier_bridge/GetUpperFsmNameResponse

Symbol: `Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse`. Complete canonical extent: 12..268 bytes.
Codec identity: `UWVMROS1_e98befbd1c290a3cb2c99facb33334ac0d908db39247d869d0715c024e75c7fe`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| value | string | scalar | 128 | - |

## uwvm_fourier_bridge/GetUpperFsmStateRequest

Symbol: `Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_d38f791d76cec09de5bfa0b32d88d987ec3b077408682519f4c23940c4af0d12`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |

## uwvm_fourier_bridge/GetUpperFsmStateResponse

Symbol: `Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse`. Complete canonical extent: 12..140 bytes.
Codec identity: `UWVMROS1_3864ff479fa6b85dffd39e772e3260f9e5094cf8179f98c2184a09971d577e71`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| value | int32 | scalar | - | - |

## uwvm_fourier_bridge/GetVelocitySourceRequest

Symbol: `Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_e38af8b3fc5b65c6f364f5949b42d694d7012d32d900f55e08b87d08bcf83042`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |

## uwvm_fourier_bridge/GetVelocitySourceResponse

Symbol: `Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse`. Complete canonical extent: 12..140 bytes.
Codec identity: `UWVMROS1_5bf809b889573acff549030cda017455303b009379d495aa7c3ab4399c862f60`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| value | int32 | scalar | - | - |

## uwvm_fourier_bridge/GetVelocitySourceNameRequest

Symbol: `Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_a880cea6f506d0670df709e9e86726272e242bd969b5917a9698efa2f6dd897b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |

## uwvm_fourier_bridge/GetVelocitySourceNameResponse

Symbol: `Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse`. Complete canonical extent: 12..268 bytes.
Codec identity: `UWVMROS1_4b746944429d7c07719da06a13b9a396dff3b51167894309e8cf46f64f049a9b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| value | string | scalar | 128 | - |

## uwvm_fourier_bridge/GroupValues

Symbol: `Ros1Uwvm_fourier_bridgeGroupValues`. Complete canonical extent: 8..648 bytes.
Codec identity: `UWVMROS1_899fb75506245b34c004d1ad1392f79434612d04c73d80a3329f27ec8ff5244c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| group | string | scalar | 128 | - |
| values | float64 | sequence | 64 | - |

## uwvm_fourier_bridge/SetFsmStateRequest

Symbol: `Ros1Uwvm_fourier_bridgeSetFsmStateRequest`. Complete canonical extent: 12..12 bytes.
Codec identity: `UWVMROS1_303406629d56a2b60a273488cd1e12081e7541374653bac04e2ca073d8c20885`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| state | int32 | scalar | - | - |

## uwvm_fourier_bridge/SetFsmStateResponse

Symbol: `Ros1Uwvm_fourier_bridgeSetFsmStateResponse`. Complete canonical extent: 8..136 bytes.
Codec identity: `UWVMROS1_cffc820dc64a954aa94912941d3678a59a839b3dde4a6ebafdaf7d4367c22bd1`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |

## uwvm_fourier_bridge/SetGroupCommandRequest

Symbol: `Ros1Uwvm_fourier_bridgeSetGroupCommandRequest`. Complete canonical extent: 20..15572 bytes.
Codec identity: `UWVMROS1_b313435600ece44507300ad1ea5e375244387cde33301484ffda0390ca523220`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| position | uwvm_fourier_bridge/GroupValues | sequence | 8 | - |
| velocity | uwvm_fourier_bridge/GroupValues | sequence | 8 | - |
| torque | uwvm_fourier_bridge/GroupValues | sequence | 8 | - |

## uwvm_fourier_bridge/SetGroupCommandResponse

Symbol: `Ros1Uwvm_fourier_bridgeSetGroupCommandResponse`. Complete canonical extent: 8..136 bytes.
Codec identity: `UWVMROS1_d4c199515080deccf6a7bbd7101c84f45d7b280a7ed618c2165231343aae558b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |

## uwvm_fourier_bridge/SetMotorCfgPdRequest

Symbol: `Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest`. Complete canonical extent: 16..10384 bytes.
Codec identity: `UWVMROS1_b6dc93532397dc9016b751bf29f651e5cbb0823b5a03a3f8473823bb234bc51d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| kp | uwvm_fourier_bridge/GroupValues | sequence | 8 | - |
| kd | uwvm_fourier_bridge/GroupValues | sequence | 8 | - |

## uwvm_fourier_bridge/SetMotorCfgPdResponse

Symbol: `Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse`. Complete canonical extent: 8..136 bytes.
Codec identity: `UWVMROS1_c1a69a2c03c6cee9b43484b29a800a5f82be4b9188e3b199eb2db8babd205bdc`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |

## uwvm_fourier_bridge/SetStandPoseRequest

Symbol: `Ros1Uwvm_fourier_bridgeSetStandPoseRequest`. Complete canonical extent: 32..32 bytes.
Codec identity: `UWVMROS1_75a21fe3986a90ff45b9e7ef023a93be9852d1174b5724b77b82b87e002492ed`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| delta_z | float64 | scalar | - | - |
| delta_pitch | float64 | scalar | - | - |
| delta_yaw | float64 | scalar | - | - |

## uwvm_fourier_bridge/SetStandPoseResponse

Symbol: `Ros1Uwvm_fourier_bridgeSetStandPoseResponse`. Complete canonical extent: 8..136 bytes.
Codec identity: `UWVMROS1_257da5b52ebfca54b067ced2acfab01e3aa3187c77751a5f82f9fda25885fe7e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |

## uwvm_fourier_bridge/SetUpperFsmStateRequest

Symbol: `Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest`. Complete canonical extent: 12..12 bytes.
Codec identity: `UWVMROS1_cc12b01c002d9e3662f16595a55df6abebdea2fe06e350b7e81f33bee0d47758`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| state | int32 | scalar | - | - |

## uwvm_fourier_bridge/SetUpperFsmStateResponse

Symbol: `Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse`. Complete canonical extent: 8..136 bytes.
Codec identity: `UWVMROS1_27ee9830ebf52c3cfcdd8691bf1be9a1a63f7cd12c43cd30531b73501cd423c1`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |

## uwvm_fourier_bridge/SetVelocityRequest

Symbol: `Ros1Uwvm_fourier_bridgeSetVelocityRequest`. Complete canonical extent: 40..40 bytes.
Codec identity: `UWVMROS1_33eb9021c19ed28c9aabc0076b8e5cc9f36b1fcaebbb93ebfa3dc38e9691ed2d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| vx | float64 | scalar | - | - |
| vy | float64 | scalar | - | - |
| yaw | float64 | scalar | - | - |
| duration | float64 | scalar | - | - |

## uwvm_fourier_bridge/SetVelocityResponse

Symbol: `Ros1Uwvm_fourier_bridgeSetVelocityResponse`. Complete canonical extent: 8..136 bytes.
Codec identity: `UWVMROS1_3325d6b620d3481b6976cd4579f197ed19d6a5074618f700273ca89e0eba762a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |

## uwvm_fourier_bridge/SetVelocitySourceRequest

Symbol: `Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest`. Complete canonical extent: 12..12 bytes.
Codec identity: `UWVMROS1_769c68344260812d775718b441b2a0e5e26422995c946031b919707994e295eb`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| source | int32 | scalar | - | - |

## uwvm_fourier_bridge/SetVelocitySourceResponse

Symbol: `Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse`. Complete canonical extent: 8..136 bytes.
Codec identity: `UWVMROS1_d791bd1ff7d8219a98a9ad475cdf0274fa87638452ce0359de57abc05ff0c3be`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |

## uwvm_fourier_bridge/VelocityCommand

Symbol: `Ros1Uwvm_fourier_bridgeVelocityCommand`. Complete canonical extent: 40..40 bytes.
Codec identity: `UWVMROS1_befc41dabd1a7359d32aa3dd4a0197e607fa84346f14fd79f8bc04d328b6ad54`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| vx | float64 | scalar | - | - |
| vy | float64 | scalar | - | - |
| yaw | float64 | scalar | - | - |
| duration | float64 | scalar | - | - |

## uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest

Symbol: `Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest`. Complete canonical extent: 28..1084 bytes.
Codec identity: `UWVMROS1_27bdd6aa7689099eb40b3bdf96a1c3939677b016c685bd6fb6a275233b933b33`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| groups | string | sequence | 8 | - |
| timeout_seconds | float64 | scalar | - | - |
| poll_seconds | float64 | scalar | - | - |

## uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse

Symbol: `Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse`. Complete canonical extent: 9..137 bytes.
Codec identity: `UWVMROS1_7d0a1faabf2934ec1a75981a5ed4251017a666975174efca8be48c152a15fee8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| complete | bool | scalar | - | - |

## Interfaces

| Interface | Kind | Complete components |
| --- | --- | --- |
| uwvm_fourier_bridge/ExecuteMove | service | request: uwvm_fourier_bridge/ExecuteMoveRequest, response: uwvm_fourier_bridge/ExecuteMoveResponse |
| uwvm_fourier_bridge/GetBaseData | service | request: uwvm_fourier_bridge/GetBaseDataRequest, response: uwvm_fourier_bridge/GetBaseDataResponse |
| uwvm_fourier_bridge/GetCartesianState | service | request: uwvm_fourier_bridge/GetCartesianStateRequest, response: uwvm_fourier_bridge/GetCartesianStateResponse |
| uwvm_fourier_bridge/GetContactData | service | request: uwvm_fourier_bridge/GetContactDataRequest, response: uwvm_fourier_bridge/GetContactDataResponse |
| uwvm_fourier_bridge/GetFsmName | service | request: uwvm_fourier_bridge/GetFsmNameRequest, response: uwvm_fourier_bridge/GetFsmNameResponse |
| uwvm_fourier_bridge/GetFsmState | service | request: uwvm_fourier_bridge/GetFsmStateRequest, response: uwvm_fourier_bridge/GetFsmStateResponse |
| uwvm_fourier_bridge/GetGroupMotionState | service | request: uwvm_fourier_bridge/GetGroupMotionStateRequest, response: uwvm_fourier_bridge/GetGroupMotionStateResponse |
| uwvm_fourier_bridge/GetGroupMotorCfg | service | request: uwvm_fourier_bridge/GetGroupMotorCfgRequest, response: uwvm_fourier_bridge/GetGroupMotorCfgResponse |
| uwvm_fourier_bridge/GetGroupState | service | request: uwvm_fourier_bridge/GetGroupStateRequest, response: uwvm_fourier_bridge/GetGroupStateResponse |
| uwvm_fourier_bridge/GetSnapshot | service | request: uwvm_fourier_bridge/GetSnapshotRequest, response: uwvm_fourier_bridge/GetSnapshotResponse |
| uwvm_fourier_bridge/GetStandPose | service | request: uwvm_fourier_bridge/GetStandPoseRequest, response: uwvm_fourier_bridge/GetStandPoseResponse |
| uwvm_fourier_bridge/GetUpperFsmName | service | request: uwvm_fourier_bridge/GetUpperFsmNameRequest, response: uwvm_fourier_bridge/GetUpperFsmNameResponse |
| uwvm_fourier_bridge/GetUpperFsmState | service | request: uwvm_fourier_bridge/GetUpperFsmStateRequest, response: uwvm_fourier_bridge/GetUpperFsmStateResponse |
| uwvm_fourier_bridge/GetVelocitySource | service | request: uwvm_fourier_bridge/GetVelocitySourceRequest, response: uwvm_fourier_bridge/GetVelocitySourceResponse |
| uwvm_fourier_bridge/GetVelocitySourceName | service | request: uwvm_fourier_bridge/GetVelocitySourceNameRequest, response: uwvm_fourier_bridge/GetVelocitySourceNameResponse |
| uwvm_fourier_bridge/GroupState | message | message: uwvm_fourier_bridge/GroupState |
| uwvm_fourier_bridge/GroupValues | message | message: uwvm_fourier_bridge/GroupValues |
| uwvm_fourier_bridge/MotionRecipe | message | message: uwvm_fourier_bridge/MotionRecipe |
| uwvm_fourier_bridge/SetFsmState | service | request: uwvm_fourier_bridge/SetFsmStateRequest, response: uwvm_fourier_bridge/SetFsmStateResponse |
| uwvm_fourier_bridge/SetGroupCommand | service | request: uwvm_fourier_bridge/SetGroupCommandRequest, response: uwvm_fourier_bridge/SetGroupCommandResponse |
| uwvm_fourier_bridge/SetMotorCfgPd | service | request: uwvm_fourier_bridge/SetMotorCfgPdRequest, response: uwvm_fourier_bridge/SetMotorCfgPdResponse |
| uwvm_fourier_bridge/SetStandPose | service | request: uwvm_fourier_bridge/SetStandPoseRequest, response: uwvm_fourier_bridge/SetStandPoseResponse |
| uwvm_fourier_bridge/SetUpperFsmState | service | request: uwvm_fourier_bridge/SetUpperFsmStateRequest, response: uwvm_fourier_bridge/SetUpperFsmStateResponse |
| uwvm_fourier_bridge/SetVelocity | service | request: uwvm_fourier_bridge/SetVelocityRequest, response: uwvm_fourier_bridge/SetVelocityResponse |
| uwvm_fourier_bridge/SetVelocitySource | service | request: uwvm_fourier_bridge/SetVelocitySourceRequest, response: uwvm_fourier_bridge/SetVelocitySourceResponse |
| uwvm_fourier_bridge/Status | message | message: uwvm_fourier_bridge/Status |
| uwvm_fourier_bridge/VelocityCommand | message | message: uwvm_fourier_bridge/VelocityCommand |
| uwvm_fourier_bridge/WaitGroupsMotionComplete | service | request: uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest, response: uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse |
