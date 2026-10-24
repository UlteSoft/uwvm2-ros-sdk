# trossen complete API catalog

This index preserves original declarations, field order, widths, constants, defaults and SDK quotas. A codec identity is separate from a native ROS registry identity. Actual acceptance is recorded in the delivery coverage.json.

## ros1_main

ros1: 61 records, 23 services, 0 actions.

Catalog: `share/platform/trossen/catalogs/ros1_main/catalog.json`. Source pins: `source-lock.json`.

Upstream witnesses: `{'repository': 'Interbotix/interbotix_ros_core', 'branch': 'main', 'commit': '172841ffa93f7556fff9c7455ad0e77688fa156e'}`.

### interbotix_slate_msgs/SetStringRequest

`Ros1Interbotix_slate_msgsSetStringRequest`; 4..132 canonical bytes. `UWVMROS1_bc58f043e73f33d5b3923bca8a1d515f62f405f3365b83adb17311a728d2f105`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| data | string | scalar | 128 | None |

### interbotix_slate_msgs/SetStringResponse

`Ros1Interbotix_slate_msgsSetStringResponse`; 5..133 canonical bytes. `UWVMROS1_6f3a05dbee380f0a0f5b24b75833a99857293e656d705e4322b4b3f97a5e530c`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | 0 | None |
| message | string | scalar | 128 | None |

### interbotix_xs_msgs/ArmJoy

`Ros1Interbotix_xs_msgsArmJoy`; 12..12 canonical bytes. `UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ee_x_cmd | int8 | scalar | 0 | None |
| ee_y_cmd | int8 | scalar | 0 | None |
| ee_z_cmd | int8 | scalar | 0 | None |
| ee_roll_cmd | int8 | scalar | 0 | None |
| ee_pitch_cmd | int8 | scalar | 0 | None |
| waist_cmd | int8 | scalar | 0 | None |
| gripper_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |
| gripper_pwm_cmd | int8 | scalar | 0 | None |
| torque_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `EE_X_INC` (int8): `1`
- `EE_X_DEC` (int8): `2`
- `EE_Y_INC` (int8): `3`
- `EE_Y_DEC` (int8): `4`
- `EE_Z_INC` (int8): `5`
- `EE_Z_DEC` (int8): `6`
- `EE_ROLL_CCW` (int8): `7`
- `EE_ROLL_CW` (int8): `8`
- `EE_PITCH_UP` (int8): `9`
- `EE_PITCH_DOWN` (int8): `10`
- `WAIST_CCW` (int8): `11`
- `WAIST_CW` (int8): `12`
- `GRIPPER_OPEN` (int8): `13`
- `GRIPPER_CLOSE` (int8): `14`
- `HOME_POSE` (int8): `15`
- `SLEEP_POSE` (int8): `16`
- `SPEED_INC` (int8): `17`
- `SPEED_DEC` (int8): `18`
- `SPEED_COURSE` (int8): `19`
- `SPEED_FINE` (int8): `20`
- `GRIPPER_PWM_INC` (int8): `21`
- `GRIPPER_PWM_DEC` (int8): `22`
- `TORQUE_ON` (int8): `23`
- `TORQUE_OFF` (int8): `24`

### interbotix_xs_msgs/HexJoy

`Ros1Interbotix_xs_msgsHexJoy`; 17..17 canonical bytes. `UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| world_x_cmd | int8 | scalar | 0 | None |
| world_y_cmd | int8 | scalar | 0 | None |
| world_yaw_cmd | int8 | scalar | 0 | None |
| place_x_cmd | int8 | scalar | 0 | None |
| place_y_cmd | int8 | scalar | 0 | None |
| place_z_cmd | int8 | scalar | 0 | None |
| place_roll_cmd | int8 | scalar | 0 | None |
| place_pitch_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| move_type_cmd | int8 | scalar | 0 | None |
| gait_toggle_cmd | int8 | scalar | 0 | None |
| leg_toggle_cmd | int8 | scalar | 0 | None |
| stance_cmd | int8 | scalar | 0 | None |
| reboot_cmd | int8 | scalar | 0 | None |
| set_home_pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `WORLD_X_INC` (int8): `1`
- `WORLD_X_DEC` (int8): `2`
- `WORLD_Y_INC` (int8): `3`
- `WORLD_Y_DEC` (int8): `4`
- `WORLD_YAW_CCW` (int8): `5`
- `WORLD_YAW_CW` (int8): `6`
- `PLACE_X_INC` (int8): `7`
- `PLACE_X_DEC` (int8): `8`
- `PLACE_Y_INC` (int8): `9`
- `PLACE_Y_DEC` (int8): `10`
- `PLACE_Z_INC` (int8): `11`
- `PLACE_Z_DEC` (int8): `12`
- `PLACE_ROLL_CCW` (int8): `13`
- `PLACE_ROLL_CW` (int8): `14`
- `PLACE_PITCH_UP` (int8): `15`
- `PLACE_PITCH_DOWN` (int8): `16`
- `MOVE_HEXAPOD` (int8): `17`
- `MOVE_LEG` (int8): `18`
- `HOME_POSE` (int8): `19`
- `SLEEP_POSE` (int8): `20`
- `GAIT_NEXT` (int8): `21`
- `GAIT_PREVIOUS` (int8): `22`
- `LEG_NEXT` (int8): `23`
- `LEG_PREVIOUS` (int8): `24`
- `WIDEN_STANCE` (int8): `25`
- `NARROW_STANCE` (int8): `26`
- `REBOOT_MOTORS` (int8): `27`
- `SET_HOME_POSE` (int8): `28`
- `SPEED_INC` (int8): `29`
- `SPEED_DEC` (int8): `30`
- `SPEED_COURSE` (int8): `31`
- `SPEED_FINE` (int8): `32`

### interbotix_xs_msgs/JointGroupCommand

`Ros1Interbotix_xs_msgsJointGroupCommand`; 8..392 canonical bytes. `UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | None |
| cmd | float32 | sequence/64 | 0 | None |

### interbotix_xs_msgs/JointSingleCommand

`Ros1Interbotix_xs_msgsJointSingleCommand`; 8..136 canonical bytes. `UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | None |
| cmd | float32 | scalar | 0 | None |

### interbotix_xs_msgs/JointTemps

`Ros1Interbotix_xs_msgsJointTemps`; 8..8712 canonical bytes. `UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| names | string | sequence/64 | 128 | None |
| temps | int32 | sequence/64 | 0 | None |

### time

`Ros1Time`; 8..8 canonical bytes. `UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| sec | uint32 | scalar | 0 | None |
| nsec | uint32 | scalar | 0 | None |

### std_msgs/Header

`Ros1Std_msgsHeader`; 16..144 canonical bytes. `UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| seq | uint32 | scalar | 0 | None |
| stamp | time | scalar | 0 | None |
| frame_id | string | scalar | 128 | None |

### duration

`Ros1Duration`; 8..8 canonical bytes. `UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| sec | int32 | scalar | 0 | None |
| nsec | int32 | scalar | 0 | None |

### trajectory_msgs/JointTrajectoryPoint

`Ros1Trajectory_msgsJointTrajectoryPoint`; 24..536 canonical bytes. `UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| positions | float64 | sequence/16 | 0 | None |
| velocities | float64 | sequence/16 | 0 | None |
| accelerations | float64 | sequence/16 | 0 | None |
| effort | float64 | sequence/16 | 0 | None |
| time_from_start | duration | scalar | 0 | None |

### trajectory_msgs/JointTrajectory

`Ros1Trajectory_msgsJointTrajectory`; 24..4408 canonical bytes. `UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | 0 | None |
| joint_names | string | sequence/16 | 128 | None |
| points | trajectory_msgs/JointTrajectoryPoint | sequence/4 | 0 | None |

### interbotix_xs_msgs/JointTrajectoryCommand

`Ros1Interbotix_xs_msgsJointTrajectoryCommand`; 32..4672 canonical bytes. `UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| traj | trajectory_msgs/JointTrajectory | scalar | 0 | None |

### interbotix_xs_msgs/LocobotJoy

`Ros1Interbotix_xs_msgsLocobotJoy`; 30..30 canonical bytes. `UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| base_x_cmd | float64 | scalar | 0 | None |
| base_theta_cmd | float64 | scalar | 0 | None |
| base_reset_odom_cmd | int8 | scalar | 0 | None |
| pan_cmd | int8 | scalar | 0 | None |
| tilt_cmd | int8 | scalar | 0 | None |
| ee_x_cmd | int8 | scalar | 0 | None |
| ee_y_cmd | int8 | scalar | 0 | None |
| ee_z_cmd | int8 | scalar | 0 | None |
| ee_roll_cmd | int8 | scalar | 0 | None |
| ee_pitch_cmd | int8 | scalar | 0 | None |
| waist_cmd | int8 | scalar | 0 | None |
| gripper_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |
| gripper_pwm_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `RESET_ODOM` (int8): `1`
- `PAN_CCW` (int8): `2`
- `PAN_CW` (int8): `3`
- `TILT_UP` (int8): `4`
- `TILT_DOWN` (int8): `5`
- `PAN_TILT_HOME` (int8): `6`
- `EE_X_INC` (int8): `7`
- `EE_X_DEC` (int8): `8`
- `EE_Y_INC` (int8): `9`
- `EE_Y_DEC` (int8): `10`
- `EE_Z_INC` (int8): `11`
- `EE_Z_DEC` (int8): `12`
- `EE_ROLL_CCW` (int8): `13`
- `EE_ROLL_CW` (int8): `14`
- `EE_PITCH_UP` (int8): `15`
- `EE_PITCH_DOWN` (int8): `16`
- `WAIST_CCW` (int8): `17`
- `WAIST_CW` (int8): `18`
- `GRIPPER_OPEN` (int8): `19`
- `GRIPPER_CLOSE` (int8): `20`
- `HOME_POSE` (int8): `21`
- `SLEEP_POSE` (int8): `22`
- `SPEED_INC` (int8): `23`
- `SPEED_DEC` (int8): `24`
- `SPEED_COURSE` (int8): `25`
- `SPEED_FINE` (int8): `26`
- `GRIPPER_PWM_INC` (int8): `27`
- `GRIPPER_PWM_DEC` (int8): `28`

### interbotix_xs_msgs/MotorGainsRequest

`Ros1Interbotix_xs_msgsMotorGainsRequest`; 36..292 canonical bytes. `UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| kp_pos | int32 | scalar | 0 | None |
| ki_pos | int32 | scalar | 0 | None |
| kd_pos | int32 | scalar | 0 | None |
| k1 | int32 | scalar | 0 | None |
| k2 | int32 | scalar | 0 | None |
| kp_vel | int32 | scalar | 0 | None |
| ki_vel | int32 | scalar | 0 | None |

### interbotix_xs_msgs/MotorGainsResponse

`Ros1Interbotix_xs_msgsMotorGainsResponse`; 0..0 canonical bytes. `UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/OperatingModesRequest

`Ros1Interbotix_xs_msgsOperatingModesRequest`; 24..536 canonical bytes. `UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| mode | string | scalar | 128 | None |
| profile_type | string | scalar | 128 | None |
| profile_velocity | int32 | scalar | 0 | None |
| profile_acceleration | int32 | scalar | 0 | None |

### interbotix_xs_msgs/OperatingModesResponse

`Ros1Interbotix_xs_msgsOperatingModesResponse`; 0..0 canonical bytes. `UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/RebootRequest

`Ros1Interbotix_xs_msgsRebootRequest`; 10..266 canonical bytes. `UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| enable | bool | scalar | 0 | None |
| smart_reboot | bool | scalar | 0 | None |

### interbotix_xs_msgs/RebootResponse

`Ros1Interbotix_xs_msgsRebootResponse`; 0..0 canonical bytes. `UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/RegisterValuesRequest

`Ros1Interbotix_xs_msgsRegisterValuesRequest`; 16..400 canonical bytes. `UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| reg | string | scalar | 128 | None |
| value | int32 | scalar | 0 | None |

### interbotix_xs_msgs/RegisterValuesResponse

`Ros1Interbotix_xs_msgsRegisterValuesResponse`; 4..68 canonical bytes. `UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| values | int32 | sequence/16 | 0 | None |

### interbotix_xs_msgs/RobotInfoRequest

`Ros1Interbotix_xs_msgsRobotInfoRequest`; 8..264 canonical bytes. `UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |

### interbotix_xs_msgs/RobotInfoResponse

`Ros1Interbotix_xs_msgsRobotInfoResponse`; 42..18474 canonical bytes. `UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| mode | string | scalar | 128 | None |
| profile_type | string | scalar | 128 | None |
| joint_names | string | sequence/64 | 128 | None |
| joint_ids | int16 | sequence/64 | 0 | None |
| joint_lower_limits | float32 | sequence/64 | 0 | None |
| joint_upper_limits | float32 | sequence/64 | 0 | None |
| joint_velocity_limits | float32 | sequence/64 | 0 | None |
| joint_sleep_positions | float32 | sequence/64 | 0 | None |
| joint_state_indices | int16 | sequence/64 | 0 | None |
| num_joints | int16 | scalar | 0 | None |
| name | string | sequence/64 | 128 | None |

### interbotix_xs_msgs/TorqueEnableRequest

`Ros1Interbotix_xs_msgsTorqueEnableRequest`; 9..265 canonical bytes. `UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| enable | bool | scalar | 0 | None |

### interbotix_xs_msgs/TorqueEnableResponse

`Ros1Interbotix_xs_msgsTorqueEnableResponse`; 0..0 canonical bytes. `UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/TurretJoy

`Ros1Interbotix_xs_msgsTurretJoy`; 4..4 canonical bytes. `UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pan_cmd | int8 | scalar | 0 | None |
| tilt_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `PAN_CCW` (int8): `1`
- `PAN_CW` (int8): `2`
- `TILT_UP` (int8): `3`
- `TILT_DOWN` (int8): `4`
- `PAN_TILT_HOME` (int8): `5`
- `SPEED_INC` (int8): `6`
- `SPEED_DEC` (int8): `7`
- `SPEED_COURSE` (int8): `8`
- `SPEED_FINE` (int8): `9`

### xarm_msgs/ClearErrRequest

`Ros1Xarm_msgsClearErrRequest`; 0..0 canonical bytes. `UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### xarm_msgs/ClearErrResponse

`Ros1Xarm_msgsClearErrResponse`; 6..134 canonical bytes. `UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/ConfigToolModbusRequest

`Ros1Xarm_msgsConfigToolModbusRequest`; 8..8 canonical bytes. `UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| baud_rate | int32 | scalar | 0 | None |
| timeout_ms | int32 | scalar | 0 | None |

### xarm_msgs/ConfigToolModbusResponse

`Ros1Xarm_msgsConfigToolModbusResponse`; 6..134 canonical bytes. `UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| message | string | scalar | 128 | None |
| ret | int16 | scalar | 0 | None |

### xarm_msgs/GetAnalogIORequest

`Ros1Xarm_msgsGetAnalogIORequest`; 2..2 canonical bytes. `UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| port_num | int16 | scalar | 0 | None |

### xarm_msgs/GetAnalogIOResponse

`Ros1Xarm_msgsGetAnalogIOResponse`; 10..138 canonical bytes. `UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| analog_value | float32 | scalar | 0 | None |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/GetControllerDigitalIORequest

`Ros1Xarm_msgsGetControllerDigitalIORequest`; 2..2 canonical bytes. `UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| io_num | int16 | scalar | 0 | None |

### xarm_msgs/GetControllerDigitalIOResponse

`Ros1Xarm_msgsGetControllerDigitalIOResponse`; 8..136 canonical bytes. `UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| value | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/GetDigitalIORequest

`Ros1Xarm_msgsGetDigitalIORequest`; 0..0 canonical bytes. `UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### xarm_msgs/GetDigitalIOResponse

`Ros1Xarm_msgsGetDigitalIOResponse`; 14..142 canonical bytes. `UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| digital_1 | int32 | scalar | 0 | None |
| digital_2 | int32 | scalar | 0 | None |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/GetErrRequest

`Ros1Xarm_msgsGetErrRequest`; 0..0 canonical bytes. `UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### xarm_msgs/GetErrResponse

`Ros1Xarm_msgsGetErrResponse`; 6..134 canonical bytes. `UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| err | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/GripperConfigRequest

`Ros1Xarm_msgsGripperConfigRequest`; 4..4 canonical bytes. `UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pulse_vel | float32 | scalar | 0 | None |

### xarm_msgs/GripperConfigResponse

`Ros1Xarm_msgsGripperConfigResponse`; 6..134 canonical bytes. `UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/GripperMoveRequest

`Ros1Xarm_msgsGripperMoveRequest`; 4..4 canonical bytes. `UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pulse_pos | float32 | scalar | 0 | None |

### xarm_msgs/GripperMoveResponse

`Ros1Xarm_msgsGripperMoveResponse`; 6..134 canonical bytes. `UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/GripperStateRequest

`Ros1Xarm_msgsGripperStateRequest`; 0..0 canonical bytes. `UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### xarm_msgs/GripperStateResponse

`Ros1Xarm_msgsGripperStateResponse`; 6..6 canonical bytes. `UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| curr_pos | float32 | scalar | 0 | None |
| err_code | int16 | scalar | 0 | None |

### xarm_msgs/IOState

`Ros1Xarm_msgsIOState`; 16..16 canonical bytes. `UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| digital_1 | int32 | scalar | 0 | None |
| digital_2 | int32 | scalar | 0 | None |
| analog_1 | float32 | scalar | 0 | None |
| analog_2 | float32 | scalar | 0 | None |

### xarm_msgs/MoveRequest

`Ros1Xarm_msgsMoveRequest`; 20..84 canonical bytes. `UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pose | float32 | sequence/16 | 0 | None |
| mvvelo | float32 | scalar | 0 | None |
| mvacc | float32 | scalar | 0 | None |
| mvtime | float32 | scalar | 0 | None |
| mvradii | float32 | scalar | 0 | None |

### xarm_msgs/MoveResponse

`Ros1Xarm_msgsMoveResponse`; 6..134 canonical bytes. `UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/RobotMsg

`Ros1Xarm_msgsRobotMsg`; 66..130 canonical bytes. `UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| state | int16 | scalar | 0 | None |
| mode | int16 | scalar | 0 | None |
| cmdnum | int16 | scalar | 0 | None |
| mt_brake | int16 | scalar | 0 | None |
| mt_able | int16 | scalar | 0 | None |
| err | int16 | scalar | 0 | None |
| warn | int16 | scalar | 0 | None |
| angle | float32 | sequence/16 | 0 | None |
| pose | float32 | array/6 | 0 | None |
| offset | float32 | array/6 | 0 | None |

### xarm_msgs/SetAxisRequest

`Ros1Xarm_msgsSetAxisRequest`; 4..4 canonical bytes. `UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| id | int16 | scalar | 0 | None |
| data | int16 | scalar | 0 | None |

### xarm_msgs/SetAxisResponse

`Ros1Xarm_msgsSetAxisResponse`; 6..134 canonical bytes. `UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/SetDigitalIORequest

`Ros1Xarm_msgsSetDigitalIORequest`; 4..4 canonical bytes. `UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| io_num | int16 | scalar | 0 | None |
| value | int16 | scalar | 0 | None |

### xarm_msgs/SetDigitalIOResponse

`Ros1Xarm_msgsSetDigitalIOResponse`; 6..134 canonical bytes. `UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/SetInt16Request

`Ros1Xarm_msgsSetInt16Request`; 2..2 canonical bytes. `UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| data | int16 | scalar | 0 | None |

### xarm_msgs/SetInt16Response

`Ros1Xarm_msgsSetInt16Response`; 6..134 canonical bytes. `UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/SetLoadRequest

`Ros1Xarm_msgsSetLoadRequest`; 16..16 canonical bytes. `UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| mass | float32 | scalar | 0 | None |
| xc | float32 | scalar | 0 | None |
| yc | float32 | scalar | 0 | None |
| zc | float32 | scalar | 0 | None |

### xarm_msgs/SetLoadResponse

`Ros1Xarm_msgsSetLoadResponse`; 6..134 canonical bytes. `UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/SetToolModbusRequest

`Ros1Xarm_msgsSetToolModbusRequest`; 6..262 canonical bytes. `UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| send_data | uint8 | sequence/256 | 0 | None |
| respond_len | int16 | scalar | 0 | None |

### xarm_msgs/SetToolModbusResponse

`Ros1Xarm_msgsSetToolModbusResponse`; 6..262 canonical bytes. `UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| respond_data | uint8 | sequence/256 | 0 | None |

### xarm_msgs/TCPOffsetRequest

`Ros1Xarm_msgsTCPOffsetRequest`; 24..24 canonical bytes. `UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| x | float32 | scalar | 0 | None |
| y | float32 | scalar | 0 | None |
| z | float32 | scalar | 0 | None |
| roll | float32 | scalar | 0 | None |
| pitch | float32 | scalar | 0 | None |
| yaw | float32 | scalar | 0 | None |

### xarm_msgs/TCPOffsetResponse

