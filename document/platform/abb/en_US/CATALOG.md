# ABB complete type catalog

This catalog preserves native field order, scalar widths, fixed arrays, defaults and constants across messages, services and actions. Finite guest capacities do not rewrite upstream interfaces.

## ROS 1

79 complete record components; 53 original interfaces.

### abb_egm_msgs/EGMChannelState

`Ros1Abb_egm_msgsEGMChannelState`; 17..81 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `name` | `string` | scalar  | 64 | `None` |
| `active` | `bool` | scalar  | 0 | `None` |
| `egm_convergence_met` | `bool` | scalar  | 0 | `None` |
| `egm_client_state` | `uint8` | scalar  | 0 | `None` |
| `motor_state` | `uint8` | scalar  | 0 | `None` |
| `rapid_execution_state` | `uint8` | scalar  | 0 | `None` |
| `utilization_rate` | `float64` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_452d2adde3b1475fe3ff09ea11ff2ec7105a58c32e20d764e0c2ff152cb432f2`.

- `EGM_UNDEFINED`: `uint8` = `1`.
- `EGM_ERROR`: `uint8` = `2`.
- `EGM_STOPPED`: `uint8` = `3`.
- `EGM_RUNNING`: `uint8` = `4`.
- `MOTORS_UNDEFINED`: `uint8` = `1`.
- `MOTORS_ON`: `uint8` = `2`.
- `MOTORS_OFF`: `uint8` = `3`.
- `RAPID_UNDEFINED`: `uint8` = `1`.
- `RAPID_STOPPED`: `uint8` = `2`.
- `RAPID_RUNNING`: `uint8` = `3`.

### time

`Ros1Time`; 8..8 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `sec` | `uint32` | scalar  | 0 | `None` |
| `nsec` | `uint32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0`.

### std_msgs/Header

`Ros1Std_msgsHeader`; 16..80 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `seq` | `uint32` | scalar  | 0 | `None` |
| `stamp` | `time` | scalar  | 0 | `None` |
| `frame_id` | `string` | scalar  | 64 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_ca1b8ffce276bdc4f86dccae58ede9f860ffe8778c6d4ffe0fb70675777801db`.

### abb_egm_msgs/EGMState

`Ros1Abb_egm_msgsEGMState`; 20..1380 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `header` | `std_msgs/Header` | scalar  | 0 | `None` |
| `egm_channels` | `abb_egm_msgs/EGMChannelState` | sequence 16 | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_f7fe1d3924dc4e497c58aab27da69cfa6ab1a11f64b970b42e2d040a1312c4d8`.

### abb_rapid_msgs/ConfData

`Ros1Abb_rapid_msgsConfData`; 16..16 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `cf1` | `float32` | scalar  | 0 | `None` |
| `cf4` | `float32` | scalar  | 0 | `None` |
| `cf6` | `float32` | scalar  | 0 | `None` |
| `cfx` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_293eb01e8fa150a8a3c741626b76804255d0eb321a0484aac402201447392af2`.

### abb_rapid_msgs/ExtJoint

`Ros1Abb_rapid_msgsExtJoint`; 24..24 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `eax_a` | `float32` | scalar  | 0 | `None` |
| `eax_b` | `float32` | scalar  | 0 | `None` |
| `eax_c` | `float32` | scalar  | 0 | `None` |
| `eax_d` | `float32` | scalar  | 0 | `None` |
| `eax_e` | `float32` | scalar  | 0 | `None` |
| `eax_f` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_653a47c44ab85151fd9e6215901fb154962c32fe1082386733ec6205eaae613a`.

### abb_rapid_msgs/RobJoint

`Ros1Abb_rapid_msgsRobJoint`; 24..24 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `rax_1` | `float32` | scalar  | 0 | `None` |
| `rax_2` | `float32` | scalar  | 0 | `None` |
| `rax_3` | `float32` | scalar  | 0 | `None` |
| `rax_4` | `float32` | scalar  | 0 | `None` |
| `rax_5` | `float32` | scalar  | 0 | `None` |
| `rax_6` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_5d45bc0efae8c4f5b26e4043fe537e163c4cc4c6458d1eac9be429c37aaf82f0`.

### abb_rapid_msgs/JointTarget

`Ros1Abb_rapid_msgsJointTarget`; 48..48 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `robax` | `abb_rapid_msgs/RobJoint` | scalar  | 0 | `None` |
| `extax` | `abb_rapid_msgs/ExtJoint` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_4a1cc175468da9204c5f2f399b76712617daec21a0d1675a6e73c84ff170dc24`.

### abb_rapid_msgs/Pos

`Ros1Abb_rapid_msgsPos`; 12..12 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `x` | `float32` | scalar  | 0 | `None` |
| `y` | `float32` | scalar  | 0 | `None` |
| `z` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_79edd4553fad8a8f833a3399e354c93538d4971bc3820cc14cf540e960356c01`.

### abb_rapid_msgs/Orient

`Ros1Abb_rapid_msgsOrient`; 16..16 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `q1` | `float32` | scalar  | 0 | `None` |
| `q2` | `float32` | scalar  | 0 | `None` |
| `q3` | `float32` | scalar  | 0 | `None` |
| `q4` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_5a9c29323a5e3bc0c4c0afa7d305738cd52b49ae339e72f6b34b35b165f3d270`.

### abb_rapid_msgs/LoadData

`Ros1Abb_rapid_msgsLoadData`; 44..44 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `mass` | `float32` | scalar  | 0 | `None` |
| `cog` | `abb_rapid_msgs/Pos` | scalar  | 0 | `None` |
| `aom` | `abb_rapid_msgs/Orient` | scalar  | 0 | `None` |
| `ix` | `float32` | scalar  | 0 | `None` |
| `iy` | `float32` | scalar  | 0 | `None` |
| `iz` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_2cc985cc188a03e7c6de3d22310802cac1e0a748bae7f828d957436c1e03303d`.

### abb_rapid_msgs/Pose

`Ros1Abb_rapid_msgsPose`; 28..28 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `trans` | `abb_rapid_msgs/Pos` | scalar  | 0 | `None` |
| `rot` | `abb_rapid_msgs/Orient` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_3e0cfbb7e25376639d1ff6e555a86e69f8c9ed177c1ef14b301d90b206a19c99`.

### abb_rapid_msgs/RobTarget

`Ros1Abb_rapid_msgsRobTarget`; 68..68 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `trans` | `abb_rapid_msgs/Pos` | scalar  | 0 | `None` |
| `rot` | `abb_rapid_msgs/Orient` | scalar  | 0 | `None` |
| `robconf` | `abb_rapid_msgs/ConfData` | scalar  | 0 | `None` |
| `extax` | `abb_rapid_msgs/ExtJoint` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_0abb3aee8b1303ccf9419f2774829d1231de3ac033e4b644d585f195972f09ce`.

### abb_rapid_msgs/ToolData

`Ros1Abb_rapid_msgsToolData`; 73..73 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `robhold` | `bool` | scalar  | 0 | `None` |
| `tframe` | `abb_rapid_msgs/Pose` | scalar  | 0 | `None` |
| `tload` | `abb_rapid_msgs/LoadData` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_e2feaee4bda891f594542384d70883184262777e359fb037a648b7526ef76cba`.

### abb_rapid_msgs/WObjData

`Ros1Abb_rapid_msgsWObjData`; 62..574 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `robhold` | `bool` | scalar  | 0 | `None` |
| `ufprog` | `bool` | scalar  | 0 | `None` |
| `ufmec` | `string` | scalar  | 512 | `None` |
| `uframe` | `abb_rapid_msgs/Pose` | scalar  | 0 | `None` |
| `oframe` | `abb_rapid_msgs/Pose` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_6de4cf654a15ef3b63d9b0f3d0984438f21963c10ffd1b00238113b6fae8454f`.

### abb_rapid_sm_addin_msgs/EGMActivateSettings

`Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings`; 204..716 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `tool` | `abb_rapid_msgs/ToolData` | scalar  | 0 | `None` |
| `wobj` | `abb_rapid_msgs/WObjData` | scalar  | 0 | `None` |
| `correction_frame` | `abb_rapid_msgs/Pose` | scalar  | 0 | `None` |
| `sensor_frame` | `abb_rapid_msgs/Pose` | scalar  | 0 | `None` |
| `cond_min_max` | `float32` | scalar  | 0 | `None` |
| `lp_filter` | `float32` | scalar  | 0 | `None` |
| `sample_rate` | `uint8` | scalar  | 0 | `None` |
| `max_speed_deviation` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_c50be5682021e5d1a7a938e6fe3595cec7c0b0ae727070c0924da731c2c73d4d`.

### abb_rapid_sm_addin_msgs/EGMRunSettings

`Ros1Abb_rapid_sm_addin_msgsEGMRunSettings`; 40..40 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `cond_time` | `float32` | scalar  | 0 | `None` |
| `ramp_in_time` | `float32` | scalar  | 0 | `None` |
| `offset` | `abb_rapid_msgs/Pose` | scalar  | 0 | `None` |
| `pos_corr_gain` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_09a843da7aa89c60e6404f8d36b9a1a57f75e330329ac043449fd438b7029506`.

### abb_rapid_sm_addin_msgs/EGMSetupSettings

`Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings`; 5..5 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `use_filtering` | `bool` | scalar  | 0 | `None` |
| `comm_timeout` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_ece31a7631bb3bb248aece52d4d5f6e190a94dcc3052b2761b759bed24513779`.

### abb_rapid_sm_addin_msgs/EGMStopSettings

`Ros1Abb_rapid_sm_addin_msgsEGMStopSettings`; 4..4 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `ramp_out_time` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_64009cc452b9b2b12b3501d150e8c88c9cc07c796df06775195fa17c2a103a08`.

### abb_rapid_sm_addin_msgs/EGMSettings

`Ros1Abb_rapid_sm_addin_msgsEGMSettings`; 255..767 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `allow_egm_motions` | `bool` | scalar  | 0 | `None` |
| `use_presync` | `bool` | scalar  | 0 | `None` |
| `setup_uc` | `abb_rapid_sm_addin_msgs/EGMSetupSettings` | scalar  | 0 | `None` |
| `activate` | `abb_rapid_sm_addin_msgs/EGMActivateSettings` | scalar  | 0 | `None` |
| `run` | `abb_rapid_sm_addin_msgs/EGMRunSettings` | scalar  | 0 | `None` |
| `stop` | `abb_rapid_sm_addin_msgs/EGMStopSettings` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_ebc0ca24a54451f863964c74bf0257b5b25546d0d4b8a75ac75c265e1d62317b`.

### abb_rapid_sm_addin_msgs/GetEGMSettingsRequest

`Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest`; 4..68 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `task` | `string` | scalar  | 64 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_42cca857367e08720f989416d18d6a1f7d677f7e5bf49435b9735a9eb10a8f9c`.

