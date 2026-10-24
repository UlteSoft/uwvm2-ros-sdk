# fourier: ros2_aurora_bridge_v1

This source-pinned catalog preserves every original field, service component and action role. Canonical bytes are a bounded SDK transport encoding; the native gateway must independently validate the exact original ROS type and registry. Units and frames follow the original declarations without conversion.


## uwvm_fourier_bridge/msg/GroupState

Symbol: `Ros2Uwvm_fourier_bridgeMsgGroupState`. Complete canonical extent: 20..1684 bytes.
Codec identity: `UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| group | string | scalar | 128 | - |
| position | float64 | sequence | 64 | - |
| velocity | float64 | sequence | 64 | - |
| effort | float64 | sequence | 64 | - |
| motion_state | int32 | scalar | - | - |

## uwvm_fourier_bridge/msg/GroupValues

Symbol: `Ros2Uwvm_fourier_bridgeMsgGroupValues`. Complete canonical extent: 8..648 bytes.
Codec identity: `UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| group | string | scalar | 128 | - |
| values | float64 | sequence | 64 | - |

## uwvm_fourier_bridge/msg/MotionRecipe

Symbol: `Ros2Uwvm_fourier_bridgeMsgMotionRecipe`. Complete canonical extent: 18..1170 bytes.
Codec identity: `UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| move_type | uint8 | scalar | - | - |
| group | string | scalar | 128 | - |
| position | float64 | sequence | 64 | - |
| has_velocity | bool | scalar | - | - |
| velocity | float64 | sequence | 64 | - |
| expected_velocity | int32 | scalar | - | - |

## uwvm_fourier_bridge/msg/Status

Symbol: `Ros2Uwvm_fourier_bridgeMsgStatus`. Complete canonical extent: 32..14400 bytes.
Codec identity: `UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| fsm_state | int32 | scalar | - | - |
| fsm_name | string | scalar | 128 | - |
| upper_fsm_state | int32 | scalar | - | - |
| upper_fsm_name | string | scalar | 128 | - |
| velocity_source | int32 | scalar | - | - |
| velocity_source_name | string | scalar | 128 | - |
| stand_pose | float64 | sequence | 64 | - |
| groups | uwvm_fourier_bridge/msg/GroupState | sequence | 8 | - |

## uwvm_fourier_bridge/msg/VelocityCommand

Symbol: `Ros2Uwvm_fourier_bridgeMsgVelocityCommand`. Complete canonical extent: 40..40 bytes.
Codec identity: `UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| vx | float64 | scalar | - | - |
| vy | float64 | scalar | - | - |
| yaw | float64 | scalar | - | - |
| duration | float64 | scalar | - | - |

## uwvm_fourier_bridge/srv/ExecuteMove_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request`. Complete canonical extent: 12..9372 bytes.
Codec identity: `UWVMROS1_4f306d8dc39d1aec7cb634df8a1b3573996440cbdd390ad7447edfd93e0d626b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| moves | uwvm_fourier_bridge/msg/MotionRecipe | sequence | 8 | - |

## uwvm_fourier_bridge/srv/ExecuteMove_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response`. Complete canonical extent: 8..136 bytes.
Codec identity: `UWVMROS1_16cd03eb2e730dcd9eda47be3a506298f9369f0f61bcddd634a06295f902dcab`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |

## uwvm_fourier_bridge/srv/GetBaseData_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request`. Complete canonical extent: 12..140 bytes.
Codec identity: `UWVMROS1_19cfad0a79a7703b8dd5d9215a705026eaff78ef1794bda704f52a1e70d2dd5f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| key | string | scalar | 128 | - |

## uwvm_fourier_bridge/srv/GetBaseData_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response`. Complete canonical extent: 12..652 bytes.
Codec identity: `UWVMROS1_4c632e4c71f87f82064078b2936c9af2be87f56e44014e029470748c14614804`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| values | float64 | sequence | 64 | - |

## uwvm_fourier_bridge/srv/GetCartesianState_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request`. Complete canonical extent: 16..272 bytes.
Codec identity: `UWVMROS1_2255ca1da45c891d1a3f8c8f77f1f6c5b9380d5ac5250a5d522ab581c4df7eee`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| group | string | scalar | 128 | - |
| key | string | scalar | 128 | - |