`Ros1Xarm_msgsTCPOffsetResponse`; 6..134 canonical bytes. `UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### Complete protocol components

- `interbotix_slate_msgs/SetString` (service): `{'request': {'version': 1, 'name': 'interbotix_slate_msgs/SetStringRequest', 'members': [{'name': 'data', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_slate_msgs/srv/SetString.srv', 'bytes': 44, 'sha256': '1137de16260d638622e16c4e11c7bd811dcdd92d2a5ae2f3061b941295397acc'}, 'component': 'request', 'owner': 'interbotix_slate_msgs/SetString', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 132, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_bc58f043e73f33d5b3923bca8a1d515f62f405f3365b83adb17311a728d2f105', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 132, 'constants': []}, 'response': {'version': 1, 'name': 'interbotix_slate_msgs/SetStringResponse', 'members': [{'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_slate_msgs/srv/SetString.srv', 'bytes': 44, 'sha256': '1137de16260d638622e16c4e11c7bd811dcdd92d2a5ae2f3061b941295397acc'}, 'component': 'response', 'owner': 'interbotix_slate_msgs/SetString', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 5, 'maximum': 133, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_6f3a05dbee380f0a0f5b24b75833a99857293e656d705e4322b4b3f97a5e530c', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 133, 'constants': []}}`.
- `interbotix_xs_msgs/ArmJoy` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/ArmJoy', 'members': [{'name': 'ee_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_roll_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'waist_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_pwm_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'torque_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/ArmJoy.msg', 'bytes': 1917, 'sha256': 'dc1c79a173d9802da2313e12152fea0457a1b2f81b3332131a46ad2fb3fb71c3'}, 'component': '', 'owner': 'interbotix_xs_msgs/ArmJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 12, 'nodes': 13, 'depth': 2, 'codec_identity': 'UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 12, 'constants': [{'name': 'EE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'EE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'EE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'EE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'EE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'EE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'EE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'EE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'EE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'EE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'WAIST_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'WAIST_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'GRIPPER_OPEN', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'GRIPPER_CLOSE', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'SPEED_COURSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'GRIPPER_PWM_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'GRIPPER_PWM_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'TORQUE_ON', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'TORQUE_OFF', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}]}}`.
- `interbotix_xs_msgs/HexJoy` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/HexJoy', 'members': [{'name': 'world_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'world_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'world_yaw_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_roll_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'move_type_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gait_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'leg_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'stance_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'reboot_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'set_home_pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/HexJoy.msg', 'bytes': 2160, 'sha256': 'e1082530c48ce50c208518d4b40f641c8fd38726e76832572e2c336c6ebfe267'}, 'component': '', 'owner': 'interbotix_xs_msgs/HexJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 17, 'maximum': 17, 'nodes': 18, 'depth': 2, 'codec_identity': 'UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 17, 'constants': [{'name': 'WORLD_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'WORLD_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'WORLD_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'WORLD_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'WORLD_YAW_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'WORLD_YAW_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'PLACE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'PLACE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'PLACE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'PLACE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'PLACE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'PLACE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'PLACE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'PLACE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'PLACE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'PLACE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'MOVE_HEXAPOD', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'MOVE_LEG', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'GAIT_NEXT', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'GAIT_PREVIOUS', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'LEG_NEXT', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'LEG_PREVIOUS', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}, {'name': 'WIDEN_STANCE', 'type': 'int8', 'native_type': 'int8', 'literal': '25', 'value': '25'}, {'name': 'NARROW_STANCE', 'type': 'int8', 'native_type': 'int8', 'literal': '26', 'value': '26'}, {'name': 'REBOOT_MOTORS', 'type': 'int8', 'native_type': 'int8', 'literal': '27', 'value': '27'}, {'name': 'SET_HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '28', 'value': '28'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '29', 'value': '29'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '30', 'value': '30'}, {'name': 'SPEED_COURSE', 'type': 'int8', 'native_type': 'int8', 'literal': '31', 'value': '31'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '32', 'value': '32'}]}}`.
- `interbotix_xs_msgs/JointGroupCommand` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/JointGroupCommand', 'members': [{'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cmd', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointGroupCommand.msg', 'bytes': 474, 'sha256': 'b85955c32e0fcaca05feeabe663b495e93ba5e85d26d4becf91d72dd09b04d44'}, 'component': '', 'owner': 'interbotix_xs_msgs/JointGroupCommand', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 392, 'nodes': 67, 'depth': 3, 'codec_identity': 'UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 392, 'constants': []}}`.
- `interbotix_xs_msgs/JointSingleCommand` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/JointSingleCommand', 'members': [{'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cmd', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointSingleCommand.msg', 'bytes': 303, 'sha256': 'bbe2faaa92bcffd29c5f1e449f3e1aaaf68938f85bb1ab77cb228fe99806b77b'}, 'component': '', 'owner': 'interbotix_xs_msgs/JointSingleCommand', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 136, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 136, 'constants': []}}`.
- `interbotix_xs_msgs/JointTemps` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/JointTemps', 'members': [{'name': 'names', 'type': 'string', 'array': 'sequence', 'count': 64, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'temps', 'type': 'int32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointTemps.msg', 'bytes': 169, 'sha256': 'e0798d4b96836b4836a540161fefb8071998ef948e5fb09b5e29a8bb3d9a4622'}, 'component': '', 'owner': 'interbotix_xs_msgs/JointTemps', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8712, 'nodes': 131, 'depth': 3, 'codec_identity': 'UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8712, 'constants': []}}`.
- `interbotix_xs_msgs/JointTrajectoryCommand` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/JointTrajectoryCommand', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'traj', 'type': 'trajectory_msgs/JointTrajectory', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointTrajectoryCommand.msg', 'bytes': 590, 'sha256': '185e5828609989f3732b76e3f80adb0ffc800e808a4064c6e6751db986970502'}, 'component': '', 'owner': 'interbotix_xs_msgs/JointTrajectoryCommand', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 32, 'maximum': 4672, 'nodes': 316, 'depth': 6, 'codec_identity': 'UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4672, 'constants': []}}`.
- `interbotix_xs_msgs/LocobotJoy` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/LocobotJoy', 'members': [{'name': 'base_x_cmd', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'base_theta_cmd', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'base_reset_odom_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pan_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'tilt_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_roll_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'waist_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_pwm_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/LocobotJoy.msg', 'bytes': 2417, 'sha256': 'e0ce8e86d9cc6dcb240c696a5ab24ed8e29df7a5f295183e8aec606b0b74e559'}, 'component': '', 'owner': 'interbotix_xs_msgs/LocobotJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 30, 'maximum': 30, 'nodes': 17, 'depth': 2, 'codec_identity': 'UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 30, 'constants': [{'name': 'RESET_ODOM', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'PAN_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'PAN_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'TILT_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'TILT_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'PAN_TILT_HOME', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'EE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'EE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'EE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'EE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'EE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'EE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'EE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'EE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'EE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'EE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'WAIST_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'WAIST_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'GRIPPER_OPEN', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'GRIPPER_CLOSE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}, {'name': 'SPEED_COURSE', 'type': 'int8', 'native_type': 'int8', 'literal': '25', 'value': '25'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '26', 'value': '26'}, {'name': 'GRIPPER_PWM_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '27', 'value': '27'}, {'name': 'GRIPPER_PWM_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '28', 'value': '28'}]}}`.
- `interbotix_xs_msgs/MotorGains` (service): `{'request': {'version': 1, 'name': 'interbotix_xs_msgs/MotorGainsRequest', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'kp_pos', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ki_pos', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'kd_pos', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'k1', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'k2', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'kp_vel', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ki_vel', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/MotorGains.srv', 'bytes': 1028, 'sha256': '3d278e42154a1620e4a496c76b345b59bc183bd833ba5aefb6d797bf9c8abe67'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/MotorGains', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 36, 'maximum': 292, 'nodes': 10, 'depth': 2, 'codec_identity': 'UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 292, 'constants': []}, 'response': {'version': 1, 'name': 'interbotix_xs_msgs/MotorGainsResponse', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/MotorGains.srv', 'bytes': 1028, 'sha256': '3d278e42154a1620e4a496c76b345b59bc183bd833ba5aefb6d797bf9c8abe67'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/MotorGains', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/OperatingModes` (service): `{'request': {'version': 1, 'name': 'interbotix_xs_msgs/OperatingModesRequest', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mode', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_velocity', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_acceleration', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/OperatingModes.srv', 'bytes': 3301, 'sha256': 'b8b5344f61f82d8d1264d5510d72bc092f7c5b35d11f001e9d3d7739c6f8b060'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/OperatingModes', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 536, 'nodes': 7, 'depth': 2, 'codec_identity': 'UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 536, 'constants': []}, 'response': {'version': 1, 'name': 'interbotix_xs_msgs/OperatingModesResponse', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/OperatingModes.srv', 'bytes': 3301, 'sha256': 'b8b5344f61f82d8d1264d5510d72bc092f7c5b35d11f001e9d3d7739c6f8b060'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/OperatingModes', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/Reboot` (service): `{'request': {'version': 1, 'name': 'interbotix_xs_msgs/RebootRequest', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'enable', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'smart_reboot', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/Reboot.srv', 'bytes': 847, 'sha256': 'd2a065332528676c8c5378cc41cbd8c611e8c6e479b7bfa1c75e19053d38d17e'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/Reboot', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 10, 'maximum': 266, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 266, 'constants': []}, 'response': {'version': 1, 'name': 'interbotix_xs_msgs/RebootResponse', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/Reboot.srv', 'bytes': 847, 'sha256': 'd2a065332528676c8c5378cc41cbd8c611e8c6e479b7bfa1c75e19053d38d17e'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/Reboot', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/RegisterValues` (service): `{'request': {'version': 1, 'name': 'interbotix_xs_msgs/RegisterValuesRequest', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'reg', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'value', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RegisterValues.srv', 'bytes': 769, 'sha256': 'ff04d128d88437e0f50f452a4a9cfe98b36346179614b0255fc917aeabbdf513'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/RegisterValues', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 16, 'maximum': 400, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 400, 'constants': []}, 'response': {'version': 1, 'name': 'interbotix_xs_msgs/RegisterValuesResponse', 'members': [{'name': 'values', 'type': 'int32', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RegisterValues.srv', 'bytes': 769, 'sha256': 'ff04d128d88437e0f50f452a4a9cfe98b36346179614b0255fc917aeabbdf513'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/RegisterValues', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 68, 'nodes': 18, 'depth': 3, 'codec_identity': 'UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 68, 'constants': []}}`.
- `interbotix_xs_msgs/RobotInfo` (service): `{'request': {'version': 1, 'name': 'interbotix_xs_msgs/RobotInfoRequest', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RobotInfo.srv', 'bytes': 1761, 'sha256': '5953ba2fdd8f7cd3d858dd002e7e7ec2de6960d4c9c82ce1ddc5c6177e6ce163'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/RobotInfo', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 264, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 264, 'constants': []}, 'response': {'version': 1, 'name': 'interbotix_xs_msgs/RobotInfoResponse', 'members': [{'name': 'mode', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_names', 'type': 'string', 'array': 'sequence', 'count': 64, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_ids', 'type': 'int16', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_lower_limits', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_upper_limits', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_velocity_limits', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_sleep_positions', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_state_indices', 'type': 'int16', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'num_joints', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': 'sequence', 'count': 64, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RobotInfo.srv', 'bytes': 1761, 'sha256': '5953ba2fdd8f7cd3d858dd002e7e7ec2de6960d4c9c82ce1ddc5c6177e6ce163'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/RobotInfo', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 42, 'maximum': 18474, 'nodes': 524, 'depth': 3, 'codec_identity': 'UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 18474, 'constants': []}}`.
- `interbotix_xs_msgs/TorqueEnable` (service): `{'request': {'version': 1, 'name': 'interbotix_xs_msgs/TorqueEnableRequest', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'enable', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/TorqueEnable.srv', 'bytes': 329, 'sha256': '0f382d2c2c46af302521729c73400427bd8d6a35000c3a310e78913e78b59c9f'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/TorqueEnable', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 9, 'maximum': 265, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 265, 'constants': []}, 'response': {'version': 1, 'name': 'interbotix_xs_msgs/TorqueEnableResponse', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/TorqueEnable.srv', 'bytes': 329, 'sha256': '0f382d2c2c46af302521729c73400427bd8d6a35000c3a310e78913e78b59c9f'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/TorqueEnable', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/TurretJoy` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/TurretJoy', 'members': [{'name': 'pan_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'tilt_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/TurretJoy.msg', 'bytes': 1029, 'sha256': '8918e08d1f7b602fde321996f484e1aa2c5a620430eb0be95ca690e5276d1f8b'}, 'component': '', 'owner': 'interbotix_xs_msgs/TurretJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': [{'name': 'PAN_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'PAN_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'TILT_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'TILT_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'PAN_TILT_HOME', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'SPEED_COURSE', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}]}}`.
- `std_msgs/Header` (message): `{'message': {'version': 1, 'name': 'std_msgs/Header', 'members': [{'name': 'seq', 'type': 'uint32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'stamp', 'type': 'time', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'frame_id', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_msgs/msg/Header.msg', 'bytes': 551, 'sha256': '5e64e71bb8d9d47019367f6a621934aab7e6ffedc6cfdcc912486aa5576ed693'}, 'component': '', 'owner': 'std_msgs/Header', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 16, 'maximum': 144, 'nodes': 6, 'depth': 3, 'codec_identity': 'UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 144, 'constants': []}}`.
- `trajectory_msgs/JointTrajectory` (message): `{'message': {'version': 1, 'name': 'trajectory_msgs/JointTrajectory', 'members': [{'name': 'header', 'type': 'std_msgs/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_names', 'type': 'string', 'array': 'sequence', 'count': 16, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'points', 'type': 'trajectory_msgs/JointTrajectoryPoint', 'array': 'sequence', 'count': 4, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'trajectory_msgs/msg/JointTrajectory.msg', 'bytes': 65, 'sha256': 'c3fd593dfc91e9084316bd8ea8c9c11be65c93dad98609e135ec491574a8f05c'}, 'component': '', 'owner': 'trajectory_msgs/JointTrajectory', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 4408, 'nodes': 313, 'depth': 5, 'codec_identity': 'UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4408, 'constants': []}}`.
- `trajectory_msgs/JointTrajectoryPoint` (message): `{'message': {'version': 1, 'name': 'trajectory_msgs/JointTrajectoryPoint', 'members': [{'name': 'positions', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'velocities', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'accelerations', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'effort', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'time_from_start', 'type': 'duration', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'trajectory_msgs/msg/JointTrajectoryPoint.msg', 'bytes': 337, 'sha256': 'd6bdced3460bf402a86274ccccf7fd7876cae1d70c8610fb6ca684da6057b9a2'}, 'component': '', 'owner': 'trajectory_msgs/JointTrajectoryPoint', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 536, 'nodes': 72, 'depth': 3, 'codec_identity': 'UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 536, 'constants': []}}`.
- `xarm_msgs/ClearErr` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/ClearErrRequest', 'members': [], 'identity': None, 'source': {'file': 'xarm_msgs/srv/ClearErr.srv', 'bytes': 31, 'sha256': '628c788bacb726db5a6041035cde0f64d3e65abc94014f33155146ab9defc096'}, 'component': 'request', 'owner': 'xarm_msgs/ClearErr', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/ClearErrResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/ClearErr.srv', 'bytes': 31, 'sha256': '628c788bacb726db5a6041035cde0f64d3e65abc94014f33155146ab9defc096'}, 'component': 'response', 'owner': 'xarm_msgs/ClearErr', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/ConfigToolModbus` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/ConfigToolModbusRequest', 'members': [{'name': 'baud_rate', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'timeout_ms', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/ConfigToolModbus.srv', 'bytes': 200, 'sha256': 'b24ed91b77d7b6fd0b611fc52a5e18fa5171ff2240150f0c8b015342b78bc052'}, 'component': 'request', 'owner': 'xarm_msgs/ConfigToolModbus', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/ConfigToolModbusResponse', 'members': [{'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/ConfigToolModbus.srv', 'bytes': 200, 'sha256': 'b24ed91b77d7b6fd0b611fc52a5e18fa5171ff2240150f0c8b015342b78bc052'}, 'component': 'response', 'owner': 'xarm_msgs/ConfigToolModbus', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/GetAnalogIO` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/GetAnalogIORequest', 'members': [{'name': 'port_num', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetAnalogIO.srv', 'bytes': 134, 'sha256': '919b9927ab303b93997651a29573632fd85017e12e107e453b2c490518ffe9d1'}, 'component': 'request', 'owner': 'xarm_msgs/GetAnalogIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 2, 'maximum': 2, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 2, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/GetAnalogIOResponse', 'members': [{'name': 'analog_value', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetAnalogIO.srv', 'bytes': 134, 'sha256': '919b9927ab303b93997651a29573632fd85017e12e107e453b2c490518ffe9d1'}, 'component': 'response', 'owner': 'xarm_msgs/GetAnalogIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 10, 'maximum': 138, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 138, 'constants': []}}`.
- `xarm_msgs/GetControllerDigitalIO` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/GetControllerDigitalIORequest', 'members': [{'name': 'io_num', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetControllerDigitalIO.srv', 'bytes': 131, 'sha256': 'cccdba67406fe93d1edc89b7788d69dd64a61bb80199b1df53f8bfb6b815dd1b'}, 'component': 'request', 'owner': 'xarm_msgs/GetControllerDigitalIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 2, 'maximum': 2, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 2, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/GetControllerDigitalIOResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'value', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetControllerDigitalIO.srv', 'bytes': 131, 'sha256': 'cccdba67406fe93d1edc89b7788d69dd64a61bb80199b1df53f8bfb6b815dd1b'}, 'component': 'response', 'owner': 'xarm_msgs/GetControllerDigitalIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 136, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 136, 'constants': []}}`.
- `xarm_msgs/GetDigitalIO` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/GetDigitalIORequest', 'members': [], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetDigitalIO.srv', 'bytes': 124, 'sha256': 'ffd42a0f96df19af0f8ec2368e7b09c9fdae85eaa8f2e738cfd7f7b93baf371e'}, 'component': 'request', 'owner': 'xarm_msgs/GetDigitalIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/GetDigitalIOResponse', 'members': [{'name': 'digital_1', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'digital_2', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetDigitalIO.srv', 'bytes': 124, 'sha256': 'ffd42a0f96df19af0f8ec2368e7b09c9fdae85eaa8f2e738cfd7f7b93baf371e'}, 'component': 'response', 'owner': 'xarm_msgs/GetDigitalIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 14, 'maximum': 142, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 142, 'constants': []}}`.
- `xarm_msgs/GetErr` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/GetErrRequest', 'members': [], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetErr.srv', 'bytes': 31, 'sha256': '9e243ab06b15441e64d215fcc93906a2c0bc0f99fc6ca8d80ada2d6b7a0f1891'}, 'component': 'request', 'owner': 'xarm_msgs/GetErr', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/GetErrResponse', 'members': [{'name': 'err', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetErr.srv', 'bytes': 31, 'sha256': '9e243ab06b15441e64d215fcc93906a2c0bc0f99fc6ca8d80ada2d6b7a0f1891'}, 'component': 'response', 'owner': 'xarm_msgs/GetErr', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/GripperConfig` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/GripperConfigRequest', 'members': [{'name': 'pulse_vel', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GripperConfig.srv', 'bytes': 104, 'sha256': 'a8931c1d78b7c9bdbaaf88d7bfb39e0bfe0278243c0fb56ca54daeec287800a7'}, 'component': 'request', 'owner': 'xarm_msgs/GripperConfig', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/GripperConfigResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GripperConfig.srv', 'bytes': 104, 'sha256': 'a8931c1d78b7c9bdbaaf88d7bfb39e0bfe0278243c0fb56ca54daeec287800a7'}, 'component': 'response', 'owner': 'xarm_msgs/GripperConfig', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/GripperMove` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/GripperMoveRequest', 'members': [{'name': 'pulse_pos', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GripperMove.srv', 'bytes': 113, 'sha256': 'ce9c3036fe1c3f582a8a35f1acdcbb10f7856a380082008b3209d0da4a4f29d7'}, 'component': 'request', 'owner': 'xarm_msgs/GripperMove', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/GripperMoveResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GripperMove.srv', 'bytes': 113, 'sha256': 'ce9c3036fe1c3f582a8a35f1acdcbb10f7856a380082008b3209d0da4a4f29d7'}, 'component': 'response', 'owner': 'xarm_msgs/GripperMove', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/GripperState` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/GripperStateRequest', 'members': [], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GripperState.srv', 'bytes': 36, 'sha256': '45a766584b32919c5988f428518e244684174aadd06526c3d16ce443afaf4595'}, 'component': 'request', 'owner': 'xarm_msgs/GripperState', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/GripperStateResponse', 'members': [{'name': 'curr_pos', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'err_code', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GripperState.srv', 'bytes': 36, 'sha256': '45a766584b32919c5988f428518e244684174aadd06526c3d16ce443afaf4595'}, 'component': 'response', 'owner': 'xarm_msgs/GripperState', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 6, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 6, 'constants': []}}`.
- `xarm_msgs/IOState` (message): `{'message': {'version': 1, 'name': 'xarm_msgs/IOState', 'members': [{'name': 'digital_1', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'digital_2', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'analog_1', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'analog_2', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/msg/IOState.msg', 'bytes': 127, 'sha256': 'c3d02e687885003c4a9bbab24d5a256f1eb6ee05bd0ff777230cdb90dd568106'}, 'component': '', 'owner': 'xarm_msgs/IOState', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 16, 'maximum': 16, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 16, 'constants': []}}`.
- `xarm_msgs/Move` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/MoveRequest', 'members': [{'name': 'pose', 'type': 'float32', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mvvelo', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mvacc', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mvtime', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mvradii', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/Move.srv', 'bytes': 1230, 'sha256': '0678f5c17aa82f1f8c63d2a6b4ff1d1258d5162c7031752d7c5519c12cb9df48'}, 'component': 'request', 'owner': 'xarm_msgs/Move', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 20, 'maximum': 84, 'nodes': 22, 'depth': 3, 'codec_identity': 'UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 84, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/MoveResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/Move.srv', 'bytes': 1230, 'sha256': '0678f5c17aa82f1f8c63d2a6b4ff1d1258d5162c7031752d7c5519c12cb9df48'}, 'component': 'response', 'owner': 'xarm_msgs/Move', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/RobotMsg` (message): `{'message': {'version': 1, 'name': 'xarm_msgs/RobotMsg', 'members': [{'name': 'state', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mode', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cmdnum', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mt_brake', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mt_able', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'err', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'warn', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angle', 'type': 'float32', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose', 'type': 'float32', 'array': 'array', 'count': 6, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'offset', 'type': 'float32', 'array': 'array', 'count': 6, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/msg/RobotMsg.msg', 'bytes': 1336, 'sha256': 'c262d81f5340df7fac964ec63ab28853eec3b8c3d9566772c57009e4a07b6133'}, 'component': '', 'owner': 'xarm_msgs/RobotMsg', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 66, 'maximum': 130, 'nodes': 39, 'depth': 3, 'codec_identity': 'UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 130, 'constants': []}}`.
- `xarm_msgs/SetAxis` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/SetAxisRequest', 'members': [{'name': 'id', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'data', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetAxis.srv', 'bytes': 413, 'sha256': 'a9b014f610e35c528393dc98bc7fefc405660a63c96266abaab5d70cf1e92fc4'}, 'component': 'request', 'owner': 'xarm_msgs/SetAxis', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/SetAxisResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetAxis.srv', 'bytes': 413, 'sha256': 'a9b014f610e35c528393dc98bc7fefc405660a63c96266abaab5d70cf1e92fc4'}, 'component': 'response', 'owner': 'xarm_msgs/SetAxis', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/SetDigitalIO` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/SetDigitalIORequest', 'members': [{'name': 'io_num', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'value', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetDigitalIO.srv', 'bytes': 118, 'sha256': '7502a8224c9e1be1d1499152888a8d149435e3f259d9f9dd12888cab578aa285'}, 'component': 'request', 'owner': 'xarm_msgs/SetDigitalIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/SetDigitalIOResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetDigitalIO.srv', 'bytes': 118, 'sha256': '7502a8224c9e1be1d1499152888a8d149435e3f259d9f9dd12888cab578aa285'}, 'component': 'response', 'owner': 'xarm_msgs/SetDigitalIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/SetInt16` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/SetInt16Request', 'members': [{'name': 'data', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetInt16.srv', 'bytes': 314, 'sha256': '58f944f7e2d1fe44d2faccb923ec6313bf4374014f56c51ad2e164c38b091cb7'}, 'component': 'request', 'owner': 'xarm_msgs/SetInt16', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 2, 'maximum': 2, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 2, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/SetInt16Response', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetInt16.srv', 'bytes': 314, 'sha256': '58f944f7e2d1fe44d2faccb923ec6313bf4374014f56c51ad2e164c38b091cb7'}, 'component': 'response', 'owner': 'xarm_msgs/SetInt16', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/SetLoad` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/SetLoadRequest', 'members': [{'name': 'mass', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'xc', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'yc', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'zc', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetLoad.srv', 'bytes': 245, 'sha256': '07b20a42f946c734967d47051d81d6ac9823d59870671f5fe079a7e48ee7fad8'}, 'component': 'request', 'owner': 'xarm_msgs/SetLoad', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 16, 'maximum': 16, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 16, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/SetLoadResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetLoad.srv', 'bytes': 245, 'sha256': '07b20a42f946c734967d47051d81d6ac9823d59870671f5fe079a7e48ee7fad8'}, 'component': 'response', 'owner': 'xarm_msgs/SetLoad', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/SetToolModbus` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/SetToolModbusRequest', 'members': [{'name': 'send_data', 'type': 'uint8', 'array': 'sequence', 'count': 256, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'respond_len', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetToolModbus.srv', 'bytes': 199, 'sha256': '347d778e26bc59f41d3a8021931eff5c63223a6960de22bf206fa76b1eca6662'}, 'component': 'request', 'owner': 'xarm_msgs/SetToolModbus', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 262, 'nodes': 4, 'depth': 3, 'codec_identity': 'UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 262, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/SetToolModbusResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'respond_data', 'type': 'uint8', 'array': 'sequence', 'count': 256, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetToolModbus.srv', 'bytes': 199, 'sha256': '347d778e26bc59f41d3a8021931eff5c63223a6960de22bf206fa76b1eca6662'}, 'component': 'response', 'owner': 'xarm_msgs/SetToolModbus', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 262, 'nodes': 4, 'depth': 3, 'codec_identity': 'UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 262, 'constants': []}}`.
- `xarm_msgs/TCPOffset` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/TCPOffsetRequest', 'members': [{'name': 'x', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'y', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'z', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'roll', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pitch', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'yaw', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/TCPOffset.srv', 'bytes': 218, 'sha256': 'b718883494cc3cb5d0d51483e9cedce4204a617dd529e5b607e1527605f07335'}, 'component': 'request', 'owner': 'xarm_msgs/TCPOffset', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 24, 'nodes': 7, 'depth': 2, 'codec_identity': 'UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 24, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/TCPOffsetResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/TCPOffset.srv', 'bytes': 218, 'sha256': 'b718883494cc3cb5d0d51483e9cedce4204a617dd529e5b607e1527605f07335'}, 'component': 'response', 'owner': 'xarm_msgs/TCPOffset', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.

## ros1_manipulators_kinetic

ros1: 1 records, 0 services, 0 actions.

Catalog: `share/platform/trossen/catalogs/ros1_manipulators_kinetic/catalog.json`. Source pins: `source-lock.json`.

Upstream witnesses: `{'repository': 'Interbotix/interbotix_ros_manipulators', 'branch': 'kinetic', 'commit': 'f26f5eb73d6bb6f0f6af873afa8c86258a70524c'}`.

### interbotix_uxarm_joy/ArmJoy

`Ros1Interbotix_uxarm_joyArmJoy`; 12..12 canonical bytes. `UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ee_x_cmd | int8 | scalar | 0 | None |
| ee_y_cmd | int8 | scalar | 0 | None |
| ee_z_cmd | int8 | scalar | 0 | None |
| ee_yaw_cmd | int8 | scalar | 0 | None |
| ee_pitch_cmd | int8 | scalar | 0 | None |
| waist_cmd | int8 | scalar | 0 | None |
| gripper_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |
| gripper_speed_cmd | int8 | scalar | 0 | None |
| mode_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `EE_X_INC` (int8): `1`
- `EE_X_DEC` (int8): `2`
- `EE_Y_INC` (int8): `3`
- `EE_Y_DEC` (int8): `4`
- `EE_Z_INC` (int8): `5`
- `EE_Z_DEC` (int8): `6`
- `EE_YAW_CCW` (int8): `7`
- `EE_YAW_CW` (int8): `8`
- `EE_PITCH_UP` (int8): `9`
- `EE_PITCH_DOWN` (int8): `10`
- `WAIST_CCW` (int8): `11`
- `WAIST_CW` (int8): `12`
- `GRIPPER_OPEN` (int8): `13`
- `GRIPPER_CLOSE` (int8): `14`
- `HOME_POSE` (int8): `15`
- `HOLDUP_POSE` (int8): `16`
- `SPEED_INC` (int8): `17`
- `SPEED_DEC` (int8): `18`
- `SPEED_COARSE` (int8): `19`
- `SPEED_FINE` (int8): `20`
- `GRIPPER_SPEED_INC` (int8): `21`
- `GRIPPER_SPEED_DEC` (int8): `22`
- `MODE_SERVO` (int8): `23`
- `MODE_TEACH` (int8): `24`

### Complete protocol components

- `interbotix_uxarm_joy/ArmJoy` (message): `{'message': {'version': 1, 'name': 'interbotix_uxarm_joy/ArmJoy', 'members': [{'name': 'ee_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_yaw_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'waist_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mode_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_uxarm_joy/msg/ArmJoy.msg', 'bytes': 1818, 'sha256': '894621088d83c7f4363ca32d1277fc5540527a97d5c1fe82cc53fa3579c33797'}, 'component': '', 'owner': 'interbotix_uxarm_joy/ArmJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 12, 'nodes': 13, 'depth': 2, 'codec_identity': 'UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 12, 'constants': [{'name': 'EE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'EE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'EE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'EE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'EE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'EE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'EE_YAW_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'EE_YAW_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'EE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'EE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'WAIST_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'WAIST_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'GRIPPER_OPEN', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'GRIPPER_CLOSE', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'HOLDUP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'GRIPPER_SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'GRIPPER_SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'MODE_SERVO', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'MODE_TEACH', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}]}}`.

## ros1_manipulators_main

ros1: 1 records, 0 services, 0 actions.

Catalog: `share/platform/trossen/catalogs/ros1_manipulators_main/catalog.json`. Source pins: `source-lock.json`.

Upstream witnesses: `{'repository': 'Interbotix/interbotix_ros_manipulators', 'branch': 'main', 'commit': '0bb2b0e6d0e619bff02cf74dbd5af5681dcf80c9'}`.

### interbotix_uxarm_joy/ArmJoy

`Ros1Interbotix_uxarm_joyArmJoy`; 12..12 canonical bytes. `UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ee_x_cmd | int8 | scalar | 0 | None |
| ee_y_cmd | int8 | scalar | 0 | None |
| ee_z_cmd | int8 | scalar | 0 | None |
| ee_yaw_cmd | int8 | scalar | 0 | None |
| ee_pitch_cmd | int8 | scalar | 0 | None |
| waist_cmd | int8 | scalar | 0 | None |
| gripper_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |
| gripper_speed_cmd | int8 | scalar | 0 | None |
| mode_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `EE_X_INC` (int8): `1`
- `EE_X_DEC` (int8): `2`
- `EE_Y_INC` (int8): `3`
- `EE_Y_DEC` (int8): `4`
- `EE_Z_INC` (int8): `5`
- `EE_Z_DEC` (int8): `6`
- `EE_YAW_CCW` (int8): `7`
- `EE_YAW_CW` (int8): `8`
- `EE_PITCH_UP` (int8): `9`
- `EE_PITCH_DOWN` (int8): `10`
- `WAIST_CCW` (int8): `11`
- `WAIST_CW` (int8): `12`
- `GRIPPER_OPEN` (int8): `13`
- `GRIPPER_CLOSE` (int8): `14`
- `HOME_POSE` (int8): `15`
- `HOLDUP_POSE` (int8): `16`
- `SPEED_INC` (int8): `17`
- `SPEED_DEC` (int8): `18`
- `SPEED_COARSE` (int8): `19`
- `SPEED_FINE` (int8): `20`
- `GRIPPER_SPEED_INC` (int8): `21`
- `GRIPPER_SPEED_DEC` (int8): `22`
- `MODE_SERVO` (int8): `23`
- `MODE_TEACH` (int8): `24`

### Complete protocol components

- `interbotix_uxarm_joy/ArmJoy` (message): `{'message': {'version': 1, 'name': 'interbotix_uxarm_joy/ArmJoy', 'members': [{'name': 'ee_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_yaw_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'waist_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mode_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_uxarm_joy/msg/ArmJoy.msg', 'bytes': 1818, 'sha256': '894621088d83c7f4363ca32d1277fc5540527a97d5c1fe82cc53fa3579c33797'}, 'component': '', 'owner': 'interbotix_uxarm_joy/ArmJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 12, 'nodes': 13, 'depth': 2, 'codec_identity': 'UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 12, 'constants': [{'name': 'EE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'EE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'EE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'EE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'EE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'EE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'EE_YAW_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'EE_YAW_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'EE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'EE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'WAIST_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'WAIST_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'GRIPPER_OPEN', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'GRIPPER_CLOSE', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'HOLDUP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'GRIPPER_SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'GRIPPER_SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'MODE_SERVO', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'MODE_TEACH', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}]}}`.

## ros1_manipulators_melodic

ros1: 1 records, 0 services, 0 actions.

Catalog: `share/platform/trossen/catalogs/ros1_manipulators_melodic/catalog.json`. Source pins: `source-lock.json`.

Upstream witnesses: `{'repository': 'Interbotix/interbotix_ros_manipulators', 'branch': 'melodic', 'commit': '120c32a0e557fb1e2142051787b47edeea57d99a'}`.

### interbotix_uxarm_joy/ArmJoy

`Ros1Interbotix_uxarm_joyArmJoy`; 12..12 canonical bytes. `UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ee_x_cmd | int8 | scalar | 0 | None |
| ee_y_cmd | int8 | scalar | 0 | None |
| ee_z_cmd | int8 | scalar | 0 | None |
| ee_yaw_cmd | int8 | scalar | 0 | None |
| ee_pitch_cmd | int8 | scalar | 0 | None |
| waist_cmd | int8 | scalar | 0 | None |
| gripper_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |
| gripper_speed_cmd | int8 | scalar | 0 | None |
| mode_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `EE_X_INC` (int8): `1`
- `EE_X_DEC` (int8): `2`
- `EE_Y_INC` (int8): `3`
- `EE_Y_DEC` (int8): `4`
- `EE_Z_INC` (int8): `5`
- `EE_Z_DEC` (int8): `6`
- `EE_YAW_CCW` (int8): `7`
- `EE_YAW_CW` (int8): `8`
- `EE_PITCH_UP` (int8): `9`
- `EE_PITCH_DOWN` (int8): `10`
- `WAIST_CCW` (int8): `11`
- `WAIST_CW` (int8): `12`
- `GRIPPER_OPEN` (int8): `13`
- `GRIPPER_CLOSE` (int8): `14`
- `HOME_POSE` (int8): `15`
- `HOLDUP_POSE` (int8): `16`
- `SPEED_INC` (int8): `17`
- `SPEED_DEC` (int8): `18`
- `SPEED_COARSE` (int8): `19`
- `SPEED_FINE` (int8): `20`
- `GRIPPER_SPEED_INC` (int8): `21`
- `GRIPPER_SPEED_DEC` (int8): `22`
- `MODE_SERVO` (int8): `23`
- `MODE_TEACH` (int8): `24`

### Complete protocol components

- `interbotix_uxarm_joy/ArmJoy` (message): `{'message': {'version': 1, 'name': 'interbotix_uxarm_joy/ArmJoy', 'members': [{'name': 'ee_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_yaw_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'waist_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mode_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_uxarm_joy/msg/ArmJoy.msg', 'bytes': 1818, 'sha256': '894621088d83c7f4363ca32d1277fc5540527a97d5c1fe82cc53fa3579c33797'}, 'component': '', 'owner': 'interbotix_uxarm_joy/ArmJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 12, 'nodes': 13, 'depth': 2, 'codec_identity': 'UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 12, 'constants': [{'name': 'EE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'EE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'EE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'EE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'EE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'EE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'EE_YAW_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'EE_YAW_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'EE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'EE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'WAIST_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'WAIST_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'GRIPPER_OPEN', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'GRIPPER_CLOSE', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'HOLDUP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'GRIPPER_SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'GRIPPER_SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'MODE_SERVO', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'MODE_TEACH', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}]}}`.

## ros1_manipulators_noetic

ros1: 1 records, 0 services, 0 actions.

Catalog: `share/platform/trossen/catalogs/ros1_manipulators_noetic/catalog.json`. Source pins: `source-lock.json`.

Upstream witnesses: `{'repository': 'Interbotix/interbotix_ros_manipulators', 'branch': 'noetic', 'commit': '0bb2b0e6d0e619bff02cf74dbd5af5681dcf80c9'}`.

### interbotix_uxarm_joy/ArmJoy

`Ros1Interbotix_uxarm_joyArmJoy`; 12..12 canonical bytes. `UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ee_x_cmd | int8 | scalar | 0 | None |
| ee_y_cmd | int8 | scalar | 0 | None |
| ee_z_cmd | int8 | scalar | 0 | None |
| ee_yaw_cmd | int8 | scalar | 0 | None |
| ee_pitch_cmd | int8 | scalar | 0 | None |
| waist_cmd | int8 | scalar | 0 | None |
| gripper_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |
| gripper_speed_cmd | int8 | scalar | 0 | None |
| mode_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `EE_X_INC` (int8): `1`
- `EE_X_DEC` (int8): `2`
- `EE_Y_INC` (int8): `3`
- `EE_Y_DEC` (int8): `4`
- `EE_Z_INC` (int8): `5`
- `EE_Z_DEC` (int8): `6`
- `EE_YAW_CCW` (int8): `7`
- `EE_YAW_CW` (int8): `8`
- `EE_PITCH_UP` (int8): `9`
- `EE_PITCH_DOWN` (int8): `10`
- `WAIST_CCW` (int8): `11`
- `WAIST_CW` (int8): `12`
- `GRIPPER_OPEN` (int8): `13`
- `GRIPPER_CLOSE` (int8): `14`
- `HOME_POSE` (int8): `15`
- `HOLDUP_POSE` (int8): `16`
- `SPEED_INC` (int8): `17`
- `SPEED_DEC` (int8): `18`
- `SPEED_COARSE` (int8): `19`
- `SPEED_FINE` (int8): `20`
- `GRIPPER_SPEED_INC` (int8): `21`
- `GRIPPER_SPEED_DEC` (int8): `22`
- `MODE_SERVO` (int8): `23`
- `MODE_TEACH` (int8): `24`

### Complete protocol components

- `interbotix_uxarm_joy/ArmJoy` (message): `{'message': {'version': 1, 'name': 'interbotix_uxarm_joy/ArmJoy', 'members': [{'name': 'ee_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_yaw_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'waist_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mode_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_uxarm_joy/msg/ArmJoy.msg', 'bytes': 1818, 'sha256': '894621088d83c7f4363ca32d1277fc5540527a97d5c1fe82cc53fa3579c33797'}, 'component': '', 'owner': 'interbotix_uxarm_joy/ArmJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 12, 'nodes': 13, 'depth': 2, 'codec_identity': 'UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 12, 'constants': [{'name': 'EE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'EE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'EE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'EE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'EE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'EE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'EE_YAW_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'EE_YAW_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'EE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'EE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'WAIST_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'WAIST_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'GRIPPER_OPEN', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'GRIPPER_CLOSE', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'HOLDUP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'GRIPPER_SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'GRIPPER_SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'MODE_SERVO', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'MODE_TEACH', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}]}}`.

## ros1_melodic

ros1: 59 records, 22 services, 0 actions.

Catalog: `share/platform/trossen/catalogs/ros1_melodic/catalog.json`. Source pins: `source-lock.json`.

Upstream witnesses: `{'repository': 'Interbotix/interbotix_ros_core', 'branch': 'melodic', 'commit': 'dcaae578db7b41b5d02e0c7548cfc4951cea15bc'}`.

### interbotix_xs_msgs/ArmJoy

`Ros1Interbotix_xs_msgsArmJoy`; 12..12 canonical bytes. `UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ee_x_cmd | int8 | scalar | 0 | None |
| ee_y_cmd | int8 | scalar | 0 | None |
| ee_z_cmd | int8 | scalar | 0 | None |
| ee_roll_cmd | int8 | scalar | 0 | None |
| ee_pitch_cmd | int8 | scalar | 0 | None |
| waist_cmd | int8 | scalar | 0 | None |
| gripper_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |
| gripper_pwm_cmd | int8 | scalar | 0 | None |
| torque_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `EE_X_INC` (int8): `1`
- `EE_X_DEC` (int8): `2`
- `EE_Y_INC` (int8): `3`
- `EE_Y_DEC` (int8): `4`
- `EE_Z_INC` (int8): `5`
- `EE_Z_DEC` (int8): `6`
- `EE_ROLL_CCW` (int8): `7`
- `EE_ROLL_CW` (int8): `8`
- `EE_PITCH_UP` (int8): `9`
- `EE_PITCH_DOWN` (int8): `10`
- `WAIST_CCW` (int8): `11`
- `WAIST_CW` (int8): `12`
- `GRIPPER_OPEN` (int8): `13`
- `GRIPPER_CLOSE` (int8): `14`
- `HOME_POSE` (int8): `15`
- `SLEEP_POSE` (int8): `16`
- `SPEED_INC` (int8): `17`
- `SPEED_DEC` (int8): `18`
- `SPEED_COURSE` (int8): `19`
- `SPEED_FINE` (int8): `20`
- `GRIPPER_PWM_INC` (int8): `21`
- `GRIPPER_PWM_DEC` (int8): `22`
- `TORQUE_ON` (int8): `23`
- `TORQUE_OFF` (int8): `24`

### interbotix_xs_msgs/HexJoy

`Ros1Interbotix_xs_msgsHexJoy`; 17..17 canonical bytes. `UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| world_x_cmd | int8 | scalar | 0 | None |
| world_y_cmd | int8 | scalar | 0 | None |
| world_yaw_cmd | int8 | scalar | 0 | None |
| place_x_cmd | int8 | scalar | 0 | None |
| place_y_cmd | int8 | scalar | 0 | None |
| place_z_cmd | int8 | scalar | 0 | None |
| place_roll_cmd | int8 | scalar | 0 | None |
| place_pitch_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| move_type_cmd | int8 | scalar | 0 | None |
| gait_toggle_cmd | int8 | scalar | 0 | None |
| leg_toggle_cmd | int8 | scalar | 0 | None |
| stance_cmd | int8 | scalar | 0 | None |
| reboot_cmd | int8 | scalar | 0 | None |
| set_home_pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `WORLD_X_INC` (int8): `1`
- `WORLD_X_DEC` (int8): `2`
- `WORLD_Y_INC` (int8): `3`
- `WORLD_Y_DEC` (int8): `4`
- `WORLD_YAW_CCW` (int8): `5`
- `WORLD_YAW_CW` (int8): `6`
- `PLACE_X_INC` (int8): `7`
- `PLACE_X_DEC` (int8): `8`
- `PLACE_Y_INC` (int8): `9`
- `PLACE_Y_DEC` (int8): `10`
- `PLACE_Z_INC` (int8): `11`
- `PLACE_Z_DEC` (int8): `12`
- `PLACE_ROLL_CCW` (int8): `13`
- `PLACE_ROLL_CW` (int8): `14`
- `PLACE_PITCH_UP` (int8): `15`
- `PLACE_PITCH_DOWN` (int8): `16`
- `MOVE_HEXAPOD` (int8): `17`
- `MOVE_LEG` (int8): `18`
- `HOME_POSE` (int8): `19`
- `SLEEP_POSE` (int8): `20`
- `GAIT_NEXT` (int8): `21`
- `GAIT_PREVIOUS` (int8): `22`
- `LEG_NEXT` (int8): `23`
- `LEG_PREVIOUS` (int8): `24`
- `WIDEN_STANCE` (int8): `25`
- `NARROW_STANCE` (int8): `26`
- `REBOOT_MOTORS` (int8): `27`
- `SET_HOME_POSE` (int8): `28`
- `SPEED_INC` (int8): `29`
- `SPEED_DEC` (int8): `30`
- `SPEED_COURSE` (int8): `31`
- `SPEED_FINE` (int8): `32`

### interbotix_xs_msgs/JointGroupCommand

`Ros1Interbotix_xs_msgsJointGroupCommand`; 8..392 canonical bytes. `UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | None |
| cmd | float32 | sequence/64 | 0 | None |

### interbotix_xs_msgs/JointSingleCommand

`Ros1Interbotix_xs_msgsJointSingleCommand`; 8..136 canonical bytes. `UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | None |
| cmd | float32 | scalar | 0 | None |

### interbotix_xs_msgs/JointTemps

`Ros1Interbotix_xs_msgsJointTemps`; 8..8712 canonical bytes. `UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| names | string | sequence/64 | 128 | None |
| temps | int32 | sequence/64 | 0 | None |

### time

`Ros1Time`; 8..8 canonical bytes. `UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| sec | uint32 | scalar | 0 | None |
| nsec | uint32 | scalar | 0 | None |

### std_msgs/Header

`Ros1Std_msgsHeader`; 16..144 canonical bytes. `UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| seq | uint32 | scalar | 0 | None |
| stamp | time | scalar | 0 | None |
| frame_id | string | scalar | 128 | None |

### duration

`Ros1Duration`; 8..8 canonical bytes. `UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| sec | int32 | scalar | 0 | None |
| nsec | int32 | scalar | 0 | None |

### trajectory_msgs/JointTrajectoryPoint

`Ros1Trajectory_msgsJointTrajectoryPoint`; 24..536 canonical bytes. `UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| positions | float64 | sequence/16 | 0 | None |
| velocities | float64 | sequence/16 | 0 | None |
| accelerations | float64 | sequence/16 | 0 | None |
| effort | float64 | sequence/16 | 0 | None |
| time_from_start | duration | scalar | 0 | None |

### trajectory_msgs/JointTrajectory

`Ros1Trajectory_msgsJointTrajectory`; 24..4408 canonical bytes. `UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | 0 | None |
| joint_names | string | sequence/16 | 128 | None |
| points | trajectory_msgs/JointTrajectoryPoint | sequence/4 | 0 | None |

### interbotix_xs_msgs/JointTrajectoryCommand

`Ros1Interbotix_xs_msgsJointTrajectoryCommand`; 32..4672 canonical bytes. `UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| traj | trajectory_msgs/JointTrajectory | scalar | 0 | None |

### interbotix_xs_msgs/LocobotJoy

`Ros1Interbotix_xs_msgsLocobotJoy`; 30..30 canonical bytes. `UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| base_x_cmd | float64 | scalar | 0 | None |
| base_theta_cmd | float64 | scalar | 0 | None |
| base_reset_odom_cmd | int8 | scalar | 0 | None |
| pan_cmd | int8 | scalar | 0 | None |
| tilt_cmd | int8 | scalar | 0 | None |
| ee_x_cmd | int8 | scalar | 0 | None |
| ee_y_cmd | int8 | scalar | 0 | None |
| ee_z_cmd | int8 | scalar | 0 | None |
| ee_roll_cmd | int8 | scalar | 0 | None |
| ee_pitch_cmd | int8 | scalar | 0 | None |
| waist_cmd | int8 | scalar | 0 | None |
| gripper_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |
| gripper_pwm_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `RESET_ODOM` (int8): `1`
- `PAN_CCW` (int8): `2`
- `PAN_CW` (int8): `3`
- `TILT_UP` (int8): `4`
- `TILT_DOWN` (int8): `5`
- `PAN_TILT_HOME` (int8): `6`
- `EE_X_INC` (int8): `7`
- `EE_X_DEC` (int8): `8`
- `EE_Y_INC` (int8): `9`
- `EE_Y_DEC` (int8): `10`
- `EE_Z_INC` (int8): `11`
- `EE_Z_DEC` (int8): `12`
- `EE_ROLL_CCW` (int8): `13`
- `EE_ROLL_CW` (int8): `14`
- `EE_PITCH_UP` (int8): `15`
- `EE_PITCH_DOWN` (int8): `16`
- `WAIST_CCW` (int8): `17`
- `WAIST_CW` (int8): `18`
- `GRIPPER_OPEN` (int8): `19`
- `GRIPPER_CLOSE` (int8): `20`
- `HOME_POSE` (int8): `21`
- `SLEEP_POSE` (int8): `22`
- `SPEED_INC` (int8): `23`
- `SPEED_DEC` (int8): `24`
- `SPEED_COURSE` (int8): `25`
- `SPEED_FINE` (int8): `26`
- `GRIPPER_PWM_INC` (int8): `27`
- `GRIPPER_PWM_DEC` (int8): `28`

### interbotix_xs_msgs/MotorGainsRequest

`Ros1Interbotix_xs_msgsMotorGainsRequest`; 36..292 canonical bytes. `UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| kp_pos | int32 | scalar | 0 | None |
| ki_pos | int32 | scalar | 0 | None |
| kd_pos | int32 | scalar | 0 | None |
| k1 | int32 | scalar | 0 | None |
| k2 | int32 | scalar | 0 | None |
| kp_vel | int32 | scalar | 0 | None |
| ki_vel | int32 | scalar | 0 | None |

### interbotix_xs_msgs/MotorGainsResponse

`Ros1Interbotix_xs_msgsMotorGainsResponse`; 0..0 canonical bytes. `UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/OperatingModesRequest

`Ros1Interbotix_xs_msgsOperatingModesRequest`; 24..536 canonical bytes. `UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| mode | string | scalar | 128 | None |
| profile_type | string | scalar | 128 | None |
| profile_velocity | int32 | scalar | 0 | None |
| profile_acceleration | int32 | scalar | 0 | None |

### interbotix_xs_msgs/OperatingModesResponse

`Ros1Interbotix_xs_msgsOperatingModesResponse`; 0..0 canonical bytes. `UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/RebootRequest

`Ros1Interbotix_xs_msgsRebootRequest`; 10..266 canonical bytes. `UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| enable | bool | scalar | 0 | None |
| smart_reboot | bool | scalar | 0 | None |

### interbotix_xs_msgs/RebootResponse

`Ros1Interbotix_xs_msgsRebootResponse`; 0..0 canonical bytes. `UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/RegisterValuesRequest

`Ros1Interbotix_xs_msgsRegisterValuesRequest`; 16..400 canonical bytes. `UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| reg | string | scalar | 128 | None |
| value | int32 | scalar | 0 | None |

### interbotix_xs_msgs/RegisterValuesResponse

`Ros1Interbotix_xs_msgsRegisterValuesResponse`; 4..68 canonical bytes. `UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| values | int32 | sequence/16 | 0 | None |

### interbotix_xs_msgs/RobotInfoRequest

`Ros1Interbotix_xs_msgsRobotInfoRequest`; 8..264 canonical bytes. `UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |

### interbotix_xs_msgs/RobotInfoResponse

`Ros1Interbotix_xs_msgsRobotInfoResponse`; 42..18474 canonical bytes. `UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| mode | string | scalar | 128 | None |
| profile_type | string | scalar | 128 | None |
| joint_names | string | sequence/64 | 128 | None |
| joint_ids | int16 | sequence/64 | 0 | None |
| joint_lower_limits | float32 | sequence/64 | 0 | None |
| joint_upper_limits | float32 | sequence/64 | 0 | None |
| joint_velocity_limits | float32 | sequence/64 | 0 | None |
| joint_sleep_positions | float32 | sequence/64 | 0 | None |
| joint_state_indices | int16 | sequence/64 | 0 | None |
| num_joints | int16 | scalar | 0 | None |
| name | string | sequence/64 | 128 | None |

### interbotix_xs_msgs/TorqueEnableRequest

`Ros1Interbotix_xs_msgsTorqueEnableRequest`; 9..265 canonical bytes. `UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| enable | bool | scalar | 0 | None |

### interbotix_xs_msgs/TorqueEnableResponse

`Ros1Interbotix_xs_msgsTorqueEnableResponse`; 0..0 canonical bytes. `UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/TurretJoy

`Ros1Interbotix_xs_msgsTurretJoy`; 4..4 canonical bytes. `UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pan_cmd | int8 | scalar | 0 | None |
| tilt_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `PAN_CCW` (int8): `1`
- `PAN_CW` (int8): `2`
- `TILT_UP` (int8): `3`
- `TILT_DOWN` (int8): `4`
- `PAN_TILT_HOME` (int8): `5`
- `SPEED_INC` (int8): `6`
- `SPEED_DEC` (int8): `7`
- `SPEED_COURSE` (int8): `8`
- `SPEED_FINE` (int8): `9`

### xarm_msgs/ClearErrRequest

`Ros1Xarm_msgsClearErrRequest`; 0..0 canonical bytes. `UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### xarm_msgs/ClearErrResponse

`Ros1Xarm_msgsClearErrResponse`; 6..134 canonical bytes. `UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/ConfigToolModbusRequest

`Ros1Xarm_msgsConfigToolModbusRequest`; 8..8 canonical bytes. `UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| baud_rate | int32 | scalar | 0 | None |
| timeout_ms | int32 | scalar | 0 | None |

### xarm_msgs/ConfigToolModbusResponse

`Ros1Xarm_msgsConfigToolModbusResponse`; 6..134 canonical bytes. `UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| message | string | scalar | 128 | None |
| ret | int16 | scalar | 0 | None |

### xarm_msgs/GetAnalogIORequest

`Ros1Xarm_msgsGetAnalogIORequest`; 2..2 canonical bytes. `UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| port_num | int16 | scalar | 0 | None |

### xarm_msgs/GetAnalogIOResponse

`Ros1Xarm_msgsGetAnalogIOResponse`; 10..138 canonical bytes. `UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| analog_value | float32 | scalar | 0 | None |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/GetControllerDigitalIORequest

`Ros1Xarm_msgsGetControllerDigitalIORequest`; 2..2 canonical bytes. `UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| io_num | int16 | scalar | 0 | None |

### xarm_msgs/GetControllerDigitalIOResponse

`Ros1Xarm_msgsGetControllerDigitalIOResponse`; 8..136 canonical bytes. `UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| value | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/GetDigitalIORequest

`Ros1Xarm_msgsGetDigitalIORequest`; 0..0 canonical bytes. `UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### xarm_msgs/GetDigitalIOResponse

`Ros1Xarm_msgsGetDigitalIOResponse`; 14..142 canonical bytes. `UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| digital_1 | int32 | scalar | 0 | None |
| digital_2 | int32 | scalar | 0 | None |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/GetErrRequest

`Ros1Xarm_msgsGetErrRequest`; 0..0 canonical bytes. `UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### xarm_msgs/GetErrResponse

`Ros1Xarm_msgsGetErrResponse`; 6..134 canonical bytes. `UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| err | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/GripperConfigRequest

`Ros1Xarm_msgsGripperConfigRequest`; 4..4 canonical bytes. `UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pulse_vel | float32 | scalar | 0 | None |

### xarm_msgs/GripperConfigResponse

`Ros1Xarm_msgsGripperConfigResponse`; 6..134 canonical bytes. `UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/GripperMoveRequest

`Ros1Xarm_msgsGripperMoveRequest`; 4..4 canonical bytes. `UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pulse_pos | float32 | scalar | 0 | None |

### xarm_msgs/GripperMoveResponse

`Ros1Xarm_msgsGripperMoveResponse`; 6..134 canonical bytes. `UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/GripperStateRequest

`Ros1Xarm_msgsGripperStateRequest`; 0..0 canonical bytes. `UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### xarm_msgs/GripperStateResponse

`Ros1Xarm_msgsGripperStateResponse`; 6..6 canonical bytes. `UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| curr_pos | float32 | scalar | 0 | None |
| err_code | int16 | scalar | 0 | None |

### xarm_msgs/IOState

`Ros1Xarm_msgsIOState`; 16..16 canonical bytes. `UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| digital_1 | int32 | scalar | 0 | None |
| digital_2 | int32 | scalar | 0 | None |
| analog_1 | float32 | scalar | 0 | None |
| analog_2 | float32 | scalar | 0 | None |

### xarm_msgs/MoveRequest

`Ros1Xarm_msgsMoveRequest`; 20..84 canonical bytes. `UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pose | float32 | sequence/16 | 0 | None |
| mvvelo | float32 | scalar | 0 | None |
| mvacc | float32 | scalar | 0 | None |
| mvtime | float32 | scalar | 0 | None |
| mvradii | float32 | scalar | 0 | None |

### xarm_msgs/MoveResponse

`Ros1Xarm_msgsMoveResponse`; 6..134 canonical bytes. `UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/RobotMsg

`Ros1Xarm_msgsRobotMsg`; 66..130 canonical bytes. `UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| state | int16 | scalar | 0 | None |
| mode | int16 | scalar | 0 | None |
| cmdnum | int16 | scalar | 0 | None |
| mt_brake | int16 | scalar | 0 | None |
| mt_able | int16 | scalar | 0 | None |
| err | int16 | scalar | 0 | None |
| warn | int16 | scalar | 0 | None |
| angle | float32 | sequence/16 | 0 | None |
| pose | float32 | array/6 | 0 | None |
| offset | float32 | array/6 | 0 | None |

### xarm_msgs/SetAxisRequest

`Ros1Xarm_msgsSetAxisRequest`; 4..4 canonical bytes. `UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| id | int16 | scalar | 0 | None |
| data | int16 | scalar | 0 | None |

### xarm_msgs/SetAxisResponse

`Ros1Xarm_msgsSetAxisResponse`; 6..134 canonical bytes. `UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/SetDigitalIORequest

`Ros1Xarm_msgsSetDigitalIORequest`; 4..4 canonical bytes. `UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| io_num | int16 | scalar | 0 | None |
| value | int16 | scalar | 0 | None |

### xarm_msgs/SetDigitalIOResponse

`Ros1Xarm_msgsSetDigitalIOResponse`; 6..134 canonical bytes. `UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/SetInt16Request

`Ros1Xarm_msgsSetInt16Request`; 2..2 canonical bytes. `UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| data | int16 | scalar | 0 | None |

### xarm_msgs/SetInt16Response

`Ros1Xarm_msgsSetInt16Response`; 6..134 canonical bytes. `UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/SetLoadRequest

`Ros1Xarm_msgsSetLoadRequest`; 16..16 canonical bytes. `UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| mass | float32 | scalar | 0 | None |
| xc | float32 | scalar | 0 | None |
| yc | float32 | scalar | 0 | None |
| zc | float32 | scalar | 0 | None |

### xarm_msgs/SetLoadResponse

`Ros1Xarm_msgsSetLoadResponse`; 6..134 canonical bytes. `UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/SetToolModbusRequest

`Ros1Xarm_msgsSetToolModbusRequest`; 6..262 canonical bytes. `UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| send_data | uint8 | sequence/256 | 0 | None |
| respond_len | int16 | scalar | 0 | None |

### xarm_msgs/SetToolModbusResponse

`Ros1Xarm_msgsSetToolModbusResponse`; 6..262 canonical bytes. `UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| respond_data | uint8 | sequence/256 | 0 | None |

### xarm_msgs/TCPOffsetRequest

`Ros1Xarm_msgsTCPOffsetRequest`; 24..24 canonical bytes. `UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| x | float32 | scalar | 0 | None |
| y | float32 | scalar | 0 | None |
| z | float32 | scalar | 0 | None |
| roll | float32 | scalar | 0 | None |
| pitch | float32 | scalar | 0 | None |
| yaw | float32 | scalar | 0 | None |

### xarm_msgs/TCPOffsetResponse

`Ros1Xarm_msgsTCPOffsetResponse`; 6..134 canonical bytes. `UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### Complete protocol components

- `interbotix_xs_msgs/ArmJoy` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/ArmJoy', 'members': [{'name': 'ee_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_roll_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'waist_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_pwm_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'torque_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/ArmJoy.msg', 'bytes': 1917, 'sha256': 'dc1c79a173d9802da2313e12152fea0457a1b2f81b3332131a46ad2fb3fb71c3'}, 'component': '', 'owner': 'interbotix_xs_msgs/ArmJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 12, 'nodes': 13, 'depth': 2, 'codec_identity': 'UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 12, 'constants': [{'name': 'EE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'EE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'EE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'EE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'EE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'EE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'EE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'EE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'EE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'EE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'WAIST_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'WAIST_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'GRIPPER_OPEN', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'GRIPPER_CLOSE', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'SPEED_COURSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'GRIPPER_PWM_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'GRIPPER_PWM_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'TORQUE_ON', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'TORQUE_OFF', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}]}}`.
- `interbotix_xs_msgs/HexJoy` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/HexJoy', 'members': [{'name': 'world_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'world_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'world_yaw_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_roll_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'move_type_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gait_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'leg_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'stance_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'reboot_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'set_home_pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/HexJoy.msg', 'bytes': 2160, 'sha256': 'e1082530c48ce50c208518d4b40f641c8fd38726e76832572e2c336c6ebfe267'}, 'component': '', 'owner': 'interbotix_xs_msgs/HexJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 17, 'maximum': 17, 'nodes': 18, 'depth': 2, 'codec_identity': 'UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 17, 'constants': [{'name': 'WORLD_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'WORLD_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'WORLD_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'WORLD_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'WORLD_YAW_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'WORLD_YAW_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'PLACE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'PLACE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'PLACE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'PLACE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'PLACE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'PLACE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'PLACE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'PLACE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'PLACE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'PLACE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'MOVE_HEXAPOD', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'MOVE_LEG', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'GAIT_NEXT', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'GAIT_PREVIOUS', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'LEG_NEXT', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'LEG_PREVIOUS', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}, {'name': 'WIDEN_STANCE', 'type': 'int8', 'native_type': 'int8', 'literal': '25', 'value': '25'}, {'name': 'NARROW_STANCE', 'type': 'int8', 'native_type': 'int8', 'literal': '26', 'value': '26'}, {'name': 'REBOOT_MOTORS', 'type': 'int8', 'native_type': 'int8', 'literal': '27', 'value': '27'}, {'name': 'SET_HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '28', 'value': '28'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '29', 'value': '29'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '30', 'value': '30'}, {'name': 'SPEED_COURSE', 'type': 'int8', 'native_type': 'int8', 'literal': '31', 'value': '31'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '32', 'value': '32'}]}}`.
- `interbotix_xs_msgs/JointGroupCommand` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/JointGroupCommand', 'members': [{'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cmd', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointGroupCommand.msg', 'bytes': 474, 'sha256': 'b85955c32e0fcaca05feeabe663b495e93ba5e85d26d4becf91d72dd09b04d44'}, 'component': '', 'owner': 'interbotix_xs_msgs/JointGroupCommand', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 392, 'nodes': 67, 'depth': 3, 'codec_identity': 'UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 392, 'constants': []}}`.
- `interbotix_xs_msgs/JointSingleCommand` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/JointSingleCommand', 'members': [{'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cmd', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointSingleCommand.msg', 'bytes': 303, 'sha256': 'bbe2faaa92bcffd29c5f1e449f3e1aaaf68938f85bb1ab77cb228fe99806b77b'}, 'component': '', 'owner': 'interbotix_xs_msgs/JointSingleCommand', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 136, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 136, 'constants': []}}`.
- `interbotix_xs_msgs/JointTemps` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/JointTemps', 'members': [{'name': 'names', 'type': 'string', 'array': 'sequence', 'count': 64, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'temps', 'type': 'int32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointTemps.msg', 'bytes': 169, 'sha256': 'e0798d4b96836b4836a540161fefb8071998ef948e5fb09b5e29a8bb3d9a4622'}, 'component': '', 'owner': 'interbotix_xs_msgs/JointTemps', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8712, 'nodes': 131, 'depth': 3, 'codec_identity': 'UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8712, 'constants': []}}`.
- `interbotix_xs_msgs/JointTrajectoryCommand` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/JointTrajectoryCommand', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'traj', 'type': 'trajectory_msgs/JointTrajectory', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointTrajectoryCommand.msg', 'bytes': 590, 'sha256': '185e5828609989f3732b76e3f80adb0ffc800e808a4064c6e6751db986970502'}, 'component': '', 'owner': 'interbotix_xs_msgs/JointTrajectoryCommand', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 32, 'maximum': 4672, 'nodes': 316, 'depth': 6, 'codec_identity': 'UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4672, 'constants': []}}`.
- `interbotix_xs_msgs/LocobotJoy` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/LocobotJoy', 'members': [{'name': 'base_x_cmd', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'base_theta_cmd', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'base_reset_odom_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pan_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'tilt_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_roll_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'waist_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_pwm_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/LocobotJoy.msg', 'bytes': 2417, 'sha256': 'e0ce8e86d9cc6dcb240c696a5ab24ed8e29df7a5f295183e8aec606b0b74e559'}, 'component': '', 'owner': 'interbotix_xs_msgs/LocobotJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 30, 'maximum': 30, 'nodes': 17, 'depth': 2, 'codec_identity': 'UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 30, 'constants': [{'name': 'RESET_ODOM', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'PAN_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'PAN_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'TILT_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'TILT_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'PAN_TILT_HOME', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'EE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'EE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'EE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'EE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'EE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'EE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'EE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'EE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'EE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'EE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'WAIST_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'WAIST_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'GRIPPER_OPEN', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'GRIPPER_CLOSE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}, {'name': 'SPEED_COURSE', 'type': 'int8', 'native_type': 'int8', 'literal': '25', 'value': '25'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '26', 'value': '26'}, {'name': 'GRIPPER_PWM_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '27', 'value': '27'}, {'name': 'GRIPPER_PWM_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '28', 'value': '28'}]}}`.
- `interbotix_xs_msgs/MotorGains` (service): `{'request': {'version': 1, 'name': 'interbotix_xs_msgs/MotorGainsRequest', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'kp_pos', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ki_pos', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'kd_pos', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'k1', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'k2', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'kp_vel', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ki_vel', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/MotorGains.srv', 'bytes': 1028, 'sha256': '3d278e42154a1620e4a496c76b345b59bc183bd833ba5aefb6d797bf9c8abe67'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/MotorGains', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 36, 'maximum': 292, 'nodes': 10, 'depth': 2, 'codec_identity': 'UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 292, 'constants': []}, 'response': {'version': 1, 'name': 'interbotix_xs_msgs/MotorGainsResponse', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/MotorGains.srv', 'bytes': 1028, 'sha256': '3d278e42154a1620e4a496c76b345b59bc183bd833ba5aefb6d797bf9c8abe67'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/MotorGains', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/OperatingModes` (service): `{'request': {'version': 1, 'name': 'interbotix_xs_msgs/OperatingModesRequest', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mode', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_velocity', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_acceleration', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/OperatingModes.srv', 'bytes': 3301, 'sha256': 'b8b5344f61f82d8d1264d5510d72bc092f7c5b35d11f001e9d3d7739c6f8b060'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/OperatingModes', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 536, 'nodes': 7, 'depth': 2, 'codec_identity': 'UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 536, 'constants': []}, 'response': {'version': 1, 'name': 'interbotix_xs_msgs/OperatingModesResponse', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/OperatingModes.srv', 'bytes': 3301, 'sha256': 'b8b5344f61f82d8d1264d5510d72bc092f7c5b35d11f001e9d3d7739c6f8b060'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/OperatingModes', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/Reboot` (service): `{'request': {'version': 1, 'name': 'interbotix_xs_msgs/RebootRequest', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'enable', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'smart_reboot', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/Reboot.srv', 'bytes': 847, 'sha256': 'd2a065332528676c8c5378cc41cbd8c611e8c6e479b7bfa1c75e19053d38d17e'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/Reboot', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 10, 'maximum': 266, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 266, 'constants': []}, 'response': {'version': 1, 'name': 'interbotix_xs_msgs/RebootResponse', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/Reboot.srv', 'bytes': 847, 'sha256': 'd2a065332528676c8c5378cc41cbd8c611e8c6e479b7bfa1c75e19053d38d17e'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/Reboot', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/RegisterValues` (service): `{'request': {'version': 1, 'name': 'interbotix_xs_msgs/RegisterValuesRequest', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'reg', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'value', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RegisterValues.srv', 'bytes': 769, 'sha256': 'ff04d128d88437e0f50f452a4a9cfe98b36346179614b0255fc917aeabbdf513'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/RegisterValues', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 16, 'maximum': 400, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 400, 'constants': []}, 'response': {'version': 1, 'name': 'interbotix_xs_msgs/RegisterValuesResponse', 'members': [{'name': 'values', 'type': 'int32', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RegisterValues.srv', 'bytes': 769, 'sha256': 'ff04d128d88437e0f50f452a4a9cfe98b36346179614b0255fc917aeabbdf513'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/RegisterValues', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 68, 'nodes': 18, 'depth': 3, 'codec_identity': 'UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 68, 'constants': []}}`.
- `interbotix_xs_msgs/RobotInfo` (service): `{'request': {'version': 1, 'name': 'interbotix_xs_msgs/RobotInfoRequest', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RobotInfo.srv', 'bytes': 1761, 'sha256': '5953ba2fdd8f7cd3d858dd002e7e7ec2de6960d4c9c82ce1ddc5c6177e6ce163'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/RobotInfo', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 264, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 264, 'constants': []}, 'response': {'version': 1, 'name': 'interbotix_xs_msgs/RobotInfoResponse', 'members': [{'name': 'mode', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_names', 'type': 'string', 'array': 'sequence', 'count': 64, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_ids', 'type': 'int16', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_lower_limits', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_upper_limits', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_velocity_limits', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_sleep_positions', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_state_indices', 'type': 'int16', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'num_joints', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': 'sequence', 'count': 64, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RobotInfo.srv', 'bytes': 1761, 'sha256': '5953ba2fdd8f7cd3d858dd002e7e7ec2de6960d4c9c82ce1ddc5c6177e6ce163'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/RobotInfo', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 42, 'maximum': 18474, 'nodes': 524, 'depth': 3, 'codec_identity': 'UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 18474, 'constants': []}}`.
- `interbotix_xs_msgs/TorqueEnable` (service): `{'request': {'version': 1, 'name': 'interbotix_xs_msgs/TorqueEnableRequest', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'enable', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/TorqueEnable.srv', 'bytes': 329, 'sha256': '0f382d2c2c46af302521729c73400427bd8d6a35000c3a310e78913e78b59c9f'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/TorqueEnable', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 9, 'maximum': 265, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 265, 'constants': []}, 'response': {'version': 1, 'name': 'interbotix_xs_msgs/TorqueEnableResponse', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/TorqueEnable.srv', 'bytes': 329, 'sha256': '0f382d2c2c46af302521729c73400427bd8d6a35000c3a310e78913e78b59c9f'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/TorqueEnable', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/TurretJoy` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/TurretJoy', 'members': [{'name': 'pan_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'tilt_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/TurretJoy.msg', 'bytes': 1029, 'sha256': '8918e08d1f7b602fde321996f484e1aa2c5a620430eb0be95ca690e5276d1f8b'}, 'component': '', 'owner': 'interbotix_xs_msgs/TurretJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': [{'name': 'PAN_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'PAN_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'TILT_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'TILT_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'PAN_TILT_HOME', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'SPEED_COURSE', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}]}}`.
- `std_msgs/Header` (message): `{'message': {'version': 1, 'name': 'std_msgs/Header', 'members': [{'name': 'seq', 'type': 'uint32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'stamp', 'type': 'time', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'frame_id', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_msgs/msg/Header.msg', 'bytes': 551, 'sha256': '5e64e71bb8d9d47019367f6a621934aab7e6ffedc6cfdcc912486aa5576ed693'}, 'component': '', 'owner': 'std_msgs/Header', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 16, 'maximum': 144, 'nodes': 6, 'depth': 3, 'codec_identity': 'UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 144, 'constants': []}}`.
- `trajectory_msgs/JointTrajectory` (message): `{'message': {'version': 1, 'name': 'trajectory_msgs/JointTrajectory', 'members': [{'name': 'header', 'type': 'std_msgs/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_names', 'type': 'string', 'array': 'sequence', 'count': 16, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'points', 'type': 'trajectory_msgs/JointTrajectoryPoint', 'array': 'sequence', 'count': 4, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'trajectory_msgs/msg/JointTrajectory.msg', 'bytes': 65, 'sha256': 'c3fd593dfc91e9084316bd8ea8c9c11be65c93dad98609e135ec491574a8f05c'}, 'component': '', 'owner': 'trajectory_msgs/JointTrajectory', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 4408, 'nodes': 313, 'depth': 5, 'codec_identity': 'UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4408, 'constants': []}}`.
- `trajectory_msgs/JointTrajectoryPoint` (message): `{'message': {'version': 1, 'name': 'trajectory_msgs/JointTrajectoryPoint', 'members': [{'name': 'positions', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'velocities', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'accelerations', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'effort', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'time_from_start', 'type': 'duration', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'trajectory_msgs/msg/JointTrajectoryPoint.msg', 'bytes': 337, 'sha256': 'd6bdced3460bf402a86274ccccf7fd7876cae1d70c8610fb6ca684da6057b9a2'}, 'component': '', 'owner': 'trajectory_msgs/JointTrajectoryPoint', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 536, 'nodes': 72, 'depth': 3, 'codec_identity': 'UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 536, 'constants': []}}`.
- `xarm_msgs/ClearErr` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/ClearErrRequest', 'members': [], 'identity': None, 'source': {'file': 'xarm_msgs/srv/ClearErr.srv', 'bytes': 31, 'sha256': '628c788bacb726db5a6041035cde0f64d3e65abc94014f33155146ab9defc096'}, 'component': 'request', 'owner': 'xarm_msgs/ClearErr', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/ClearErrResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/ClearErr.srv', 'bytes': 31, 'sha256': '628c788bacb726db5a6041035cde0f64d3e65abc94014f33155146ab9defc096'}, 'component': 'response', 'owner': 'xarm_msgs/ClearErr', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/ConfigToolModbus` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/ConfigToolModbusRequest', 'members': [{'name': 'baud_rate', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'timeout_ms', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/ConfigToolModbus.srv', 'bytes': 200, 'sha256': 'b24ed91b77d7b6fd0b611fc52a5e18fa5171ff2240150f0c8b015342b78bc052'}, 'component': 'request', 'owner': 'xarm_msgs/ConfigToolModbus', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/ConfigToolModbusResponse', 'members': [{'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/ConfigToolModbus.srv', 'bytes': 200, 'sha256': 'b24ed91b77d7b6fd0b611fc52a5e18fa5171ff2240150f0c8b015342b78bc052'}, 'component': 'response', 'owner': 'xarm_msgs/ConfigToolModbus', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/GetAnalogIO` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/GetAnalogIORequest', 'members': [{'name': 'port_num', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetAnalogIO.srv', 'bytes': 134, 'sha256': '919b9927ab303b93997651a29573632fd85017e12e107e453b2c490518ffe9d1'}, 'component': 'request', 'owner': 'xarm_msgs/GetAnalogIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 2, 'maximum': 2, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 2, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/GetAnalogIOResponse', 'members': [{'name': 'analog_value', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetAnalogIO.srv', 'bytes': 134, 'sha256': '919b9927ab303b93997651a29573632fd85017e12e107e453b2c490518ffe9d1'}, 'component': 'response', 'owner': 'xarm_msgs/GetAnalogIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 10, 'maximum': 138, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 138, 'constants': []}}`.
- `xarm_msgs/GetControllerDigitalIO` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/GetControllerDigitalIORequest', 'members': [{'name': 'io_num', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetControllerDigitalIO.srv', 'bytes': 131, 'sha256': 'cccdba67406fe93d1edc89b7788d69dd64a61bb80199b1df53f8bfb6b815dd1b'}, 'component': 'request', 'owner': 'xarm_msgs/GetControllerDigitalIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 2, 'maximum': 2, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 2, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/GetControllerDigitalIOResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'value', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetControllerDigitalIO.srv', 'bytes': 131, 'sha256': 'cccdba67406fe93d1edc89b7788d69dd64a61bb80199b1df53f8bfb6b815dd1b'}, 'component': 'response', 'owner': 'xarm_msgs/GetControllerDigitalIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 136, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 136, 'constants': []}}`.
- `xarm_msgs/GetDigitalIO` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/GetDigitalIORequest', 'members': [], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetDigitalIO.srv', 'bytes': 124, 'sha256': 'ffd42a0f96df19af0f8ec2368e7b09c9fdae85eaa8f2e738cfd7f7b93baf371e'}, 'component': 'request', 'owner': 'xarm_msgs/GetDigitalIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/GetDigitalIOResponse', 'members': [{'name': 'digital_1', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'digital_2', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetDigitalIO.srv', 'bytes': 124, 'sha256': 'ffd42a0f96df19af0f8ec2368e7b09c9fdae85eaa8f2e738cfd7f7b93baf371e'}, 'component': 'response', 'owner': 'xarm_msgs/GetDigitalIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 14, 'maximum': 142, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 142, 'constants': []}}`.
- `xarm_msgs/GetErr` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/GetErrRequest', 'members': [], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetErr.srv', 'bytes': 31, 'sha256': '9e243ab06b15441e64d215fcc93906a2c0bc0f99fc6ca8d80ada2d6b7a0f1891'}, 'component': 'request', 'owner': 'xarm_msgs/GetErr', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/GetErrResponse', 'members': [{'name': 'err', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetErr.srv', 'bytes': 31, 'sha256': '9e243ab06b15441e64d215fcc93906a2c0bc0f99fc6ca8d80ada2d6b7a0f1891'}, 'component': 'response', 'owner': 'xarm_msgs/GetErr', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/GripperConfig` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/GripperConfigRequest', 'members': [{'name': 'pulse_vel', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GripperConfig.srv', 'bytes': 104, 'sha256': 'a8931c1d78b7c9bdbaaf88d7bfb39e0bfe0278243c0fb56ca54daeec287800a7'}, 'component': 'request', 'owner': 'xarm_msgs/GripperConfig', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/GripperConfigResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GripperConfig.srv', 'bytes': 104, 'sha256': 'a8931c1d78b7c9bdbaaf88d7bfb39e0bfe0278243c0fb56ca54daeec287800a7'}, 'component': 'response', 'owner': 'xarm_msgs/GripperConfig', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/GripperMove` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/GripperMoveRequest', 'members': [{'name': 'pulse_pos', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GripperMove.srv', 'bytes': 113, 'sha256': 'ce9c3036fe1c3f582a8a35f1acdcbb10f7856a380082008b3209d0da4a4f29d7'}, 'component': 'request', 'owner': 'xarm_msgs/GripperMove', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/GripperMoveResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GripperMove.srv', 'bytes': 113, 'sha256': 'ce9c3036fe1c3f582a8a35f1acdcbb10f7856a380082008b3209d0da4a4f29d7'}, 'component': 'response', 'owner': 'xarm_msgs/GripperMove', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/GripperState` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/GripperStateRequest', 'members': [], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GripperState.srv', 'bytes': 36, 'sha256': '45a766584b32919c5988f428518e244684174aadd06526c3d16ce443afaf4595'}, 'component': 'request', 'owner': 'xarm_msgs/GripperState', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/GripperStateResponse', 'members': [{'name': 'curr_pos', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'err_code', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GripperState.srv', 'bytes': 36, 'sha256': '45a766584b32919c5988f428518e244684174aadd06526c3d16ce443afaf4595'}, 'component': 'response', 'owner': 'xarm_msgs/GripperState', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 6, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 6, 'constants': []}}`.
- `xarm_msgs/IOState` (message): `{'message': {'version': 1, 'name': 'xarm_msgs/IOState', 'members': [{'name': 'digital_1', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'digital_2', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'analog_1', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'analog_2', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/msg/IOState.msg', 'bytes': 127, 'sha256': 'c3d02e687885003c4a9bbab24d5a256f1eb6ee05bd0ff777230cdb90dd568106'}, 'component': '', 'owner': 'xarm_msgs/IOState', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 16, 'maximum': 16, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 16, 'constants': []}}`.
- `xarm_msgs/Move` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/MoveRequest', 'members': [{'name': 'pose', 'type': 'float32', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mvvelo', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mvacc', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mvtime', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mvradii', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/Move.srv', 'bytes': 1230, 'sha256': '0678f5c17aa82f1f8c63d2a6b4ff1d1258d5162c7031752d7c5519c12cb9df48'}, 'component': 'request', 'owner': 'xarm_msgs/Move', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 20, 'maximum': 84, 'nodes': 22, 'depth': 3, 'codec_identity': 'UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 84, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/MoveResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/Move.srv', 'bytes': 1230, 'sha256': '0678f5c17aa82f1f8c63d2a6b4ff1d1258d5162c7031752d7c5519c12cb9df48'}, 'component': 'response', 'owner': 'xarm_msgs/Move', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/RobotMsg` (message): `{'message': {'version': 1, 'name': 'xarm_msgs/RobotMsg', 'members': [{'name': 'state', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mode', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cmdnum', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mt_brake', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mt_able', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'err', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'warn', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angle', 'type': 'float32', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose', 'type': 'float32', 'array': 'array', 'count': 6, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'offset', 'type': 'float32', 'array': 'array', 'count': 6, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/msg/RobotMsg.msg', 'bytes': 1336, 'sha256': 'c262d81f5340df7fac964ec63ab28853eec3b8c3d9566772c57009e4a07b6133'}, 'component': '', 'owner': 'xarm_msgs/RobotMsg', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 66, 'maximum': 130, 'nodes': 39, 'depth': 3, 'codec_identity': 'UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 130, 'constants': []}}`.
- `xarm_msgs/SetAxis` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/SetAxisRequest', 'members': [{'name': 'id', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'data', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetAxis.srv', 'bytes': 413, 'sha256': 'a9b014f610e35c528393dc98bc7fefc405660a63c96266abaab5d70cf1e92fc4'}, 'component': 'request', 'owner': 'xarm_msgs/SetAxis', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/SetAxisResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetAxis.srv', 'bytes': 413, 'sha256': 'a9b014f610e35c528393dc98bc7fefc405660a63c96266abaab5d70cf1e92fc4'}, 'component': 'response', 'owner': 'xarm_msgs/SetAxis', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/SetDigitalIO` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/SetDigitalIORequest', 'members': [{'name': 'io_num', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'value', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetDigitalIO.srv', 'bytes': 118, 'sha256': '7502a8224c9e1be1d1499152888a8d149435e3f259d9f9dd12888cab578aa285'}, 'component': 'request', 'owner': 'xarm_msgs/SetDigitalIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/SetDigitalIOResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetDigitalIO.srv', 'bytes': 118, 'sha256': '7502a8224c9e1be1d1499152888a8d149435e3f259d9f9dd12888cab578aa285'}, 'component': 'response', 'owner': 'xarm_msgs/SetDigitalIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/SetInt16` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/SetInt16Request', 'members': [{'name': 'data', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetInt16.srv', 'bytes': 314, 'sha256': '58f944f7e2d1fe44d2faccb923ec6313bf4374014f56c51ad2e164c38b091cb7'}, 'component': 'request', 'owner': 'xarm_msgs/SetInt16', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 2, 'maximum': 2, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 2, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/SetInt16Response', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetInt16.srv', 'bytes': 314, 'sha256': '58f944f7e2d1fe44d2faccb923ec6313bf4374014f56c51ad2e164c38b091cb7'}, 'component': 'response', 'owner': 'xarm_msgs/SetInt16', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/SetLoad` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/SetLoadRequest', 'members': [{'name': 'mass', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'xc', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'yc', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'zc', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetLoad.srv', 'bytes': 245, 'sha256': '07b20a42f946c734967d47051d81d6ac9823d59870671f5fe079a7e48ee7fad8'}, 'component': 'request', 'owner': 'xarm_msgs/SetLoad', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 16, 'maximum': 16, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 16, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/SetLoadResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetLoad.srv', 'bytes': 245, 'sha256': '07b20a42f946c734967d47051d81d6ac9823d59870671f5fe079a7e48ee7fad8'}, 'component': 'response', 'owner': 'xarm_msgs/SetLoad', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/SetToolModbus` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/SetToolModbusRequest', 'members': [{'name': 'send_data', 'type': 'uint8', 'array': 'sequence', 'count': 256, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'respond_len', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetToolModbus.srv', 'bytes': 199, 'sha256': '347d778e26bc59f41d3a8021931eff5c63223a6960de22bf206fa76b1eca6662'}, 'component': 'request', 'owner': 'xarm_msgs/SetToolModbus', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 262, 'nodes': 4, 'depth': 3, 'codec_identity': 'UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 262, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/SetToolModbusResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'respond_data', 'type': 'uint8', 'array': 'sequence', 'count': 256, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetToolModbus.srv', 'bytes': 199, 'sha256': '347d778e26bc59f41d3a8021931eff5c63223a6960de22bf206fa76b1eca6662'}, 'component': 'response', 'owner': 'xarm_msgs/SetToolModbus', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 262, 'nodes': 4, 'depth': 3, 'codec_identity': 'UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 262, 'constants': []}}`.
- `xarm_msgs/TCPOffset` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/TCPOffsetRequest', 'members': [{'name': 'x', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'y', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'z', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'roll', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pitch', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'yaw', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/TCPOffset.srv', 'bytes': 218, 'sha256': 'b718883494cc3cb5d0d51483e9cedce4204a617dd529e5b607e1527605f07335'}, 'component': 'request', 'owner': 'xarm_msgs/TCPOffset', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 24, 'nodes': 7, 'depth': 2, 'codec_identity': 'UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 24, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/TCPOffsetResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/TCPOffset.srv', 'bytes': 218, 'sha256': 'b718883494cc3cb5d0d51483e9cedce4204a617dd529e5b607e1527605f07335'}, 'component': 'response', 'owner': 'xarm_msgs/TCPOffset', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.

## ros1_noetic

ros1: 61 records, 23 services, 0 actions.

Catalog: `share/platform/trossen/catalogs/ros1_noetic/catalog.json`. Source pins: `source-lock.json`.

Upstream witnesses: `{'repository': 'Interbotix/interbotix_ros_core', 'branch': 'noetic', 'commit': '172841ffa93f7556fff9c7455ad0e77688fa156e'}`.

### interbotix_slate_msgs/SetStringRequest

`Ros1Interbotix_slate_msgsSetStringRequest`; 4..132 canonical bytes. `UWVMROS1_bc58f043e73f33d5b3923bca8a1d515f62f405f3365b83adb17311a728d2f105`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| data | string | scalar | 128 | None |

### interbotix_slate_msgs/SetStringResponse

`Ros1Interbotix_slate_msgsSetStringResponse`; 5..133 canonical bytes. `UWVMROS1_6f3a05dbee380f0a0f5b24b75833a99857293e656d705e4322b4b3f97a5e530c`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | 0 | None |
| message | string | scalar | 128 | None |

### interbotix_xs_msgs/ArmJoy

`Ros1Interbotix_xs_msgsArmJoy`; 12..12 canonical bytes. `UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ee_x_cmd | int8 | scalar | 0 | None |
| ee_y_cmd | int8 | scalar | 0 | None |
| ee_z_cmd | int8 | scalar | 0 | None |
| ee_roll_cmd | int8 | scalar | 0 | None |
| ee_pitch_cmd | int8 | scalar | 0 | None |
| waist_cmd | int8 | scalar | 0 | None |
| gripper_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |
| gripper_pwm_cmd | int8 | scalar | 0 | None |
| torque_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `EE_X_INC` (int8): `1`
- `EE_X_DEC` (int8): `2`
- `EE_Y_INC` (int8): `3`
- `EE_Y_DEC` (int8): `4`
- `EE_Z_INC` (int8): `5`
- `EE_Z_DEC` (int8): `6`
- `EE_ROLL_CCW` (int8): `7`
- `EE_ROLL_CW` (int8): `8`
- `EE_PITCH_UP` (int8): `9`
- `EE_PITCH_DOWN` (int8): `10`
- `WAIST_CCW` (int8): `11`
- `WAIST_CW` (int8): `12`
- `GRIPPER_OPEN` (int8): `13`
- `GRIPPER_CLOSE` (int8): `14`
- `HOME_POSE` (int8): `15`
- `SLEEP_POSE` (int8): `16`
- `SPEED_INC` (int8): `17`
- `SPEED_DEC` (int8): `18`
- `SPEED_COURSE` (int8): `19`
- `SPEED_FINE` (int8): `20`
- `GRIPPER_PWM_INC` (int8): `21`
- `GRIPPER_PWM_DEC` (int8): `22`
- `TORQUE_ON` (int8): `23`
- `TORQUE_OFF` (int8): `24`

### interbotix_xs_msgs/HexJoy

`Ros1Interbotix_xs_msgsHexJoy`; 17..17 canonical bytes. `UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| world_x_cmd | int8 | scalar | 0 | None |
| world_y_cmd | int8 | scalar | 0 | None |
| world_yaw_cmd | int8 | scalar | 0 | None |
| place_x_cmd | int8 | scalar | 0 | None |
| place_y_cmd | int8 | scalar | 0 | None |
| place_z_cmd | int8 | scalar | 0 | None |
| place_roll_cmd | int8 | scalar | 0 | None |
| place_pitch_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| move_type_cmd | int8 | scalar | 0 | None |
| gait_toggle_cmd | int8 | scalar | 0 | None |
| leg_toggle_cmd | int8 | scalar | 0 | None |
| stance_cmd | int8 | scalar | 0 | None |
| reboot_cmd | int8 | scalar | 0 | None |
| set_home_pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `WORLD_X_INC` (int8): `1`
- `WORLD_X_DEC` (int8): `2`
- `WORLD_Y_INC` (int8): `3`
- `WORLD_Y_DEC` (int8): `4`
- `WORLD_YAW_CCW` (int8): `5`
- `WORLD_YAW_CW` (int8): `6`
- `PLACE_X_INC` (int8): `7`
- `PLACE_X_DEC` (int8): `8`
- `PLACE_Y_INC` (int8): `9`
- `PLACE_Y_DEC` (int8): `10`
- `PLACE_Z_INC` (int8): `11`
- `PLACE_Z_DEC` (int8): `12`
- `PLACE_ROLL_CCW` (int8): `13`
- `PLACE_ROLL_CW` (int8): `14`
- `PLACE_PITCH_UP` (int8): `15`
- `PLACE_PITCH_DOWN` (int8): `16`
- `MOVE_HEXAPOD` (int8): `17`
- `MOVE_LEG` (int8): `18`
- `HOME_POSE` (int8): `19`
- `SLEEP_POSE` (int8): `20`
- `GAIT_NEXT` (int8): `21`
- `GAIT_PREVIOUS` (int8): `22`
- `LEG_NEXT` (int8): `23`
- `LEG_PREVIOUS` (int8): `24`
- `WIDEN_STANCE` (int8): `25`
- `NARROW_STANCE` (int8): `26`
- `REBOOT_MOTORS` (int8): `27`
- `SET_HOME_POSE` (int8): `28`
- `SPEED_INC` (int8): `29`
- `SPEED_DEC` (int8): `30`
- `SPEED_COURSE` (int8): `31`
- `SPEED_FINE` (int8): `32`

### interbotix_xs_msgs/JointGroupCommand

`Ros1Interbotix_xs_msgsJointGroupCommand`; 8..392 canonical bytes. `UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | None |
| cmd | float32 | sequence/64 | 0 | None |

### interbotix_xs_msgs/JointSingleCommand

`Ros1Interbotix_xs_msgsJointSingleCommand`; 8..136 canonical bytes. `UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | None |
| cmd | float32 | scalar | 0 | None |

### interbotix_xs_msgs/JointTemps

`Ros1Interbotix_xs_msgsJointTemps`; 8..8712 canonical bytes. `UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| names | string | sequence/64 | 128 | None |
| temps | int32 | sequence/64 | 0 | None |

### time

`Ros1Time`; 8..8 canonical bytes. `UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| sec | uint32 | scalar | 0 | None |
| nsec | uint32 | scalar | 0 | None |

### std_msgs/Header

`Ros1Std_msgsHeader`; 16..144 canonical bytes. `UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| seq | uint32 | scalar | 0 | None |
| stamp | time | scalar | 0 | None |
| frame_id | string | scalar | 128 | None |

### duration

`Ros1Duration`; 8..8 canonical bytes. `UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| sec | int32 | scalar | 0 | None |
| nsec | int32 | scalar | 0 | None |

### trajectory_msgs/JointTrajectoryPoint

`Ros1Trajectory_msgsJointTrajectoryPoint`; 24..536 canonical bytes. `UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| positions | float64 | sequence/16 | 0 | None |
| velocities | float64 | sequence/16 | 0 | None |
| accelerations | float64 | sequence/16 | 0 | None |
| effort | float64 | sequence/16 | 0 | None |
| time_from_start | duration | scalar | 0 | None |

### trajectory_msgs/JointTrajectory

`Ros1Trajectory_msgsJointTrajectory`; 24..4408 canonical bytes. `UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | 0 | None |
| joint_names | string | sequence/16 | 128 | None |
| points | trajectory_msgs/JointTrajectoryPoint | sequence/4 | 0 | None |

### interbotix_xs_msgs/JointTrajectoryCommand

`Ros1Interbotix_xs_msgsJointTrajectoryCommand`; 32..4672 canonical bytes. `UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| traj | trajectory_msgs/JointTrajectory | scalar | 0 | None |

### interbotix_xs_msgs/LocobotJoy

`Ros1Interbotix_xs_msgsLocobotJoy`; 30..30 canonical bytes. `UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| base_x_cmd | float64 | scalar | 0 | None |
| base_theta_cmd | float64 | scalar | 0 | None |
| base_reset_odom_cmd | int8 | scalar | 0 | None |
| pan_cmd | int8 | scalar | 0 | None |
| tilt_cmd | int8 | scalar | 0 | None |
| ee_x_cmd | int8 | scalar | 0 | None |
| ee_y_cmd | int8 | scalar | 0 | None |
| ee_z_cmd | int8 | scalar | 0 | None |
| ee_roll_cmd | int8 | scalar | 0 | None |
| ee_pitch_cmd | int8 | scalar | 0 | None |
| waist_cmd | int8 | scalar | 0 | None |
| gripper_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |
| gripper_pwm_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `RESET_ODOM` (int8): `1`
- `PAN_CCW` (int8): `2`
- `PAN_CW` (int8): `3`
- `TILT_UP` (int8): `4`
- `TILT_DOWN` (int8): `5`
- `PAN_TILT_HOME` (int8): `6`
- `EE_X_INC` (int8): `7`
- `EE_X_DEC` (int8): `8`
- `EE_Y_INC` (int8): `9`
- `EE_Y_DEC` (int8): `10`
- `EE_Z_INC` (int8): `11`
- `EE_Z_DEC` (int8): `12`
- `EE_ROLL_CCW` (int8): `13`
- `EE_ROLL_CW` (int8): `14`
- `EE_PITCH_UP` (int8): `15`
- `EE_PITCH_DOWN` (int8): `16`
- `WAIST_CCW` (int8): `17`
- `WAIST_CW` (int8): `18`
- `GRIPPER_OPEN` (int8): `19`
- `GRIPPER_CLOSE` (int8): `20`
- `HOME_POSE` (int8): `21`
- `SLEEP_POSE` (int8): `22`
- `SPEED_INC` (int8): `23`
- `SPEED_DEC` (int8): `24`
- `SPEED_COURSE` (int8): `25`
- `SPEED_FINE` (int8): `26`
- `GRIPPER_PWM_INC` (int8): `27`
- `GRIPPER_PWM_DEC` (int8): `28`

### interbotix_xs_msgs/MotorGainsRequest

`Ros1Interbotix_xs_msgsMotorGainsRequest`; 36..292 canonical bytes. `UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| kp_pos | int32 | scalar | 0 | None |
| ki_pos | int32 | scalar | 0 | None |
| kd_pos | int32 | scalar | 0 | None |
| k1 | int32 | scalar | 0 | None |
| k2 | int32 | scalar | 0 | None |
| kp_vel | int32 | scalar | 0 | None |
| ki_vel | int32 | scalar | 0 | None |

### interbotix_xs_msgs/MotorGainsResponse

`Ros1Interbotix_xs_msgsMotorGainsResponse`; 0..0 canonical bytes. `UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/OperatingModesRequest

`Ros1Interbotix_xs_msgsOperatingModesRequest`; 24..536 canonical bytes. `UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| mode | string | scalar | 128 | None |
| profile_type | string | scalar | 128 | None |
| profile_velocity | int32 | scalar | 0 | None |
| profile_acceleration | int32 | scalar | 0 | None |

### interbotix_xs_msgs/OperatingModesResponse

`Ros1Interbotix_xs_msgsOperatingModesResponse`; 0..0 canonical bytes. `UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/RebootRequest

`Ros1Interbotix_xs_msgsRebootRequest`; 10..266 canonical bytes. `UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| enable | bool | scalar | 0 | None |
| smart_reboot | bool | scalar | 0 | None |

### interbotix_xs_msgs/RebootResponse

`Ros1Interbotix_xs_msgsRebootResponse`; 0..0 canonical bytes. `UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/RegisterValuesRequest

`Ros1Interbotix_xs_msgsRegisterValuesRequest`; 16..400 canonical bytes. `UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| reg | string | scalar | 128 | None |
| value | int32 | scalar | 0 | None |

### interbotix_xs_msgs/RegisterValuesResponse

`Ros1Interbotix_xs_msgsRegisterValuesResponse`; 4..68 canonical bytes. `UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| values | int32 | sequence/16 | 0 | None |

### interbotix_xs_msgs/RobotInfoRequest

`Ros1Interbotix_xs_msgsRobotInfoRequest`; 8..264 canonical bytes. `UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |

### interbotix_xs_msgs/RobotInfoResponse

`Ros1Interbotix_xs_msgsRobotInfoResponse`; 42..18474 canonical bytes. `UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| mode | string | scalar | 128 | None |
| profile_type | string | scalar | 128 | None |
| joint_names | string | sequence/64 | 128 | None |
| joint_ids | int16 | sequence/64 | 0 | None |
| joint_lower_limits | float32 | sequence/64 | 0 | None |
| joint_upper_limits | float32 | sequence/64 | 0 | None |
| joint_velocity_limits | float32 | sequence/64 | 0 | None |
| joint_sleep_positions | float32 | sequence/64 | 0 | None |
| joint_state_indices | int16 | sequence/64 | 0 | None |
| num_joints | int16 | scalar | 0 | None |
| name | string | sequence/64 | 128 | None |

### interbotix_xs_msgs/TorqueEnableRequest

`Ros1Interbotix_xs_msgsTorqueEnableRequest`; 9..265 canonical bytes. `UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| enable | bool | scalar | 0 | None |

### interbotix_xs_msgs/TorqueEnableResponse

`Ros1Interbotix_xs_msgsTorqueEnableResponse`; 0..0 canonical bytes. `UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/TurretJoy

`Ros1Interbotix_xs_msgsTurretJoy`; 4..4 canonical bytes. `UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pan_cmd | int8 | scalar | 0 | None |
| tilt_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `PAN_CCW` (int8): `1`
- `PAN_CW` (int8): `2`
- `TILT_UP` (int8): `3`
- `TILT_DOWN` (int8): `4`
- `PAN_TILT_HOME` (int8): `5`
- `SPEED_INC` (int8): `6`
- `SPEED_DEC` (int8): `7`
- `SPEED_COURSE` (int8): `8`
- `SPEED_FINE` (int8): `9`

### xarm_msgs/ClearErrRequest

`Ros1Xarm_msgsClearErrRequest`; 0..0 canonical bytes. `UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### xarm_msgs/ClearErrResponse

`Ros1Xarm_msgsClearErrResponse`; 6..134 canonical bytes. `UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/ConfigToolModbusRequest

`Ros1Xarm_msgsConfigToolModbusRequest`; 8..8 canonical bytes. `UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| baud_rate | int32 | scalar | 0 | None |
| timeout_ms | int32 | scalar | 0 | None |

### xarm_msgs/ConfigToolModbusResponse

`Ros1Xarm_msgsConfigToolModbusResponse`; 6..134 canonical bytes. `UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| message | string | scalar | 128 | None |
| ret | int16 | scalar | 0 | None |

### xarm_msgs/GetAnalogIORequest

`Ros1Xarm_msgsGetAnalogIORequest`; 2..2 canonical bytes. `UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| port_num | int16 | scalar | 0 | None |

### xarm_msgs/GetAnalogIOResponse

`Ros1Xarm_msgsGetAnalogIOResponse`; 10..138 canonical bytes. `UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| analog_value | float32 | scalar | 0 | None |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/GetControllerDigitalIORequest

`Ros1Xarm_msgsGetControllerDigitalIORequest`; 2..2 canonical bytes. `UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| io_num | int16 | scalar | 0 | None |

### xarm_msgs/GetControllerDigitalIOResponse

`Ros1Xarm_msgsGetControllerDigitalIOResponse`; 8..136 canonical bytes. `UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| value | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/GetDigitalIORequest

`Ros1Xarm_msgsGetDigitalIORequest`; 0..0 canonical bytes. `UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### xarm_msgs/GetDigitalIOResponse

`Ros1Xarm_msgsGetDigitalIOResponse`; 14..142 canonical bytes. `UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| digital_1 | int32 | scalar | 0 | None |
| digital_2 | int32 | scalar | 0 | None |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/GetErrRequest

`Ros1Xarm_msgsGetErrRequest`; 0..0 canonical bytes. `UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### xarm_msgs/GetErrResponse

`Ros1Xarm_msgsGetErrResponse`; 6..134 canonical bytes. `UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| err | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/GripperConfigRequest

`Ros1Xarm_msgsGripperConfigRequest`; 4..4 canonical bytes. `UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pulse_vel | float32 | scalar | 0 | None |

### xarm_msgs/GripperConfigResponse

`Ros1Xarm_msgsGripperConfigResponse`; 6..134 canonical bytes. `UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/GripperMoveRequest

`Ros1Xarm_msgsGripperMoveRequest`; 4..4 canonical bytes. `UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pulse_pos | float32 | scalar | 0 | None |

### xarm_msgs/GripperMoveResponse

`Ros1Xarm_msgsGripperMoveResponse`; 6..134 canonical bytes. `UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/GripperStateRequest

`Ros1Xarm_msgsGripperStateRequest`; 0..0 canonical bytes. `UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### xarm_msgs/GripperStateResponse

`Ros1Xarm_msgsGripperStateResponse`; 6..6 canonical bytes. `UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| curr_pos | float32 | scalar | 0 | None |
| err_code | int16 | scalar | 0 | None |

### xarm_msgs/IOState

`Ros1Xarm_msgsIOState`; 16..16 canonical bytes. `UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| digital_1 | int32 | scalar | 0 | None |
| digital_2 | int32 | scalar | 0 | None |
| analog_1 | float32 | scalar | 0 | None |
| analog_2 | float32 | scalar | 0 | None |

### xarm_msgs/MoveRequest

`Ros1Xarm_msgsMoveRequest`; 20..84 canonical bytes. `UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pose | float32 | sequence/16 | 0 | None |
| mvvelo | float32 | scalar | 0 | None |
| mvacc | float32 | scalar | 0 | None |
| mvtime | float32 | scalar | 0 | None |
| mvradii | float32 | scalar | 0 | None |

### xarm_msgs/MoveResponse

`Ros1Xarm_msgsMoveResponse`; 6..134 canonical bytes. `UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/RobotMsg

`Ros1Xarm_msgsRobotMsg`; 66..130 canonical bytes. `UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| state | int16 | scalar | 0 | None |
| mode | int16 | scalar | 0 | None |
| cmdnum | int16 | scalar | 0 | None |
| mt_brake | int16 | scalar | 0 | None |
| mt_able | int16 | scalar | 0 | None |
| err | int16 | scalar | 0 | None |
| warn | int16 | scalar | 0 | None |
| angle | float32 | sequence/16 | 0 | None |
| pose | float32 | array/6 | 0 | None |
| offset | float32 | array/6 | 0 | None |

### xarm_msgs/SetAxisRequest

`Ros1Xarm_msgsSetAxisRequest`; 4..4 canonical bytes. `UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| id | int16 | scalar | 0 | None |
| data | int16 | scalar | 0 | None |

### xarm_msgs/SetAxisResponse

`Ros1Xarm_msgsSetAxisResponse`; 6..134 canonical bytes. `UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/SetDigitalIORequest

`Ros1Xarm_msgsSetDigitalIORequest`; 4..4 canonical bytes. `UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| io_num | int16 | scalar | 0 | None |
| value | int16 | scalar | 0 | None |

### xarm_msgs/SetDigitalIOResponse

`Ros1Xarm_msgsSetDigitalIOResponse`; 6..134 canonical bytes. `UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/SetInt16Request

`Ros1Xarm_msgsSetInt16Request`; 2..2 canonical bytes. `UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| data | int16 | scalar | 0 | None |

### xarm_msgs/SetInt16Response

`Ros1Xarm_msgsSetInt16Response`; 6..134 canonical bytes. `UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/SetLoadRequest

`Ros1Xarm_msgsSetLoadRequest`; 16..16 canonical bytes. `UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| mass | float32 | scalar | 0 | None |
| xc | float32 | scalar | 0 | None |
| yc | float32 | scalar | 0 | None |
| zc | float32 | scalar | 0 | None |

### xarm_msgs/SetLoadResponse

`Ros1Xarm_msgsSetLoadResponse`; 6..134 canonical bytes. `UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### xarm_msgs/SetToolModbusRequest

`Ros1Xarm_msgsSetToolModbusRequest`; 6..262 canonical bytes. `UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| send_data | uint8 | sequence/256 | 0 | None |
| respond_len | int16 | scalar | 0 | None |

### xarm_msgs/SetToolModbusResponse

`Ros1Xarm_msgsSetToolModbusResponse`; 6..262 canonical bytes. `UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| respond_data | uint8 | sequence/256 | 0 | None |

### xarm_msgs/TCPOffsetRequest

`Ros1Xarm_msgsTCPOffsetRequest`; 24..24 canonical bytes. `UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| x | float32 | scalar | 0 | None |
| y | float32 | scalar | 0 | None |
| z | float32 | scalar | 0 | None |
| roll | float32 | scalar | 0 | None |
| pitch | float32 | scalar | 0 | None |
| yaw | float32 | scalar | 0 | None |

### xarm_msgs/TCPOffsetResponse

`Ros1Xarm_msgsTCPOffsetResponse`; 6..134 canonical bytes. `UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ret | int16 | scalar | 0 | None |
| message | string | scalar | 128 | None |

### Complete protocol components

- `interbotix_slate_msgs/SetString` (service): `{'request': {'version': 1, 'name': 'interbotix_slate_msgs/SetStringRequest', 'members': [{'name': 'data', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_slate_msgs/srv/SetString.srv', 'bytes': 44, 'sha256': '1137de16260d638622e16c4e11c7bd811dcdd92d2a5ae2f3061b941295397acc'}, 'component': 'request', 'owner': 'interbotix_slate_msgs/SetString', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 132, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_bc58f043e73f33d5b3923bca8a1d515f62f405f3365b83adb17311a728d2f105', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 132, 'constants': []}, 'response': {'version': 1, 'name': 'interbotix_slate_msgs/SetStringResponse', 'members': [{'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_slate_msgs/srv/SetString.srv', 'bytes': 44, 'sha256': '1137de16260d638622e16c4e11c7bd811dcdd92d2a5ae2f3061b941295397acc'}, 'component': 'response', 'owner': 'interbotix_slate_msgs/SetString', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 5, 'maximum': 133, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_6f3a05dbee380f0a0f5b24b75833a99857293e656d705e4322b4b3f97a5e530c', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 133, 'constants': []}}`.
- `interbotix_xs_msgs/ArmJoy` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/ArmJoy', 'members': [{'name': 'ee_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_roll_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'waist_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_pwm_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'torque_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/ArmJoy.msg', 'bytes': 1917, 'sha256': 'dc1c79a173d9802da2313e12152fea0457a1b2f81b3332131a46ad2fb3fb71c3'}, 'component': '', 'owner': 'interbotix_xs_msgs/ArmJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 12, 'nodes': 13, 'depth': 2, 'codec_identity': 'UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 12, 'constants': [{'name': 'EE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'EE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'EE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'EE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'EE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'EE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'EE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'EE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'EE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'EE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'WAIST_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'WAIST_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'GRIPPER_OPEN', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'GRIPPER_CLOSE', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'SPEED_COURSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'GRIPPER_PWM_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'GRIPPER_PWM_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'TORQUE_ON', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'TORQUE_OFF', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}]}}`.
- `interbotix_xs_msgs/HexJoy` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/HexJoy', 'members': [{'name': 'world_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'world_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'world_yaw_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_roll_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'move_type_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gait_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'leg_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'stance_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'reboot_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'set_home_pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/HexJoy.msg', 'bytes': 2160, 'sha256': 'e1082530c48ce50c208518d4b40f641c8fd38726e76832572e2c336c6ebfe267'}, 'component': '', 'owner': 'interbotix_xs_msgs/HexJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 17, 'maximum': 17, 'nodes': 18, 'depth': 2, 'codec_identity': 'UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 17, 'constants': [{'name': 'WORLD_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'WORLD_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'WORLD_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'WORLD_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'WORLD_YAW_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'WORLD_YAW_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'PLACE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'PLACE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'PLACE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'PLACE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'PLACE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'PLACE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'PLACE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'PLACE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'PLACE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'PLACE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'MOVE_HEXAPOD', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'MOVE_LEG', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'GAIT_NEXT', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'GAIT_PREVIOUS', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'LEG_NEXT', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'LEG_PREVIOUS', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}, {'name': 'WIDEN_STANCE', 'type': 'int8', 'native_type': 'int8', 'literal': '25', 'value': '25'}, {'name': 'NARROW_STANCE', 'type': 'int8', 'native_type': 'int8', 'literal': '26', 'value': '26'}, {'name': 'REBOOT_MOTORS', 'type': 'int8', 'native_type': 'int8', 'literal': '27', 'value': '27'}, {'name': 'SET_HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '28', 'value': '28'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '29', 'value': '29'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '30', 'value': '30'}, {'name': 'SPEED_COURSE', 'type': 'int8', 'native_type': 'int8', 'literal': '31', 'value': '31'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '32', 'value': '32'}]}}`.
- `interbotix_xs_msgs/JointGroupCommand` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/JointGroupCommand', 'members': [{'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cmd', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointGroupCommand.msg', 'bytes': 474, 'sha256': 'b85955c32e0fcaca05feeabe663b495e93ba5e85d26d4becf91d72dd09b04d44'}, 'component': '', 'owner': 'interbotix_xs_msgs/JointGroupCommand', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 392, 'nodes': 67, 'depth': 3, 'codec_identity': 'UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 392, 'constants': []}}`.
- `interbotix_xs_msgs/JointSingleCommand` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/JointSingleCommand', 'members': [{'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cmd', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointSingleCommand.msg', 'bytes': 303, 'sha256': 'bbe2faaa92bcffd29c5f1e449f3e1aaaf68938f85bb1ab77cb228fe99806b77b'}, 'component': '', 'owner': 'interbotix_xs_msgs/JointSingleCommand', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 136, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 136, 'constants': []}}`.
- `interbotix_xs_msgs/JointTemps` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/JointTemps', 'members': [{'name': 'names', 'type': 'string', 'array': 'sequence', 'count': 64, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'temps', 'type': 'int32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointTemps.msg', 'bytes': 169, 'sha256': 'e0798d4b96836b4836a540161fefb8071998ef948e5fb09b5e29a8bb3d9a4622'}, 'component': '', 'owner': 'interbotix_xs_msgs/JointTemps', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8712, 'nodes': 131, 'depth': 3, 'codec_identity': 'UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8712, 'constants': []}}`.
- `interbotix_xs_msgs/JointTrajectoryCommand` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/JointTrajectoryCommand', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'traj', 'type': 'trajectory_msgs/JointTrajectory', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointTrajectoryCommand.msg', 'bytes': 590, 'sha256': '185e5828609989f3732b76e3f80adb0ffc800e808a4064c6e6751db986970502'}, 'component': '', 'owner': 'interbotix_xs_msgs/JointTrajectoryCommand', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 32, 'maximum': 4672, 'nodes': 316, 'depth': 6, 'codec_identity': 'UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4672, 'constants': []}}`.
- `interbotix_xs_msgs/LocobotJoy` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/LocobotJoy', 'members': [{'name': 'base_x_cmd', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'base_theta_cmd', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'base_reset_odom_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pan_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'tilt_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_roll_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'waist_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_pwm_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/LocobotJoy.msg', 'bytes': 2417, 'sha256': 'e0ce8e86d9cc6dcb240c696a5ab24ed8e29df7a5f295183e8aec606b0b74e559'}, 'component': '', 'owner': 'interbotix_xs_msgs/LocobotJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 30, 'maximum': 30, 'nodes': 17, 'depth': 2, 'codec_identity': 'UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 30, 'constants': [{'name': 'RESET_ODOM', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'PAN_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'PAN_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'TILT_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'TILT_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'PAN_TILT_HOME', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'EE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'EE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'EE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'EE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'EE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'EE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'EE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'EE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'EE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'EE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'WAIST_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'WAIST_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'GRIPPER_OPEN', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'GRIPPER_CLOSE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}, {'name': 'SPEED_COURSE', 'type': 'int8', 'native_type': 'int8', 'literal': '25', 'value': '25'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '26', 'value': '26'}, {'name': 'GRIPPER_PWM_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '27', 'value': '27'}, {'name': 'GRIPPER_PWM_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '28', 'value': '28'}]}}`.
- `interbotix_xs_msgs/MotorGains` (service): `{'request': {'version': 1, 'name': 'interbotix_xs_msgs/MotorGainsRequest', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'kp_pos', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ki_pos', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'kd_pos', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'k1', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'k2', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'kp_vel', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ki_vel', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/MotorGains.srv', 'bytes': 1028, 'sha256': '3d278e42154a1620e4a496c76b345b59bc183bd833ba5aefb6d797bf9c8abe67'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/MotorGains', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 36, 'maximum': 292, 'nodes': 10, 'depth': 2, 'codec_identity': 'UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 292, 'constants': []}, 'response': {'version': 1, 'name': 'interbotix_xs_msgs/MotorGainsResponse', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/MotorGains.srv', 'bytes': 1028, 'sha256': '3d278e42154a1620e4a496c76b345b59bc183bd833ba5aefb6d797bf9c8abe67'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/MotorGains', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/OperatingModes` (service): `{'request': {'version': 1, 'name': 'interbotix_xs_msgs/OperatingModesRequest', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mode', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_velocity', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_acceleration', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/OperatingModes.srv', 'bytes': 3301, 'sha256': 'b8b5344f61f82d8d1264d5510d72bc092f7c5b35d11f001e9d3d7739c6f8b060'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/OperatingModes', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 536, 'nodes': 7, 'depth': 2, 'codec_identity': 'UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 536, 'constants': []}, 'response': {'version': 1, 'name': 'interbotix_xs_msgs/OperatingModesResponse', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/OperatingModes.srv', 'bytes': 3301, 'sha256': 'b8b5344f61f82d8d1264d5510d72bc092f7c5b35d11f001e9d3d7739c6f8b060'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/OperatingModes', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/Reboot` (service): `{'request': {'version': 1, 'name': 'interbotix_xs_msgs/RebootRequest', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'enable', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'smart_reboot', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/Reboot.srv', 'bytes': 847, 'sha256': 'd2a065332528676c8c5378cc41cbd8c611e8c6e479b7bfa1c75e19053d38d17e'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/Reboot', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 10, 'maximum': 266, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 266, 'constants': []}, 'response': {'version': 1, 'name': 'interbotix_xs_msgs/RebootResponse', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/Reboot.srv', 'bytes': 847, 'sha256': 'd2a065332528676c8c5378cc41cbd8c611e8c6e479b7bfa1c75e19053d38d17e'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/Reboot', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/RegisterValues` (service): `{'request': {'version': 1, 'name': 'interbotix_xs_msgs/RegisterValuesRequest', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'reg', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'value', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RegisterValues.srv', 'bytes': 769, 'sha256': 'ff04d128d88437e0f50f452a4a9cfe98b36346179614b0255fc917aeabbdf513'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/RegisterValues', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 16, 'maximum': 400, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 400, 'constants': []}, 'response': {'version': 1, 'name': 'interbotix_xs_msgs/RegisterValuesResponse', 'members': [{'name': 'values', 'type': 'int32', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RegisterValues.srv', 'bytes': 769, 'sha256': 'ff04d128d88437e0f50f452a4a9cfe98b36346179614b0255fc917aeabbdf513'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/RegisterValues', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 68, 'nodes': 18, 'depth': 3, 'codec_identity': 'UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 68, 'constants': []}}`.
- `interbotix_xs_msgs/RobotInfo` (service): `{'request': {'version': 1, 'name': 'interbotix_xs_msgs/RobotInfoRequest', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RobotInfo.srv', 'bytes': 1761, 'sha256': '5953ba2fdd8f7cd3d858dd002e7e7ec2de6960d4c9c82ce1ddc5c6177e6ce163'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/RobotInfo', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 264, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 264, 'constants': []}, 'response': {'version': 1, 'name': 'interbotix_xs_msgs/RobotInfoResponse', 'members': [{'name': 'mode', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_names', 'type': 'string', 'array': 'sequence', 'count': 64, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_ids', 'type': 'int16', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_lower_limits', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_upper_limits', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_velocity_limits', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_sleep_positions', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_state_indices', 'type': 'int16', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'num_joints', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': 'sequence', 'count': 64, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RobotInfo.srv', 'bytes': 1761, 'sha256': '5953ba2fdd8f7cd3d858dd002e7e7ec2de6960d4c9c82ce1ddc5c6177e6ce163'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/RobotInfo', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 42, 'maximum': 18474, 'nodes': 524, 'depth': 3, 'codec_identity': 'UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 18474, 'constants': []}}`.
- `interbotix_xs_msgs/TorqueEnable` (service): `{'request': {'version': 1, 'name': 'interbotix_xs_msgs/TorqueEnableRequest', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'enable', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/TorqueEnable.srv', 'bytes': 329, 'sha256': '0f382d2c2c46af302521729c73400427bd8d6a35000c3a310e78913e78b59c9f'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/TorqueEnable', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 9, 'maximum': 265, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 265, 'constants': []}, 'response': {'version': 1, 'name': 'interbotix_xs_msgs/TorqueEnableResponse', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/TorqueEnable.srv', 'bytes': 329, 'sha256': '0f382d2c2c46af302521729c73400427bd8d6a35000c3a310e78913e78b59c9f'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/TorqueEnable', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/TurretJoy` (message): `{'message': {'version': 1, 'name': 'interbotix_xs_msgs/TurretJoy', 'members': [{'name': 'pan_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'tilt_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/TurretJoy.msg', 'bytes': 1029, 'sha256': '8918e08d1f7b602fde321996f484e1aa2c5a620430eb0be95ca690e5276d1f8b'}, 'component': '', 'owner': 'interbotix_xs_msgs/TurretJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': [{'name': 'PAN_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'PAN_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'TILT_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'TILT_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'PAN_TILT_HOME', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'SPEED_COURSE', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}]}}`.
- `std_msgs/Header` (message): `{'message': {'version': 1, 'name': 'std_msgs/Header', 'members': [{'name': 'seq', 'type': 'uint32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'stamp', 'type': 'time', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'frame_id', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_msgs/msg/Header.msg', 'bytes': 551, 'sha256': '5e64e71bb8d9d47019367f6a621934aab7e6ffedc6cfdcc912486aa5576ed693'}, 'component': '', 'owner': 'std_msgs/Header', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 16, 'maximum': 144, 'nodes': 6, 'depth': 3, 'codec_identity': 'UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 144, 'constants': []}}`.
- `trajectory_msgs/JointTrajectory` (message): `{'message': {'version': 1, 'name': 'trajectory_msgs/JointTrajectory', 'members': [{'name': 'header', 'type': 'std_msgs/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_names', 'type': 'string', 'array': 'sequence', 'count': 16, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'points', 'type': 'trajectory_msgs/JointTrajectoryPoint', 'array': 'sequence', 'count': 4, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'trajectory_msgs/msg/JointTrajectory.msg', 'bytes': 65, 'sha256': 'c3fd593dfc91e9084316bd8ea8c9c11be65c93dad98609e135ec491574a8f05c'}, 'component': '', 'owner': 'trajectory_msgs/JointTrajectory', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 4408, 'nodes': 313, 'depth': 5, 'codec_identity': 'UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4408, 'constants': []}}`.
- `trajectory_msgs/JointTrajectoryPoint` (message): `{'message': {'version': 1, 'name': 'trajectory_msgs/JointTrajectoryPoint', 'members': [{'name': 'positions', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'velocities', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'accelerations', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'effort', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'time_from_start', 'type': 'duration', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'trajectory_msgs/msg/JointTrajectoryPoint.msg', 'bytes': 337, 'sha256': 'd6bdced3460bf402a86274ccccf7fd7876cae1d70c8610fb6ca684da6057b9a2'}, 'component': '', 'owner': 'trajectory_msgs/JointTrajectoryPoint', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 536, 'nodes': 72, 'depth': 3, 'codec_identity': 'UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 536, 'constants': []}}`.
- `xarm_msgs/ClearErr` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/ClearErrRequest', 'members': [], 'identity': None, 'source': {'file': 'xarm_msgs/srv/ClearErr.srv', 'bytes': 31, 'sha256': '628c788bacb726db5a6041035cde0f64d3e65abc94014f33155146ab9defc096'}, 'component': 'request', 'owner': 'xarm_msgs/ClearErr', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/ClearErrResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/ClearErr.srv', 'bytes': 31, 'sha256': '628c788bacb726db5a6041035cde0f64d3e65abc94014f33155146ab9defc096'}, 'component': 'response', 'owner': 'xarm_msgs/ClearErr', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/ConfigToolModbus` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/ConfigToolModbusRequest', 'members': [{'name': 'baud_rate', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'timeout_ms', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/ConfigToolModbus.srv', 'bytes': 200, 'sha256': 'b24ed91b77d7b6fd0b611fc52a5e18fa5171ff2240150f0c8b015342b78bc052'}, 'component': 'request', 'owner': 'xarm_msgs/ConfigToolModbus', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/ConfigToolModbusResponse', 'members': [{'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/ConfigToolModbus.srv', 'bytes': 200, 'sha256': 'b24ed91b77d7b6fd0b611fc52a5e18fa5171ff2240150f0c8b015342b78bc052'}, 'component': 'response', 'owner': 'xarm_msgs/ConfigToolModbus', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/GetAnalogIO` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/GetAnalogIORequest', 'members': [{'name': 'port_num', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetAnalogIO.srv', 'bytes': 134, 'sha256': '919b9927ab303b93997651a29573632fd85017e12e107e453b2c490518ffe9d1'}, 'component': 'request', 'owner': 'xarm_msgs/GetAnalogIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 2, 'maximum': 2, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 2, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/GetAnalogIOResponse', 'members': [{'name': 'analog_value', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetAnalogIO.srv', 'bytes': 134, 'sha256': '919b9927ab303b93997651a29573632fd85017e12e107e453b2c490518ffe9d1'}, 'component': 'response', 'owner': 'xarm_msgs/GetAnalogIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 10, 'maximum': 138, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 138, 'constants': []}}`.
- `xarm_msgs/GetControllerDigitalIO` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/GetControllerDigitalIORequest', 'members': [{'name': 'io_num', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetControllerDigitalIO.srv', 'bytes': 131, 'sha256': 'cccdba67406fe93d1edc89b7788d69dd64a61bb80199b1df53f8bfb6b815dd1b'}, 'component': 'request', 'owner': 'xarm_msgs/GetControllerDigitalIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 2, 'maximum': 2, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 2, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/GetControllerDigitalIOResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'value', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetControllerDigitalIO.srv', 'bytes': 131, 'sha256': 'cccdba67406fe93d1edc89b7788d69dd64a61bb80199b1df53f8bfb6b815dd1b'}, 'component': 'response', 'owner': 'xarm_msgs/GetControllerDigitalIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 136, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 136, 'constants': []}}`.
- `xarm_msgs/GetDigitalIO` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/GetDigitalIORequest', 'members': [], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetDigitalIO.srv', 'bytes': 124, 'sha256': 'ffd42a0f96df19af0f8ec2368e7b09c9fdae85eaa8f2e738cfd7f7b93baf371e'}, 'component': 'request', 'owner': 'xarm_msgs/GetDigitalIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/GetDigitalIOResponse', 'members': [{'name': 'digital_1', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'digital_2', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetDigitalIO.srv', 'bytes': 124, 'sha256': 'ffd42a0f96df19af0f8ec2368e7b09c9fdae85eaa8f2e738cfd7f7b93baf371e'}, 'component': 'response', 'owner': 'xarm_msgs/GetDigitalIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 14, 'maximum': 142, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 142, 'constants': []}}`.
- `xarm_msgs/GetErr` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/GetErrRequest', 'members': [], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetErr.srv', 'bytes': 31, 'sha256': '9e243ab06b15441e64d215fcc93906a2c0bc0f99fc6ca8d80ada2d6b7a0f1891'}, 'component': 'request', 'owner': 'xarm_msgs/GetErr', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/GetErrResponse', 'members': [{'name': 'err', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GetErr.srv', 'bytes': 31, 'sha256': '9e243ab06b15441e64d215fcc93906a2c0bc0f99fc6ca8d80ada2d6b7a0f1891'}, 'component': 'response', 'owner': 'xarm_msgs/GetErr', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/GripperConfig` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/GripperConfigRequest', 'members': [{'name': 'pulse_vel', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GripperConfig.srv', 'bytes': 104, 'sha256': 'a8931c1d78b7c9bdbaaf88d7bfb39e0bfe0278243c0fb56ca54daeec287800a7'}, 'component': 'request', 'owner': 'xarm_msgs/GripperConfig', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/GripperConfigResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GripperConfig.srv', 'bytes': 104, 'sha256': 'a8931c1d78b7c9bdbaaf88d7bfb39e0bfe0278243c0fb56ca54daeec287800a7'}, 'component': 'response', 'owner': 'xarm_msgs/GripperConfig', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/GripperMove` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/GripperMoveRequest', 'members': [{'name': 'pulse_pos', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GripperMove.srv', 'bytes': 113, 'sha256': 'ce9c3036fe1c3f582a8a35f1acdcbb10f7856a380082008b3209d0da4a4f29d7'}, 'component': 'request', 'owner': 'xarm_msgs/GripperMove', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/GripperMoveResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GripperMove.srv', 'bytes': 113, 'sha256': 'ce9c3036fe1c3f582a8a35f1acdcbb10f7856a380082008b3209d0da4a4f29d7'}, 'component': 'response', 'owner': 'xarm_msgs/GripperMove', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/GripperState` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/GripperStateRequest', 'members': [], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GripperState.srv', 'bytes': 36, 'sha256': '45a766584b32919c5988f428518e244684174aadd06526c3d16ce443afaf4595'}, 'component': 'request', 'owner': 'xarm_msgs/GripperState', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/GripperStateResponse', 'members': [{'name': 'curr_pos', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'err_code', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/GripperState.srv', 'bytes': 36, 'sha256': '45a766584b32919c5988f428518e244684174aadd06526c3d16ce443afaf4595'}, 'component': 'response', 'owner': 'xarm_msgs/GripperState', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 6, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 6, 'constants': []}}`.
- `xarm_msgs/IOState` (message): `{'message': {'version': 1, 'name': 'xarm_msgs/IOState', 'members': [{'name': 'digital_1', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'digital_2', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'analog_1', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'analog_2', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/msg/IOState.msg', 'bytes': 127, 'sha256': 'c3d02e687885003c4a9bbab24d5a256f1eb6ee05bd0ff777230cdb90dd568106'}, 'component': '', 'owner': 'xarm_msgs/IOState', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 16, 'maximum': 16, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 16, 'constants': []}}`.
- `xarm_msgs/Move` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/MoveRequest', 'members': [{'name': 'pose', 'type': 'float32', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mvvelo', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mvacc', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mvtime', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mvradii', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/Move.srv', 'bytes': 1230, 'sha256': '0678f5c17aa82f1f8c63d2a6b4ff1d1258d5162c7031752d7c5519c12cb9df48'}, 'component': 'request', 'owner': 'xarm_msgs/Move', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 20, 'maximum': 84, 'nodes': 22, 'depth': 3, 'codec_identity': 'UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 84, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/MoveResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/Move.srv', 'bytes': 1230, 'sha256': '0678f5c17aa82f1f8c63d2a6b4ff1d1258d5162c7031752d7c5519c12cb9df48'}, 'component': 'response', 'owner': 'xarm_msgs/Move', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/RobotMsg` (message): `{'message': {'version': 1, 'name': 'xarm_msgs/RobotMsg', 'members': [{'name': 'state', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mode', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cmdnum', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mt_brake', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mt_able', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'err', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'warn', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angle', 'type': 'float32', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose', 'type': 'float32', 'array': 'array', 'count': 6, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'offset', 'type': 'float32', 'array': 'array', 'count': 6, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/msg/RobotMsg.msg', 'bytes': 1336, 'sha256': 'c262d81f5340df7fac964ec63ab28853eec3b8c3d9566772c57009e4a07b6133'}, 'component': '', 'owner': 'xarm_msgs/RobotMsg', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 66, 'maximum': 130, 'nodes': 39, 'depth': 3, 'codec_identity': 'UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 130, 'constants': []}}`.
- `xarm_msgs/SetAxis` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/SetAxisRequest', 'members': [{'name': 'id', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'data', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetAxis.srv', 'bytes': 413, 'sha256': 'a9b014f610e35c528393dc98bc7fefc405660a63c96266abaab5d70cf1e92fc4'}, 'component': 'request', 'owner': 'xarm_msgs/SetAxis', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/SetAxisResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetAxis.srv', 'bytes': 413, 'sha256': 'a9b014f610e35c528393dc98bc7fefc405660a63c96266abaab5d70cf1e92fc4'}, 'component': 'response', 'owner': 'xarm_msgs/SetAxis', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/SetDigitalIO` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/SetDigitalIORequest', 'members': [{'name': 'io_num', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'value', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetDigitalIO.srv', 'bytes': 118, 'sha256': '7502a8224c9e1be1d1499152888a8d149435e3f259d9f9dd12888cab578aa285'}, 'component': 'request', 'owner': 'xarm_msgs/SetDigitalIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/SetDigitalIOResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetDigitalIO.srv', 'bytes': 118, 'sha256': '7502a8224c9e1be1d1499152888a8d149435e3f259d9f9dd12888cab578aa285'}, 'component': 'response', 'owner': 'xarm_msgs/SetDigitalIO', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/SetInt16` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/SetInt16Request', 'members': [{'name': 'data', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetInt16.srv', 'bytes': 314, 'sha256': '58f944f7e2d1fe44d2faccb923ec6313bf4374014f56c51ad2e164c38b091cb7'}, 'component': 'request', 'owner': 'xarm_msgs/SetInt16', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 2, 'maximum': 2, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 2, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/SetInt16Response', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetInt16.srv', 'bytes': 314, 'sha256': '58f944f7e2d1fe44d2faccb923ec6313bf4374014f56c51ad2e164c38b091cb7'}, 'component': 'response', 'owner': 'xarm_msgs/SetInt16', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/SetLoad` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/SetLoadRequest', 'members': [{'name': 'mass', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'xc', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'yc', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'zc', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetLoad.srv', 'bytes': 245, 'sha256': '07b20a42f946c734967d47051d81d6ac9823d59870671f5fe079a7e48ee7fad8'}, 'component': 'request', 'owner': 'xarm_msgs/SetLoad', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 16, 'maximum': 16, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 16, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/SetLoadResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetLoad.srv', 'bytes': 245, 'sha256': '07b20a42f946c734967d47051d81d6ac9823d59870671f5fe079a7e48ee7fad8'}, 'component': 'response', 'owner': 'xarm_msgs/SetLoad', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.
- `xarm_msgs/SetToolModbus` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/SetToolModbusRequest', 'members': [{'name': 'send_data', 'type': 'uint8', 'array': 'sequence', 'count': 256, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'respond_len', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetToolModbus.srv', 'bytes': 199, 'sha256': '347d778e26bc59f41d3a8021931eff5c63223a6960de22bf206fa76b1eca6662'}, 'component': 'request', 'owner': 'xarm_msgs/SetToolModbus', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 262, 'nodes': 4, 'depth': 3, 'codec_identity': 'UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 262, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/SetToolModbusResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'respond_data', 'type': 'uint8', 'array': 'sequence', 'count': 256, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/SetToolModbus.srv', 'bytes': 199, 'sha256': '347d778e26bc59f41d3a8021931eff5c63223a6960de22bf206fa76b1eca6662'}, 'component': 'response', 'owner': 'xarm_msgs/SetToolModbus', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 262, 'nodes': 4, 'depth': 3, 'codec_identity': 'UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 262, 'constants': []}}`.
- `xarm_msgs/TCPOffset` (service): `{'request': {'version': 1, 'name': 'xarm_msgs/TCPOffsetRequest', 'members': [{'name': 'x', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'y', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'z', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'roll', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pitch', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'yaw', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/TCPOffset.srv', 'bytes': 218, 'sha256': 'b718883494cc3cb5d0d51483e9cedce4204a617dd529e5b607e1527605f07335'}, 'component': 'request', 'owner': 'xarm_msgs/TCPOffset', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 24, 'nodes': 7, 'depth': 2, 'codec_identity': 'UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 24, 'constants': []}, 'response': {'version': 1, 'name': 'xarm_msgs/TCPOffsetResponse', 'members': [{'name': 'ret', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'xarm_msgs/srv/TCPOffset.srv', 'bytes': 218, 'sha256': 'b718883494cc3cb5d0d51483e9cedce4204a617dd529e5b607e1527605f07335'}, 'component': 'response', 'owner': 'xarm_msgs/TCPOffset', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 6, 'maximum': 134, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 134, 'constants': []}}`.