### abb_rapid_sm_addin_msgs/GetEGMSettingsResponse

`Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse`; 261..1285 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `settings` | `abb_rapid_sm_addin_msgs/EGMSettings` | scalar  | 0 | `None` |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_094fd8b0b992c26d708bbd09952d36a3921ad5e5e66f45edb9d19af5ec3472bc`.

### abb_rapid_sm_addin_msgs/StateMachineState

`Ros1Abb_rapid_sm_addin_msgsStateMachineState`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `rapid_task` | `string` | scalar  | 512 | `None` |
| `sm_state` | `uint8` | scalar  | 0 | `None` |
| `egm_action` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_9ef8cc3a0438ad892acc1a2f485039ca49abce6fedf40cc5d9b2fe03dd9490bb`.

- `SM_STATE_UNKNOWN`: `uint8` = `1`.
- `SM_STATE_IDLE`: `uint8` = `2`.
- `SM_STATE_INITIALIZE`: `uint8` = `3`.
- `SM_STATE_RUN_RAPID_ROUTINE`: `uint8` = `4`.
- `SM_STATE_RUN_EGM_ROUTINE`: `uint8` = `5`.
- `EGM_ACTION_UNKNOWN`: `uint8` = `1`.
- `EGM_ACTION_NONE`: `uint8` = `2`.
- `EGM_ACTION_RUN_JOINT`: `uint8` = `3`.
- `EGM_ACTION_RUN_POSE`: `uint8` = `4`.
- `EGM_ACTION_STOP`: `uint8` = `5`.
- `EGM_ACTION_START_STREAM`: `uint8` = `6`.
- `EGM_ACTION_STOP_STREAM`: `uint8` = `7`.

### abb_rapid_sm_addin_msgs/RuntimeState

`Ros1Abb_rapid_sm_addin_msgsRuntimeState`; 20..8372 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `header` | `std_msgs/Header` | scalar  | 0 | `None` |
| `state_machines` | `abb_rapid_sm_addin_msgs/StateMachineState` | sequence 16 | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_50d7eab2eed3ce0b55160e85b44b4108d966290f6b8f126980ee452846f3660c`.

### abb_rapid_sm_addin_msgs/SetEGMSettingsRequest

`Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest`; 259..835 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `task` | `string` | scalar  | 64 | `None` |
| `settings` | `abb_rapid_sm_addin_msgs/EGMSettings` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_fe85c34f8dff2c0a547f89385d75771af13a03d997b880ab7be2eb84ea800155`.

### abb_rapid_sm_addin_msgs/SetEGMSettingsResponse

`Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_c0d4e594a51a6cdd245ad03b6e27bbdc298c5c9fbe26cc25fa3594deef9b2591`.

### abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest

`Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest`; 8..584 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `task` | `string` | scalar  | 64 | `None` |
| `routine` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_b16ba3e98ee1d45864532b01f914746f041e49463b9330ef6056e427d199a5a3`.

### abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse

`Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_44de2385f12a8612fa75ca7c3f97b07f22d04e920bdeca0f0bd7fed5322c680e`.

### abb_rapid_sm_addin_msgs/SetSGCommandRequest

`Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest`; 9..73 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `task` | `string` | scalar  | 64 | `None` |
| `command` | `uint8` | scalar  | 0 | `None` |
| `target_position` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_e39d7fee66c1efb9ea963216823f6e10bd632d78634d8c47f3283a1a1779f0c2`.

- `SG_COMMAND_UNKNOWN`: `uint8` = `1`.
- `SG_COMMAND_NONE`: `uint8` = `2`.
- `SG_COMMAND_INITIALIZE`: `uint8` = `3`.
- `SG_COMMAND_CALIBRATE`: `uint8` = `4`.
- `SG_COMMAND_MOVE_TO`: `uint8` = `5`.
- `SG_COMMAND_GRIP_IN`: `uint8` = `6`.
- `SG_COMMAND_GRIP_OUT`: `uint8` = `7`.
- `SG_COMMAND_BLOW_ON_1`: `uint8` = `8`.
- `SG_COMMAND_BLOW_ON_2`: `uint8` = `9`.
- `SG_COMMAND_BLOW_OFF_1`: `uint8` = `10`.
- `SG_COMMAND_BLOW_OFF_2`: `uint8` = `11`.
- `SG_COMMAND_VACUUM_ON_1`: `uint8` = `12`.
- `SG_COMMAND_VACUUM_ON_2`: `uint8` = `13`.
- `SG_COMMAND_VACUUM_OFF_1`: `uint8` = `14`.
- `SG_COMMAND_VACUUM_OFF_2`: `uint8` = `15`.

### abb_rapid_sm_addin_msgs/SetSGCommandResponse

`Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_2f22b2098d86dd0764277247eb7f64dccecebf0cddce85654b01c1928eb9c192`.

### abb_robot_msgs/GetFileContentsRequest

`Ros1Abb_robot_msgsGetFileContentsRequest`; 4..516 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `filename` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_75f5802b385cc1efb524fadea657fda1d5cc4298c5720222d33cd3dd39656f21`.

### abb_robot_msgs/GetFileContentsResponse

`Ros1Abb_robot_msgsGetFileContentsResponse`; 10..4618 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `contents` | `string` | scalar  | 4096 | `None` |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_693b53ed168f81a7c93ac8083977c4f8bd6f4a3999d079f5b47029699ba68fdb`.

### abb_robot_msgs/GetIOSignalRequest

`Ros1Abb_robot_msgsGetIOSignalRequest`; 4..516 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `signal` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_d98f7577756b476cac0dd325d45f333fcd2b735df7dce58fb660790b5a91f83b`.

### abb_robot_msgs/GetIOSignalResponse

`Ros1Abb_robot_msgsGetIOSignalResponse`; 10..1034 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `value` | `string` | scalar  | 512 | `None` |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_10a66146c4815b0d758ec81dde1c552695c97a8727ee995299018b23f129d79e`.

### abb_robot_msgs/RAPIDSymbolPath

`Ros1Abb_robot_msgsRAPIDSymbolPath`; 12..204 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `task` | `string` | scalar  | 64 | `None` |
| `module` | `string` | scalar  | 64 | `None` |
| `symbol` | `string` | scalar  | 64 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_07308d9ce1e71a02f5cc3546cdbaaa0b24a06534a55aa3ee3354b498038faad2`.

### abb_robot_msgs/GetRAPIDBoolRequest

`Ros1Abb_robot_msgsGetRAPIDBoolRequest`; 12..204 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `path` | `abb_robot_msgs/RAPIDSymbolPath` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_46e49c0d6796175d0c56460dd4c7d2557deaa8db4f1a3bec40b53636d3b44b96`.

### abb_robot_msgs/GetRAPIDBoolResponse

`Ros1Abb_robot_msgsGetRAPIDBoolResponse`; 7..519 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `value` | `bool` | scalar  | 0 | `None` |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_bfe21e95cb79f1d9bc1bc1dc2f61c744a2a7dc49e5a5ed07b6c8619344b97b3f`.

### abb_robot_msgs/GetRAPIDDnumRequest

`Ros1Abb_robot_msgsGetRAPIDDnumRequest`; 12..204 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `path` | `abb_robot_msgs/RAPIDSymbolPath` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_9058d8774de0da657344a00d75a7f75878da2b0453bf25708bc8ed7f45c90c9d`.

### abb_robot_msgs/GetRAPIDDnumResponse

`Ros1Abb_robot_msgsGetRAPIDDnumResponse`; 14..526 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `value` | `float64` | scalar  | 0 | `None` |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_9c209b4b12d733e33b76cc33ae93b6d561ce1eb7f8864429a56bd073317a01b3`.

### abb_robot_msgs/GetRAPIDNumRequest

`Ros1Abb_robot_msgsGetRAPIDNumRequest`; 12..204 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `path` | `abb_robot_msgs/RAPIDSymbolPath` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_a316395c8a19b7c0a9c3a555e625fffc7d647c7b567f38c53b1c3735b50ee910`.

### abb_robot_msgs/GetRAPIDNumResponse

`Ros1Abb_robot_msgsGetRAPIDNumResponse`; 10..522 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `value` | `float32` | scalar  | 0 | `None` |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_1573cba9a9046a6b304a49e3a77266fa0d6f615d2ea9a24692c25616970fd9b0`.

### abb_robot_msgs/GetRAPIDStringRequest

`Ros1Abb_robot_msgsGetRAPIDStringRequest`; 12..204 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `path` | `abb_robot_msgs/RAPIDSymbolPath` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_56514142e9e064aa43d09078b49ed8ee0366189727c35a9bc130b35007da4c9c`.

### abb_robot_msgs/GetRAPIDStringResponse

`Ros1Abb_robot_msgsGetRAPIDStringResponse`; 10..1034 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `value` | `string` | scalar  | 512 | `None` |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_d1188827af3c307a721f8128b6f14fa6020f3187afce8a4162ce6562cdd1c854`.

### abb_robot_msgs/GetRAPIDSymbolRequest

`Ros1Abb_robot_msgsGetRAPIDSymbolRequest`; 12..204 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `path` | `abb_robot_msgs/RAPIDSymbolPath` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_31302ad912a8ff39b56a429bc9dae22cbfc2c2101b8cd05162d00d9206aecf5b`.

### abb_robot_msgs/GetRAPIDSymbolResponse

`Ros1Abb_robot_msgsGetRAPIDSymbolResponse`; 10..1034 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `value` | `string` | scalar  | 512 | `None` |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_182dc465ea5fb9543791b6fb76520313cee1ed472ab0296c8ef7a9ed3d4d110f`.

### abb_robot_msgs/GetRobotControllerDescriptionRequest

`Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest`; 0..0 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| — | Empty semantic component; C storage dummy has no wire bytes. | — | — | — |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_bc5f87f4d0f33cbc640c8188fbb15c9b0f43b3067f2406700d6f5bd2475089b6`.

### abb_robot_msgs/GetRobotControllerDescriptionResponse

`Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse`; 10..4618 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `description` | `string` | scalar  | 4096 | `None` |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_7db41283fbe12a010e526b87d77a5bb7faecdf85595ef2dc13f14bfed56b6e39`.

### abb_robot_msgs/GetSpeedRatioRequest

`Ros1Abb_robot_msgsGetSpeedRatioRequest`; 0..0 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| — | Empty semantic component; C storage dummy has no wire bytes. | — | — | — |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_82230aebf6fa923e09bcd413ecb3b4803a6f1cfd3e8334e0ce0c496b73008373`.

### abb_robot_msgs/GetSpeedRatioResponse