## uwvm_fourier_bridge/srv/GetCartesianState_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response`. Complete canonical extent: 12..652 bytes.
Codec identity: `UWVMROS1_8adfef323b2635fd716d7121496c091656bc76bce2b320479345ef94bdc62a40`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| values | float64 | sequence | 64 | - |

## uwvm_fourier_bridge/srv/GetContactData_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetContactData_Request`. Complete canonical extent: 12..140 bytes.
Codec identity: `UWVMROS1_52cf1fcf2036a4aa97ec902842838707ee1c96c63f6466165af5d1f3cde5f4e0`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| key | string | scalar | 128 | - |

## uwvm_fourier_bridge/srv/GetContactData_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetContactData_Response`. Complete canonical extent: 12..652 bytes.
Codec identity: `UWVMROS1_504e7cc1bcb1c9a649cda204bbfbf8c6735fc5d71466b8a72d0536f0d3746b2e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| values | float64 | sequence | 64 | - |

## uwvm_fourier_bridge/srv/GetFsmName_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_d8a11bb7eee1af0c138ec4f934610c4b88d817be25992cb854100cb61d8d6100`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |

## uwvm_fourier_bridge/srv/GetFsmName_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response`. Complete canonical extent: 12..268 bytes.
Codec identity: `UWVMROS1_6ac4c78b17f0a366274f7fc74e981e95e605040937a78b3e328836f781c6886e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| value | string | scalar | 128 | - |

## uwvm_fourier_bridge/srv/GetFsmState_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_061098411a7d26f31dd31957b34190e798305289bad558d351ee81df810e3bd0`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |

## uwvm_fourier_bridge/srv/GetFsmState_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response`. Complete canonical extent: 12..140 bytes.
Codec identity: `UWVMROS1_1ac3b816f0e4aa4e769bd74d67274b85a8d9bf5ca7f8a359179280970b7e19e4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| value | int32 | scalar | - | - |

## uwvm_fourier_bridge/srv/GetGroupMotionState_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request`. Complete canonical extent: 12..140 bytes.
Codec identity: `UWVMROS1_32606cb0ba540db0ce680716059ef3a7b4ad1277216fab4254521071cc0ea9ae`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| group | string | scalar | 128 | - |

## uwvm_fourier_bridge/srv/GetGroupMotionState_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response`. Complete canonical extent: 12..140 bytes.
Codec identity: `UWVMROS1_192bd0770ca8e95e171fdbf9ef393bfc5e845a38d2a0c48f7846f3e080e219d7`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| value | int32 | scalar | - | - |

## uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request`. Complete canonical extent: 16..272 bytes.
Codec identity: `UWVMROS1_7edceab07d5c5c571bce51ea7f82f0695df7e07ad8584d7219b7db36b697959a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| group | string | scalar | 128 | - |
| key | string | scalar | 128 | - |

## uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response`. Complete canonical extent: 12..652 bytes.
Codec identity: `UWVMROS1_783f925c3b1030dec4d4a0172b4916c1cdbf72ec5e0da29167064ae754929868`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| values | float64 | sequence | 64 | - |

## uwvm_fourier_bridge/srv/GetGroupState_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request`. Complete canonical extent: 16..272 bytes.
Codec identity: `UWVMROS1_8ad802cc56a28a603ea0b4e705a80aafeda7657757a36e1bbe452b85b5035fa9`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| group | string | scalar | 128 | - |
| key | string | scalar | 128 | - |

## uwvm_fourier_bridge/srv/GetGroupState_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response`. Complete canonical extent: 12..652 bytes.
Codec identity: `UWVMROS1_22b934422928c57570784ac2100bf5fd5ca941ea59aea72b442ec7205ed2c96d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| values | float64 | sequence | 64 | - |

## uwvm_fourier_bridge/srv/GetSnapshot_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_4c3003f85c4bc3c17e2e4bd4fd965fe52099a0a4a9f2c0320d165ec3db51bb58`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |

## uwvm_fourier_bridge/srv/GetSnapshot_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response`. Complete canonical extent: 40..14536 bytes.
Codec identity: `UWVMROS1_bf4456397ae5115bf88b49c5568b8f289d6aefe3266f5e4d12b86d0f992de6a3`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| value | uwvm_fourier_bridge/msg/Status | scalar | - | - |

## uwvm_fourier_bridge/srv/GetStandPose_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_22c044b91db36a82bb825a556c41f9ae0139fb652ade47ac10aedf701ba0e044`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |

## uwvm_fourier_bridge/srv/GetStandPose_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response`. Complete canonical extent: 12..652 bytes.
Codec identity: `UWVMROS1_b25c3c0cf5fa810e367b46ad2d20d7446ffc4f67b8fb77493060ca62017ef4e2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| values | float64 | sequence | 64 | - |

## uwvm_fourier_bridge/srv/GetUpperFsmName_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_83187e2bc41361d7a7aef57d1458f4017a3ca4235b82c290dd80c1f58611e412`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |

## uwvm_fourier_bridge/srv/GetUpperFsmName_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response`. Complete canonical extent: 12..268 bytes.
Codec identity: `UWVMROS1_ad6e25b9363bcadb517e96e5a1615c5ce36719542b2b32c4fb16f69ab102daed`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| value | string | scalar | 128 | - |

## uwvm_fourier_bridge/srv/GetUpperFsmState_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_9981500b7a9dacf167baf5d8dce45820a1424a7b7fbe960c0d1b37751d1dda98`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |

## uwvm_fourier_bridge/srv/GetUpperFsmState_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response`. Complete canonical extent: 12..140 bytes.
Codec identity: `UWVMROS1_dc699f01c04f01c7ad2e71daea02ffd80f368d4d066d5d280fcf0a2abfa126a9`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| value | int32 | scalar | - | - |

## uwvm_fourier_bridge/srv/GetVelocitySource_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_c11f2de346de2adac1cdf07c795d7746436851322e591a33d75c8226f75d5d4c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |

## uwvm_fourier_bridge/srv/GetVelocitySource_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response`. Complete canonical extent: 12..140 bytes.
Codec identity: `UWVMROS1_dedb7a6119ec7ed97a0924ff58585da8569acf3026bf0c21bbb0a43bd2094e53`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| value | int32 | scalar | - | - |

## uwvm_fourier_bridge/srv/GetVelocitySourceName_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_e1bc07b31243e938bd0fe61b1a8a7c788be7442ee978bdc0e0f3da128f1986d1`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |

## uwvm_fourier_bridge/srv/GetVelocitySourceName_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response`. Complete canonical extent: 12..268 bytes.
Codec identity: `UWVMROS1_a79939894c6e446a7ee1b4af1270aa7bb72a8d54f543e82299a869b0a317ab40`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| value | string | scalar | 128 | - |

## uwvm_fourier_bridge/srv/SetFsmState_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request`. Complete canonical extent: 12..12 bytes.
Codec identity: `UWVMROS1_a479783bb0f94bf69a62333235049ee7692f618ae255edbefaa9cf9f110e090d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| state | int32 | scalar | - | - |

## uwvm_fourier_bridge/srv/SetFsmState_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response`. Complete canonical extent: 8..136 bytes.
Codec identity: `UWVMROS1_35161a47d290454d74849c87e6333379e93454fe070c21a4ad6175c5da715e70`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |

## uwvm_fourier_bridge/srv/SetGroupCommand_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request`. Complete canonical extent: 20..15572 bytes.
Codec identity: `UWVMROS1_b0b7d59e3985faf7a7c3e186e0556059b479e624c799f20dafb973e774ae3be9`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| position | uwvm_fourier_bridge/msg/GroupValues | sequence | 8 | - |
| velocity | uwvm_fourier_bridge/msg/GroupValues | sequence | 8 | - |
| torque | uwvm_fourier_bridge/msg/GroupValues | sequence | 8 | - |

## uwvm_fourier_bridge/srv/SetGroupCommand_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response`. Complete canonical extent: 8..136 bytes.
Codec identity: `UWVMROS1_53dc9e28bf3c95b193748d49c2796f5a936815f654863d326b6536a44077d290`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |

## uwvm_fourier_bridge/srv/SetMotorCfgPd_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request`. Complete canonical extent: 16..10384 bytes.
Codec identity: `UWVMROS1_0e5ee74f7eaed206d45a883b2fe8ddeda407edf921aa31c4f2d04462479324de`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| kp | uwvm_fourier_bridge/msg/GroupValues | sequence | 8 | - |
| kd | uwvm_fourier_bridge/msg/GroupValues | sequence | 8 | - |

## uwvm_fourier_bridge/srv/SetMotorCfgPd_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response`. Complete canonical extent: 8..136 bytes.
Codec identity: `UWVMROS1_dc86ac23016dc2d81dd5a69d3a6bcd96db09e1012f8f86e9fe4adcb38dabc804`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |

## uwvm_fourier_bridge/srv/SetStandPose_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request`. Complete canonical extent: 32..32 bytes.
Codec identity: `UWVMROS1_21e410d17dac9b44b02507adc3752236def8ad2bc9e251b64114a7f757577211`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| delta_z | float64 | scalar | - | - |
| delta_pitch | float64 | scalar | - | - |
| delta_yaw | float64 | scalar | - | - |

## uwvm_fourier_bridge/srv/SetStandPose_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response`. Complete canonical extent: 8..136 bytes.
Codec identity: `UWVMROS1_9b3ea0a1868a4672f1ca95ac2cd43e31eeaa9f059c4194a2205b5df1cf09291f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |

## uwvm_fourier_bridge/srv/SetUpperFsmState_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request`. Complete canonical extent: 12..12 bytes.
Codec identity: `UWVMROS1_9742535e908c4d9640af2c7432a91e65e76f3a442c265ef9255df599227a4182`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| state | int32 | scalar | - | - |

## uwvm_fourier_bridge/srv/SetUpperFsmState_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response`. Complete canonical extent: 8..136 bytes.
Codec identity: `UWVMROS1_8247b198b8a857c16d15f248da2ac705ff2fd6b596f8c148c316025cd917c9f8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |

## uwvm_fourier_bridge/srv/SetVelocity_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request`. Complete canonical extent: 40..40 bytes.
Codec identity: `UWVMROS1_7d81116c1df184dc948db4bcba368ae3ea118f3c27418ee44bd0ceb6347cee44`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| vx | float64 | scalar | - | - |
| vy | float64 | scalar | - | - |
| yaw | float64 | scalar | - | - |
| duration | float64 | scalar | - | - |

## uwvm_fourier_bridge/srv/SetVelocity_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response`. Complete canonical extent: 8..136 bytes.
Codec identity: `UWVMROS1_fa76b58061fed9672c09c5a110ebd3dc3dcdfde38da662338a48c0cf00250307`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |

## uwvm_fourier_bridge/srv/SetVelocitySource_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request`. Complete canonical extent: 12..12 bytes.
Codec identity: `UWVMROS1_5e31cdd231ecbb30ece49edc211860b6be67c9e74839a328f37a46231e41271c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| source | int32 | scalar | - | - |

## uwvm_fourier_bridge/srv/SetVelocitySource_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response`. Complete canonical extent: 8..136 bytes.
Codec identity: `UWVMROS1_9eb723e979b56e4a2dff53e026a3cab3cd0ddd4752c85e9b3ca08332e7a0eea7`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |

## uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request

Symbol: `Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request`. Complete canonical extent: 28..1084 bytes.
Codec identity: `UWVMROS1_c6abe539be15088e34d76cb243ddd814fd6781baa7bf623949f1fb03651ef202`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sequence | uint64 | scalar | - | - |
| groups | string | sequence | 8 | - |
| timeout_seconds | float64 | scalar | - | - |
| poll_seconds | float64 | scalar | - | - |

## uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response