## ros2_galactic

ros2: 25 records, 6 services, 0 actions.

Catalog: `share/platform/trossen/catalogs/ros2_galactic/catalog.json`. Source pins: `source-lock.json`.

Upstream witnesses: `{'repository': 'Interbotix/interbotix_ros_core', 'branch': 'galactic', 'commit': 'e77575dae762c312f7b2410db9402209fdf41609'}`.

### builtin_interfaces/msg/Duration

`Ros2Builtin_interfacesMsgDuration`; 8..8 canonical bytes. `UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| sec | int32 | scalar | 0 | None |
| nanosec | uint32 | scalar | 0 | None |

### builtin_interfaces/msg/Time

`Ros2Builtin_interfacesMsgTime`; 8..8 canonical bytes. `UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| sec | int32 | scalar | 0 | None |
| nanosec | uint32 | scalar | 0 | None |

### interbotix_xs_msgs/msg/ArmJoy

`Ros2Interbotix_xs_msgsMsgArmJoy`; 12..12 canonical bytes. `UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ee_x_cmd | int8 | scalar | 0 | None |
| ee_y_cmd | int8 | scalar | 0 | None |
| ee_z_cmd | int8 | scalar | 0 | None |
| ee_roll_cmd | int8 | scalar | 0 | None |
| ee_pitch_cmd | int8 | scalar | 0 | None |
| waist_cmd | int8 | scalar | 0 | None |
| gripper_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |
| gripper_pwm_cmd | int8 | scalar | 0 | None |
| torque_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `EE_X_INC` (int8): `1`
- `EE_X_DEC` (int8): `2`
- `EE_Y_INC` (int8): `3`
- `EE_Y_DEC` (int8): `4`
- `EE_Z_INC` (int8): `5`
- `EE_Z_DEC` (int8): `6`
- `EE_ROLL_CCW` (int8): `7`
- `EE_ROLL_CW` (int8): `8`
- `EE_PITCH_UP` (int8): `9`
- `EE_PITCH_DOWN` (int8): `10`
- `WAIST_CCW` (int8): `11`
- `WAIST_CW` (int8): `12`
- `GRIPPER_RELEASE` (int8): `13`
- `GRIPPER_GRASP` (int8): `14`
- `HOME_POSE` (int8): `15`
- `SLEEP_POSE` (int8): `16`
- `SPEED_INC` (int8): `17`
- `SPEED_DEC` (int8): `18`
- `SPEED_COARSE` (int8): `19`
- `SPEED_FINE` (int8): `20`
- `GRIPPER_PWM_INC` (int8): `21`
- `GRIPPER_PWM_DEC` (int8): `22`
- `TORQUE_ON` (int8): `23`
- `TORQUE_OFF` (int8): `24`

### interbotix_xs_msgs/msg/HexJoy

`Ros2Interbotix_xs_msgsMsgHexJoy`; 17..17 canonical bytes. `UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| world_x_cmd | int8 | scalar | 0 | None |
| world_y_cmd | int8 | scalar | 0 | None |
| world_yaw_cmd | int8 | scalar | 0 | None |
| place_x_cmd | int8 | scalar | 0 | None |
| place_y_cmd | int8 | scalar | 0 | None |
| place_z_cmd | int8 | scalar | 0 | None |
| place_roll_cmd | int8 | scalar | 0 | None |
| place_pitch_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| move_type_cmd | int8 | scalar | 0 | None |
| gait_toggle_cmd | int8 | scalar | 0 | None |
| leg_toggle_cmd | int8 | scalar | 0 | None |
| stance_cmd | int8 | scalar | 0 | None |
| reboot_cmd | int8 | scalar | 0 | None |
| set_home_pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `WORLD_X_INC` (int8): `1`
- `WORLD_X_DEC` (int8): `2`
- `WORLD_Y_INC` (int8): `3`
- `WORLD_Y_DEC` (int8): `4`
- `WORLD_YAW_CCW` (int8): `5`
- `WORLD_YAW_CW` (int8): `6`
- `PLACE_X_INC` (int8): `7`
- `PLACE_X_DEC` (int8): `8`
- `PLACE_Y_INC` (int8): `9`
- `PLACE_Y_DEC` (int8): `10`
- `PLACE_Z_INC` (int8): `11`
- `PLACE_Z_DEC` (int8): `12`
- `PLACE_ROLL_CCW` (int8): `13`
- `PLACE_ROLL_CW` (int8): `14`
- `PLACE_PITCH_UP` (int8): `15`
- `PLACE_PITCH_DOWN` (int8): `16`
- `MOVE_HEXAPOD` (int8): `17`
- `MOVE_LEG` (int8): `18`
- `HOME_POSE` (int8): `19`
- `SLEEP_POSE` (int8): `20`
- `GAIT_NEXT` (int8): `21`
- `GAIT_PREVIOUS` (int8): `22`
- `LEG_NEXT` (int8): `23`
- `LEG_PREVIOUS` (int8): `24`
- `WIDEN_STANCE` (int8): `25`
- `NARROW_STANCE` (int8): `26`
- `REBOOT_MOTORS` (int8): `27`
- `SET_HOME_POSE` (int8): `28`
- `SPEED_INC` (int8): `29`
- `SPEED_DEC` (int8): `30`
- `SPEED_COARSE` (int8): `31`
- `SPEED_FINE` (int8): `32`