`Ros1Abb_robot_msgsGetSpeedRatioResponse`; 7..519 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `speed_ratio` | `uint8` | scalar  | 0 | `None` |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_7784360ddafa1b8ad9626fde0afa2b2335f6a294507036c3aee953df99e91940`.

### abb_robot_msgs/MechanicalUnitState

`Ros1Abb_robot_msgsMechanicalUnitState`; 5..69 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `name` | `string` | scalar  | 64 | `None` |
| `activated` | `bool` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_872cc6e8bdf32426bb9e24322c951452aab6ebcbc1f2998f4fb19c34abece8fa`.

### abb_robot_msgs/RAPIDTaskState

`Ros1Abb_robot_msgsRAPIDTaskState`; 7..71 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `name` | `string` | scalar  | 64 | `None` |
| `activated` | `bool` | scalar  | 0 | `None` |
| `execution_state` | `uint8` | scalar  | 0 | `None` |
| `motion_task` | `bool` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_ab1245cc352efa91cdcc8de801392857e25a4101a141439554b761525b31b947`.

- `EXECUTION_STATE_UNKNOWN`: `uint8` = `1`.
- `EXECUTION_STATE_READY`: `uint8` = `2`.
- `EXECUTION_STATE_STOPPED`: `uint8` = `3`.
- `EXECUTION_STATE_STARTED`: `uint8` = `4`.
- `EXECUTION_STATE_UNINITIALIZED`: `uint8` = `5`.

### abb_robot_msgs/ServiceResponses

`Ros1Abb_robot_msgsServiceResponses`; 0..0 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| — | Empty semantic component; C storage dummy has no wire bytes. | — | — | — |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_f0a3c4b160bf0ca52dbbb4e26d2c8a7d3c6a40ac70787ba59cf181945e4276d4`.

- `SUCCESS`: `string` = ``.
- `RC_SUCCESS`: `uint16` = `1`.
- `FAILED`: `string` = `Service failed (e.g. timeout or resource not found, see the DEBUG log for details)`.
- `RC_FAILED`: `uint16` = `2`.
- `SERVER_IS_BUSY`: `string` = `Server is busy`.
- `RC_SERVER_IS_BUSY`: `uint16` = `1001`.
- `EMPTY_FILENAME`: `string` = `Filename is empty`.
- `RC_EMPTY_FILENAME`: `uint16` = `2001`.
- `EMPTY_SIGNAL_NAME`: `string` = `Signal name is empty`.
- `RC_EMPTY_SIGNAL_NAME`: `uint16` = `2002`.
- `EMPTY_RAPID_TASK_NAME`: `string` = `RAPID task name is empty`.
- `RC_EMPTY_RAPID_TASK_NAME`: `uint16` = `2003`.
- `EMPTY_RAPID_MODULE_NAME`: `string` = `RAPID module name is empty`.
- `RC_EMPTY_RAPID_MODULE_NAME`: `uint16` = `2004`.
- `EMPTY_RAPID_SYMBOL_NAME`: `string` = `RAPID symbol name is empty`.
- `RC_EMPTY_RAPID_SYMBOL_NAME`: `uint16` = `2005`.
- `NOT_IN_AUTO_MODE`: `string` = `Robot controller is not in AUTO mode`.
- `RC_NOT_IN_AUTO_MODE`: `uint16` = `3001`.
- `MOTORS_ARE_OFF`: `string` = `Motors are off`.
- `RC_MOTORS_ARE_OFF`: `uint16` = `3002`.
- `MOTORS_ARE_ON`: `string` = `Motors are on`.
- `RC_MOTORS_ARE_ON`: `uint16` = `3003`.
- `RAPID_NOT_STOPPED`: `string` = `RAPID has not been stopped`.
- `RC_RAPID_NOT_STOPPED`: `uint16` = `3004`.
- `RAPID_NOT_RUNNING`: `string` = `RAPID is not running`.
- `RC_RAPID_NOT_RUNNING`: `uint16` = `3005`.
- `SM_RUNTIME_STATES_MISSING`: `string` = `No runtime states received for any StateMachine Add-In instance`.
- `RC_SM_RUNTIME_STATES_MISSING`: `uint16` = `4001`.
- `SM_UNKNOWN_RAPID_TASK`: `string` = `RAPID task not found among known StateMachine Add-In instances`.
- `RC_SM_UNKNOWN_RAPID_TASK`: `uint16` = `4002`.
- `SM_UNINITIALIZED`: `string` = `StateMachine Add-In instance has not been initialized`.
- `RC_SM_UNINITIALIZED`: `uint16` = `4003`.

### abb_robot_msgs/SetFileContentsRequest

`Ros1Abb_robot_msgsSetFileContentsRequest`; 8..4616 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `filename` | `string` | scalar  | 512 | `None` |
| `contents` | `string` | scalar  | 4096 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_f764448d9754e9ebc5e5fab64f0c8ebb01c534ec7b95751ed7d58e8ce0bd3012`.

### abb_robot_msgs/SetFileContentsResponse

`Ros1Abb_robot_msgsSetFileContentsResponse`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_3de2a08b8e158e0612898880d6d9c98f1995828eb53bd5639b47f730c6cbefd0`.

### abb_robot_msgs/SetIOSignalRequest

`Ros1Abb_robot_msgsSetIOSignalRequest`; 8..1032 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `signal` | `string` | scalar  | 512 | `None` |
| `value` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_57a0197e2a5de7efd2fc91d945d699be24559baec6651179a1256f1d9d35bbc9`.

### abb_robot_msgs/SetIOSignalResponse

`Ros1Abb_robot_msgsSetIOSignalResponse`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_becc0f844ce6a7fabd8a683175edd8033ba5c943c2de152991755ee112b460e5`.

### abb_robot_msgs/SetRAPIDBoolRequest

`Ros1Abb_robot_msgsSetRAPIDBoolRequest`; 13..205 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `path` | `abb_robot_msgs/RAPIDSymbolPath` | scalar  | 0 | `None` |
| `value` | `bool` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_d8e5420678fe5feeffa20ad9ab8431678ec346f764c94871c4496c62e9dd8e8d`.

### abb_robot_msgs/SetRAPIDBoolResponse

`Ros1Abb_robot_msgsSetRAPIDBoolResponse`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_da2ae1231cb0c1ec452fb2733d5c99dcae78ad0bfd10771241708931b271bf13`.

### abb_robot_msgs/SetRAPIDDnumRequest

`Ros1Abb_robot_msgsSetRAPIDDnumRequest`; 20..212 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `path` | `abb_robot_msgs/RAPIDSymbolPath` | scalar  | 0 | `None` |
| `value` | `float64` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_0f17e3068f86bca6effb99f3bc850234b0163028f372340c450fce31657b9cf9`.

### abb_robot_msgs/SetRAPIDDnumResponse

`Ros1Abb_robot_msgsSetRAPIDDnumResponse`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_1905aed9683e03494baa54627ddbaf4aed0b92357823c0c042f9b7c6a970c8ed`.

### abb_robot_msgs/SetRAPIDNumRequest

`Ros1Abb_robot_msgsSetRAPIDNumRequest`; 16..208 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `path` | `abb_robot_msgs/RAPIDSymbolPath` | scalar  | 0 | `None` |
| `value` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_9982d02cb0b6ee5813f5fb38072d665226b7885aeb90517af881f4fc990f392f`.

### abb_robot_msgs/SetRAPIDNumResponse

`Ros1Abb_robot_msgsSetRAPIDNumResponse`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_af1181242b4afdb6d387d39c24d0bc343e872fb9ab21c0ec1e451785786a4e64`.

### abb_robot_msgs/SetRAPIDStringRequest

`Ros1Abb_robot_msgsSetRAPIDStringRequest`; 16..720 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `path` | `abb_robot_msgs/RAPIDSymbolPath` | scalar  | 0 | `None` |
| `value` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_e06839324f8abfa8780b683386f87bab1ec04f1e6463e63c0599f5c2f8a75f0c`.

### abb_robot_msgs/SetRAPIDStringResponse

`Ros1Abb_robot_msgsSetRAPIDStringResponse`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_e175bdff5a150722b8c50cf2e1c0f28a99289a0b148339efdee4b034ea3b96b4`.

### abb_robot_msgs/SetRAPIDSymbolRequest

`Ros1Abb_robot_msgsSetRAPIDSymbolRequest`; 16..720 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `path` | `abb_robot_msgs/RAPIDSymbolPath` | scalar  | 0 | `None` |
| `value` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_0654a5a8e5ec42f4feab54b086a008e02a74d44df65d2fcf60f007736e3fec7d`.

### abb_robot_msgs/SetRAPIDSymbolResponse

`Ros1Abb_robot_msgsSetRAPIDSymbolResponse`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_a4ca0a8821337d1f16ba1f2ad2b232aceaba419308ca03b27f43dac427a32846`.

### abb_robot_msgs/SetSpeedRatioRequest

`Ros1Abb_robot_msgsSetSpeedRatioRequest`; 1..1 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `speed_ratio` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_a6ac368d243d488901b03d5e4303600d5f0eaf62150801103e5f5f9c0863fab5`.

### abb_robot_msgs/SetSpeedRatioResponse

`Ros1Abb_robot_msgsSetSpeedRatioResponse`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_9775dc1029993d1dfdf5f3080e6ae4262177ba96cdc0fbe9851dc4fea16c70d8`.

### abb_robot_msgs/SystemState

`Ros1Abb_robot_msgsSystemState`; 27..2331 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `header` | `std_msgs/Header` | scalar  | 0 | `None` |
| `motors_on` | `bool` | scalar  | 0 | `None` |
| `auto_mode` | `bool` | scalar  | 0 | `None` |
| `rapid_running` | `bool` | scalar  | 0 | `None` |
| `rapid_tasks` | `abb_robot_msgs/RAPIDTaskState` | sequence 16 | 0 | `None` |
| `mechanical_units` | `abb_robot_msgs/MechanicalUnitState` | sequence 16 | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_b57aa1fdf098aa78c51a96bd2978e02f97cbae67148c0028557d2a3e1e8630f2`.

### abb_robot_msgs/TriggerWithResultCodeRequest

`Ros1Abb_robot_msgsTriggerWithResultCodeRequest`; 0..0 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| — | Empty semantic component; C storage dummy has no wire bytes. | — | — | — |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_999f63504788e522f7d0108a895cf35cd101e9a50856e480ae9edabf791bcf94`.

### abb_robot_msgs/TriggerWithResultCodeResponse

`Ros1Abb_robot_msgsTriggerWithResultCodeResponse`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_4ef5c987592e849766b82b7fd99a65b7a1e17605f3e3341c99803181887967ff`.

### duration

`Ros1Duration`; 8..8 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `sec` | `int32` | scalar  | 0 | `None` |
| `nsec` | `int32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8`.

### trajectory_msgs/JointTrajectoryPoint

`Ros1Trajectory_msgsJointTrajectoryPoint`; 24..408 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `positions` | `float64` | sequence 12 | 0 | `None` |
| `velocities` | `float64` | sequence 12 | 0 | `None` |
| `accelerations` | `float64` | sequence 12 | 0 | `None` |
| `effort` | `float64` | sequence 12 | 0 | `None` |
| `time_from_start` | `duration` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_9773572fff8616235c4d7e23fccbe01f28dcfa62c7c80323a65c8c305feba3c5`.