Symbol: `Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response`. Complete canonical extent: 9..137 bytes.
Codec identity: `UWVMROS1_19184faa294d8dae790908044ff067851cde1074e1228a32b19320b6cc94a74f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | uint32 | scalar | - | - |
| error | string | scalar | 128 | - |
| complete | bool | scalar | - | - |

## Interfaces

| Interface | Kind | Complete components |
| --- | --- | --- |
| uwvm_fourier_bridge/msg/GroupState | message | message: uwvm_fourier_bridge/msg/GroupState |
| uwvm_fourier_bridge/msg/GroupValues | message | message: uwvm_fourier_bridge/msg/GroupValues |
| uwvm_fourier_bridge/msg/MotionRecipe | message | message: uwvm_fourier_bridge/msg/MotionRecipe |
| uwvm_fourier_bridge/msg/Status | message | message: uwvm_fourier_bridge/msg/Status |
| uwvm_fourier_bridge/msg/VelocityCommand | message | message: uwvm_fourier_bridge/msg/VelocityCommand |
| uwvm_fourier_bridge/srv/ExecuteMove | service | request: uwvm_fourier_bridge/srv/ExecuteMove_Request, response: uwvm_fourier_bridge/srv/ExecuteMove_Response |
| uwvm_fourier_bridge/srv/GetBaseData | service | request: uwvm_fourier_bridge/srv/GetBaseData_Request, response: uwvm_fourier_bridge/srv/GetBaseData_Response |
| uwvm_fourier_bridge/srv/GetCartesianState | service | request: uwvm_fourier_bridge/srv/GetCartesianState_Request, response: uwvm_fourier_bridge/srv/GetCartesianState_Response |
| uwvm_fourier_bridge/srv/GetContactData | service | request: uwvm_fourier_bridge/srv/GetContactData_Request, response: uwvm_fourier_bridge/srv/GetContactData_Response |
| uwvm_fourier_bridge/srv/GetFsmName | service | request: uwvm_fourier_bridge/srv/GetFsmName_Request, response: uwvm_fourier_bridge/srv/GetFsmName_Response |
| uwvm_fourier_bridge/srv/GetFsmState | service | request: uwvm_fourier_bridge/srv/GetFsmState_Request, response: uwvm_fourier_bridge/srv/GetFsmState_Response |
| uwvm_fourier_bridge/srv/GetGroupMotionState | service | request: uwvm_fourier_bridge/srv/GetGroupMotionState_Request, response: uwvm_fourier_bridge/srv/GetGroupMotionState_Response |
| uwvm_fourier_bridge/srv/GetGroupMotorCfg | service | request: uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request, response: uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response |
| uwvm_fourier_bridge/srv/GetGroupState | service | request: uwvm_fourier_bridge/srv/GetGroupState_Request, response: uwvm_fourier_bridge/srv/GetGroupState_Response |
| uwvm_fourier_bridge/srv/GetSnapshot | service | request: uwvm_fourier_bridge/srv/GetSnapshot_Request, response: uwvm_fourier_bridge/srv/GetSnapshot_Response |
| uwvm_fourier_bridge/srv/GetStandPose | service | request: uwvm_fourier_bridge/srv/GetStandPose_Request, response: uwvm_fourier_bridge/srv/GetStandPose_Response |
| uwvm_fourier_bridge/srv/GetUpperFsmName | service | request: uwvm_fourier_bridge/srv/GetUpperFsmName_Request, response: uwvm_fourier_bridge/srv/GetUpperFsmName_Response |
| uwvm_fourier_bridge/srv/GetUpperFsmState | service | request: uwvm_fourier_bridge/srv/GetUpperFsmState_Request, response: uwvm_fourier_bridge/srv/GetUpperFsmState_Response |
| uwvm_fourier_bridge/srv/GetVelocitySource | service | request: uwvm_fourier_bridge/srv/GetVelocitySource_Request, response: uwvm_fourier_bridge/srv/GetVelocitySource_Response |
| uwvm_fourier_bridge/srv/GetVelocitySourceName | service | request: uwvm_fourier_bridge/srv/GetVelocitySourceName_Request, response: uwvm_fourier_bridge/srv/GetVelocitySourceName_Response |
| uwvm_fourier_bridge/srv/SetFsmState | service | request: uwvm_fourier_bridge/srv/SetFsmState_Request, response: uwvm_fourier_bridge/srv/SetFsmState_Response |
| uwvm_fourier_bridge/srv/SetGroupCommand | service | request: uwvm_fourier_bridge/srv/SetGroupCommand_Request, response: uwvm_fourier_bridge/srv/SetGroupCommand_Response |
| uwvm_fourier_bridge/srv/SetMotorCfgPd | service | request: uwvm_fourier_bridge/srv/SetMotorCfgPd_Request, response: uwvm_fourier_bridge/srv/SetMotorCfgPd_Response |
| uwvm_fourier_bridge/srv/SetStandPose | service | request: uwvm_fourier_bridge/srv/SetStandPose_Request, response: uwvm_fourier_bridge/srv/SetStandPose_Response |
| uwvm_fourier_bridge/srv/SetUpperFsmState | service | request: uwvm_fourier_bridge/srv/SetUpperFsmState_Request, response: uwvm_fourier_bridge/srv/SetUpperFsmState_Response |
| uwvm_fourier_bridge/srv/SetVelocity | service | request: uwvm_fourier_bridge/srv/SetVelocity_Request, response: uwvm_fourier_bridge/srv/SetVelocity_Response |
| uwvm_fourier_bridge/srv/SetVelocitySource | service | request: uwvm_fourier_bridge/srv/SetVelocitySource_Request, response: uwvm_fourier_bridge/srv/SetVelocitySource_Response |
| uwvm_fourier_bridge/srv/WaitGroupsMotionComplete | service | request: uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request, response: uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response |