### interbotix_xs_msgs/msg/JointGroupCommand

`Ros2Interbotix_xs_msgsMsgJointGroupCommand`; 8..392 canonical bytes. `UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | None |
| cmd | float32 | sequence/64 | 0 | None |

### interbotix_xs_msgs/msg/JointSingleCommand

`Ros2Interbotix_xs_msgsMsgJointSingleCommand`; 8..136 canonical bytes. `UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | None |
| cmd | float32 | scalar | 0 | None |

### interbotix_xs_msgs/msg/JointTemps

`Ros2Interbotix_xs_msgsMsgJointTemps`; 8..8712 canonical bytes. `UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| names | string | sequence/64 | 128 | None |
| temps | int32 | sequence/64 | 0 | None |

### std_msgs/msg/Header

`Ros2Std_msgsMsgHeader`; 12..140 canonical bytes. `UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| stamp | builtin_interfaces/msg/Time | scalar | 0 | None |
| frame_id | string | scalar | 128 | None |

### trajectory_msgs/msg/JointTrajectoryPoint

`Ros2Trajectory_msgsMsgJointTrajectoryPoint`; 24..536 canonical bytes. `UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| positions | float64 | sequence/16 | 0 | None |
| velocities | float64 | sequence/16 | 0 | None |
| accelerations | float64 | sequence/16 | 0 | None |
| effort | float64 | sequence/16 | 0 | None |
| time_from_start | builtin_interfaces/msg/Duration | scalar | 0 | None |

### trajectory_msgs/msg/JointTrajectory

`Ros2Trajectory_msgsMsgJointTrajectory`; 20..4404 canonical bytes. `UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| joint_names | string | sequence/16 | 128 | None |
| points | trajectory_msgs/msg/JointTrajectoryPoint | sequence/4 | 0 | None |