### trajectory_msgs/JointTrajectory

`Ros1Trajectory_msgsJointTrajectory`; 24..4168 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `header` | `std_msgs/Header` | scalar  | 0 | `None` |
| `joint_names` | `string` | sequence 12 | 64 | `None` |
| `points` | `trajectory_msgs/JointTrajectoryPoint` | sequence 8 | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_079e6c432f0a858d6bd47c87aaf353a8b0676706809e0f984705b1a688de282b`.

### control_msgs/JointTolerance

`Ros1Control_msgsJointTolerance`; 28..92 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `name` | `string` | scalar  | 64 | `None` |
| `position` | `float64` | scalar  | 0 | `None` |
| `velocity` | `float64` | scalar  | 0 | `None` |
| `acceleration` | `float64` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_c9f71f98726d4a6621dcc8db96a394a24941a79d9041c8ad7a07724ee64d3c88`.

### control_msgs/FollowJointTrajectoryGoal

`Ros1Control_msgsFollowJointTrajectoryGoal`; 40..6392 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `trajectory` | `trajectory_msgs/JointTrajectory` | scalar  | 0 | `None` |
| `path_tolerance` | `control_msgs/JointTolerance` | sequence 12 | 0 | `None` |
| `goal_tolerance` | `control_msgs/JointTolerance` | sequence 12 | 0 | `None` |
| `goal_time_tolerance` | `duration` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_e9fda6f9e732450f2cf1af046ceb67815e6e1a22105eda2fee38f8f470252d40`.

### control_msgs/FollowJointTrajectoryResult

`Ros1Control_msgsFollowJointTrajectoryResult`; 8..4104 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `error_code` | `int32` | scalar  | 0 | `None` |
| `error_string` | `string` | scalar  | 4096 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281`.

- `SUCCESSFUL`: `int32` = `0`.
- `INVALID_GOAL`: `int32` = `-1`.
- `INVALID_JOINTS`: `int32` = `-2`.
- `OLD_HEADER_TIMESTAMP`: `int32` = `-3`.
- `PATH_TOLERANCE_VIOLATED`: `int32` = `-4`.
- `GOAL_TOLERANCE_VIOLATED`: `int32` = `-5`.

### control_msgs/FollowJointTrajectoryFeedback

`Ros1Control_msgsFollowJointTrajectoryFeedback`; 92..2124 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `header` | `std_msgs/Header` | scalar  | 0 | `None` |
| `joint_names` | `string` | sequence 12 | 64 | `None` |
| `desired` | `trajectory_msgs/JointTrajectoryPoint` | scalar  | 0 | `None` |
| `actual` | `trajectory_msgs/JointTrajectoryPoint` | scalar  | 0 | `None` |
| `error` | `trajectory_msgs/JointTrajectoryPoint` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_a1ad5a1f8a00b60f97d06209737993bd395d83d1a008705d65193b63933b62a8`.

### sensor_msgs/JointState

`Ros1Sensor_msgsJointState`; 32..1200 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `header` | `std_msgs/Header` | scalar  | 0 | `None` |
| `name` | `string` | sequence 12 | 64 | `None` |
| `position` | `float64` | sequence 12 | 0 | `None` |
| `velocity` | `float64` | sequence 12 | 0 | `None` |
| `effort` | `float64` | sequence 12 | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_8d1bb9c4903dd4b070a5ab157b3590815722d6b574d610c9b9fb5ead8be7a057`.

### Interface components

| Native interface | Kind | Complete roles |
| --- | --- | --- |
| `abb_egm_msgs/EGMChannelState` | message | `message`: `abb_egm_msgs/EGMChannelState` |
| `abb_egm_msgs/EGMState` | message | `message`: `abb_egm_msgs/EGMState` |
| `abb_rapid_msgs/ConfData` | message | `message`: `abb_rapid_msgs/ConfData` |
| `abb_rapid_msgs/ExtJoint` | message | `message`: `abb_rapid_msgs/ExtJoint` |
| `abb_rapid_msgs/JointTarget` | message | `message`: `abb_rapid_msgs/JointTarget` |
| `abb_rapid_msgs/LoadData` | message | `message`: `abb_rapid_msgs/LoadData` |
| `abb_rapid_msgs/Orient` | message | `message`: `abb_rapid_msgs/Orient` |
| `abb_rapid_msgs/Pos` | message | `message`: `abb_rapid_msgs/Pos` |
| `abb_rapid_msgs/Pose` | message | `message`: `abb_rapid_msgs/Pose` |
| `abb_rapid_msgs/RobJoint` | message | `message`: `abb_rapid_msgs/RobJoint` |
| `abb_rapid_msgs/RobTarget` | message | `message`: `abb_rapid_msgs/RobTarget` |
| `abb_rapid_msgs/ToolData` | message | `message`: `abb_rapid_msgs/ToolData` |
| `abb_rapid_msgs/WObjData` | message | `message`: `abb_rapid_msgs/WObjData` |
| `abb_rapid_sm_addin_msgs/EGMActivateSettings` | message | `message`: `abb_rapid_sm_addin_msgs/EGMActivateSettings` |
| `abb_rapid_sm_addin_msgs/EGMRunSettings` | message | `message`: `abb_rapid_sm_addin_msgs/EGMRunSettings` |
| `abb_rapid_sm_addin_msgs/EGMSettings` | message | `message`: `abb_rapid_sm_addin_msgs/EGMSettings` |
| `abb_rapid_sm_addin_msgs/EGMSetupSettings` | message | `message`: `abb_rapid_sm_addin_msgs/EGMSetupSettings` |
| `abb_rapid_sm_addin_msgs/EGMStopSettings` | message | `message`: `abb_rapid_sm_addin_msgs/EGMStopSettings` |
| `abb_rapid_sm_addin_msgs/GetEGMSettings` | service | `request`: `abb_rapid_sm_addin_msgs/GetEGMSettingsRequest`, `response`: `abb_rapid_sm_addin_msgs/GetEGMSettingsResponse` |
| `abb_rapid_sm_addin_msgs/RuntimeState` | message | `message`: `abb_rapid_sm_addin_msgs/RuntimeState` |
| `abb_rapid_sm_addin_msgs/SetEGMSettings` | service | `request`: `abb_rapid_sm_addin_msgs/SetEGMSettingsRequest`, `response`: `abb_rapid_sm_addin_msgs/SetEGMSettingsResponse` |
| `abb_rapid_sm_addin_msgs/SetRAPIDRoutine` | service | `request`: `abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest`, `response`: `abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse` |
| `abb_rapid_sm_addin_msgs/SetSGCommand` | service | `request`: `abb_rapid_sm_addin_msgs/SetSGCommandRequest`, `response`: `abb_rapid_sm_addin_msgs/SetSGCommandResponse` |
| `abb_rapid_sm_addin_msgs/StateMachineState` | message | `message`: `abb_rapid_sm_addin_msgs/StateMachineState` |
| `abb_robot_msgs/GetFileContents` | service | `request`: `abb_robot_msgs/GetFileContentsRequest`, `response`: `abb_robot_msgs/GetFileContentsResponse` |
| `abb_robot_msgs/GetIOSignal` | service | `request`: `abb_robot_msgs/GetIOSignalRequest`, `response`: `abb_robot_msgs/GetIOSignalResponse` |
| `abb_robot_msgs/GetRAPIDBool` | service | `request`: `abb_robot_msgs/GetRAPIDBoolRequest`, `response`: `abb_robot_msgs/GetRAPIDBoolResponse` |
| `abb_robot_msgs/GetRAPIDDnum` | service | `request`: `abb_robot_msgs/GetRAPIDDnumRequest`, `response`: `abb_robot_msgs/GetRAPIDDnumResponse` |
| `abb_robot_msgs/GetRAPIDNum` | service | `request`: `abb_robot_msgs/GetRAPIDNumRequest`, `response`: `abb_robot_msgs/GetRAPIDNumResponse` |
| `abb_robot_msgs/GetRAPIDString` | service | `request`: `abb_robot_msgs/GetRAPIDStringRequest`, `response`: `abb_robot_msgs/GetRAPIDStringResponse` |
| `abb_robot_msgs/GetRAPIDSymbol` | service | `request`: `abb_robot_msgs/GetRAPIDSymbolRequest`, `response`: `abb_robot_msgs/GetRAPIDSymbolResponse` |
| `abb_robot_msgs/GetRobotControllerDescription` | service | `request`: `abb_robot_msgs/GetRobotControllerDescriptionRequest`, `response`: `abb_robot_msgs/GetRobotControllerDescriptionResponse` |
| `abb_robot_msgs/GetSpeedRatio` | service | `request`: `abb_robot_msgs/GetSpeedRatioRequest`, `response`: `abb_robot_msgs/GetSpeedRatioResponse` |
| `abb_robot_msgs/MechanicalUnitState` | message | `message`: `abb_robot_msgs/MechanicalUnitState` |
| `abb_robot_msgs/RAPIDSymbolPath` | message | `message`: `abb_robot_msgs/RAPIDSymbolPath` |
| `abb_robot_msgs/RAPIDTaskState` | message | `message`: `abb_robot_msgs/RAPIDTaskState` |
| `abb_robot_msgs/ServiceResponses` | message | `message`: `abb_robot_msgs/ServiceResponses` |
| `abb_robot_msgs/SetFileContents` | service | `request`: `abb_robot_msgs/SetFileContentsRequest`, `response`: `abb_robot_msgs/SetFileContentsResponse` |
| `abb_robot_msgs/SetIOSignal` | service | `request`: `abb_robot_msgs/SetIOSignalRequest`, `response`: `abb_robot_msgs/SetIOSignalResponse` |
| `abb_robot_msgs/SetRAPIDBool` | service | `request`: `abb_robot_msgs/SetRAPIDBoolRequest`, `response`: `abb_robot_msgs/SetRAPIDBoolResponse` |
| `abb_robot_msgs/SetRAPIDDnum` | service | `request`: `abb_robot_msgs/SetRAPIDDnumRequest`, `response`: `abb_robot_msgs/SetRAPIDDnumResponse` |
| `abb_robot_msgs/SetRAPIDNum` | service | `request`: `abb_robot_msgs/SetRAPIDNumRequest`, `response`: `abb_robot_msgs/SetRAPIDNumResponse` |
| `abb_robot_msgs/SetRAPIDString` | service | `request`: `abb_robot_msgs/SetRAPIDStringRequest`, `response`: `abb_robot_msgs/SetRAPIDStringResponse` |
| `abb_robot_msgs/SetRAPIDSymbol` | service | `request`: `abb_robot_msgs/SetRAPIDSymbolRequest`, `response`: `abb_robot_msgs/SetRAPIDSymbolResponse` |
| `abb_robot_msgs/SetSpeedRatio` | service | `request`: `abb_robot_msgs/SetSpeedRatioRequest`, `response`: `abb_robot_msgs/SetSpeedRatioResponse` |
| `abb_robot_msgs/SystemState` | message | `message`: `abb_robot_msgs/SystemState` |
| `abb_robot_msgs/TriggerWithResultCode` | service | `request`: `abb_robot_msgs/TriggerWithResultCodeRequest`, `response`: `abb_robot_msgs/TriggerWithResultCodeResponse` |
| `control_msgs/FollowJointTrajectory` | action | `goal`: `control_msgs/FollowJointTrajectoryGoal`, `result`: `control_msgs/FollowJointTrajectoryResult`, `feedback`: `control_msgs/FollowJointTrajectoryFeedback` |
| `control_msgs/JointTolerance` | message | `message`: `control_msgs/JointTolerance` |
| `sensor_msgs/JointState` | message | `message`: `sensor_msgs/JointState` |
| `std_msgs/Header` | message | `message`: `std_msgs/Header` |
| `trajectory_msgs/JointTrajectory` | message | `message`: `trajectory_msgs/JointTrajectory` |
| `trajectory_msgs/JointTrajectoryPoint` | message | `message`: `trajectory_msgs/JointTrajectoryPoint` |
## ROS 2

88 complete record components; 63 original interfaces.

### abb_egm_msgs/msg/EGMChannelState

`Ros2Abb_egm_msgsMsgEGMChannelState`; 17..81 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `name` | `string` | scalar  | 64 | `None` |
| `active` | `bool` | scalar  | 0 | `None` |
| `egm_convergence_met` | `bool` | scalar  | 0 | `None` |
| `egm_client_state` | `uint8` | scalar  | 0 | `None` |
| `motor_state` | `uint8` | scalar  | 0 | `None` |
| `rapid_execution_state` | `uint8` | scalar  | 0 | `None` |
| `utilization_rate` | `float64` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_fbd288b93963fccc92aa114570c0a4f6a1fdc5b473cb8e252922720f5d88b519`.

- `EGM_UNDEFINED`: `uint8` = `1`.
- `EGM_ERROR`: `uint8` = `2`.
- `EGM_STOPPED`: `uint8` = `3`.
- `EGM_RUNNING`: `uint8` = `4`.
- `MOTORS_UNDEFINED`: `uint8` = `1`.
- `MOTORS_ON`: `uint8` = `2`.
- `MOTORS_OFF`: `uint8` = `3`.
- `RAPID_UNDEFINED`: `uint8` = `1`.
- `RAPID_STOPPED`: `uint8` = `2`.
- `RAPID_RUNNING`: `uint8` = `3`.

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

### abb_egm_msgs/msg/EGMState

`Ros2Abb_egm_msgsMsgEGMState`; 16..1376 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `header` | `std_msgs/msg/Header` | scalar  | 0 | `None` |
| `egm_channels` | `abb_egm_msgs/msg/EGMChannelState` | sequence 16 | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_5b10efb13c3be7290c7e391d55679a174969887edd1b8baca682edac311a8e5d`.

### abb_rapid_msgs/msg/ConfData

`Ros2Abb_rapid_msgsMsgConfData`; 16..16 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `cf1` | `float32` | scalar  | 0 | `None` |
| `cf4` | `float32` | scalar  | 0 | `None` |
| `cf6` | `float32` | scalar  | 0 | `None` |
| `cfx` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_0c22cc29db62f5001ef20ea7b131de63099e31ac5f150d3e9f0bb62120d60571`.

### abb_rapid_msgs/msg/ExtJoint

`Ros2Abb_rapid_msgsMsgExtJoint`; 24..24 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `eax_a` | `float32` | scalar  | 0 | `None` |
| `eax_b` | `float32` | scalar  | 0 | `None` |
| `eax_c` | `float32` | scalar  | 0 | `None` |
| `eax_d` | `float32` | scalar  | 0 | `None` |
| `eax_e` | `float32` | scalar  | 0 | `None` |
| `eax_f` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_8b799c6bec9e4eab0900a633a93375a7792e49fde0bf302f6752115a001a4ae2`.

### abb_rapid_msgs/msg/RobJoint

`Ros2Abb_rapid_msgsMsgRobJoint`; 24..24 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `rax_1` | `float32` | scalar  | 0 | `None` |
| `rax_2` | `float32` | scalar  | 0 | `None` |
| `rax_3` | `float32` | scalar  | 0 | `None` |
| `rax_4` | `float32` | scalar  | 0 | `None` |
| `rax_5` | `float32` | scalar  | 0 | `None` |
| `rax_6` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_6d842aebc0a3b222a727063a41ef7e96f2b8c14ffbba5c8d6e140ba2890e69cd`.

### abb_rapid_msgs/msg/JointTarget

`Ros2Abb_rapid_msgsMsgJointTarget`; 48..48 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `robax` | `abb_rapid_msgs/msg/RobJoint` | scalar  | 0 | `None` |
| `extax` | `abb_rapid_msgs/msg/ExtJoint` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_5949cf0121391646c1f04b54d8f7deaae0497f4920f7817739fc25bfddc4e540`.

### abb_rapid_msgs/msg/Pos

`Ros2Abb_rapid_msgsMsgPos`; 12..12 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `x` | `float32` | scalar  | 0 | `None` |
| `y` | `float32` | scalar  | 0 | `None` |
| `z` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_31d490d6ead5a1a78295dc4e934f0b89e74e4732da2b57d28d297477bf4cbdd2`.

### abb_rapid_msgs/msg/Orient

`Ros2Abb_rapid_msgsMsgOrient`; 16..16 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `q1` | `float32` | scalar  | 0 | `None` |
| `q2` | `float32` | scalar  | 0 | `None` |
| `q3` | `float32` | scalar  | 0 | `None` |
| `q4` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_821d887b88298422f9466aaf3926db580f878e964055fbd72226b7f76f2f536e`.

### abb_rapid_msgs/msg/LoadData

`Ros2Abb_rapid_msgsMsgLoadData`; 44..44 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `mass` | `float32` | scalar  | 0 | `None` |
| `cog` | `abb_rapid_msgs/msg/Pos` | scalar  | 0 | `None` |
| `aom` | `abb_rapid_msgs/msg/Orient` | scalar  | 0 | `None` |
| `ix` | `float32` | scalar  | 0 | `None` |
| `iy` | `float32` | scalar  | 0 | `None` |
| `iz` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_f73e480a0e6746a4df8f4d62bc123d68d01d3dc48f0bc5f0eac51b859a0750f9`.

### abb_rapid_msgs/msg/Pose

`Ros2Abb_rapid_msgsMsgPose`; 28..28 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `trans` | `abb_rapid_msgs/msg/Pos` | scalar  | 0 | `None` |
| `rot` | `abb_rapid_msgs/msg/Orient` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_8f1535fe21326706fd0b16314857162d36bca91ce8e8f6a8bec3864dafb9e2f2`.

### abb_rapid_msgs/msg/RobTarget

`Ros2Abb_rapid_msgsMsgRobTarget`; 68..68 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `trans` | `abb_rapid_msgs/msg/Pos` | scalar  | 0 | `None` |
| `rot` | `abb_rapid_msgs/msg/Orient` | scalar  | 0 | `None` |
| `robconf` | `abb_rapid_msgs/msg/ConfData` | scalar  | 0 | `None` |
| `extax` | `abb_rapid_msgs/msg/ExtJoint` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_8decb56e8faf0a6a954af974adfea5c500aea8392e6a778ae7394174323489d8`.

### abb_rapid_msgs/msg/ToolData

`Ros2Abb_rapid_msgsMsgToolData`; 73..73 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `robhold` | `bool` | scalar  | 0 | `None` |
| `tframe` | `abb_rapid_msgs/msg/Pose` | scalar  | 0 | `None` |
| `tload` | `abb_rapid_msgs/msg/LoadData` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_948fa0bbaaf95f0d88ca03cad687f16102261f54b0da889ae8bca82042fc5237`.

### abb_rapid_msgs/msg/WObjData

`Ros2Abb_rapid_msgsMsgWObjData`; 62..574 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `robhold` | `bool` | scalar  | 0 | `None` |
| `ufprog` | `bool` | scalar  | 0 | `None` |
| `ufmec` | `string` | scalar  | 512 | `None` |
| `uframe` | `abb_rapid_msgs/msg/Pose` | scalar  | 0 | `None` |
| `oframe` | `abb_rapid_msgs/msg/Pose` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_b36f0448512fab6028431d19b39a8ae31b7b81b2615ffc8311139f63b5d8e7cd`.

### abb_rapid_sm_addin_msgs/msg/EGMActivateSettings

`Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings`; 204..716 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `tool` | `abb_rapid_msgs/msg/ToolData` | scalar  | 0 | `None` |
| `wobj` | `abb_rapid_msgs/msg/WObjData` | scalar  | 0 | `None` |
| `correction_frame` | `abb_rapid_msgs/msg/Pose` | scalar  | 0 | `None` |
| `sensor_frame` | `abb_rapid_msgs/msg/Pose` | scalar  | 0 | `None` |
| `cond_min_max` | `float32` | scalar  | 0 | `None` |
| `lp_filter` | `float32` | scalar  | 0 | `None` |
| `sample_rate` | `uint8` | scalar  | 0 | `None` |
| `max_speed_deviation` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_fce73aea80d9b8a299b8e2ab742602871146b3ebbd624a2e807e25c1ac107cfa`.

### abb_rapid_sm_addin_msgs/msg/EGMRunSettings

`Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings`; 40..40 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `cond_time` | `float32` | scalar  | 0 | `None` |
| `ramp_in_time` | `float32` | scalar  | 0 | `None` |
| `offset` | `abb_rapid_msgs/msg/Pose` | scalar  | 0 | `None` |
| `pos_corr_gain` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_92a2a654eb2eda89077933f955f04ed87884827b8875cf563570eed5d211b0e2`.

### abb_rapid_sm_addin_msgs/msg/EGMSetupSettings

`Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings`; 5..5 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `use_filtering` | `bool` | scalar  | 0 | `None` |
| `comm_timeout` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_2565bed5b83b132c69f37d7294c69181800ad2974ddc54f60868da57e28e782c`.

### abb_rapid_sm_addin_msgs/msg/EGMStopSettings

`Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings`; 4..4 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `ramp_out_time` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_0f3f2f6034567a7d49dd140ff9ff620e8567548139597b9b823e63a947673cee`.

### abb_rapid_sm_addin_msgs/msg/EGMSettings

`Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings`; 255..767 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `allow_egm_motions` | `bool` | scalar  | 0 | `None` |
| `use_presync` | `bool` | scalar  | 0 | `None` |
| `setup_uc` | `abb_rapid_sm_addin_msgs/msg/EGMSetupSettings` | scalar  | 0 | `None` |
| `activate` | `abb_rapid_sm_addin_msgs/msg/EGMActivateSettings` | scalar  | 0 | `None` |
| `run` | `abb_rapid_sm_addin_msgs/msg/EGMRunSettings` | scalar  | 0 | `None` |
| `stop` | `abb_rapid_sm_addin_msgs/msg/EGMStopSettings` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_622d3a975eecb11f7729aecfadc161cada271208d6fe7599f455750b90144ef3`.

### abb_rapid_sm_addin_msgs/msg/StateMachineState

`Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `rapid_task` | `string` | scalar  | 512 | `None` |
| `sm_state` | `uint8` | scalar  | 0 | `None` |
| `egm_action` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_ff2a09e4b6e8ef26cbdc3ecdffdceb33d6b2c82f0d51ed2c38ce9648c6f47711`.

- `SM_STATE_UNKNOWN`: `uint8` = `1`.
- `SM_STATE_IDLE`: `uint8` = `2`.
- `SM_STATE_INITIALIZE`: `uint8` = `3`.
- `SM_STATE_RUN_RAPID_ROUTINE`: `uint8` = `4`.
- `SM_STATE_RUN_EGM_ROUTINE`: `uint8` = `5`.
- `EGM_ACTION_UNKNOWN`: `uint8` = `1`.
- `EGM_ACTION_NONE`: `uint8` = `2`.
- `EGM_ACTION_RUN_JOINT`: `uint8` = `3`.
- `EGM_ACTION_RUN_POSE`: `uint8` = `4`.
- `EGM_ACTION_STOP`: `uint8` = `5`.
- `EGM_ACTION_START_STREAM`: `uint8` = `6`.
- `EGM_ACTION_STOP_STREAM`: `uint8` = `7`.

### abb_rapid_sm_addin_msgs/msg/RuntimeState

`Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState`; 16..8368 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `header` | `std_msgs/msg/Header` | scalar  | 0 | `None` |
| `state_machines` | `abb_rapid_sm_addin_msgs/msg/StateMachineState` | sequence 16 | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_3c0f157544fa82c4e206a4fb42f8ba7f67213d19533f79b77c66dec6fd0460d9`.

### abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request

`Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request`; 4..68 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `task` | `string` | scalar  | 64 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_363be2459fcc9c475c6305cbcfebf7689e891eb27645b7667960aace23d56e8e`.

### abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response

`Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response`; 261..1285 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `settings` | `abb_rapid_sm_addin_msgs/msg/EGMSettings` | scalar  | 0 | `None` |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_d8f340e1c6d78fc0a782c3279efb34ae5e11df175a82f9dd5ee82e603d6b2ffb`.

### abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request

`Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request`; 259..835 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `task` | `string` | scalar  | 64 | `None` |
| `settings` | `abb_rapid_sm_addin_msgs/msg/EGMSettings` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_c2f3dd535e9475526bf18bdffa0e9a839049d315c9aebb150f8561ee3361a2bd`.

### abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response

`Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_6a1adeebe31dfe101a6d57019e26ee2f1144b9a6ce30aee08d4c6fe56ea6838d`.

### abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request

`Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request`; 8..584 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `task` | `string` | scalar  | 64 | `None` |
| `routine` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_4561b7e5e296a1a329d5f5684bcbde1ef41324554a34e9a79a85824286dd477c`.

### abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response

`Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_980d2a16536289f446161acdf2fc57d459baa2290d74f1dd5aaf8129126cbba1`.

### abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request

`Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request`; 9..73 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `task` | `string` | scalar  | 64 | `None` |
| `command` | `uint8` | scalar  | 0 | `None` |
| `target_position` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_5d6983aa85c2c52f8ec06cbd723d5929cfc381db2e0bfffb4c27078497d86c90`.

- `SG_COMMAND_UNKNOWN`: `uint8` = `1`.
- `SG_COMMAND_NONE`: `uint8` = `2`.
- `SG_COMMAND_INITIALIZE`: `uint8` = `3`.
- `SG_COMMAND_CALIBRATE`: `uint8` = `4`.
- `SG_COMMAND_MOVE_TO`: `uint8` = `5`.
- `SG_COMMAND_GRIP_IN`: `uint8` = `6`.
- `SG_COMMAND_GRIP_OUT`: `uint8` = `7`.
- `SG_COMMAND_BLOW_ON_1`: `uint8` = `8`.
- `SG_COMMAND_BLOW_ON_2`: `uint8` = `9`.
- `SG_COMMAND_BLOW_OFF_1`: `uint8` = `10`.
- `SG_COMMAND_BLOW_OFF_2`: `uint8` = `11`.
- `SG_COMMAND_VACUUM_ON_1`: `uint8` = `12`.
- `SG_COMMAND_VACUUM_ON_2`: `uint8` = `13`.
- `SG_COMMAND_VACUUM_OFF_1`: `uint8` = `14`.
- `SG_COMMAND_VACUUM_OFF_2`: `uint8` = `15`.

### abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response

`Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_87cdc41c81d49930dce7193d4b7af98add266a6e9a7cf5e69457d01ded388cf8`.

### abb_robot_msgs/msg/MechanicalUnitState

`Ros2Abb_robot_msgsMsgMechanicalUnitState`; 5..69 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `name` | `string` | scalar  | 64 | `None` |
| `activated` | `bool` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_1dc7a7dcbaa19e78cd6419f8844287a7fbd9d7a839ab1a8ad97ef0be34f3a3a8`.

### abb_robot_msgs/msg/RAPIDSymbolPath

`Ros2Abb_robot_msgsMsgRAPIDSymbolPath`; 12..204 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `task` | `string` | scalar  | 64 | `None` |
| `module` | `string` | scalar  | 64 | `None` |
| `symbol` | `string` | scalar  | 64 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_249523197567fbf638f30487a7f5b8d8ff5ea746fcd4a65a35f2dbb18a3adf0e`.

### abb_robot_msgs/msg/RAPIDTaskState

`Ros2Abb_robot_msgsMsgRAPIDTaskState`; 7..71 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `name` | `string` | scalar  | 64 | `None` |
| `activated` | `bool` | scalar  | 0 | `None` |
| `execution_state` | `uint8` | scalar  | 0 | `None` |
| `motion_task` | `bool` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_ff698e375b0ff33026cfd248c1ac734f939763aba25a6c4f7cac628d445422fd`.

- `EXECUTION_STATE_UNKNOWN`: `uint8` = `1`.
- `EXECUTION_STATE_READY`: `uint8` = `2`.
- `EXECUTION_STATE_STOPPED`: `uint8` = `3`.
- `EXECUTION_STATE_STARTED`: `uint8` = `4`.
- `EXECUTION_STATE_UNINITIALIZED`: `uint8` = `5`.

### abb_robot_msgs/msg/ServiceResponses

`Ros2Abb_robot_msgsMsgServiceResponses`; 0..0 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| — | Empty semantic component; C storage dummy has no wire bytes. | — | — | — |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_4e01b972b67454e851801f28aee09c0774b67907d2241cc67cae7d045c18f646`.

- `SUCCESS`: `string` = ``.
- `RC_SUCCESS`: `uint16` = `1`.
- `FAILED`: `string` = `Service failed (e.g. timeout or resource not found, see the DEBUG log for details)`.
- `RC_FAILED`: `uint16` = `2`.
- `SERVER_IS_BUSY`: `string` = `Server is busy`.
- `RC_SERVER_IS_BUSY`: `uint16` = `1001`.
- `EMPTY_FILENAME`: `string` = `Filename is empty`.
- `RC_EMPTY_FILENAME`: `uint16` = `2001`.
- `EMPTY_SIGNAL_NAME`: `string` = `Signal name is empty`.
- `RC_EMPTY_SIGNAL_NAME`: `uint16` = `2002`.
- `EMPTY_RAPID_TASK_NAME`: `string` = `RAPID task name is empty`.
- `RC_EMPTY_RAPID_TASK_NAME`: `uint16` = `2003`.
- `EMPTY_RAPID_MODULE_NAME`: `string` = `RAPID module name is empty`.
- `RC_EMPTY_RAPID_MODULE_NAME`: `uint16` = `2004`.
- `EMPTY_RAPID_SYMBOL_NAME`: `string` = `RAPID symbol name is empty`.
- `RC_EMPTY_RAPID_SYMBOL_NAME`: `uint16` = `2005`.
- `NOT_IN_AUTO_MODE`: `string` = `Robot controller is not in AUTO mode`.
- `RC_NOT_IN_AUTO_MODE`: `uint16` = `3001`.
- `MOTORS_ARE_OFF`: `string` = `Motors are off`.
- `RC_MOTORS_ARE_OFF`: `uint16` = `3002`.
- `MOTORS_ARE_ON`: `string` = `Motors are on`.
- `RC_MOTORS_ARE_ON`: `uint16` = `3003`.
- `RAPID_NOT_STOPPED`: `string` = `RAPID has not been stopped`.
- `RC_RAPID_NOT_STOPPED`: `uint16` = `3004`.
- `RAPID_NOT_RUNNING`: `string` = `RAPID is not running`.
- `RC_RAPID_NOT_RUNNING`: `uint16` = `3005`.
- `SM_RUNTIME_STATES_MISSING`: `string` = `No runtime states received for any StateMachine Add-In instance`.
- `RC_SM_RUNTIME_STATES_MISSING`: `uint16` = `4001`.
- `SM_UNKNOWN_RAPID_TASK`: `string` = `RAPID task not found among known StateMachine Add-In instances`.
- `RC_SM_UNKNOWN_RAPID_TASK`: `uint16` = `4002`.
- `SM_UNINITIALIZED`: `string` = `StateMachine Add-In instance has not been initialized`.
- `RC_SM_UNINITIALIZED`: `uint16` = `4003`.

### abb_robot_msgs/msg/SystemState

`Ros2Abb_robot_msgsMsgSystemState`; 23..2327 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `header` | `std_msgs/msg/Header` | scalar  | 0 | `None` |
| `motors_on` | `bool` | scalar  | 0 | `None` |
| `auto_mode` | `bool` | scalar  | 0 | `None` |
| `rapid_running` | `bool` | scalar  | 0 | `None` |
| `rapid_tasks` | `abb_robot_msgs/msg/RAPIDTaskState` | sequence 16 | 0 | `None` |
| `mechanical_units` | `abb_robot_msgs/msg/MechanicalUnitState` | sequence 16 | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_c1cdbf0e578fddc5bf70cc2cc181d786f3e8189afc6a67962de6eb273973a38f`.

### abb_robot_msgs/srv/GetFileContents_Request

`Ros2Abb_robot_msgsSrvGetFileContents_Request`; 4..516 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `filename` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_bdcf73a965bd05356e48019b74d633176fdeda62452bc7185d6b6ff30576016b`.