### interbotix_xs_msgs/msg/JointTrajectoryCommand

`Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand`; 28..4668 canonical bytes. `UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| traj | trajectory_msgs/msg/JointTrajectory | scalar | 0 | None |

### interbotix_xs_msgs/msg/LocobotJoy

`Ros2Interbotix_xs_msgsMsgLocobotJoy`; 30..30 canonical bytes. `UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| base_x_cmd | float64 | scalar | 0 | None |
| base_theta_cmd | float64 | scalar | 0 | None |
| base_reset_odom_cmd | int8 | scalar | 0 | None |
| pan_cmd | int8 | scalar | 0 | None |
| tilt_cmd | int8 | scalar | 0 | None |
| ee_x_cmd | int8 | scalar | 0 | None |
| ee_y_cmd | int8 | scalar | 0 | None |
| ee_z_cmd | int8 | scalar | 0 | None |
| ee_roll_cmd | int8 | scalar | 0 | None |
| ee_pitch_cmd | int8 | scalar | 0 | None |
| waist_cmd | int8 | scalar | 0 | None |
| gripper_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |
| gripper_pwm_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `RESET_ODOM` (int8): `1`
- `PAN_CCW` (int8): `2`
- `PAN_CW` (int8): `3`
- `TILT_UP` (int8): `4`
- `TILT_DOWN` (int8): `5`
- `PAN_TILT_HOME` (int8): `6`
- `EE_X_INC` (int8): `7`
- `EE_X_DEC` (int8): `8`
- `EE_Y_INC` (int8): `9`
- `EE_Y_DEC` (int8): `10`
- `EE_Z_INC` (int8): `11`
- `EE_Z_DEC` (int8): `12`
- `EE_ROLL_CCW` (int8): `13`
- `EE_ROLL_CW` (int8): `14`
- `EE_PITCH_UP` (int8): `15`
- `EE_PITCH_DOWN` (int8): `16`
- `WAIST_CCW` (int8): `17`
- `WAIST_CW` (int8): `18`
- `GRIPPER_RELEASE` (int8): `19`
- `GRIPPER_GRASP` (int8): `20`
- `HOME_POSE` (int8): `21`
- `SLEEP_POSE` (int8): `22`
- `SPEED_INC` (int8): `23`
- `SPEED_DEC` (int8): `24`
- `SPEED_COARSE` (int8): `25`
- `SPEED_FINE` (int8): `26`
- `GRIPPER_PWM_INC` (int8): `27`
- `GRIPPER_PWM_DEC` (int8): `28`

### interbotix_xs_msgs/msg/TurretJoy

`Ros2Interbotix_xs_msgsMsgTurretJoy`; 4..4 canonical bytes. `UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pan_cmd | int8 | scalar | 0 | None |
| tilt_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `PAN_CCW` (int8): `1`
- `PAN_CW` (int8): `2`
- `TILT_UP` (int8): `3`
- `TILT_DOWN` (int8): `4`
- `PAN_TILT_HOME` (int8): `5`
- `SPEED_INC` (int8): `6`
- `SPEED_DEC` (int8): `7`
- `SPEED_COARSE` (int8): `8`
- `SPEED_FINE` (int8): `9`

### interbotix_xs_msgs/srv/MotorGains_Request

`Ros2Interbotix_xs_msgsSrvMotorGains_Request`; 36..292 canonical bytes. `UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| kp_pos | int32 | scalar | 0 | None |
| ki_pos | int32 | scalar | 0 | None |
| kd_pos | int32 | scalar | 0 | None |
| k1 | int32 | scalar | 0 | None |
| k2 | int32 | scalar | 0 | None |
| kp_vel | int32 | scalar | 0 | None |
| ki_vel | int32 | scalar | 0 | None |

### interbotix_xs_msgs/srv/MotorGains_Response

`Ros2Interbotix_xs_msgsSrvMotorGains_Response`; 0..0 canonical bytes. `UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/srv/OperatingModes_Request

`Ros2Interbotix_xs_msgsSrvOperatingModes_Request`; 24..536 canonical bytes. `UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| mode | string | scalar | 128 | None |
| profile_type | string | scalar | 128 | None |
| profile_velocity | int32 | scalar | 0 | None |
| profile_acceleration | int32 | scalar | 0 | None |

### interbotix_xs_msgs/srv/OperatingModes_Response

`Ros2Interbotix_xs_msgsSrvOperatingModes_Response`; 0..0 canonical bytes. `UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/srv/Reboot_Request

`Ros2Interbotix_xs_msgsSrvReboot_Request`; 10..266 canonical bytes. `UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| enable | bool | scalar | 0 | None |
| smart_reboot | bool | scalar | 0 | None |

### interbotix_xs_msgs/srv/Reboot_Response

`Ros2Interbotix_xs_msgsSrvReboot_Response`; 0..0 canonical bytes. `UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/srv/RegisterValues_Request

`Ros2Interbotix_xs_msgsSrvRegisterValues_Request`; 16..400 canonical bytes. `UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| reg | string | scalar | 128 | None |
| value | int32 | scalar | 0 | None |

### interbotix_xs_msgs/srv/RegisterValues_Response

`Ros2Interbotix_xs_msgsSrvRegisterValues_Response`; 4..68 canonical bytes. `UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| values | int32 | sequence/16 | 0 | None |

### interbotix_xs_msgs/srv/RobotInfo_Request

`Ros2Interbotix_xs_msgsSrvRobotInfo_Request`; 8..264 canonical bytes. `UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |

### interbotix_xs_msgs/srv/RobotInfo_Response

`Ros2Interbotix_xs_msgsSrvRobotInfo_Response`; 42..18474 canonical bytes. `UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| mode | string | scalar | 128 | None |
| profile_type | string | scalar | 128 | None |
| joint_names | string | sequence/64 | 128 | None |
| joint_ids | int16 | sequence/64 | 0 | None |
| joint_lower_limits | float32 | sequence/64 | 0 | None |
| joint_upper_limits | float32 | sequence/64 | 0 | None |
| joint_velocity_limits | float32 | sequence/64 | 0 | None |
| joint_sleep_positions | float32 | sequence/64 | 0 | None |
| joint_state_indices | int16 | sequence/64 | 0 | None |
| num_joints | int16 | scalar | 0 | None |
| name | string | sequence/64 | 128 | None |

### interbotix_xs_msgs/srv/TorqueEnable_Request

`Ros2Interbotix_xs_msgsSrvTorqueEnable_Request`; 9..265 canonical bytes. `UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| enable | bool | scalar | 0 | None |

### interbotix_xs_msgs/srv/TorqueEnable_Response