### abb_robot_msgs/srv/GetFileContents_Response

`Ros2Abb_robot_msgsSrvGetFileContents_Response`; 10..4618 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `contents` | `string` | scalar  | 4096 | `None` |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_f05617145a40043e87cbc251f833274d2a962bd7cdaabc5f9a8e4591bd56e107`.

### abb_robot_msgs/srv/GetIOSignal_Request

`Ros2Abb_robot_msgsSrvGetIOSignal_Request`; 4..516 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `signal` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_2406d53c2fce44e72ad7e6f1c9e75ea19c4df694ff9f00917229ec758209b1f5`.

### abb_robot_msgs/srv/GetIOSignal_Response

`Ros2Abb_robot_msgsSrvGetIOSignal_Response`; 10..1034 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `value` | `string` | scalar  | 512 | `None` |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_1f668ef78c353f2ec8defdac619d349cda731576f2429cf07107b9b56ba9030e`.

### abb_robot_msgs/srv/GetRAPIDBool_Request

`Ros2Abb_robot_msgsSrvGetRAPIDBool_Request`; 12..204 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `path` | `abb_robot_msgs/msg/RAPIDSymbolPath` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_c381080d235c78216a8e64275819ff3fb97e1b1de96e7da758c4889630b8e0ff`.

### abb_robot_msgs/srv/GetRAPIDBool_Response

`Ros2Abb_robot_msgsSrvGetRAPIDBool_Response`; 7..519 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `value` | `bool` | scalar  | 0 | `None` |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_b853e212489fb815866fa29b165eea474a977483158b6203699c4a1293aa6acd`.

### abb_robot_msgs/srv/GetRAPIDDnum_Request

`Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request`; 12..204 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `path` | `abb_robot_msgs/msg/RAPIDSymbolPath` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_71057c2fe44bc96505ec6e05d998fcb6323b281fff40808ce990207c48626979`.

### abb_robot_msgs/srv/GetRAPIDDnum_Response

`Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response`; 14..526 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `value` | `float64` | scalar  | 0 | `None` |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_af0420c126368a7e45b728c7fef76062b5ef2f0adea7535ad38e4771244edd56`.

### abb_robot_msgs/srv/GetRAPIDNum_Request

`Ros2Abb_robot_msgsSrvGetRAPIDNum_Request`; 12..204 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `path` | `abb_robot_msgs/msg/RAPIDSymbolPath` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_03d5da34af8d90ed8a20f8ca38fa75d9e777496828978f0f348e3c1c8f67d0a5`.

### abb_robot_msgs/srv/GetRAPIDNum_Response

`Ros2Abb_robot_msgsSrvGetRAPIDNum_Response`; 10..522 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `value` | `float32` | scalar  | 0 | `None` |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_a0da03014dd001e58efc4a5b274cd5c62016e7fa257af1120a8142a79635220d`.

### abb_robot_msgs/srv/GetRAPIDString_Request

`Ros2Abb_robot_msgsSrvGetRAPIDString_Request`; 12..204 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `path` | `abb_robot_msgs/msg/RAPIDSymbolPath` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_c7bc9c788301e619a165c18a1cdb0aca80df8def5be31da5dbf34c0038e73596`.

### abb_robot_msgs/srv/GetRAPIDString_Response

`Ros2Abb_robot_msgsSrvGetRAPIDString_Response`; 10..1034 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `value` | `string` | scalar  | 512 | `None` |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_cf7bfdb2af5b91eb58b19b909f7fa3357dc1dad02716f8fa4465b53f3f4a1458`.

### abb_robot_msgs/srv/GetRAPIDSymbol_Request

`Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request`; 12..204 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `path` | `abb_robot_msgs/msg/RAPIDSymbolPath` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_e216a54cdae70f8147489928ff05a4b172ba4fc47e9ed5df4828b070354ac469`.

### abb_robot_msgs/srv/GetRAPIDSymbol_Response

`Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response`; 10..1034 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `value` | `string` | scalar  | 512 | `None` |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_b1f6de7ad0640f5645678d327804dc7e732bdad38805e642b13ed7294c21d602`.

### abb_robot_msgs/srv/GetRobotControllerDescription_Request

`Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request`; 0..0 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| — | Empty semantic component; C storage dummy has no wire bytes. | — | — | — |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_caf70e11b386a933f62d06a433ca1cedaa3c8ecc75b7e8de8c1d5ae00a29f03e`.

### abb_robot_msgs/srv/GetRobotControllerDescription_Response

`Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response`; 10..4618 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `description` | `string` | scalar  | 4096 | `None` |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_1af2591f035379597f376ed1e2343f73a89f9fef5c29269aa420243a82e6c368`.

### abb_robot_msgs/srv/GetSpeedRatio_Request

`Ros2Abb_robot_msgsSrvGetSpeedRatio_Request`; 0..0 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| — | Empty semantic component; C storage dummy has no wire bytes. | — | — | — |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_54ee2c897e2bf2f39c96cc42246ffe5997c8df280280433e8748b3bcf24c299c`.

### abb_robot_msgs/srv/GetSpeedRatio_Response

`Ros2Abb_robot_msgsSrvGetSpeedRatio_Response`; 7..519 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `speed_ratio` | `uint8` | scalar  | 0 | `None` |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_baa271a258c7ca274e0145fea1abb7cbc43e98c82b8e40d67c4743237a19910b`.

### abb_robot_msgs/srv/SetFileContents_Request

`Ros2Abb_robot_msgsSrvSetFileContents_Request`; 8..4616 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `filename` | `string` | scalar  | 512 | `None` |
| `contents` | `string` | scalar  | 4096 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_3bfa8ad1846fc31acae47a875d3555a78a64b777923eb9b62e87a836f041b26b`.

### abb_robot_msgs/srv/SetFileContents_Response

`Ros2Abb_robot_msgsSrvSetFileContents_Response`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_1586344401d43055460b49f2487567638f66838cfe5cac99a47e0a39c0b06ede`.

### abb_robot_msgs/srv/SetIOSignal_Request

`Ros2Abb_robot_msgsSrvSetIOSignal_Request`; 8..1032 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `signal` | `string` | scalar  | 512 | `None` |
| `value` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_2d206d0020179263e83e745a428616ed53d809b0c65a79ad495cb882ae9e49b7`.

### abb_robot_msgs/srv/SetIOSignal_Response

`Ros2Abb_robot_msgsSrvSetIOSignal_Response`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_1fa28cc3160d51f71d0740cbe145663ec360d6fa488c2a6bf14ad6ab92004a75`.

### abb_robot_msgs/srv/SetRAPIDBool_Request

`Ros2Abb_robot_msgsSrvSetRAPIDBool_Request`; 13..205 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `path` | `abb_robot_msgs/msg/RAPIDSymbolPath` | scalar  | 0 | `None` |
| `value` | `bool` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_4e707e429acc860d032d216bcd2c1eb1a0f731fad7e7c0bef7beed810c6e4a52`.

### abb_robot_msgs/srv/SetRAPIDBool_Response

`Ros2Abb_robot_msgsSrvSetRAPIDBool_Response`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_80d2b31c93771cfa8a19ff82a3d9d63951bf9d28c039d2725017327fa3b0114a`.

### abb_robot_msgs/srv/SetRAPIDDnum_Request

`Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request`; 20..212 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `path` | `abb_robot_msgs/msg/RAPIDSymbolPath` | scalar  | 0 | `None` |
| `value` | `float64` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_cece086311a908f12c0b0ab3988ca829e891749c74687c717d2a52bfb8ceaf76`.

### abb_robot_msgs/srv/SetRAPIDDnum_Response

`Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_e5f77fe9850f109d873a2784b9690c8aa0632b9e91d158ed4d14daf1aaf90ea6`.

### abb_robot_msgs/srv/SetRAPIDNum_Request

`Ros2Abb_robot_msgsSrvSetRAPIDNum_Request`; 16..208 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `path` | `abb_robot_msgs/msg/RAPIDSymbolPath` | scalar  | 0 | `None` |
| `value` | `float32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_a5bee9a64be69dc4246f68837a44362f52795ae3c6420a2df47685606283ea02`.

### abb_robot_msgs/srv/SetRAPIDNum_Response

`Ros2Abb_robot_msgsSrvSetRAPIDNum_Response`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_744f3c5fac58ff098c96cedcea94fe6fa87c88ceb89674449f50fbdcd1ca30bb`.

### abb_robot_msgs/srv/SetRAPIDString_Request

`Ros2Abb_robot_msgsSrvSetRAPIDString_Request`; 16..720 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `path` | `abb_robot_msgs/msg/RAPIDSymbolPath` | scalar  | 0 | `None` |
| `value` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_f21c45f3f8cd4c0b50781bdd487fdc6ec0c0b35adbc7e36e9ca5b7cc47c3d461`.

### abb_robot_msgs/srv/SetRAPIDString_Response

`Ros2Abb_robot_msgsSrvSetRAPIDString_Response`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_1496ef4f4ffe48fe74b9e25b925c19f10f0e171a9d33fa2e56c15aa5cfbe4774`.

### abb_robot_msgs/srv/SetRAPIDSymbol_Request

`Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request`; 16..720 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `path` | `abb_robot_msgs/msg/RAPIDSymbolPath` | scalar  | 0 | `None` |
| `value` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_928d427801b79775595fed6e3779f9ba9e7e8e27f2de66cf79610cb51bb72bcf`.

### abb_robot_msgs/srv/SetRAPIDSymbol_Response

`Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_e156616a51bf4691a1c3853d62a8b0c43bb17d1a330cd4e7a58eceb5fe442382`.

### abb_robot_msgs/srv/SetSpeedRatio_Request

`Ros2Abb_robot_msgsSrvSetSpeedRatio_Request`; 1..1 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `speed_ratio` | `uint8` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_da30970377ba1bc151b544560773f02e17f4eaed56eb4c8d791de72bdef04355`.

### abb_robot_msgs/srv/SetSpeedRatio_Response

`Ros2Abb_robot_msgsSrvSetSpeedRatio_Response`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_25e6d7edaa0503a4d45d893e886db4215bfd0af8711307c141bc63552609e3a5`.

### abb_robot_msgs/srv/TriggerWithResultCode_Request

`Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request`; 0..0 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| — | Empty semantic component; C storage dummy has no wire bytes. | — | — | — |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_fd1d49c3b4e489464c6662f306210137f71d15192f64cd8a8abf93acd5fbff8d`.

### abb_robot_msgs/srv/TriggerWithResultCode_Response

`Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response`; 6..518 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `result_code` | `uint16` | scalar  | 0 | `None` |
| `message` | `string` | scalar  | 512 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_e38422b2a008f07e108505ac3ce65c24189a1d6657e88a6289e17d7d4ae38d51`.

### builtin_interfaces/msg/Duration

`Ros2Builtin_interfacesMsgDuration`; 8..8 bytes.

| Field | Original type | Shape/count | String byte bound | Native default |
| --- | --- | --- | --- | --- |
| `sec` | `int32` | scalar  | 0 | `None` |
| `nanosec` | `uint32` | scalar  | 0 | `None` |

Native identity: unbound; requires a real native exporter.

Codec: `UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4`.

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
| `abb_egm_msgs/msg/EGMChannelState` | message | `message`: `abb_egm_msgs/msg/EGMChannelState` |
| `abb_egm_msgs/msg/EGMState` | message | `message`: `abb_egm_msgs/msg/EGMState` |
| `abb_rapid_msgs/msg/ConfData` | message | `message`: `abb_rapid_msgs/msg/ConfData` |
| `abb_rapid_msgs/msg/ExtJoint` | message | `message`: `abb_rapid_msgs/msg/ExtJoint` |
| `abb_rapid_msgs/msg/JointTarget` | message | `message`: `abb_rapid_msgs/msg/JointTarget` |
| `abb_rapid_msgs/msg/LoadData` | message | `message`: `abb_rapid_msgs/msg/LoadData` |
| `abb_rapid_msgs/msg/Orient` | message | `message`: `abb_rapid_msgs/msg/Orient` |
| `abb_rapid_msgs/msg/Pos` | message | `message`: `abb_rapid_msgs/msg/Pos` |
| `abb_rapid_msgs/msg/Pose` | message | `message`: `abb_rapid_msgs/msg/Pose` |
| `abb_rapid_msgs/msg/RobJoint` | message | `message`: `abb_rapid_msgs/msg/RobJoint` |
| `abb_rapid_msgs/msg/RobTarget` | message | `message`: `abb_rapid_msgs/msg/RobTarget` |
| `abb_rapid_msgs/msg/ToolData` | message | `message`: `abb_rapid_msgs/msg/ToolData` |
| `abb_rapid_msgs/msg/WObjData` | message | `message`: `abb_rapid_msgs/msg/WObjData` |
| `abb_rapid_sm_addin_msgs/msg/EGMActivateSettings` | message | `message`: `abb_rapid_sm_addin_msgs/msg/EGMActivateSettings` |
| `abb_rapid_sm_addin_msgs/msg/EGMRunSettings` | message | `message`: `abb_rapid_sm_addin_msgs/msg/EGMRunSettings` |
| `abb_rapid_sm_addin_msgs/msg/EGMSettings` | message | `message`: `abb_rapid_sm_addin_msgs/msg/EGMSettings` |
| `abb_rapid_sm_addin_msgs/msg/EGMSetupSettings` | message | `message`: `abb_rapid_sm_addin_msgs/msg/EGMSetupSettings` |
| `abb_rapid_sm_addin_msgs/msg/EGMStopSettings` | message | `message`: `abb_rapid_sm_addin_msgs/msg/EGMStopSettings` |
| `abb_rapid_sm_addin_msgs/msg/RuntimeState` | message | `message`: `abb_rapid_sm_addin_msgs/msg/RuntimeState` |
| `abb_rapid_sm_addin_msgs/msg/StateMachineState` | message | `message`: `abb_rapid_sm_addin_msgs/msg/StateMachineState` |
| `abb_rapid_sm_addin_msgs/srv/GetEGMSettings` | service | `request`: `abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request`, `response`: `abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response` |
| `abb_rapid_sm_addin_msgs/srv/SetEGMSettings` | service | `request`: `abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request`, `response`: `abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response` |
| `abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine` | service | `request`: `abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request`, `response`: `abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response` |
| `abb_rapid_sm_addin_msgs/srv/SetSGCommand` | service | `request`: `abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request`, `response`: `abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response` |
| `abb_robot_msgs/msg/MechanicalUnitState` | message | `message`: `abb_robot_msgs/msg/MechanicalUnitState` |
| `abb_robot_msgs/msg/RAPIDSymbolPath` | message | `message`: `abb_robot_msgs/msg/RAPIDSymbolPath` |
| `abb_robot_msgs/msg/RAPIDTaskState` | message | `message`: `abb_robot_msgs/msg/RAPIDTaskState` |
| `abb_robot_msgs/msg/ServiceResponses` | message | `message`: `abb_robot_msgs/msg/ServiceResponses` |
| `abb_robot_msgs/msg/SystemState` | message | `message`: `abb_robot_msgs/msg/SystemState` |
| `abb_robot_msgs/srv/GetFileContents` | service | `request`: `abb_robot_msgs/srv/GetFileContents_Request`, `response`: `abb_robot_msgs/srv/GetFileContents_Response` |
| `abb_robot_msgs/srv/GetIOSignal` | service | `request`: `abb_robot_msgs/srv/GetIOSignal_Request`, `response`: `abb_robot_msgs/srv/GetIOSignal_Response` |
| `abb_robot_msgs/srv/GetRAPIDBool` | service | `request`: `abb_robot_msgs/srv/GetRAPIDBool_Request`, `response`: `abb_robot_msgs/srv/GetRAPIDBool_Response` |
| `abb_robot_msgs/srv/GetRAPIDDnum` | service | `request`: `abb_robot_msgs/srv/GetRAPIDDnum_Request`, `response`: `abb_robot_msgs/srv/GetRAPIDDnum_Response` |
| `abb_robot_msgs/srv/GetRAPIDNum` | service | `request`: `abb_robot_msgs/srv/GetRAPIDNum_Request`, `response`: `abb_robot_msgs/srv/GetRAPIDNum_Response` |
| `abb_robot_msgs/srv/GetRAPIDString` | service | `request`: `abb_robot_msgs/srv/GetRAPIDString_Request`, `response`: `abb_robot_msgs/srv/GetRAPIDString_Response` |
| `abb_robot_msgs/srv/GetRAPIDSymbol` | service | `request`: `abb_robot_msgs/srv/GetRAPIDSymbol_Request`, `response`: `abb_robot_msgs/srv/GetRAPIDSymbol_Response` |
| `abb_robot_msgs/srv/GetRobotControllerDescription` | service | `request`: `abb_robot_msgs/srv/GetRobotControllerDescription_Request`, `response`: `abb_robot_msgs/srv/GetRobotControllerDescription_Response` |
| `abb_robot_msgs/srv/GetSpeedRatio` | service | `request`: `abb_robot_msgs/srv/GetSpeedRatio_Request`, `response`: `abb_robot_msgs/srv/GetSpeedRatio_Response` |
| `abb_robot_msgs/srv/SetFileContents` | service | `request`: `abb_robot_msgs/srv/SetFileContents_Request`, `response`: `abb_robot_msgs/srv/SetFileContents_Response` |
| `abb_robot_msgs/srv/SetIOSignal` | service | `request`: `abb_robot_msgs/srv/SetIOSignal_Request`, `response`: `abb_robot_msgs/srv/SetIOSignal_Response` |
| `abb_robot_msgs/srv/SetRAPIDBool` | service | `request`: `abb_robot_msgs/srv/SetRAPIDBool_Request`, `response`: `abb_robot_msgs/srv/SetRAPIDBool_Response` |
| `abb_robot_msgs/srv/SetRAPIDDnum` | service | `request`: `abb_robot_msgs/srv/SetRAPIDDnum_Request`, `response`: `abb_robot_msgs/srv/SetRAPIDDnum_Response` |
| `abb_robot_msgs/srv/SetRAPIDNum` | service | `request`: `abb_robot_msgs/srv/SetRAPIDNum_Request`, `response`: `abb_robot_msgs/srv/SetRAPIDNum_Response` |
| `abb_robot_msgs/srv/SetRAPIDString` | service | `request`: `abb_robot_msgs/srv/SetRAPIDString_Request`, `response`: `abb_robot_msgs/srv/SetRAPIDString_Response` |
| `abb_robot_msgs/srv/SetRAPIDSymbol` | service | `request`: `abb_robot_msgs/srv/SetRAPIDSymbol_Request`, `response`: `abb_robot_msgs/srv/SetRAPIDSymbol_Response` |
| `abb_robot_msgs/srv/SetSpeedRatio` | service | `request`: `abb_robot_msgs/srv/SetSpeedRatio_Request`, `response`: `abb_robot_msgs/srv/SetSpeedRatio_Response` |
| `abb_robot_msgs/srv/TriggerWithResultCode` | service | `request`: `abb_robot_msgs/srv/TriggerWithResultCode_Request`, `response`: `abb_robot_msgs/srv/TriggerWithResultCode_Response` |
| `builtin_interfaces/msg/Duration` | message | `message`: `builtin_interfaces/msg/Duration` |
| `builtin_interfaces/msg/Time` | message | `message`: `builtin_interfaces/msg/Time` |
| `control_msgs/action/FollowJointTrajectory` | action | `goal`: `control_msgs/action/FollowJointTrajectory_Goal`, `result`: `control_msgs/action/FollowJointTrajectory_Result`, `feedback`: `control_msgs/action/FollowJointTrajectory_Feedback` |
| `control_msgs/msg/JointComponentTolerance` | message | `message`: `control_msgs/msg/JointComponentTolerance` |
| `control_msgs/msg/JointTolerance` | message | `message`: `control_msgs/msg/JointTolerance` |
| `geometry_msgs/msg/Quaternion` | message | `message`: `geometry_msgs/msg/Quaternion` |
| `geometry_msgs/msg/Transform` | message | `message`: `geometry_msgs/msg/Transform` |
| `geometry_msgs/msg/Twist` | message | `message`: `geometry_msgs/msg/Twist` |
| `geometry_msgs/msg/Vector3` | message | `message`: `geometry_msgs/msg/Vector3` |
| `sensor_msgs/msg/JointState` | message | `message`: `sensor_msgs/msg/JointState` |
| `std_msgs/msg/Header` | message | `message`: `std_msgs/msg/Header` |
| `std_srvs/srv/Trigger` | service | `request`: `std_srvs/srv/Trigger_Request`, `response`: `std_srvs/srv/Trigger_Response` |
| `trajectory_msgs/msg/JointTrajectory` | message | `message`: `trajectory_msgs/msg/JointTrajectory` |
| `trajectory_msgs/msg/JointTrajectoryPoint` | message | `message`: `trajectory_msgs/msg/JointTrajectoryPoint` |
| `trajectory_msgs/msg/MultiDOFJointTrajectory` | message | `message`: `trajectory_msgs/msg/MultiDOFJointTrajectory` |
| `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | message | `message`: `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` |