`Ros2Interbotix_xs_msgsSrvTorqueEnable_Response`; 0..0 canonical bytes. `UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### Complete protocol components

- `builtin_interfaces/msg/Duration` (message): `{'message': {'version': 2, 'name': 'builtin_interfaces/msg/Duration', 'members': [{'name': 'sec', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'nanosec', 'type': 'uint32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'builtin_interfaces/msg/Duration.msg', 'bytes': 497, 'sha256': 'a8f4349a6332f8576f9dfe24cf77a751abb115cfd1310dab9b774e3602516f39'}, 'component': '', 'owner': 'builtin_interfaces/msg/Duration', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8, 'constants': []}}`.
- `builtin_interfaces/msg/Time` (message): `{'message': {'version': 2, 'name': 'builtin_interfaces/msg/Time', 'members': [{'name': 'sec', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'nanosec', 'type': 'uint32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'builtin_interfaces/msg/Time.msg', 'bytes': 420, 'sha256': '0e6f429967a29ba34b224c5c0236c938084e82ee1279deeaf0666768cba220ae'}, 'component': '', 'owner': 'builtin_interfaces/msg/Time', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8, 'constants': []}}`.
- `interbotix_xs_msgs/msg/ArmJoy` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/ArmJoy', 'members': [{'name': 'ee_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_roll_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'waist_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_pwm_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'torque_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/ArmJoy.msg', 'bytes': 1920, 'sha256': 'a5e531af859e8c916699eeead9f34f0d7fd39ed34e6102defebce139027fbc4f'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/ArmJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 12, 'nodes': 13, 'depth': 2, 'codec_identity': 'UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 12, 'constants': [{'name': 'EE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'EE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'EE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'EE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'EE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'EE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'EE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'EE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'EE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'EE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'WAIST_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'WAIST_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'GRIPPER_RELEASE', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'GRIPPER_GRASP', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'GRIPPER_PWM_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'GRIPPER_PWM_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'TORQUE_ON', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'TORQUE_OFF', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}]}}`.
- `interbotix_xs_msgs/msg/HexJoy` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/HexJoy', 'members': [{'name': 'world_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'world_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'world_yaw_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_roll_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'move_type_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gait_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'leg_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'stance_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'reboot_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'set_home_pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/HexJoy.msg', 'bytes': 2160, 'sha256': 'b26d1e7fad6a2c6e7facc40745e3f25ad68f99527387d1a755a3127a74265ae5'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/HexJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 17, 'maximum': 17, 'nodes': 18, 'depth': 2, 'codec_identity': 'UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 17, 'constants': [{'name': 'WORLD_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'WORLD_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'WORLD_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'WORLD_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'WORLD_YAW_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'WORLD_YAW_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'PLACE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'PLACE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'PLACE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'PLACE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'PLACE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'PLACE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'PLACE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'PLACE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'PLACE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'PLACE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'MOVE_HEXAPOD', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'MOVE_LEG', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'GAIT_NEXT', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'GAIT_PREVIOUS', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'LEG_NEXT', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'LEG_PREVIOUS', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}, {'name': 'WIDEN_STANCE', 'type': 'int8', 'native_type': 'int8', 'literal': '25', 'value': '25'}, {'name': 'NARROW_STANCE', 'type': 'int8', 'native_type': 'int8', 'literal': '26', 'value': '26'}, {'name': 'REBOOT_MOTORS', 'type': 'int8', 'native_type': 'int8', 'literal': '27', 'value': '27'}, {'name': 'SET_HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '28', 'value': '28'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '29', 'value': '29'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '30', 'value': '30'}, {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '31', 'value': '31'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '32', 'value': '32'}]}}`.
- `interbotix_xs_msgs/msg/JointGroupCommand` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/JointGroupCommand', 'members': [{'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cmd', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointGroupCommand.msg', 'bytes': 474, 'sha256': 'b85955c32e0fcaca05feeabe663b495e93ba5e85d26d4becf91d72dd09b04d44'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/JointGroupCommand', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 392, 'nodes': 67, 'depth': 3, 'codec_identity': 'UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 392, 'constants': []}}`.
- `interbotix_xs_msgs/msg/JointSingleCommand` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/JointSingleCommand', 'members': [{'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cmd', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointSingleCommand.msg', 'bytes': 303, 'sha256': 'bbe2faaa92bcffd29c5f1e449f3e1aaaf68938f85bb1ab77cb228fe99806b77b'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/JointSingleCommand', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 136, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 136, 'constants': []}}`.
- `interbotix_xs_msgs/msg/JointTemps` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/JointTemps', 'members': [{'name': 'names', 'type': 'string', 'array': 'sequence', 'count': 64, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'temps', 'type': 'int32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointTemps.msg', 'bytes': 169, 'sha256': 'e0798d4b96836b4836a540161fefb8071998ef948e5fb09b5e29a8bb3d9a4622'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/JointTemps', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8712, 'nodes': 131, 'depth': 3, 'codec_identity': 'UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8712, 'constants': []}}`.
- `interbotix_xs_msgs/msg/JointTrajectoryCommand` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/JointTrajectoryCommand', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'traj', 'type': 'trajectory_msgs/msg/JointTrajectory', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointTrajectoryCommand.msg', 'bytes': 590, 'sha256': '185e5828609989f3732b76e3f80adb0ffc800e808a4064c6e6751db986970502'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/JointTrajectoryCommand', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 28, 'maximum': 4668, 'nodes': 315, 'depth': 6, 'codec_identity': 'UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4668, 'constants': []}}`.
- `interbotix_xs_msgs/msg/LocobotJoy` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/LocobotJoy', 'members': [{'name': 'base_x_cmd', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'base_theta_cmd', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'base_reset_odom_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pan_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'tilt_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_roll_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'waist_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_pwm_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/LocobotJoy.msg', 'bytes': 2420, 'sha256': '873a67cefdbc8111ed547dd3dc268187230294e6d7bda6b0b5cd2fc2b32ac7a7'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/LocobotJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 30, 'maximum': 30, 'nodes': 17, 'depth': 2, 'codec_identity': 'UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 30, 'constants': [{'name': 'RESET_ODOM', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'PAN_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'PAN_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'TILT_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'TILT_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'PAN_TILT_HOME', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'EE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'EE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'EE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'EE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'EE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'EE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'EE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'EE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'EE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'EE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'WAIST_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'WAIST_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'GRIPPER_RELEASE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'GRIPPER_GRASP', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}, {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '25', 'value': '25'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '26', 'value': '26'}, {'name': 'GRIPPER_PWM_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '27', 'value': '27'}, {'name': 'GRIPPER_PWM_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '28', 'value': '28'}]}}`.
- `interbotix_xs_msgs/msg/TurretJoy` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/TurretJoy', 'members': [{'name': 'pan_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'tilt_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/TurretJoy.msg', 'bytes': 1029, 'sha256': 'b6ddbb08d0b3c30d1ddc8fcab574f827d82e020e56c7a48383002db1c0ac6049'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/TurretJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': [{'name': 'PAN_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'PAN_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'TILT_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'TILT_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'PAN_TILT_HOME', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}]}}`.
- `interbotix_xs_msgs/srv/MotorGains` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/MotorGains_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'kp_pos', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ki_pos', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'kd_pos', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'k1', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'k2', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'kp_vel', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ki_vel', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/MotorGains.srv', 'bytes': 1028, 'sha256': '3d278e42154a1620e4a496c76b345b59bc183bd833ba5aefb6d797bf9c8abe67'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/MotorGains', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 36, 'maximum': 292, 'nodes': 10, 'depth': 2, 'codec_identity': 'UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 292, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/MotorGains_Response', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/MotorGains.srv', 'bytes': 1028, 'sha256': '3d278e42154a1620e4a496c76b345b59bc183bd833ba5aefb6d797bf9c8abe67'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/MotorGains', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/srv/OperatingModes` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/OperatingModes_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mode', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_velocity', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_acceleration', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/OperatingModes.srv', 'bytes': 3301, 'sha256': 'b8b5344f61f82d8d1264d5510d72bc092f7c5b35d11f001e9d3d7739c6f8b060'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/OperatingModes', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 536, 'nodes': 7, 'depth': 2, 'codec_identity': 'UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 536, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/OperatingModes_Response', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/OperatingModes.srv', 'bytes': 3301, 'sha256': 'b8b5344f61f82d8d1264d5510d72bc092f7c5b35d11f001e9d3d7739c6f8b060'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/OperatingModes', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/srv/Reboot` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/Reboot_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'enable', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'smart_reboot', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/Reboot.srv', 'bytes': 847, 'sha256': 'd2a065332528676c8c5378cc41cbd8c611e8c6e479b7bfa1c75e19053d38d17e'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/Reboot', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 10, 'maximum': 266, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 266, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/Reboot_Response', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/Reboot.srv', 'bytes': 847, 'sha256': 'd2a065332528676c8c5378cc41cbd8c611e8c6e479b7bfa1c75e19053d38d17e'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/Reboot', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/srv/RegisterValues` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/RegisterValues_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'reg', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'value', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RegisterValues.srv', 'bytes': 769, 'sha256': 'ff04d128d88437e0f50f452a4a9cfe98b36346179614b0255fc917aeabbdf513'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/RegisterValues', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 16, 'maximum': 400, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 400, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/RegisterValues_Response', 'members': [{'name': 'values', 'type': 'int32', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RegisterValues.srv', 'bytes': 769, 'sha256': 'ff04d128d88437e0f50f452a4a9cfe98b36346179614b0255fc917aeabbdf513'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/RegisterValues', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 68, 'nodes': 18, 'depth': 3, 'codec_identity': 'UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 68, 'constants': []}}`.
- `interbotix_xs_msgs/srv/RobotInfo` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/RobotInfo_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RobotInfo.srv', 'bytes': 1761, 'sha256': '5953ba2fdd8f7cd3d858dd002e7e7ec2de6960d4c9c82ce1ddc5c6177e6ce163'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/RobotInfo', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 264, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 264, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/RobotInfo_Response', 'members': [{'name': 'mode', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_names', 'type': 'string', 'array': 'sequence', 'count': 64, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_ids', 'type': 'int16', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_lower_limits', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_upper_limits', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_velocity_limits', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_sleep_positions', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_state_indices', 'type': 'int16', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'num_joints', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': 'sequence', 'count': 64, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RobotInfo.srv', 'bytes': 1761, 'sha256': '5953ba2fdd8f7cd3d858dd002e7e7ec2de6960d4c9c82ce1ddc5c6177e6ce163'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/RobotInfo', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 42, 'maximum': 18474, 'nodes': 524, 'depth': 3, 'codec_identity': 'UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 18474, 'constants': []}}`.
- `interbotix_xs_msgs/srv/TorqueEnable` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/TorqueEnable_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'enable', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/TorqueEnable.srv', 'bytes': 329, 'sha256': '0f382d2c2c46af302521729c73400427bd8d6a35000c3a310e78913e78b59c9f'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/TorqueEnable', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 9, 'maximum': 265, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 265, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/TorqueEnable_Response', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/TorqueEnable.srv', 'bytes': 329, 'sha256': '0f382d2c2c46af302521729c73400427bd8d6a35000c3a310e78913e78b59c9f'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/TorqueEnable', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `std_msgs/msg/Header` (message): `{'message': {'version': 2, 'name': 'std_msgs/msg/Header', 'members': [{'name': 'stamp', 'type': 'builtin_interfaces/msg/Time', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'frame_id', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_msgs/msg/Header.msg', 'bytes': 322, 'sha256': 'd2cea14630e39ed0fa5b432ba9160a7c38855b9427d3344f99e83e83facb53c2'}, 'component': '', 'owner': 'std_msgs/msg/Header', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 140, 'nodes': 5, 'depth': 3, 'codec_identity': 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 140, 'constants': []}}`.
- `trajectory_msgs/msg/JointTrajectory` (message): `{'message': {'version': 2, 'name': 'trajectory_msgs/msg/JointTrajectory', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_names', 'type': 'string', 'array': 'sequence', 'count': 16, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'points', 'type': 'trajectory_msgs/msg/JointTrajectoryPoint', 'array': 'sequence', 'count': 4, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'trajectory_msgs/msg/JointTrajectory.msg', 'bytes': 465, 'sha256': 'd63cda4a5ec81824ed4acd737e6b5903449fb1a7e2f5cdcdcc4c49285f01117c'}, 'component': '', 'owner': 'trajectory_msgs/msg/JointTrajectory', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 20, 'maximum': 4404, 'nodes': 312, 'depth': 5, 'codec_identity': 'UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4404, 'constants': []}}`.
- `trajectory_msgs/msg/JointTrajectoryPoint` (message): `{'message': {'version': 2, 'name': 'trajectory_msgs/msg/JointTrajectoryPoint', 'members': [{'name': 'positions', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'velocities', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'accelerations', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'effort', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'time_from_start', 'type': 'builtin_interfaces/msg/Duration', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'trajectory_msgs/msg/JointTrajectoryPoint.msg', 'bytes': 1176, 'sha256': '2358055d26d27c0c302e921f90d5aa59cb5feb3e22937f8ac98314b0c52ba8f4'}, 'component': '', 'owner': 'trajectory_msgs/msg/JointTrajectoryPoint', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 536, 'nodes': 72, 'depth': 3, 'codec_identity': 'UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 536, 'constants': []}}`.

## ros2_humble

ros2: 30 records, 8 services, 0 actions.

Catalog: `share/platform/trossen/catalogs/ros2_humble/catalog.json`. Source pins: `source-lock.json`.

Upstream witnesses: `{'repository': 'Interbotix/interbotix_ros_core', 'branch': 'humble', 'commit': 'af18d4fe24ba08e09a0f1e92afaca1863e3205de'}`.

### builtin_interfaces/msg/Duration

`Ros2Builtin_interfacesMsgDuration`; 8..8 canonical bytes. `UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| sec | int32 | scalar | 0 | None |
| nanosec | uint32 | scalar | 0 | None |

### builtin_interfaces/msg/Time

`Ros2Builtin_interfacesMsgTime`; 8..8 canonical bytes. `UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| sec | int32 | scalar | 0 | None |
| nanosec | uint32 | scalar | 0 | None |

### std_msgs/msg/Header

`Ros2Std_msgsMsgHeader`; 12..140 canonical bytes. `UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| stamp | builtin_interfaces/msg/Time | scalar | 0 | None |
| frame_id | string | scalar | 128 | None |

### interbotix_footswitch_msgs/msg/FootswitchState

`Ros2Interbotix_footswitch_msgsMsgFootswitchState`; 15..143 canonical bytes. `UWVMROS1_aeea56b64e751aa1b141270177969582a2a36c66276565733efe2180c376842c`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| state | bool | array/3 | 0 | None |

### interbotix_slate_msgs/srv/SetLightState_Request

`Ros2Interbotix_slate_msgsSrvSetLightState_Request`; 4..4 canonical bytes. `UWVMROS1_ff7ce99b264f9f71c006b31b92a9f265c87345e85a97e0cbfe1bef87faada554`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| light_state | uint32 | scalar | 0 | 0 |

Constants (not part of instance wire bytes):
- `LIGHT_STATE_OFF` (uint32): `0`
- `LIGHT_STATE_RED` (uint32): `1`
- `LIGHT_STATE_GREEN` (uint32): `2`
- `LIGHT_STATE_YELLOW` (uint32): `3`
- `LIGHT_STATE_BLUE` (uint32): `4`
- `LIGHT_STATE_PURPLE` (uint32): `5`
- `LIGHT_STATE_CYAN` (uint32): `6`
- `LIGHT_STATE_WHITE` (uint32): `7`
- `LIGHT_STATE_RED_FLASH` (uint32): `9`
- `LIGHT_STATE_GREEN_FLASH` (uint32): `10`
- `LIGHT_STATE_YELLOW_FLASH` (uint32): `11`
- `LIGHT_STATE_BLUE_FLASH` (uint32): `12`
- `LIGHT_STATE_PURPLE_FLASH` (uint32): `13`
- `LIGHT_STATE_CYAN_FLASH` (uint32): `14`
- `LIGHT_STATE_WHITE_FLASH` (uint32): `15`

### interbotix_slate_msgs/srv/SetLightState_Response

`Ros2Interbotix_slate_msgsSrvSetLightState_Response`; 5..133 canonical bytes. `UWVMROS1_66b8c031625c139338db9a44150a4a1bb3373aaab6138e19170bd4d73fcb9784`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | 0 | None |
| message | string | scalar | 128 | None |

### interbotix_slate_msgs/srv/SetString_Request

`Ros2Interbotix_slate_msgsSrvSetString_Request`; 4..132 canonical bytes. `UWVMROS1_73dee49ce66919e9dbe833756a932f480d5a73370743eff8f6c18f86b9b33c45`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| data | string | scalar | 128 | None |

### interbotix_slate_msgs/srv/SetString_Response

`Ros2Interbotix_slate_msgsSrvSetString_Response`; 5..133 canonical bytes. `UWVMROS1_b25e0d761dc29daba23de652fec51f967a432fd13fe78a5ade79e7cdb00b4e33`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | 0 | None |
| message | string | scalar | 128 | None |

### interbotix_xs_msgs/msg/ArmJoy

`Ros2Interbotix_xs_msgsMsgArmJoy`; 12..12 canonical bytes. `UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ee_x_cmd | int8 | scalar | 0 | None |
| ee_y_cmd | int8 | scalar | 0 | None |
| ee_z_cmd | int8 | scalar | 0 | None |
| ee_roll_cmd | int8 | scalar | 0 | None |
| ee_pitch_cmd | int8 | scalar | 0 | None |
| waist_cmd | int8 | scalar | 0 | None |
| gripper_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |
| gripper_pwm_cmd | int8 | scalar | 0 | None |
| torque_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `EE_X_INC` (int8): `1`
- `EE_X_DEC` (int8): `2`
- `EE_Y_INC` (int8): `3`
- `EE_Y_DEC` (int8): `4`
- `EE_Z_INC` (int8): `5`
- `EE_Z_DEC` (int8): `6`
- `EE_ROLL_CCW` (int8): `7`
- `EE_ROLL_CW` (int8): `8`
- `EE_PITCH_UP` (int8): `9`
- `EE_PITCH_DOWN` (int8): `10`
- `WAIST_CCW` (int8): `11`
- `WAIST_CW` (int8): `12`
- `GRIPPER_RELEASE` (int8): `13`
- `GRIPPER_GRASP` (int8): `14`
- `HOME_POSE` (int8): `15`
- `SLEEP_POSE` (int8): `16`
- `SPEED_INC` (int8): `17`
- `SPEED_DEC` (int8): `18`
- `SPEED_COARSE` (int8): `19`
- `SPEED_FINE` (int8): `20`
- `GRIPPER_PWM_INC` (int8): `21`
- `GRIPPER_PWM_DEC` (int8): `22`
- `TORQUE_ON` (int8): `23`
- `TORQUE_OFF` (int8): `24`

### interbotix_xs_msgs/msg/HexJoy

`Ros2Interbotix_xs_msgsMsgHexJoy`; 17..17 canonical bytes. `UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| world_x_cmd | int8 | scalar | 0 | None |
| world_y_cmd | int8 | scalar | 0 | None |
| world_yaw_cmd | int8 | scalar | 0 | None |
| place_x_cmd | int8 | scalar | 0 | None |
| place_y_cmd | int8 | scalar | 0 | None |
| place_z_cmd | int8 | scalar | 0 | None |
| place_roll_cmd | int8 | scalar | 0 | None |
| place_pitch_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| move_type_cmd | int8 | scalar | 0 | None |
| gait_toggle_cmd | int8 | scalar | 0 | None |
| leg_toggle_cmd | int8 | scalar | 0 | None |
| stance_cmd | int8 | scalar | 0 | None |
| reboot_cmd | int8 | scalar | 0 | None |
| set_home_pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `WORLD_X_INC` (int8): `1`
- `WORLD_X_DEC` (int8): `2`
- `WORLD_Y_INC` (int8): `3`
- `WORLD_Y_DEC` (int8): `4`
- `WORLD_YAW_CCW` (int8): `5`
- `WORLD_YAW_CW` (int8): `6`
- `PLACE_X_INC` (int8): `7`
- `PLACE_X_DEC` (int8): `8`
- `PLACE_Y_INC` (int8): `9`
- `PLACE_Y_DEC` (int8): `10`
- `PLACE_Z_INC` (int8): `11`
- `PLACE_Z_DEC` (int8): `12`
- `PLACE_ROLL_CCW` (int8): `13`
- `PLACE_ROLL_CW` (int8): `14`
- `PLACE_PITCH_UP` (int8): `15`
- `PLACE_PITCH_DOWN` (int8): `16`
- `MOVE_HEXAPOD` (int8): `17`
- `MOVE_LEG` (int8): `18`
- `HOME_POSE` (int8): `19`
- `SLEEP_POSE` (int8): `20`
- `GAIT_NEXT` (int8): `21`
- `GAIT_PREVIOUS` (int8): `22`
- `LEG_NEXT` (int8): `23`
- `LEG_PREVIOUS` (int8): `24`
- `WIDEN_STANCE` (int8): `25`
- `NARROW_STANCE` (int8): `26`
- `REBOOT_MOTORS` (int8): `27`
- `SET_HOME_POSE` (int8): `28`
- `SPEED_INC` (int8): `29`
- `SPEED_DEC` (int8): `30`
- `SPEED_COARSE` (int8): `31`
- `SPEED_FINE` (int8): `32`

### interbotix_xs_msgs/msg/JointGroupCommand

`Ros2Interbotix_xs_msgsMsgJointGroupCommand`; 8..392 canonical bytes. `UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | None |
| cmd | float32 | sequence/64 | 0 | None |

### interbotix_xs_msgs/msg/JointSingleCommand

`Ros2Interbotix_xs_msgsMsgJointSingleCommand`; 8..136 canonical bytes. `UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | None |
| cmd | float32 | scalar | 0 | None |

### interbotix_xs_msgs/msg/JointTemps

`Ros2Interbotix_xs_msgsMsgJointTemps`; 8..8712 canonical bytes. `UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| names | string | sequence/64 | 128 | None |
| temps | int32 | sequence/64 | 0 | None |

### trajectory_msgs/msg/JointTrajectoryPoint

`Ros2Trajectory_msgsMsgJointTrajectoryPoint`; 24..536 canonical bytes. `UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| positions | float64 | sequence/16 | 0 | None |
| velocities | float64 | sequence/16 | 0 | None |
| accelerations | float64 | sequence/16 | 0 | None |
| effort | float64 | sequence/16 | 0 | None |
| time_from_start | builtin_interfaces/msg/Duration | scalar | 0 | None |

### trajectory_msgs/msg/JointTrajectory

`Ros2Trajectory_msgsMsgJointTrajectory`; 20..4404 canonical bytes. `UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| joint_names | string | sequence/16 | 128 | None |
| points | trajectory_msgs/msg/JointTrajectoryPoint | sequence/4 | 0 | None |

### interbotix_xs_msgs/msg/JointTrajectoryCommand

`Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand`; 28..4668 canonical bytes. `UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| traj | trajectory_msgs/msg/JointTrajectory | scalar | 0 | None |

### interbotix_xs_msgs/msg/LocobotJoy

`Ros2Interbotix_xs_msgsMsgLocobotJoy`; 30..30 canonical bytes. `UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| base_x_cmd | float64 | scalar | 0 | None |
| base_theta_cmd | float64 | scalar | 0 | None |
| base_reset_odom_cmd | int8 | scalar | 0 | None |
| pan_cmd | int8 | scalar | 0 | None |
| tilt_cmd | int8 | scalar | 0 | None |
| ee_x_cmd | int8 | scalar | 0 | None |
| ee_y_cmd | int8 | scalar | 0 | None |
| ee_z_cmd | int8 | scalar | 0 | None |
| ee_roll_cmd | int8 | scalar | 0 | None |
| ee_pitch_cmd | int8 | scalar | 0 | None |
| waist_cmd | int8 | scalar | 0 | None |
| gripper_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |
| gripper_pwm_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `RESET_ODOM` (int8): `1`
- `PAN_CCW` (int8): `2`
- `PAN_CW` (int8): `3`
- `TILT_UP` (int8): `4`
- `TILT_DOWN` (int8): `5`
- `PAN_TILT_HOME` (int8): `6`
- `EE_X_INC` (int8): `7`
- `EE_X_DEC` (int8): `8`
- `EE_Y_INC` (int8): `9`
- `EE_Y_DEC` (int8): `10`
- `EE_Z_INC` (int8): `11`
- `EE_Z_DEC` (int8): `12`
- `EE_ROLL_CCW` (int8): `13`
- `EE_ROLL_CW` (int8): `14`
- `EE_PITCH_UP` (int8): `15`
- `EE_PITCH_DOWN` (int8): `16`
- `WAIST_CCW` (int8): `17`
- `WAIST_CW` (int8): `18`
- `GRIPPER_RELEASE` (int8): `19`
- `GRIPPER_GRASP` (int8): `20`
- `HOME_POSE` (int8): `21`
- `SLEEP_POSE` (int8): `22`
- `SPEED_INC` (int8): `23`
- `SPEED_DEC` (int8): `24`
- `SPEED_COARSE` (int8): `25`
- `SPEED_FINE` (int8): `26`
- `GRIPPER_PWM_INC` (int8): `27`
- `GRIPPER_PWM_DEC` (int8): `28`

### interbotix_xs_msgs/msg/TurretJoy

`Ros2Interbotix_xs_msgsMsgTurretJoy`; 4..4 canonical bytes. `UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pan_cmd | int8 | scalar | 0 | None |
| tilt_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `PAN_CCW` (int8): `1`
- `PAN_CW` (int8): `2`
- `TILT_UP` (int8): `3`
- `TILT_DOWN` (int8): `4`
- `PAN_TILT_HOME` (int8): `5`
- `SPEED_INC` (int8): `6`
- `SPEED_DEC` (int8): `7`
- `SPEED_COARSE` (int8): `8`
- `SPEED_FINE` (int8): `9`

### interbotix_xs_msgs/srv/MotorGains_Request

`Ros2Interbotix_xs_msgsSrvMotorGains_Request`; 36..292 canonical bytes. `UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| kp_pos | int32 | scalar | 0 | None |
| ki_pos | int32 | scalar | 0 | None |
| kd_pos | int32 | scalar | 0 | None |
| k1 | int32 | scalar | 0 | None |
| k2 | int32 | scalar | 0 | None |
| kp_vel | int32 | scalar | 0 | None |
| ki_vel | int32 | scalar | 0 | None |

### interbotix_xs_msgs/srv/MotorGains_Response

`Ros2Interbotix_xs_msgsSrvMotorGains_Response`; 0..0 canonical bytes. `UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/srv/OperatingModes_Request

`Ros2Interbotix_xs_msgsSrvOperatingModes_Request`; 24..536 canonical bytes. `UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| mode | string | scalar | 128 | None |
| profile_type | string | scalar | 128 | None |
| profile_velocity | int32 | scalar | 0 | None |
| profile_acceleration | int32 | scalar | 0 | None |

### interbotix_xs_msgs/srv/OperatingModes_Response

`Ros2Interbotix_xs_msgsSrvOperatingModes_Response`; 0..0 canonical bytes. `UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/srv/Reboot_Request

`Ros2Interbotix_xs_msgsSrvReboot_Request`; 10..266 canonical bytes. `UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| enable | bool | scalar | 0 | None |
| smart_reboot | bool | scalar | 0 | None |

### interbotix_xs_msgs/srv/Reboot_Response

`Ros2Interbotix_xs_msgsSrvReboot_Response`; 0..0 canonical bytes. `UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/srv/RegisterValues_Request

`Ros2Interbotix_xs_msgsSrvRegisterValues_Request`; 16..400 canonical bytes. `UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| reg | string | scalar | 128 | None |
| value | int32 | scalar | 0 | None |

### interbotix_xs_msgs/srv/RegisterValues_Response

`Ros2Interbotix_xs_msgsSrvRegisterValues_Response`; 4..68 canonical bytes. `UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| values | int32 | sequence/16 | 0 | None |

### interbotix_xs_msgs/srv/RobotInfo_Request

`Ros2Interbotix_xs_msgsSrvRobotInfo_Request`; 8..264 canonical bytes. `UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |

### interbotix_xs_msgs/srv/RobotInfo_Response

`Ros2Interbotix_xs_msgsSrvRobotInfo_Response`; 42..18474 canonical bytes. `UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| mode | string | scalar | 128 | None |
| profile_type | string | scalar | 128 | None |
| joint_names | string | sequence/64 | 128 | None |
| joint_ids | int16 | sequence/64 | 0 | None |
| joint_lower_limits | float32 | sequence/64 | 0 | None |
| joint_upper_limits | float32 | sequence/64 | 0 | None |
| joint_velocity_limits | float32 | sequence/64 | 0 | None |
| joint_sleep_positions | float32 | sequence/64 | 0 | None |
| joint_state_indices | int16 | sequence/64 | 0 | None |
| num_joints | int16 | scalar | 0 | None |
| name | string | sequence/64 | 128 | None |

### interbotix_xs_msgs/srv/TorqueEnable_Request

`Ros2Interbotix_xs_msgsSrvTorqueEnable_Request`; 9..265 canonical bytes. `UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| enable | bool | scalar | 0 | None |

### interbotix_xs_msgs/srv/TorqueEnable_Response

`Ros2Interbotix_xs_msgsSrvTorqueEnable_Response`; 0..0 canonical bytes. `UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### Complete protocol components

- `builtin_interfaces/msg/Duration` (message): `{'message': {'version': 2, 'name': 'builtin_interfaces/msg/Duration', 'members': [{'name': 'sec', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'nanosec', 'type': 'uint32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'builtin_interfaces/msg/Duration.msg', 'bytes': 497, 'sha256': 'a8f4349a6332f8576f9dfe24cf77a751abb115cfd1310dab9b774e3602516f39'}, 'component': '', 'owner': 'builtin_interfaces/msg/Duration', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8, 'constants': []}}`.
- `builtin_interfaces/msg/Time` (message): `{'message': {'version': 2, 'name': 'builtin_interfaces/msg/Time', 'members': [{'name': 'sec', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'nanosec', 'type': 'uint32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'builtin_interfaces/msg/Time.msg', 'bytes': 420, 'sha256': '0e6f429967a29ba34b224c5c0236c938084e82ee1279deeaf0666768cba220ae'}, 'component': '', 'owner': 'builtin_interfaces/msg/Time', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8, 'constants': []}}`.
- `interbotix_footswitch_msgs/msg/FootswitchState` (message): `{'message': {'version': 2, 'name': 'interbotix_footswitch_msgs/msg/FootswitchState', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'state', 'type': 'bool', 'array': 'array', 'count': 3, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_footswitch_msgs/msg/FootswitchState.msg', 'bytes': 38, 'sha256': 'ac890bcde334f94c98eac16baf2350eb9a125984f73f88baf716598ea1e923c7'}, 'component': '', 'owner': 'interbotix_footswitch_msgs/msg/FootswitchState', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 15, 'maximum': 143, 'nodes': 10, 'depth': 4, 'codec_identity': 'UWVMROS1_aeea56b64e751aa1b141270177969582a2a36c66276565733efe2180c376842c', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 143, 'constants': []}}`.
- `interbotix_slate_msgs/srv/SetLightState` (service): `{'request': {'version': 2, 'name': 'interbotix_slate_msgs/srv/SetLightState_Request', 'members': [{'name': 'light_state', 'type': 'uint32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': '0', 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_slate_msgs/srv/SetLightState.srv', 'bytes': 524, 'sha256': 'ea6276e608e72c87ee9488aab27937ed579c249addc8ad78fcc1954386063ab9'}, 'component': 'request', 'owner': 'interbotix_slate_msgs/srv/SetLightState', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_ff7ce99b264f9f71c006b31b92a9f265c87345e85a97e0cbfe1bef87faada554', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': [{'name': 'LIGHT_STATE_OFF', 'type': 'uint32', 'native_type': 'uint32', 'literal': '0', 'value': '0'}, {'name': 'LIGHT_STATE_RED', 'type': 'uint32', 'native_type': 'uint32', 'literal': '1', 'value': '1'}, {'name': 'LIGHT_STATE_GREEN', 'type': 'uint32', 'native_type': 'uint32', 'literal': '2', 'value': '2'}, {'name': 'LIGHT_STATE_YELLOW', 'type': 'uint32', 'native_type': 'uint32', 'literal': '3', 'value': '3'}, {'name': 'LIGHT_STATE_BLUE', 'type': 'uint32', 'native_type': 'uint32', 'literal': '4', 'value': '4'}, {'name': 'LIGHT_STATE_PURPLE', 'type': 'uint32', 'native_type': 'uint32', 'literal': '5', 'value': '5'}, {'name': 'LIGHT_STATE_CYAN', 'type': 'uint32', 'native_type': 'uint32', 'literal': '6', 'value': '6'}, {'name': 'LIGHT_STATE_WHITE', 'type': 'uint32', 'native_type': 'uint32', 'literal': '7', 'value': '7'}, {'name': 'LIGHT_STATE_RED_FLASH', 'type': 'uint32', 'native_type': 'uint32', 'literal': '9', 'value': '9'}, {'name': 'LIGHT_STATE_GREEN_FLASH', 'type': 'uint32', 'native_type': 'uint32', 'literal': '10', 'value': '10'}, {'name': 'LIGHT_STATE_YELLOW_FLASH', 'type': 'uint32', 'native_type': 'uint32', 'literal': '11', 'value': '11'}, {'name': 'LIGHT_STATE_BLUE_FLASH', 'type': 'uint32', 'native_type': 'uint32', 'literal': '12', 'value': '12'}, {'name': 'LIGHT_STATE_PURPLE_FLASH', 'type': 'uint32', 'native_type': 'uint32', 'literal': '13', 'value': '13'}, {'name': 'LIGHT_STATE_CYAN_FLASH', 'type': 'uint32', 'native_type': 'uint32', 'literal': '14', 'value': '14'}, {'name': 'LIGHT_STATE_WHITE_FLASH', 'type': 'uint32', 'native_type': 'uint32', 'literal': '15', 'value': '15'}]}, 'response': {'version': 2, 'name': 'interbotix_slate_msgs/srv/SetLightState_Response', 'members': [{'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_slate_msgs/srv/SetLightState.srv', 'bytes': 524, 'sha256': 'ea6276e608e72c87ee9488aab27937ed579c249addc8ad78fcc1954386063ab9'}, 'component': 'response', 'owner': 'interbotix_slate_msgs/srv/SetLightState', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 5, 'maximum': 133, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_66b8c031625c139338db9a44150a4a1bb3373aaab6138e19170bd4d73fcb9784', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 133, 'constants': []}}`.
- `interbotix_slate_msgs/srv/SetString` (service): `{'request': {'version': 2, 'name': 'interbotix_slate_msgs/srv/SetString_Request', 'members': [{'name': 'data', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_slate_msgs/srv/SetString.srv', 'bytes': 44, 'sha256': '1137de16260d638622e16c4e11c7bd811dcdd92d2a5ae2f3061b941295397acc'}, 'component': 'request', 'owner': 'interbotix_slate_msgs/srv/SetString', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 132, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_73dee49ce66919e9dbe833756a932f480d5a73370743eff8f6c18f86b9b33c45', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 132, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_slate_msgs/srv/SetString_Response', 'members': [{'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_slate_msgs/srv/SetString.srv', 'bytes': 44, 'sha256': '1137de16260d638622e16c4e11c7bd811dcdd92d2a5ae2f3061b941295397acc'}, 'component': 'response', 'owner': 'interbotix_slate_msgs/srv/SetString', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 5, 'maximum': 133, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_b25e0d761dc29daba23de652fec51f967a432fd13fe78a5ade79e7cdb00b4e33', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 133, 'constants': []}}`.
- `interbotix_xs_msgs/msg/ArmJoy` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/ArmJoy', 'members': [{'name': 'ee_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_roll_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'waist_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_pwm_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'torque_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/ArmJoy.msg', 'bytes': 1920, 'sha256': 'a5e531af859e8c916699eeead9f34f0d7fd39ed34e6102defebce139027fbc4f'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/ArmJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 12, 'nodes': 13, 'depth': 2, 'codec_identity': 'UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 12, 'constants': [{'name': 'EE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'EE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'EE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'EE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'EE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'EE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'EE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'EE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'EE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'EE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'WAIST_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'WAIST_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'GRIPPER_RELEASE', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'GRIPPER_GRASP', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'GRIPPER_PWM_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'GRIPPER_PWM_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'TORQUE_ON', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'TORQUE_OFF', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}]}}`.
- `interbotix_xs_msgs/msg/HexJoy` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/HexJoy', 'members': [{'name': 'world_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'world_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'world_yaw_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_roll_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'move_type_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gait_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'leg_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'stance_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'reboot_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'set_home_pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/HexJoy.msg', 'bytes': 2160, 'sha256': 'b26d1e7fad6a2c6e7facc40745e3f25ad68f99527387d1a755a3127a74265ae5'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/HexJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 17, 'maximum': 17, 'nodes': 18, 'depth': 2, 'codec_identity': 'UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 17, 'constants': [{'name': 'WORLD_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'WORLD_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'WORLD_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'WORLD_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'WORLD_YAW_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'WORLD_YAW_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'PLACE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'PLACE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'PLACE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'PLACE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'PLACE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'PLACE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'PLACE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'PLACE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'PLACE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'PLACE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'MOVE_HEXAPOD', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'MOVE_LEG', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'GAIT_NEXT', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'GAIT_PREVIOUS', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'LEG_NEXT', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'LEG_PREVIOUS', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}, {'name': 'WIDEN_STANCE', 'type': 'int8', 'native_type': 'int8', 'literal': '25', 'value': '25'}, {'name': 'NARROW_STANCE', 'type': 'int8', 'native_type': 'int8', 'literal': '26', 'value': '26'}, {'name': 'REBOOT_MOTORS', 'type': 'int8', 'native_type': 'int8', 'literal': '27', 'value': '27'}, {'name': 'SET_HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '28', 'value': '28'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '29', 'value': '29'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '30', 'value': '30'}, {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '31', 'value': '31'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '32', 'value': '32'}]}}`.
- `interbotix_xs_msgs/msg/JointGroupCommand` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/JointGroupCommand', 'members': [{'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cmd', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointGroupCommand.msg', 'bytes': 474, 'sha256': 'b85955c32e0fcaca05feeabe663b495e93ba5e85d26d4becf91d72dd09b04d44'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/JointGroupCommand', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 392, 'nodes': 67, 'depth': 3, 'codec_identity': 'UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 392, 'constants': []}}`.
- `interbotix_xs_msgs/msg/JointSingleCommand` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/JointSingleCommand', 'members': [{'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cmd', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointSingleCommand.msg', 'bytes': 303, 'sha256': 'bbe2faaa92bcffd29c5f1e449f3e1aaaf68938f85bb1ab77cb228fe99806b77b'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/JointSingleCommand', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 136, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 136, 'constants': []}}`.
- `interbotix_xs_msgs/msg/JointTemps` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/JointTemps', 'members': [{'name': 'names', 'type': 'string', 'array': 'sequence', 'count': 64, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'temps', 'type': 'int32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointTemps.msg', 'bytes': 169, 'sha256': 'e0798d4b96836b4836a540161fefb8071998ef948e5fb09b5e29a8bb3d9a4622'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/JointTemps', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8712, 'nodes': 131, 'depth': 3, 'codec_identity': 'UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8712, 'constants': []}}`.
- `interbotix_xs_msgs/msg/JointTrajectoryCommand` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/JointTrajectoryCommand', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'traj', 'type': 'trajectory_msgs/msg/JointTrajectory', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointTrajectoryCommand.msg', 'bytes': 590, 'sha256': '185e5828609989f3732b76e3f80adb0ffc800e808a4064c6e6751db986970502'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/JointTrajectoryCommand', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 28, 'maximum': 4668, 'nodes': 315, 'depth': 6, 'codec_identity': 'UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4668, 'constants': []}}`.
- `interbotix_xs_msgs/msg/LocobotJoy` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/LocobotJoy', 'members': [{'name': 'base_x_cmd', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'base_theta_cmd', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'base_reset_odom_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pan_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'tilt_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_roll_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'waist_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_pwm_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/LocobotJoy.msg', 'bytes': 2420, 'sha256': '873a67cefdbc8111ed547dd3dc268187230294e6d7bda6b0b5cd2fc2b32ac7a7'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/LocobotJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 30, 'maximum': 30, 'nodes': 17, 'depth': 2, 'codec_identity': 'UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 30, 'constants': [{'name': 'RESET_ODOM', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'PAN_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'PAN_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'TILT_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'TILT_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'PAN_TILT_HOME', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'EE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'EE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'EE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'EE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'EE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'EE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'EE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'EE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'EE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'EE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'WAIST_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'WAIST_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'GRIPPER_RELEASE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'GRIPPER_GRASP', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}, {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '25', 'value': '25'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '26', 'value': '26'}, {'name': 'GRIPPER_PWM_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '27', 'value': '27'}, {'name': 'GRIPPER_PWM_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '28', 'value': '28'}]}}`.
- `interbotix_xs_msgs/msg/TurretJoy` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/TurretJoy', 'members': [{'name': 'pan_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'tilt_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/TurretJoy.msg', 'bytes': 1029, 'sha256': 'b6ddbb08d0b3c30d1ddc8fcab574f827d82e020e56c7a48383002db1c0ac6049'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/TurretJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': [{'name': 'PAN_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'PAN_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'TILT_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'TILT_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'PAN_TILT_HOME', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}]}}`.
- `interbotix_xs_msgs/srv/MotorGains` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/MotorGains_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'kp_pos', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ki_pos', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'kd_pos', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'k1', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'k2', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'kp_vel', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ki_vel', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/MotorGains.srv', 'bytes': 1028, 'sha256': '3d278e42154a1620e4a496c76b345b59bc183bd833ba5aefb6d797bf9c8abe67'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/MotorGains', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 36, 'maximum': 292, 'nodes': 10, 'depth': 2, 'codec_identity': 'UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 292, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/MotorGains_Response', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/MotorGains.srv', 'bytes': 1028, 'sha256': '3d278e42154a1620e4a496c76b345b59bc183bd833ba5aefb6d797bf9c8abe67'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/MotorGains', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/srv/OperatingModes` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/OperatingModes_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mode', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_velocity', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_acceleration', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/OperatingModes.srv', 'bytes': 3301, 'sha256': 'b8b5344f61f82d8d1264d5510d72bc092f7c5b35d11f001e9d3d7739c6f8b060'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/OperatingModes', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 536, 'nodes': 7, 'depth': 2, 'codec_identity': 'UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 536, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/OperatingModes_Response', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/OperatingModes.srv', 'bytes': 3301, 'sha256': 'b8b5344f61f82d8d1264d5510d72bc092f7c5b35d11f001e9d3d7739c6f8b060'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/OperatingModes', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/srv/Reboot` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/Reboot_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'enable', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'smart_reboot', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/Reboot.srv', 'bytes': 847, 'sha256': 'd2a065332528676c8c5378cc41cbd8c611e8c6e479b7bfa1c75e19053d38d17e'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/Reboot', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 10, 'maximum': 266, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 266, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/Reboot_Response', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/Reboot.srv', 'bytes': 847, 'sha256': 'd2a065332528676c8c5378cc41cbd8c611e8c6e479b7bfa1c75e19053d38d17e'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/Reboot', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/srv/RegisterValues` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/RegisterValues_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'reg', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'value', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RegisterValues.srv', 'bytes': 769, 'sha256': 'ff04d128d88437e0f50f452a4a9cfe98b36346179614b0255fc917aeabbdf513'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/RegisterValues', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 16, 'maximum': 400, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 400, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/RegisterValues_Response', 'members': [{'name': 'values', 'type': 'int32', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RegisterValues.srv', 'bytes': 769, 'sha256': 'ff04d128d88437e0f50f452a4a9cfe98b36346179614b0255fc917aeabbdf513'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/RegisterValues', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 68, 'nodes': 18, 'depth': 3, 'codec_identity': 'UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 68, 'constants': []}}`.
- `interbotix_xs_msgs/srv/RobotInfo` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/RobotInfo_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RobotInfo.srv', 'bytes': 1761, 'sha256': '5953ba2fdd8f7cd3d858dd002e7e7ec2de6960d4c9c82ce1ddc5c6177e6ce163'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/RobotInfo', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 264, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 264, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/RobotInfo_Response', 'members': [{'name': 'mode', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_names', 'type': 'string', 'array': 'sequence', 'count': 64, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_ids', 'type': 'int16', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_lower_limits', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_upper_limits', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_velocity_limits', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_sleep_positions', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_state_indices', 'type': 'int16', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'num_joints', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': 'sequence', 'count': 64, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RobotInfo.srv', 'bytes': 1761, 'sha256': '5953ba2fdd8f7cd3d858dd002e7e7ec2de6960d4c9c82ce1ddc5c6177e6ce163'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/RobotInfo', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 42, 'maximum': 18474, 'nodes': 524, 'depth': 3, 'codec_identity': 'UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 18474, 'constants': []}}`.
- `interbotix_xs_msgs/srv/TorqueEnable` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/TorqueEnable_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'enable', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/TorqueEnable.srv', 'bytes': 329, 'sha256': '0f382d2c2c46af302521729c73400427bd8d6a35000c3a310e78913e78b59c9f'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/TorqueEnable', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 9, 'maximum': 265, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 265, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/TorqueEnable_Response', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/TorqueEnable.srv', 'bytes': 329, 'sha256': '0f382d2c2c46af302521729c73400427bd8d6a35000c3a310e78913e78b59c9f'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/TorqueEnable', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `std_msgs/msg/Header` (message): `{'message': {'version': 2, 'name': 'std_msgs/msg/Header', 'members': [{'name': 'stamp', 'type': 'builtin_interfaces/msg/Time', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'frame_id', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_msgs/msg/Header.msg', 'bytes': 322, 'sha256': 'd2cea14630e39ed0fa5b432ba9160a7c38855b9427d3344f99e83e83facb53c2'}, 'component': '', 'owner': 'std_msgs/msg/Header', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 140, 'nodes': 5, 'depth': 3, 'codec_identity': 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 140, 'constants': []}}`.
- `trajectory_msgs/msg/JointTrajectory` (message): `{'message': {'version': 2, 'name': 'trajectory_msgs/msg/JointTrajectory', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_names', 'type': 'string', 'array': 'sequence', 'count': 16, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'points', 'type': 'trajectory_msgs/msg/JointTrajectoryPoint', 'array': 'sequence', 'count': 4, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'trajectory_msgs/msg/JointTrajectory.msg', 'bytes': 465, 'sha256': 'd63cda4a5ec81824ed4acd737e6b5903449fb1a7e2f5cdcdcc4c49285f01117c'}, 'component': '', 'owner': 'trajectory_msgs/msg/JointTrajectory', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 20, 'maximum': 4404, 'nodes': 312, 'depth': 5, 'codec_identity': 'UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4404, 'constants': []}}`.
- `trajectory_msgs/msg/JointTrajectoryPoint` (message): `{'message': {'version': 2, 'name': 'trajectory_msgs/msg/JointTrajectoryPoint', 'members': [{'name': 'positions', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'velocities', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'accelerations', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'effort', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'time_from_start', 'type': 'builtin_interfaces/msg/Duration', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'trajectory_msgs/msg/JointTrajectoryPoint.msg', 'bytes': 1176, 'sha256': '2358055d26d27c0c302e921f90d5aa59cb5feb3e22937f8ac98314b0c52ba8f4'}, 'component': '', 'owner': 'trajectory_msgs/msg/JointTrajectoryPoint', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 536, 'nodes': 72, 'depth': 3, 'codec_identity': 'UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 536, 'constants': []}}`.

## ros2_iron

ros2: 30 records, 8 services, 0 actions.

Catalog: `share/platform/trossen/catalogs/ros2_iron/catalog.json`. Source pins: `source-lock.json`.

Upstream witnesses: `{'repository': 'Interbotix/interbotix_ros_core', 'branch': 'iron', 'commit': '41ca7357935bb06b3f21f518ad5b0a88529ba395'}`.

### builtin_interfaces/msg/Duration

`Ros2Builtin_interfacesMsgDuration`; 8..8 canonical bytes. `UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| sec | int32 | scalar | 0 | None |
| nanosec | uint32 | scalar | 0 | None |

### builtin_interfaces/msg/Time

`Ros2Builtin_interfacesMsgTime`; 8..8 canonical bytes. `UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| sec | int32 | scalar | 0 | None |
| nanosec | uint32 | scalar | 0 | None |

### std_msgs/msg/Header

`Ros2Std_msgsMsgHeader`; 12..140 canonical bytes. `UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| stamp | builtin_interfaces/msg/Time | scalar | 0 | None |
| frame_id | string | scalar | 128 | None |

### interbotix_footswitch_msgs/msg/FootswitchState

`Ros2Interbotix_footswitch_msgsMsgFootswitchState`; 15..143 canonical bytes. `UWVMROS1_aeea56b64e751aa1b141270177969582a2a36c66276565733efe2180c376842c`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| state | bool | array/3 | 0 | None |

### interbotix_slate_msgs/srv/SetLightState_Request

`Ros2Interbotix_slate_msgsSrvSetLightState_Request`; 4..4 canonical bytes. `UWVMROS1_ff7ce99b264f9f71c006b31b92a9f265c87345e85a97e0cbfe1bef87faada554`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| light_state | uint32 | scalar | 0 | 0 |

Constants (not part of instance wire bytes):
- `LIGHT_STATE_OFF` (uint32): `0`
- `LIGHT_STATE_RED` (uint32): `1`
- `LIGHT_STATE_GREEN` (uint32): `2`
- `LIGHT_STATE_YELLOW` (uint32): `3`
- `LIGHT_STATE_BLUE` (uint32): `4`
- `LIGHT_STATE_PURPLE` (uint32): `5`
- `LIGHT_STATE_CYAN` (uint32): `6`
- `LIGHT_STATE_WHITE` (uint32): `7`
- `LIGHT_STATE_RED_FLASH` (uint32): `9`
- `LIGHT_STATE_GREEN_FLASH` (uint32): `10`
- `LIGHT_STATE_YELLOW_FLASH` (uint32): `11`
- `LIGHT_STATE_BLUE_FLASH` (uint32): `12`
- `LIGHT_STATE_PURPLE_FLASH` (uint32): `13`
- `LIGHT_STATE_CYAN_FLASH` (uint32): `14`
- `LIGHT_STATE_WHITE_FLASH` (uint32): `15`

### interbotix_slate_msgs/srv/SetLightState_Response

`Ros2Interbotix_slate_msgsSrvSetLightState_Response`; 5..133 canonical bytes. `UWVMROS1_66b8c031625c139338db9a44150a4a1bb3373aaab6138e19170bd4d73fcb9784`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | 0 | None |
| message | string | scalar | 128 | None |

### interbotix_slate_msgs/srv/SetString_Request

`Ros2Interbotix_slate_msgsSrvSetString_Request`; 4..132 canonical bytes. `UWVMROS1_73dee49ce66919e9dbe833756a932f480d5a73370743eff8f6c18f86b9b33c45`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| data | string | scalar | 128 | None |

### interbotix_slate_msgs/srv/SetString_Response

`Ros2Interbotix_slate_msgsSrvSetString_Response`; 5..133 canonical bytes. `UWVMROS1_b25e0d761dc29daba23de652fec51f967a432fd13fe78a5ade79e7cdb00b4e33`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | 0 | None |
| message | string | scalar | 128 | None |

### interbotix_xs_msgs/msg/ArmJoy

`Ros2Interbotix_xs_msgsMsgArmJoy`; 12..12 canonical bytes. `UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ee_x_cmd | int8 | scalar | 0 | None |
| ee_y_cmd | int8 | scalar | 0 | None |
| ee_z_cmd | int8 | scalar | 0 | None |
| ee_roll_cmd | int8 | scalar | 0 | None |
| ee_pitch_cmd | int8 | scalar | 0 | None |
| waist_cmd | int8 | scalar | 0 | None |
| gripper_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |
| gripper_pwm_cmd | int8 | scalar | 0 | None |
| torque_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `EE_X_INC` (int8): `1`
- `EE_X_DEC` (int8): `2`
- `EE_Y_INC` (int8): `3`
- `EE_Y_DEC` (int8): `4`
- `EE_Z_INC` (int8): `5`
- `EE_Z_DEC` (int8): `6`
- `EE_ROLL_CCW` (int8): `7`
- `EE_ROLL_CW` (int8): `8`
- `EE_PITCH_UP` (int8): `9`
- `EE_PITCH_DOWN` (int8): `10`
- `WAIST_CCW` (int8): `11`
- `WAIST_CW` (int8): `12`
- `GRIPPER_RELEASE` (int8): `13`
- `GRIPPER_GRASP` (int8): `14`
- `HOME_POSE` (int8): `15`
- `SLEEP_POSE` (int8): `16`
- `SPEED_INC` (int8): `17`
- `SPEED_DEC` (int8): `18`
- `SPEED_COARSE` (int8): `19`
- `SPEED_FINE` (int8): `20`
- `GRIPPER_PWM_INC` (int8): `21`
- `GRIPPER_PWM_DEC` (int8): `22`
- `TORQUE_ON` (int8): `23`
- `TORQUE_OFF` (int8): `24`

### interbotix_xs_msgs/msg/HexJoy

`Ros2Interbotix_xs_msgsMsgHexJoy`; 17..17 canonical bytes. `UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| world_x_cmd | int8 | scalar | 0 | None |
| world_y_cmd | int8 | scalar | 0 | None |
| world_yaw_cmd | int8 | scalar | 0 | None |
| place_x_cmd | int8 | scalar | 0 | None |
| place_y_cmd | int8 | scalar | 0 | None |
| place_z_cmd | int8 | scalar | 0 | None |
| place_roll_cmd | int8 | scalar | 0 | None |
| place_pitch_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| move_type_cmd | int8 | scalar | 0 | None |
| gait_toggle_cmd | int8 | scalar | 0 | None |
| leg_toggle_cmd | int8 | scalar | 0 | None |
| stance_cmd | int8 | scalar | 0 | None |
| reboot_cmd | int8 | scalar | 0 | None |
| set_home_pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `WORLD_X_INC` (int8): `1`
- `WORLD_X_DEC` (int8): `2`
- `WORLD_Y_INC` (int8): `3`
- `WORLD_Y_DEC` (int8): `4`
- `WORLD_YAW_CCW` (int8): `5`
- `WORLD_YAW_CW` (int8): `6`
- `PLACE_X_INC` (int8): `7`
- `PLACE_X_DEC` (int8): `8`
- `PLACE_Y_INC` (int8): `9`
- `PLACE_Y_DEC` (int8): `10`
- `PLACE_Z_INC` (int8): `11`
- `PLACE_Z_DEC` (int8): `12`
- `PLACE_ROLL_CCW` (int8): `13`
- `PLACE_ROLL_CW` (int8): `14`
- `PLACE_PITCH_UP` (int8): `15`
- `PLACE_PITCH_DOWN` (int8): `16`
- `MOVE_HEXAPOD` (int8): `17`
- `MOVE_LEG` (int8): `18`
- `HOME_POSE` (int8): `19`
- `SLEEP_POSE` (int8): `20`
- `GAIT_NEXT` (int8): `21`
- `GAIT_PREVIOUS` (int8): `22`
- `LEG_NEXT` (int8): `23`
- `LEG_PREVIOUS` (int8): `24`
- `WIDEN_STANCE` (int8): `25`
- `NARROW_STANCE` (int8): `26`
- `REBOOT_MOTORS` (int8): `27`
- `SET_HOME_POSE` (int8): `28`
- `SPEED_INC` (int8): `29`
- `SPEED_DEC` (int8): `30`
- `SPEED_COARSE` (int8): `31`
- `SPEED_FINE` (int8): `32`

### interbotix_xs_msgs/msg/JointGroupCommand

`Ros2Interbotix_xs_msgsMsgJointGroupCommand`; 8..392 canonical bytes. `UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | None |
| cmd | float32 | sequence/64 | 0 | None |

### interbotix_xs_msgs/msg/JointSingleCommand

`Ros2Interbotix_xs_msgsMsgJointSingleCommand`; 8..136 canonical bytes. `UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | None |
| cmd | float32 | scalar | 0 | None |

### interbotix_xs_msgs/msg/JointTemps

`Ros2Interbotix_xs_msgsMsgJointTemps`; 8..8712 canonical bytes. `UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| names | string | sequence/64 | 128 | None |
| temps | int32 | sequence/64 | 0 | None |

### trajectory_msgs/msg/JointTrajectoryPoint

`Ros2Trajectory_msgsMsgJointTrajectoryPoint`; 24..536 canonical bytes. `UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| positions | float64 | sequence/16 | 0 | None |
| velocities | float64 | sequence/16 | 0 | None |
| accelerations | float64 | sequence/16 | 0 | None |
| effort | float64 | sequence/16 | 0 | None |
| time_from_start | builtin_interfaces/msg/Duration | scalar | 0 | None |

### trajectory_msgs/msg/JointTrajectory

`Ros2Trajectory_msgsMsgJointTrajectory`; 20..4404 canonical bytes. `UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| joint_names | string | sequence/16 | 128 | None |
| points | trajectory_msgs/msg/JointTrajectoryPoint | sequence/4 | 0 | None |

### interbotix_xs_msgs/msg/JointTrajectoryCommand

`Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand`; 28..4668 canonical bytes. `UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| traj | trajectory_msgs/msg/JointTrajectory | scalar | 0 | None |

### interbotix_xs_msgs/msg/LocobotJoy

`Ros2Interbotix_xs_msgsMsgLocobotJoy`; 30..30 canonical bytes. `UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| base_x_cmd | float64 | scalar | 0 | None |
| base_theta_cmd | float64 | scalar | 0 | None |
| base_reset_odom_cmd | int8 | scalar | 0 | None |
| pan_cmd | int8 | scalar | 0 | None |
| tilt_cmd | int8 | scalar | 0 | None |
| ee_x_cmd | int8 | scalar | 0 | None |
| ee_y_cmd | int8 | scalar | 0 | None |
| ee_z_cmd | int8 | scalar | 0 | None |
| ee_roll_cmd | int8 | scalar | 0 | None |
| ee_pitch_cmd | int8 | scalar | 0 | None |
| waist_cmd | int8 | scalar | 0 | None |
| gripper_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |
| gripper_pwm_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `RESET_ODOM` (int8): `1`
- `PAN_CCW` (int8): `2`
- `PAN_CW` (int8): `3`
- `TILT_UP` (int8): `4`
- `TILT_DOWN` (int8): `5`
- `PAN_TILT_HOME` (int8): `6`
- `EE_X_INC` (int8): `7`
- `EE_X_DEC` (int8): `8`
- `EE_Y_INC` (int8): `9`
- `EE_Y_DEC` (int8): `10`
- `EE_Z_INC` (int8): `11`
- `EE_Z_DEC` (int8): `12`
- `EE_ROLL_CCW` (int8): `13`
- `EE_ROLL_CW` (int8): `14`
- `EE_PITCH_UP` (int8): `15`
- `EE_PITCH_DOWN` (int8): `16`
- `WAIST_CCW` (int8): `17`
- `WAIST_CW` (int8): `18`
- `GRIPPER_RELEASE` (int8): `19`
- `GRIPPER_GRASP` (int8): `20`
- `HOME_POSE` (int8): `21`
- `SLEEP_POSE` (int8): `22`
- `SPEED_INC` (int8): `23`
- `SPEED_DEC` (int8): `24`
- `SPEED_COARSE` (int8): `25`
- `SPEED_FINE` (int8): `26`
- `GRIPPER_PWM_INC` (int8): `27`
- `GRIPPER_PWM_DEC` (int8): `28`

### interbotix_xs_msgs/msg/TurretJoy

`Ros2Interbotix_xs_msgsMsgTurretJoy`; 4..4 canonical bytes. `UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pan_cmd | int8 | scalar | 0 | None |
| tilt_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `PAN_CCW` (int8): `1`
- `PAN_CW` (int8): `2`
- `TILT_UP` (int8): `3`
- `TILT_DOWN` (int8): `4`
- `PAN_TILT_HOME` (int8): `5`
- `SPEED_INC` (int8): `6`
- `SPEED_DEC` (int8): `7`
- `SPEED_COARSE` (int8): `8`
- `SPEED_FINE` (int8): `9`

### interbotix_xs_msgs/srv/MotorGains_Request

`Ros2Interbotix_xs_msgsSrvMotorGains_Request`; 36..292 canonical bytes. `UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| kp_pos | int32 | scalar | 0 | None |
| ki_pos | int32 | scalar | 0 | None |
| kd_pos | int32 | scalar | 0 | None |
| k1 | int32 | scalar | 0 | None |
| k2 | int32 | scalar | 0 | None |
| kp_vel | int32 | scalar | 0 | None |
| ki_vel | int32 | scalar | 0 | None |

### interbotix_xs_msgs/srv/MotorGains_Response

`Ros2Interbotix_xs_msgsSrvMotorGains_Response`; 0..0 canonical bytes. `UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/srv/OperatingModes_Request

`Ros2Interbotix_xs_msgsSrvOperatingModes_Request`; 24..536 canonical bytes. `UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| mode | string | scalar | 128 | None |
| profile_type | string | scalar | 128 | None |
| profile_velocity | int32 | scalar | 0 | None |
| profile_acceleration | int32 | scalar | 0 | None |

### interbotix_xs_msgs/srv/OperatingModes_Response

`Ros2Interbotix_xs_msgsSrvOperatingModes_Response`; 0..0 canonical bytes. `UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/srv/Reboot_Request

`Ros2Interbotix_xs_msgsSrvReboot_Request`; 10..266 canonical bytes. `UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| enable | bool | scalar | 0 | None |
| smart_reboot | bool | scalar | 0 | None |

### interbotix_xs_msgs/srv/Reboot_Response

`Ros2Interbotix_xs_msgsSrvReboot_Response`; 0..0 canonical bytes. `UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/srv/RegisterValues_Request

`Ros2Interbotix_xs_msgsSrvRegisterValues_Request`; 16..400 canonical bytes. `UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| reg | string | scalar | 128 | None |
| value | int32 | scalar | 0 | None |

### interbotix_xs_msgs/srv/RegisterValues_Response

`Ros2Interbotix_xs_msgsSrvRegisterValues_Response`; 4..68 canonical bytes. `UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| values | int32 | sequence/16 | 0 | None |

### interbotix_xs_msgs/srv/RobotInfo_Request

`Ros2Interbotix_xs_msgsSrvRobotInfo_Request`; 8..264 canonical bytes. `UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |

### interbotix_xs_msgs/srv/RobotInfo_Response

`Ros2Interbotix_xs_msgsSrvRobotInfo_Response`; 42..18474 canonical bytes. `UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| mode | string | scalar | 128 | None |
| profile_type | string | scalar | 128 | None |
| joint_names | string | sequence/64 | 128 | None |
| joint_ids | int16 | sequence/64 | 0 | None |
| joint_lower_limits | float32 | sequence/64 | 0 | None |
| joint_upper_limits | float32 | sequence/64 | 0 | None |
| joint_velocity_limits | float32 | sequence/64 | 0 | None |
| joint_sleep_positions | float32 | sequence/64 | 0 | None |
| joint_state_indices | int16 | sequence/64 | 0 | None |
| num_joints | int16 | scalar | 0 | None |
| name | string | sequence/64 | 128 | None |

### interbotix_xs_msgs/srv/TorqueEnable_Request

`Ros2Interbotix_xs_msgsSrvTorqueEnable_Request`; 9..265 canonical bytes. `UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| enable | bool | scalar | 0 | None |

### interbotix_xs_msgs/srv/TorqueEnable_Response

`Ros2Interbotix_xs_msgsSrvTorqueEnable_Response`; 0..0 canonical bytes. `UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### Complete protocol components

- `builtin_interfaces/msg/Duration` (message): `{'message': {'version': 2, 'name': 'builtin_interfaces/msg/Duration', 'members': [{'name': 'sec', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'nanosec', 'type': 'uint32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'builtin_interfaces/msg/Duration.msg', 'bytes': 497, 'sha256': 'a8f4349a6332f8576f9dfe24cf77a751abb115cfd1310dab9b774e3602516f39'}, 'component': '', 'owner': 'builtin_interfaces/msg/Duration', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8, 'constants': []}}`.
- `builtin_interfaces/msg/Time` (message): `{'message': {'version': 2, 'name': 'builtin_interfaces/msg/Time', 'members': [{'name': 'sec', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'nanosec', 'type': 'uint32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'builtin_interfaces/msg/Time.msg', 'bytes': 420, 'sha256': '0e6f429967a29ba34b224c5c0236c938084e82ee1279deeaf0666768cba220ae'}, 'component': '', 'owner': 'builtin_interfaces/msg/Time', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8, 'constants': []}}`.
- `interbotix_footswitch_msgs/msg/FootswitchState` (message): `{'message': {'version': 2, 'name': 'interbotix_footswitch_msgs/msg/FootswitchState', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'state', 'type': 'bool', 'array': 'array', 'count': 3, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_footswitch_msgs/msg/FootswitchState.msg', 'bytes': 38, 'sha256': 'ac890bcde334f94c98eac16baf2350eb9a125984f73f88baf716598ea1e923c7'}, 'component': '', 'owner': 'interbotix_footswitch_msgs/msg/FootswitchState', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 15, 'maximum': 143, 'nodes': 10, 'depth': 4, 'codec_identity': 'UWVMROS1_aeea56b64e751aa1b141270177969582a2a36c66276565733efe2180c376842c', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 143, 'constants': []}}`.
- `interbotix_slate_msgs/srv/SetLightState` (service): `{'request': {'version': 2, 'name': 'interbotix_slate_msgs/srv/SetLightState_Request', 'members': [{'name': 'light_state', 'type': 'uint32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': '0', 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_slate_msgs/srv/SetLightState.srv', 'bytes': 524, 'sha256': 'ea6276e608e72c87ee9488aab27937ed579c249addc8ad78fcc1954386063ab9'}, 'component': 'request', 'owner': 'interbotix_slate_msgs/srv/SetLightState', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_ff7ce99b264f9f71c006b31b92a9f265c87345e85a97e0cbfe1bef87faada554', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': [{'name': 'LIGHT_STATE_OFF', 'type': 'uint32', 'native_type': 'uint32', 'literal': '0', 'value': '0'}, {'name': 'LIGHT_STATE_RED', 'type': 'uint32', 'native_type': 'uint32', 'literal': '1', 'value': '1'}, {'name': 'LIGHT_STATE_GREEN', 'type': 'uint32', 'native_type': 'uint32', 'literal': '2', 'value': '2'}, {'name': 'LIGHT_STATE_YELLOW', 'type': 'uint32', 'native_type': 'uint32', 'literal': '3', 'value': '3'}, {'name': 'LIGHT_STATE_BLUE', 'type': 'uint32', 'native_type': 'uint32', 'literal': '4', 'value': '4'}, {'name': 'LIGHT_STATE_PURPLE', 'type': 'uint32', 'native_type': 'uint32', 'literal': '5', 'value': '5'}, {'name': 'LIGHT_STATE_CYAN', 'type': 'uint32', 'native_type': 'uint32', 'literal': '6', 'value': '6'}, {'name': 'LIGHT_STATE_WHITE', 'type': 'uint32', 'native_type': 'uint32', 'literal': '7', 'value': '7'}, {'name': 'LIGHT_STATE_RED_FLASH', 'type': 'uint32', 'native_type': 'uint32', 'literal': '9', 'value': '9'}, {'name': 'LIGHT_STATE_GREEN_FLASH', 'type': 'uint32', 'native_type': 'uint32', 'literal': '10', 'value': '10'}, {'name': 'LIGHT_STATE_YELLOW_FLASH', 'type': 'uint32', 'native_type': 'uint32', 'literal': '11', 'value': '11'}, {'name': 'LIGHT_STATE_BLUE_FLASH', 'type': 'uint32', 'native_type': 'uint32', 'literal': '12', 'value': '12'}, {'name': 'LIGHT_STATE_PURPLE_FLASH', 'type': 'uint32', 'native_type': 'uint32', 'literal': '13', 'value': '13'}, {'name': 'LIGHT_STATE_CYAN_FLASH', 'type': 'uint32', 'native_type': 'uint32', 'literal': '14', 'value': '14'}, {'name': 'LIGHT_STATE_WHITE_FLASH', 'type': 'uint32', 'native_type': 'uint32', 'literal': '15', 'value': '15'}]}, 'response': {'version': 2, 'name': 'interbotix_slate_msgs/srv/SetLightState_Response', 'members': [{'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_slate_msgs/srv/SetLightState.srv', 'bytes': 524, 'sha256': 'ea6276e608e72c87ee9488aab27937ed579c249addc8ad78fcc1954386063ab9'}, 'component': 'response', 'owner': 'interbotix_slate_msgs/srv/SetLightState', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 5, 'maximum': 133, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_66b8c031625c139338db9a44150a4a1bb3373aaab6138e19170bd4d73fcb9784', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 133, 'constants': []}}`.
- `interbotix_slate_msgs/srv/SetString` (service): `{'request': {'version': 2, 'name': 'interbotix_slate_msgs/srv/SetString_Request', 'members': [{'name': 'data', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_slate_msgs/srv/SetString.srv', 'bytes': 44, 'sha256': '1137de16260d638622e16c4e11c7bd811dcdd92d2a5ae2f3061b941295397acc'}, 'component': 'request', 'owner': 'interbotix_slate_msgs/srv/SetString', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 132, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_73dee49ce66919e9dbe833756a932f480d5a73370743eff8f6c18f86b9b33c45', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 132, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_slate_msgs/srv/SetString_Response', 'members': [{'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_slate_msgs/srv/SetString.srv', 'bytes': 44, 'sha256': '1137de16260d638622e16c4e11c7bd811dcdd92d2a5ae2f3061b941295397acc'}, 'component': 'response', 'owner': 'interbotix_slate_msgs/srv/SetString', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 5, 'maximum': 133, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_b25e0d761dc29daba23de652fec51f967a432fd13fe78a5ade79e7cdb00b4e33', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 133, 'constants': []}}`.
- `interbotix_xs_msgs/msg/ArmJoy` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/ArmJoy', 'members': [{'name': 'ee_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_roll_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'waist_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_pwm_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'torque_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/ArmJoy.msg', 'bytes': 1920, 'sha256': 'a5e531af859e8c916699eeead9f34f0d7fd39ed34e6102defebce139027fbc4f'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/ArmJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 12, 'nodes': 13, 'depth': 2, 'codec_identity': 'UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 12, 'constants': [{'name': 'EE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'EE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'EE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'EE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'EE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'EE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'EE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'EE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'EE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'EE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'WAIST_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'WAIST_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'GRIPPER_RELEASE', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'GRIPPER_GRASP', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'GRIPPER_PWM_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'GRIPPER_PWM_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'TORQUE_ON', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'TORQUE_OFF', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}]}}`.
- `interbotix_xs_msgs/msg/HexJoy` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/HexJoy', 'members': [{'name': 'world_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'world_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'world_yaw_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_roll_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'move_type_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gait_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'leg_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'stance_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'reboot_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'set_home_pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/HexJoy.msg', 'bytes': 2160, 'sha256': 'b26d1e7fad6a2c6e7facc40745e3f25ad68f99527387d1a755a3127a74265ae5'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/HexJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 17, 'maximum': 17, 'nodes': 18, 'depth': 2, 'codec_identity': 'UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 17, 'constants': [{'name': 'WORLD_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'WORLD_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'WORLD_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'WORLD_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'WORLD_YAW_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'WORLD_YAW_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'PLACE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'PLACE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'PLACE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'PLACE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'PLACE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'PLACE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'PLACE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'PLACE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'PLACE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'PLACE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'MOVE_HEXAPOD', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'MOVE_LEG', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'GAIT_NEXT', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'GAIT_PREVIOUS', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'LEG_NEXT', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'LEG_PREVIOUS', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}, {'name': 'WIDEN_STANCE', 'type': 'int8', 'native_type': 'int8', 'literal': '25', 'value': '25'}, {'name': 'NARROW_STANCE', 'type': 'int8', 'native_type': 'int8', 'literal': '26', 'value': '26'}, {'name': 'REBOOT_MOTORS', 'type': 'int8', 'native_type': 'int8', 'literal': '27', 'value': '27'}, {'name': 'SET_HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '28', 'value': '28'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '29', 'value': '29'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '30', 'value': '30'}, {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '31', 'value': '31'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '32', 'value': '32'}]}}`.
- `interbotix_xs_msgs/msg/JointGroupCommand` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/JointGroupCommand', 'members': [{'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cmd', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointGroupCommand.msg', 'bytes': 474, 'sha256': 'b85955c32e0fcaca05feeabe663b495e93ba5e85d26d4becf91d72dd09b04d44'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/JointGroupCommand', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 392, 'nodes': 67, 'depth': 3, 'codec_identity': 'UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 392, 'constants': []}}`.
- `interbotix_xs_msgs/msg/JointSingleCommand` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/JointSingleCommand', 'members': [{'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cmd', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointSingleCommand.msg', 'bytes': 303, 'sha256': 'bbe2faaa92bcffd29c5f1e449f3e1aaaf68938f85bb1ab77cb228fe99806b77b'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/JointSingleCommand', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 136, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 136, 'constants': []}}`.
- `interbotix_xs_msgs/msg/JointTemps` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/JointTemps', 'members': [{'name': 'names', 'type': 'string', 'array': 'sequence', 'count': 64, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'temps', 'type': 'int32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointTemps.msg', 'bytes': 169, 'sha256': 'e0798d4b96836b4836a540161fefb8071998ef948e5fb09b5e29a8bb3d9a4622'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/JointTemps', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8712, 'nodes': 131, 'depth': 3, 'codec_identity': 'UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8712, 'constants': []}}`.
- `interbotix_xs_msgs/msg/JointTrajectoryCommand` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/JointTrajectoryCommand', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'traj', 'type': 'trajectory_msgs/msg/JointTrajectory', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointTrajectoryCommand.msg', 'bytes': 590, 'sha256': '185e5828609989f3732b76e3f80adb0ffc800e808a4064c6e6751db986970502'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/JointTrajectoryCommand', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 28, 'maximum': 4668, 'nodes': 315, 'depth': 6, 'codec_identity': 'UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4668, 'constants': []}}`.
- `interbotix_xs_msgs/msg/LocobotJoy` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/LocobotJoy', 'members': [{'name': 'base_x_cmd', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'base_theta_cmd', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'base_reset_odom_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pan_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'tilt_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_roll_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'waist_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_pwm_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/LocobotJoy.msg', 'bytes': 2420, 'sha256': '873a67cefdbc8111ed547dd3dc268187230294e6d7bda6b0b5cd2fc2b32ac7a7'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/LocobotJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 30, 'maximum': 30, 'nodes': 17, 'depth': 2, 'codec_identity': 'UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 30, 'constants': [{'name': 'RESET_ODOM', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'PAN_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'PAN_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'TILT_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'TILT_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'PAN_TILT_HOME', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'EE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'EE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'EE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'EE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'EE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'EE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'EE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'EE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'EE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'EE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'WAIST_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'WAIST_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'GRIPPER_RELEASE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'GRIPPER_GRASP', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}, {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '25', 'value': '25'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '26', 'value': '26'}, {'name': 'GRIPPER_PWM_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '27', 'value': '27'}, {'name': 'GRIPPER_PWM_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '28', 'value': '28'}]}}`.
- `interbotix_xs_msgs/msg/TurretJoy` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/TurretJoy', 'members': [{'name': 'pan_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'tilt_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/TurretJoy.msg', 'bytes': 1029, 'sha256': 'b6ddbb08d0b3c30d1ddc8fcab574f827d82e020e56c7a48383002db1c0ac6049'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/TurretJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': [{'name': 'PAN_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'PAN_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'TILT_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'TILT_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'PAN_TILT_HOME', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}]}}`.
- `interbotix_xs_msgs/srv/MotorGains` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/MotorGains_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'kp_pos', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ki_pos', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'kd_pos', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'k1', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'k2', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'kp_vel', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ki_vel', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/MotorGains.srv', 'bytes': 1028, 'sha256': '3d278e42154a1620e4a496c76b345b59bc183bd833ba5aefb6d797bf9c8abe67'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/MotorGains', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 36, 'maximum': 292, 'nodes': 10, 'depth': 2, 'codec_identity': 'UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 292, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/MotorGains_Response', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/MotorGains.srv', 'bytes': 1028, 'sha256': '3d278e42154a1620e4a496c76b345b59bc183bd833ba5aefb6d797bf9c8abe67'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/MotorGains', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/srv/OperatingModes` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/OperatingModes_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mode', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_velocity', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_acceleration', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/OperatingModes.srv', 'bytes': 3301, 'sha256': 'b8b5344f61f82d8d1264d5510d72bc092f7c5b35d11f001e9d3d7739c6f8b060'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/OperatingModes', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 536, 'nodes': 7, 'depth': 2, 'codec_identity': 'UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 536, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/OperatingModes_Response', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/OperatingModes.srv', 'bytes': 3301, 'sha256': 'b8b5344f61f82d8d1264d5510d72bc092f7c5b35d11f001e9d3d7739c6f8b060'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/OperatingModes', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/srv/Reboot` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/Reboot_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'enable', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'smart_reboot', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/Reboot.srv', 'bytes': 847, 'sha256': 'd2a065332528676c8c5378cc41cbd8c611e8c6e479b7bfa1c75e19053d38d17e'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/Reboot', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 10, 'maximum': 266, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 266, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/Reboot_Response', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/Reboot.srv', 'bytes': 847, 'sha256': 'd2a065332528676c8c5378cc41cbd8c611e8c6e479b7bfa1c75e19053d38d17e'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/Reboot', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/srv/RegisterValues` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/RegisterValues_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'reg', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'value', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RegisterValues.srv', 'bytes': 769, 'sha256': 'ff04d128d88437e0f50f452a4a9cfe98b36346179614b0255fc917aeabbdf513'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/RegisterValues', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 16, 'maximum': 400, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 400, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/RegisterValues_Response', 'members': [{'name': 'values', 'type': 'int32', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RegisterValues.srv', 'bytes': 769, 'sha256': 'ff04d128d88437e0f50f452a4a9cfe98b36346179614b0255fc917aeabbdf513'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/RegisterValues', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 68, 'nodes': 18, 'depth': 3, 'codec_identity': 'UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 68, 'constants': []}}`.
- `interbotix_xs_msgs/srv/RobotInfo` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/RobotInfo_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RobotInfo.srv', 'bytes': 1761, 'sha256': '5953ba2fdd8f7cd3d858dd002e7e7ec2de6960d4c9c82ce1ddc5c6177e6ce163'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/RobotInfo', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 264, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 264, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/RobotInfo_Response', 'members': [{'name': 'mode', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_names', 'type': 'string', 'array': 'sequence', 'count': 64, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_ids', 'type': 'int16', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_lower_limits', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_upper_limits', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_velocity_limits', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_sleep_positions', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_state_indices', 'type': 'int16', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'num_joints', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': 'sequence', 'count': 64, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RobotInfo.srv', 'bytes': 1761, 'sha256': '5953ba2fdd8f7cd3d858dd002e7e7ec2de6960d4c9c82ce1ddc5c6177e6ce163'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/RobotInfo', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 42, 'maximum': 18474, 'nodes': 524, 'depth': 3, 'codec_identity': 'UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 18474, 'constants': []}}`.
- `interbotix_xs_msgs/srv/TorqueEnable` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/TorqueEnable_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'enable', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/TorqueEnable.srv', 'bytes': 329, 'sha256': '0f382d2c2c46af302521729c73400427bd8d6a35000c3a310e78913e78b59c9f'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/TorqueEnable', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 9, 'maximum': 265, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 265, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/TorqueEnable_Response', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/TorqueEnable.srv', 'bytes': 329, 'sha256': '0f382d2c2c46af302521729c73400427bd8d6a35000c3a310e78913e78b59c9f'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/TorqueEnable', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `std_msgs/msg/Header` (message): `{'message': {'version': 2, 'name': 'std_msgs/msg/Header', 'members': [{'name': 'stamp', 'type': 'builtin_interfaces/msg/Time', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'frame_id', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_msgs/msg/Header.msg', 'bytes': 322, 'sha256': 'd2cea14630e39ed0fa5b432ba9160a7c38855b9427d3344f99e83e83facb53c2'}, 'component': '', 'owner': 'std_msgs/msg/Header', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 140, 'nodes': 5, 'depth': 3, 'codec_identity': 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 140, 'constants': []}}`.
- `trajectory_msgs/msg/JointTrajectory` (message): `{'message': {'version': 2, 'name': 'trajectory_msgs/msg/JointTrajectory', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_names', 'type': 'string', 'array': 'sequence', 'count': 16, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'points', 'type': 'trajectory_msgs/msg/JointTrajectoryPoint', 'array': 'sequence', 'count': 4, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'trajectory_msgs/msg/JointTrajectory.msg', 'bytes': 465, 'sha256': 'd63cda4a5ec81824ed4acd737e6b5903449fb1a7e2f5cdcdcc4c49285f01117c'}, 'component': '', 'owner': 'trajectory_msgs/msg/JointTrajectory', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 20, 'maximum': 4404, 'nodes': 312, 'depth': 5, 'codec_identity': 'UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4404, 'constants': []}}`.
- `trajectory_msgs/msg/JointTrajectoryPoint` (message): `{'message': {'version': 2, 'name': 'trajectory_msgs/msg/JointTrajectoryPoint', 'members': [{'name': 'positions', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'velocities', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'accelerations', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'effort', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'time_from_start', 'type': 'builtin_interfaces/msg/Duration', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'trajectory_msgs/msg/JointTrajectoryPoint.msg', 'bytes': 1176, 'sha256': '2358055d26d27c0c302e921f90d5aa59cb5feb3e22937f8ac98314b0c52ba8f4'}, 'component': '', 'owner': 'trajectory_msgs/msg/JointTrajectoryPoint', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 536, 'nodes': 72, 'depth': 3, 'codec_identity': 'UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 536, 'constants': []}}`.

## ros2_jazzy

ros2: 30 records, 8 services, 0 actions.

Catalog: `share/platform/trossen/catalogs/ros2_jazzy/catalog.json`. Source pins: `source-lock.json`.

Upstream witnesses: `{'repository': 'Interbotix/interbotix_ros_core', 'branch': 'jazzy', 'commit': '41ca7357935bb06b3f21f518ad5b0a88529ba395'}`.

### builtin_interfaces/msg/Duration

`Ros2Builtin_interfacesMsgDuration`; 8..8 canonical bytes. `UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| sec | int32 | scalar | 0 | None |
| nanosec | uint32 | scalar | 0 | None |

### builtin_interfaces/msg/Time

`Ros2Builtin_interfacesMsgTime`; 8..8 canonical bytes. `UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| sec | int32 | scalar | 0 | None |
| nanosec | uint32 | scalar | 0 | None |

### std_msgs/msg/Header

`Ros2Std_msgsMsgHeader`; 12..140 canonical bytes. `UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| stamp | builtin_interfaces/msg/Time | scalar | 0 | None |
| frame_id | string | scalar | 128 | None |

### interbotix_footswitch_msgs/msg/FootswitchState

`Ros2Interbotix_footswitch_msgsMsgFootswitchState`; 15..143 canonical bytes. `UWVMROS1_aeea56b64e751aa1b141270177969582a2a36c66276565733efe2180c376842c`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| state | bool | array/3 | 0 | None |

### interbotix_slate_msgs/srv/SetLightState_Request

`Ros2Interbotix_slate_msgsSrvSetLightState_Request`; 4..4 canonical bytes. `UWVMROS1_ff7ce99b264f9f71c006b31b92a9f265c87345e85a97e0cbfe1bef87faada554`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| light_state | uint32 | scalar | 0 | 0 |

Constants (not part of instance wire bytes):
- `LIGHT_STATE_OFF` (uint32): `0`
- `LIGHT_STATE_RED` (uint32): `1`
- `LIGHT_STATE_GREEN` (uint32): `2`
- `LIGHT_STATE_YELLOW` (uint32): `3`
- `LIGHT_STATE_BLUE` (uint32): `4`
- `LIGHT_STATE_PURPLE` (uint32): `5`
- `LIGHT_STATE_CYAN` (uint32): `6`
- `LIGHT_STATE_WHITE` (uint32): `7`
- `LIGHT_STATE_RED_FLASH` (uint32): `9`
- `LIGHT_STATE_GREEN_FLASH` (uint32): `10`
- `LIGHT_STATE_YELLOW_FLASH` (uint32): `11`
- `LIGHT_STATE_BLUE_FLASH` (uint32): `12`
- `LIGHT_STATE_PURPLE_FLASH` (uint32): `13`
- `LIGHT_STATE_CYAN_FLASH` (uint32): `14`
- `LIGHT_STATE_WHITE_FLASH` (uint32): `15`

### interbotix_slate_msgs/srv/SetLightState_Response

`Ros2Interbotix_slate_msgsSrvSetLightState_Response`; 5..133 canonical bytes. `UWVMROS1_66b8c031625c139338db9a44150a4a1bb3373aaab6138e19170bd4d73fcb9784`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | 0 | None |
| message | string | scalar | 128 | None |

### interbotix_slate_msgs/srv/SetString_Request

`Ros2Interbotix_slate_msgsSrvSetString_Request`; 4..132 canonical bytes. `UWVMROS1_73dee49ce66919e9dbe833756a932f480d5a73370743eff8f6c18f86b9b33c45`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| data | string | scalar | 128 | None |

### interbotix_slate_msgs/srv/SetString_Response

`Ros2Interbotix_slate_msgsSrvSetString_Response`; 5..133 canonical bytes. `UWVMROS1_b25e0d761dc29daba23de652fec51f967a432fd13fe78a5ade79e7cdb00b4e33`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | 0 | None |
| message | string | scalar | 128 | None |

### interbotix_xs_msgs/msg/ArmJoy

`Ros2Interbotix_xs_msgsMsgArmJoy`; 12..12 canonical bytes. `UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| ee_x_cmd | int8 | scalar | 0 | None |
| ee_y_cmd | int8 | scalar | 0 | None |
| ee_z_cmd | int8 | scalar | 0 | None |
| ee_roll_cmd | int8 | scalar | 0 | None |
| ee_pitch_cmd | int8 | scalar | 0 | None |
| waist_cmd | int8 | scalar | 0 | None |
| gripper_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |
| gripper_pwm_cmd | int8 | scalar | 0 | None |
| torque_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `EE_X_INC` (int8): `1`
- `EE_X_DEC` (int8): `2`
- `EE_Y_INC` (int8): `3`
- `EE_Y_DEC` (int8): `4`
- `EE_Z_INC` (int8): `5`
- `EE_Z_DEC` (int8): `6`
- `EE_ROLL_CCW` (int8): `7`
- `EE_ROLL_CW` (int8): `8`
- `EE_PITCH_UP` (int8): `9`
- `EE_PITCH_DOWN` (int8): `10`
- `WAIST_CCW` (int8): `11`
- `WAIST_CW` (int8): `12`
- `GRIPPER_RELEASE` (int8): `13`
- `GRIPPER_GRASP` (int8): `14`
- `HOME_POSE` (int8): `15`
- `SLEEP_POSE` (int8): `16`
- `SPEED_INC` (int8): `17`
- `SPEED_DEC` (int8): `18`
- `SPEED_COARSE` (int8): `19`
- `SPEED_FINE` (int8): `20`
- `GRIPPER_PWM_INC` (int8): `21`
- `GRIPPER_PWM_DEC` (int8): `22`
- `TORQUE_ON` (int8): `23`
- `TORQUE_OFF` (int8): `24`

### interbotix_xs_msgs/msg/HexJoy

`Ros2Interbotix_xs_msgsMsgHexJoy`; 17..17 canonical bytes. `UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| world_x_cmd | int8 | scalar | 0 | None |
| world_y_cmd | int8 | scalar | 0 | None |
| world_yaw_cmd | int8 | scalar | 0 | None |
| place_x_cmd | int8 | scalar | 0 | None |
| place_y_cmd | int8 | scalar | 0 | None |
| place_z_cmd | int8 | scalar | 0 | None |
| place_roll_cmd | int8 | scalar | 0 | None |
| place_pitch_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| move_type_cmd | int8 | scalar | 0 | None |
| gait_toggle_cmd | int8 | scalar | 0 | None |
| leg_toggle_cmd | int8 | scalar | 0 | None |
| stance_cmd | int8 | scalar | 0 | None |
| reboot_cmd | int8 | scalar | 0 | None |
| set_home_pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `WORLD_X_INC` (int8): `1`
- `WORLD_X_DEC` (int8): `2`
- `WORLD_Y_INC` (int8): `3`
- `WORLD_Y_DEC` (int8): `4`
- `WORLD_YAW_CCW` (int8): `5`
- `WORLD_YAW_CW` (int8): `6`
- `PLACE_X_INC` (int8): `7`
- `PLACE_X_DEC` (int8): `8`
- `PLACE_Y_INC` (int8): `9`
- `PLACE_Y_DEC` (int8): `10`
- `PLACE_Z_INC` (int8): `11`
- `PLACE_Z_DEC` (int8): `12`
- `PLACE_ROLL_CCW` (int8): `13`
- `PLACE_ROLL_CW` (int8): `14`
- `PLACE_PITCH_UP` (int8): `15`
- `PLACE_PITCH_DOWN` (int8): `16`
- `MOVE_HEXAPOD` (int8): `17`
- `MOVE_LEG` (int8): `18`
- `HOME_POSE` (int8): `19`
- `SLEEP_POSE` (int8): `20`
- `GAIT_NEXT` (int8): `21`
- `GAIT_PREVIOUS` (int8): `22`
- `LEG_NEXT` (int8): `23`
- `LEG_PREVIOUS` (int8): `24`
- `WIDEN_STANCE` (int8): `25`
- `NARROW_STANCE` (int8): `26`
- `REBOOT_MOTORS` (int8): `27`
- `SET_HOME_POSE` (int8): `28`
- `SPEED_INC` (int8): `29`
- `SPEED_DEC` (int8): `30`
- `SPEED_COARSE` (int8): `31`
- `SPEED_FINE` (int8): `32`

### interbotix_xs_msgs/msg/JointGroupCommand

`Ros2Interbotix_xs_msgsMsgJointGroupCommand`; 8..392 canonical bytes. `UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | None |
| cmd | float32 | sequence/64 | 0 | None |

### interbotix_xs_msgs/msg/JointSingleCommand

`Ros2Interbotix_xs_msgsMsgJointSingleCommand`; 8..136 canonical bytes. `UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | None |
| cmd | float32 | scalar | 0 | None |

### interbotix_xs_msgs/msg/JointTemps

`Ros2Interbotix_xs_msgsMsgJointTemps`; 8..8712 canonical bytes. `UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| names | string | sequence/64 | 128 | None |
| temps | int32 | sequence/64 | 0 | None |

### trajectory_msgs/msg/JointTrajectoryPoint

`Ros2Trajectory_msgsMsgJointTrajectoryPoint`; 24..536 canonical bytes. `UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| positions | float64 | sequence/16 | 0 | None |
| velocities | float64 | sequence/16 | 0 | None |
| accelerations | float64 | sequence/16 | 0 | None |
| effort | float64 | sequence/16 | 0 | None |
| time_from_start | builtin_interfaces/msg/Duration | scalar | 0 | None |

### trajectory_msgs/msg/JointTrajectory

`Ros2Trajectory_msgsMsgJointTrajectory`; 20..4404 canonical bytes. `UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| joint_names | string | sequence/16 | 128 | None |
| points | trajectory_msgs/msg/JointTrajectoryPoint | sequence/4 | 0 | None |

### interbotix_xs_msgs/msg/JointTrajectoryCommand

`Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand`; 28..4668 canonical bytes. `UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| traj | trajectory_msgs/msg/JointTrajectory | scalar | 0 | None |

### interbotix_xs_msgs/msg/LocobotJoy

`Ros2Interbotix_xs_msgsMsgLocobotJoy`; 30..30 canonical bytes. `UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| base_x_cmd | float64 | scalar | 0 | None |
| base_theta_cmd | float64 | scalar | 0 | None |
| base_reset_odom_cmd | int8 | scalar | 0 | None |
| pan_cmd | int8 | scalar | 0 | None |
| tilt_cmd | int8 | scalar | 0 | None |
| ee_x_cmd | int8 | scalar | 0 | None |
| ee_y_cmd | int8 | scalar | 0 | None |
| ee_z_cmd | int8 | scalar | 0 | None |
| ee_roll_cmd | int8 | scalar | 0 | None |
| ee_pitch_cmd | int8 | scalar | 0 | None |
| waist_cmd | int8 | scalar | 0 | None |
| gripper_cmd | int8 | scalar | 0 | None |
| pose_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |
| gripper_pwm_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `RESET_ODOM` (int8): `1`
- `PAN_CCW` (int8): `2`
- `PAN_CW` (int8): `3`
- `TILT_UP` (int8): `4`
- `TILT_DOWN` (int8): `5`
- `PAN_TILT_HOME` (int8): `6`
- `EE_X_INC` (int8): `7`
- `EE_X_DEC` (int8): `8`
- `EE_Y_INC` (int8): `9`
- `EE_Y_DEC` (int8): `10`
- `EE_Z_INC` (int8): `11`
- `EE_Z_DEC` (int8): `12`
- `EE_ROLL_CCW` (int8): `13`
- `EE_ROLL_CW` (int8): `14`
- `EE_PITCH_UP` (int8): `15`
- `EE_PITCH_DOWN` (int8): `16`
- `WAIST_CCW` (int8): `17`
- `WAIST_CW` (int8): `18`
- `GRIPPER_RELEASE` (int8): `19`
- `GRIPPER_GRASP` (int8): `20`
- `HOME_POSE` (int8): `21`
- `SLEEP_POSE` (int8): `22`
- `SPEED_INC` (int8): `23`
- `SPEED_DEC` (int8): `24`
- `SPEED_COARSE` (int8): `25`
- `SPEED_FINE` (int8): `26`
- `GRIPPER_PWM_INC` (int8): `27`
- `GRIPPER_PWM_DEC` (int8): `28`

### interbotix_xs_msgs/msg/TurretJoy

`Ros2Interbotix_xs_msgsMsgTurretJoy`; 4..4 canonical bytes. `UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pan_cmd | int8 | scalar | 0 | None |
| tilt_cmd | int8 | scalar | 0 | None |
| speed_cmd | int8 | scalar | 0 | None |
| speed_toggle_cmd | int8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `PAN_CCW` (int8): `1`
- `PAN_CW` (int8): `2`
- `TILT_UP` (int8): `3`
- `TILT_DOWN` (int8): `4`
- `PAN_TILT_HOME` (int8): `5`
- `SPEED_INC` (int8): `6`
- `SPEED_DEC` (int8): `7`
- `SPEED_COARSE` (int8): `8`
- `SPEED_FINE` (int8): `9`

### interbotix_xs_msgs/srv/MotorGains_Request

`Ros2Interbotix_xs_msgsSrvMotorGains_Request`; 36..292 canonical bytes. `UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| kp_pos | int32 | scalar | 0 | None |
| ki_pos | int32 | scalar | 0 | None |
| kd_pos | int32 | scalar | 0 | None |
| k1 | int32 | scalar | 0 | None |
| k2 | int32 | scalar | 0 | None |
| kp_vel | int32 | scalar | 0 | None |
| ki_vel | int32 | scalar | 0 | None |

### interbotix_xs_msgs/srv/MotorGains_Response

`Ros2Interbotix_xs_msgsSrvMotorGains_Response`; 0..0 canonical bytes. `UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/srv/OperatingModes_Request

`Ros2Interbotix_xs_msgsSrvOperatingModes_Request`; 24..536 canonical bytes. `UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| mode | string | scalar | 128 | None |
| profile_type | string | scalar | 128 | None |
| profile_velocity | int32 | scalar | 0 | None |
| profile_acceleration | int32 | scalar | 0 | None |

### interbotix_xs_msgs/srv/OperatingModes_Response

`Ros2Interbotix_xs_msgsSrvOperatingModes_Response`; 0..0 canonical bytes. `UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/srv/Reboot_Request

`Ros2Interbotix_xs_msgsSrvReboot_Request`; 10..266 canonical bytes. `UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| enable | bool | scalar | 0 | None |
| smart_reboot | bool | scalar | 0 | None |

### interbotix_xs_msgs/srv/Reboot_Response

`Ros2Interbotix_xs_msgsSrvReboot_Response`; 0..0 canonical bytes. `UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### interbotix_xs_msgs/srv/RegisterValues_Request

`Ros2Interbotix_xs_msgsSrvRegisterValues_Request`; 16..400 canonical bytes. `UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| reg | string | scalar | 128 | None |
| value | int32 | scalar | 0 | None |

### interbotix_xs_msgs/srv/RegisterValues_Response

`Ros2Interbotix_xs_msgsSrvRegisterValues_Response`; 4..68 canonical bytes. `UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| values | int32 | sequence/16 | 0 | None |

### interbotix_xs_msgs/srv/RobotInfo_Request

`Ros2Interbotix_xs_msgsSrvRobotInfo_Request`; 8..264 canonical bytes. `UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |

### interbotix_xs_msgs/srv/RobotInfo_Response

`Ros2Interbotix_xs_msgsSrvRobotInfo_Response`; 42..18474 canonical bytes. `UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| mode | string | scalar | 128 | None |
| profile_type | string | scalar | 128 | None |
| joint_names | string | sequence/64 | 128 | None |
| joint_ids | int16 | sequence/64 | 0 | None |
| joint_lower_limits | float32 | sequence/64 | 0 | None |
| joint_upper_limits | float32 | sequence/64 | 0 | None |
| joint_velocity_limits | float32 | sequence/64 | 0 | None |
| joint_sleep_positions | float32 | sequence/64 | 0 | None |
| joint_state_indices | int16 | sequence/64 | 0 | None |
| num_joints | int16 | scalar | 0 | None |
| name | string | sequence/64 | 128 | None |

### interbotix_xs_msgs/srv/TorqueEnable_Request

`Ros2Interbotix_xs_msgsSrvTorqueEnable_Request`; 9..265 canonical bytes. `UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| cmd_type | string | scalar | 128 | None |
| name | string | scalar | 128 | None |
| enable | bool | scalar | 0 | None |

### interbotix_xs_msgs/srv/TorqueEnable_Response

`Ros2Interbotix_xs_msgsSrvTorqueEnable_Response`; 0..0 canonical bytes. `UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### Complete protocol components

- `builtin_interfaces/msg/Duration` (message): `{'message': {'version': 2, 'name': 'builtin_interfaces/msg/Duration', 'members': [{'name': 'sec', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'nanosec', 'type': 'uint32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'builtin_interfaces/msg/Duration.msg', 'bytes': 497, 'sha256': 'a8f4349a6332f8576f9dfe24cf77a751abb115cfd1310dab9b774e3602516f39'}, 'component': '', 'owner': 'builtin_interfaces/msg/Duration', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8, 'constants': []}}`.
- `builtin_interfaces/msg/Time` (message): `{'message': {'version': 2, 'name': 'builtin_interfaces/msg/Time', 'members': [{'name': 'sec', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'nanosec', 'type': 'uint32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'builtin_interfaces/msg/Time.msg', 'bytes': 420, 'sha256': '0e6f429967a29ba34b224c5c0236c938084e82ee1279deeaf0666768cba220ae'}, 'component': '', 'owner': 'builtin_interfaces/msg/Time', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8, 'constants': []}}`.
- `interbotix_footswitch_msgs/msg/FootswitchState` (message): `{'message': {'version': 2, 'name': 'interbotix_footswitch_msgs/msg/FootswitchState', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'state', 'type': 'bool', 'array': 'array', 'count': 3, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_footswitch_msgs/msg/FootswitchState.msg', 'bytes': 38, 'sha256': 'ac890bcde334f94c98eac16baf2350eb9a125984f73f88baf716598ea1e923c7'}, 'component': '', 'owner': 'interbotix_footswitch_msgs/msg/FootswitchState', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 15, 'maximum': 143, 'nodes': 10, 'depth': 4, 'codec_identity': 'UWVMROS1_aeea56b64e751aa1b141270177969582a2a36c66276565733efe2180c376842c', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 143, 'constants': []}}`.
- `interbotix_slate_msgs/srv/SetLightState` (service): `{'request': {'version': 2, 'name': 'interbotix_slate_msgs/srv/SetLightState_Request', 'members': [{'name': 'light_state', 'type': 'uint32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': '0', 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_slate_msgs/srv/SetLightState.srv', 'bytes': 524, 'sha256': 'ea6276e608e72c87ee9488aab27937ed579c249addc8ad78fcc1954386063ab9'}, 'component': 'request', 'owner': 'interbotix_slate_msgs/srv/SetLightState', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_ff7ce99b264f9f71c006b31b92a9f265c87345e85a97e0cbfe1bef87faada554', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': [{'name': 'LIGHT_STATE_OFF', 'type': 'uint32', 'native_type': 'uint32', 'literal': '0', 'value': '0'}, {'name': 'LIGHT_STATE_RED', 'type': 'uint32', 'native_type': 'uint32', 'literal': '1', 'value': '1'}, {'name': 'LIGHT_STATE_GREEN', 'type': 'uint32', 'native_type': 'uint32', 'literal': '2', 'value': '2'}, {'name': 'LIGHT_STATE_YELLOW', 'type': 'uint32', 'native_type': 'uint32', 'literal': '3', 'value': '3'}, {'name': 'LIGHT_STATE_BLUE', 'type': 'uint32', 'native_type': 'uint32', 'literal': '4', 'value': '4'}, {'name': 'LIGHT_STATE_PURPLE', 'type': 'uint32', 'native_type': 'uint32', 'literal': '5', 'value': '5'}, {'name': 'LIGHT_STATE_CYAN', 'type': 'uint32', 'native_type': 'uint32', 'literal': '6', 'value': '6'}, {'name': 'LIGHT_STATE_WHITE', 'type': 'uint32', 'native_type': 'uint32', 'literal': '7', 'value': '7'}, {'name': 'LIGHT_STATE_RED_FLASH', 'type': 'uint32', 'native_type': 'uint32', 'literal': '9', 'value': '9'}, {'name': 'LIGHT_STATE_GREEN_FLASH', 'type': 'uint32', 'native_type': 'uint32', 'literal': '10', 'value': '10'}, {'name': 'LIGHT_STATE_YELLOW_FLASH', 'type': 'uint32', 'native_type': 'uint32', 'literal': '11', 'value': '11'}, {'name': 'LIGHT_STATE_BLUE_FLASH', 'type': 'uint32', 'native_type': 'uint32', 'literal': '12', 'value': '12'}, {'name': 'LIGHT_STATE_PURPLE_FLASH', 'type': 'uint32', 'native_type': 'uint32', 'literal': '13', 'value': '13'}, {'name': 'LIGHT_STATE_CYAN_FLASH', 'type': 'uint32', 'native_type': 'uint32', 'literal': '14', 'value': '14'}, {'name': 'LIGHT_STATE_WHITE_FLASH', 'type': 'uint32', 'native_type': 'uint32', 'literal': '15', 'value': '15'}]}, 'response': {'version': 2, 'name': 'interbotix_slate_msgs/srv/SetLightState_Response', 'members': [{'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_slate_msgs/srv/SetLightState.srv', 'bytes': 524, 'sha256': 'ea6276e608e72c87ee9488aab27937ed579c249addc8ad78fcc1954386063ab9'}, 'component': 'response', 'owner': 'interbotix_slate_msgs/srv/SetLightState', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 5, 'maximum': 133, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_66b8c031625c139338db9a44150a4a1bb3373aaab6138e19170bd4d73fcb9784', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 133, 'constants': []}}`.
- `interbotix_slate_msgs/srv/SetString` (service): `{'request': {'version': 2, 'name': 'interbotix_slate_msgs/srv/SetString_Request', 'members': [{'name': 'data', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_slate_msgs/srv/SetString.srv', 'bytes': 44, 'sha256': '1137de16260d638622e16c4e11c7bd811dcdd92d2a5ae2f3061b941295397acc'}, 'component': 'request', 'owner': 'interbotix_slate_msgs/srv/SetString', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 132, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_73dee49ce66919e9dbe833756a932f480d5a73370743eff8f6c18f86b9b33c45', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 132, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_slate_msgs/srv/SetString_Response', 'members': [{'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_slate_msgs/srv/SetString.srv', 'bytes': 44, 'sha256': '1137de16260d638622e16c4e11c7bd811dcdd92d2a5ae2f3061b941295397acc'}, 'component': 'response', 'owner': 'interbotix_slate_msgs/srv/SetString', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 5, 'maximum': 133, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_b25e0d761dc29daba23de652fec51f967a432fd13fe78a5ade79e7cdb00b4e33', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 133, 'constants': []}}`.
- `interbotix_xs_msgs/msg/ArmJoy` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/ArmJoy', 'members': [{'name': 'ee_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_roll_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'waist_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_pwm_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'torque_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/ArmJoy.msg', 'bytes': 1920, 'sha256': 'a5e531af859e8c916699eeead9f34f0d7fd39ed34e6102defebce139027fbc4f'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/ArmJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 12, 'nodes': 13, 'depth': 2, 'codec_identity': 'UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 12, 'constants': [{'name': 'EE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'EE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'EE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'EE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'EE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'EE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'EE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'EE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'EE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'EE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'WAIST_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'WAIST_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'GRIPPER_RELEASE', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'GRIPPER_GRASP', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'GRIPPER_PWM_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'GRIPPER_PWM_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'TORQUE_ON', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'TORQUE_OFF', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}]}}`.
- `interbotix_xs_msgs/msg/HexJoy` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/HexJoy', 'members': [{'name': 'world_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'world_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'world_yaw_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_roll_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'place_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'move_type_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gait_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'leg_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'stance_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'reboot_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'set_home_pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/HexJoy.msg', 'bytes': 2160, 'sha256': 'b26d1e7fad6a2c6e7facc40745e3f25ad68f99527387d1a755a3127a74265ae5'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/HexJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 17, 'maximum': 17, 'nodes': 18, 'depth': 2, 'codec_identity': 'UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 17, 'constants': [{'name': 'WORLD_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'WORLD_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'WORLD_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'WORLD_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'WORLD_YAW_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'WORLD_YAW_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'PLACE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'PLACE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'PLACE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'PLACE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'PLACE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'PLACE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'PLACE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'PLACE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'PLACE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'PLACE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'MOVE_HEXAPOD', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'MOVE_LEG', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'GAIT_NEXT', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'GAIT_PREVIOUS', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'LEG_NEXT', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'LEG_PREVIOUS', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}, {'name': 'WIDEN_STANCE', 'type': 'int8', 'native_type': 'int8', 'literal': '25', 'value': '25'}, {'name': 'NARROW_STANCE', 'type': 'int8', 'native_type': 'int8', 'literal': '26', 'value': '26'}, {'name': 'REBOOT_MOTORS', 'type': 'int8', 'native_type': 'int8', 'literal': '27', 'value': '27'}, {'name': 'SET_HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '28', 'value': '28'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '29', 'value': '29'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '30', 'value': '30'}, {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '31', 'value': '31'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '32', 'value': '32'}]}}`.
- `interbotix_xs_msgs/msg/JointGroupCommand` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/JointGroupCommand', 'members': [{'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cmd', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointGroupCommand.msg', 'bytes': 474, 'sha256': 'b85955c32e0fcaca05feeabe663b495e93ba5e85d26d4becf91d72dd09b04d44'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/JointGroupCommand', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 392, 'nodes': 67, 'depth': 3, 'codec_identity': 'UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 392, 'constants': []}}`.
- `interbotix_xs_msgs/msg/JointSingleCommand` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/JointSingleCommand', 'members': [{'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cmd', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointSingleCommand.msg', 'bytes': 303, 'sha256': 'bbe2faaa92bcffd29c5f1e449f3e1aaaf68938f85bb1ab77cb228fe99806b77b'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/JointSingleCommand', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 136, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 136, 'constants': []}}`.
- `interbotix_xs_msgs/msg/JointTemps` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/JointTemps', 'members': [{'name': 'names', 'type': 'string', 'array': 'sequence', 'count': 64, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'temps', 'type': 'int32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointTemps.msg', 'bytes': 169, 'sha256': 'e0798d4b96836b4836a540161fefb8071998ef948e5fb09b5e29a8bb3d9a4622'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/JointTemps', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8712, 'nodes': 131, 'depth': 3, 'codec_identity': 'UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8712, 'constants': []}}`.
- `interbotix_xs_msgs/msg/JointTrajectoryCommand` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/JointTrajectoryCommand', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'traj', 'type': 'trajectory_msgs/msg/JointTrajectory', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/JointTrajectoryCommand.msg', 'bytes': 590, 'sha256': '185e5828609989f3732b76e3f80adb0ffc800e808a4064c6e6751db986970502'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/JointTrajectoryCommand', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 28, 'maximum': 4668, 'nodes': 315, 'depth': 6, 'codec_identity': 'UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4668, 'constants': []}}`.
- `interbotix_xs_msgs/msg/LocobotJoy` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/LocobotJoy', 'members': [{'name': 'base_x_cmd', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'base_theta_cmd', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'base_reset_odom_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pan_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'tilt_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_x_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_y_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_z_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_roll_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ee_pitch_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'waist_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'gripper_pwm_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/LocobotJoy.msg', 'bytes': 2420, 'sha256': '873a67cefdbc8111ed547dd3dc268187230294e6d7bda6b0b5cd2fc2b32ac7a7'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/LocobotJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 30, 'maximum': 30, 'nodes': 17, 'depth': 2, 'codec_identity': 'UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 30, 'constants': [{'name': 'RESET_ODOM', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'PAN_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'PAN_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'TILT_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'TILT_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'PAN_TILT_HOME', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'EE_X_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'EE_X_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'EE_Y_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}, {'name': 'EE_Y_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '10', 'value': '10'}, {'name': 'EE_Z_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '11', 'value': '11'}, {'name': 'EE_Z_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '12', 'value': '12'}, {'name': 'EE_ROLL_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '13', 'value': '13'}, {'name': 'EE_ROLL_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '14', 'value': '14'}, {'name': 'EE_PITCH_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '15', 'value': '15'}, {'name': 'EE_PITCH_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '16', 'value': '16'}, {'name': 'WAIST_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '17', 'value': '17'}, {'name': 'WAIST_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '18', 'value': '18'}, {'name': 'GRIPPER_RELEASE', 'type': 'int8', 'native_type': 'int8', 'literal': '19', 'value': '19'}, {'name': 'GRIPPER_GRASP', 'type': 'int8', 'native_type': 'int8', 'literal': '20', 'value': '20'}, {'name': 'HOME_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '21', 'value': '21'}, {'name': 'SLEEP_POSE', 'type': 'int8', 'native_type': 'int8', 'literal': '22', 'value': '22'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '23', 'value': '23'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '24', 'value': '24'}, {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '25', 'value': '25'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '26', 'value': '26'}, {'name': 'GRIPPER_PWM_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '27', 'value': '27'}, {'name': 'GRIPPER_PWM_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '28', 'value': '28'}]}}`.
- `interbotix_xs_msgs/msg/TurretJoy` (message): `{'message': {'version': 2, 'name': 'interbotix_xs_msgs/msg/TurretJoy', 'members': [{'name': 'pan_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'tilt_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'speed_toggle_cmd', 'type': 'int8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/msg/TurretJoy.msg', 'bytes': 1029, 'sha256': 'b6ddbb08d0b3c30d1ddc8fcab574f827d82e020e56c7a48383002db1c0ac6049'}, 'component': '', 'owner': 'interbotix_xs_msgs/msg/TurretJoy', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 4, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4, 'constants': [{'name': 'PAN_CCW', 'type': 'int8', 'native_type': 'int8', 'literal': '1', 'value': '1'}, {'name': 'PAN_CW', 'type': 'int8', 'native_type': 'int8', 'literal': '2', 'value': '2'}, {'name': 'TILT_UP', 'type': 'int8', 'native_type': 'int8', 'literal': '3', 'value': '3'}, {'name': 'TILT_DOWN', 'type': 'int8', 'native_type': 'int8', 'literal': '4', 'value': '4'}, {'name': 'PAN_TILT_HOME', 'type': 'int8', 'native_type': 'int8', 'literal': '5', 'value': '5'}, {'name': 'SPEED_INC', 'type': 'int8', 'native_type': 'int8', 'literal': '6', 'value': '6'}, {'name': 'SPEED_DEC', 'type': 'int8', 'native_type': 'int8', 'literal': '7', 'value': '7'}, {'name': 'SPEED_COARSE', 'type': 'int8', 'native_type': 'int8', 'literal': '8', 'value': '8'}, {'name': 'SPEED_FINE', 'type': 'int8', 'native_type': 'int8', 'literal': '9', 'value': '9'}]}}`.
- `interbotix_xs_msgs/srv/MotorGains` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/MotorGains_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'kp_pos', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ki_pos', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'kd_pos', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'k1', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'k2', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'kp_vel', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ki_vel', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/MotorGains.srv', 'bytes': 1028, 'sha256': '3d278e42154a1620e4a496c76b345b59bc183bd833ba5aefb6d797bf9c8abe67'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/MotorGains', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 36, 'maximum': 292, 'nodes': 10, 'depth': 2, 'codec_identity': 'UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 292, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/MotorGains_Response', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/MotorGains.srv', 'bytes': 1028, 'sha256': '3d278e42154a1620e4a496c76b345b59bc183bd833ba5aefb6d797bf9c8abe67'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/MotorGains', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/srv/OperatingModes` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/OperatingModes_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'mode', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_velocity', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_acceleration', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/OperatingModes.srv', 'bytes': 3301, 'sha256': 'b8b5344f61f82d8d1264d5510d72bc092f7c5b35d11f001e9d3d7739c6f8b060'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/OperatingModes', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 536, 'nodes': 7, 'depth': 2, 'codec_identity': 'UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 536, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/OperatingModes_Response', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/OperatingModes.srv', 'bytes': 3301, 'sha256': 'b8b5344f61f82d8d1264d5510d72bc092f7c5b35d11f001e9d3d7739c6f8b060'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/OperatingModes', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/srv/Reboot` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/Reboot_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'enable', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'smart_reboot', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/Reboot.srv', 'bytes': 847, 'sha256': 'd2a065332528676c8c5378cc41cbd8c611e8c6e479b7bfa1c75e19053d38d17e'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/Reboot', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 10, 'maximum': 266, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 266, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/Reboot_Response', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/Reboot.srv', 'bytes': 847, 'sha256': 'd2a065332528676c8c5378cc41cbd8c611e8c6e479b7bfa1c75e19053d38d17e'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/Reboot', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `interbotix_xs_msgs/srv/RegisterValues` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/RegisterValues_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'reg', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'value', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RegisterValues.srv', 'bytes': 769, 'sha256': 'ff04d128d88437e0f50f452a4a9cfe98b36346179614b0255fc917aeabbdf513'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/RegisterValues', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 16, 'maximum': 400, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 400, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/RegisterValues_Response', 'members': [{'name': 'values', 'type': 'int32', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RegisterValues.srv', 'bytes': 769, 'sha256': 'ff04d128d88437e0f50f452a4a9cfe98b36346179614b0255fc917aeabbdf513'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/RegisterValues', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 68, 'nodes': 18, 'depth': 3, 'codec_identity': 'UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 68, 'constants': []}}`.
- `interbotix_xs_msgs/srv/RobotInfo` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/RobotInfo_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RobotInfo.srv', 'bytes': 1761, 'sha256': '5953ba2fdd8f7cd3d858dd002e7e7ec2de6960d4c9c82ce1ddc5c6177e6ce163'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/RobotInfo', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 264, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 264, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/RobotInfo_Response', 'members': [{'name': 'mode', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'profile_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_names', 'type': 'string', 'array': 'sequence', 'count': 64, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_ids', 'type': 'int16', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_lower_limits', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_upper_limits', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_velocity_limits', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_sleep_positions', 'type': 'float32', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_state_indices', 'type': 'int16', 'array': 'sequence', 'count': 64, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'num_joints', 'type': 'int16', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': 'sequence', 'count': 64, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/RobotInfo.srv', 'bytes': 1761, 'sha256': '5953ba2fdd8f7cd3d858dd002e7e7ec2de6960d4c9c82ce1ddc5c6177e6ce163'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/RobotInfo', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 42, 'maximum': 18474, 'nodes': 524, 'depth': 3, 'codec_identity': 'UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 18474, 'constants': []}}`.
- `interbotix_xs_msgs/srv/TorqueEnable` (service): `{'request': {'version': 2, 'name': 'interbotix_xs_msgs/srv/TorqueEnable_Request', 'members': [{'name': 'cmd_type', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'enable', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/TorqueEnable.srv', 'bytes': 329, 'sha256': '0f382d2c2c46af302521729c73400427bd8d6a35000c3a310e78913e78b59c9f'}, 'component': 'request', 'owner': 'interbotix_xs_msgs/srv/TorqueEnable', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 9, 'maximum': 265, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 265, 'constants': []}, 'response': {'version': 2, 'name': 'interbotix_xs_msgs/srv/TorqueEnable_Response', 'members': [], 'identity': None, 'source': {'file': 'interbotix_xs_msgs/srv/TorqueEnable.srv', 'bytes': 329, 'sha256': '0f382d2c2c46af302521729c73400427bd8d6a35000c3a310e78913e78b59c9f'}, 'component': 'response', 'owner': 'interbotix_xs_msgs/srv/TorqueEnable', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}}`.
- `std_msgs/msg/Header` (message): `{'message': {'version': 2, 'name': 'std_msgs/msg/Header', 'members': [{'name': 'stamp', 'type': 'builtin_interfaces/msg/Time', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'frame_id', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_msgs/msg/Header.msg', 'bytes': 322, 'sha256': 'd2cea14630e39ed0fa5b432ba9160a7c38855b9427d3344f99e83e83facb53c2'}, 'component': '', 'owner': 'std_msgs/msg/Header', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 140, 'nodes': 5, 'depth': 3, 'codec_identity': 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 140, 'constants': []}}`.
- `trajectory_msgs/msg/JointTrajectory` (message): `{'message': {'version': 2, 'name': 'trajectory_msgs/msg/JointTrajectory', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'joint_names', 'type': 'string', 'array': 'sequence', 'count': 16, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'points', 'type': 'trajectory_msgs/msg/JointTrajectoryPoint', 'array': 'sequence', 'count': 4, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'trajectory_msgs/msg/JointTrajectory.msg', 'bytes': 465, 'sha256': 'd63cda4a5ec81824ed4acd737e6b5903449fb1a7e2f5cdcdcc4c49285f01117c'}, 'component': '', 'owner': 'trajectory_msgs/msg/JointTrajectory', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 20, 'maximum': 4404, 'nodes': 312, 'depth': 5, 'codec_identity': 'UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 4404, 'constants': []}}`.
- `trajectory_msgs/msg/JointTrajectoryPoint` (message): `{'message': {'version': 2, 'name': 'trajectory_msgs/msg/JointTrajectoryPoint', 'members': [{'name': 'positions', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'velocities', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'accelerations', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'effort', 'type': 'float64', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'time_from_start', 'type': 'builtin_interfaces/msg/Duration', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'trajectory_msgs/msg/JointTrajectoryPoint.msg', 'bytes': 1176, 'sha256': '2358055d26d27c0c302e921f90d5aa59cb5feb3e22937f8ac98314b0c52ba8f4'}, 'component': '', 'owner': 'trajectory_msgs/msg/JointTrajectoryPoint', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 536, 'nodes': 72, 'depth': 3, 'codec_identity': 'UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 536, 'constants': []}}`.

