# Unitree — MoonBit

This route uses genuine MoonBit 0.10.16+b1a0e846e for complete original records, strict codecs and three independent read-only observations on ROS1 Noetic and ROS2 Jazzy. All 11 ROS1 and all 43 ROS2 records are retained. Codecs and application decisions execute in the selected language.

## Public API and values

`uwvm/unitree/ros1 or uwvm/unitree/ros2, imported as @unitree; uwvm/unitree/command as @command`

`wait_motion_state / wait_low_state / wait_motor_state / wait_wireless_controller(alias, attempts, pause); @command.output_observation(result)`

Type::new(); value.encode() -> Result[Bytes, Int32]; Type::decode(bytes). Every source field is native_ plus its exact original spelling, preserving case and avoiding reserved words. UInt/UInt64 and Int32/Int64 retain their original bits.

Constructors create local values and acquire no native owner. Nested records and fixed arrays own independent storage; returned values remain usable after native close. Exact Word/byte representations must not be replaced by approximate floating values. Treat schema descriptors as immutable during codec operations.

## Complete codec contract

Every field retains its original order, width, signedness, nested type and array shape. Reject integer overflow, noncanonical booleans, wrong fixed lengths, excess sequence counts, NaN/infinities, malformed UTF-8, NUL, truncation and trailing bytes. float32 encoding rounds to its declared target width and refuses overflow. Reencoding preserves decoded negative zero and all integer bits. A leading UTF-8 BOM is ordinary data and remains present.

Originally unbounded native declarations remain unbounded declarations. Explicit SDK admission quotas are separate: commonly 2048 UTF-8 bytes per string, 2048 byte payload elements, and 32 record/numeric sequence elements; the exact per-field descriptor is authoritative. Complete record ceilings are at most 6225 bytes. Never clip a value to fit capacity. codec_identity identifies canonical encoding and is distinct from independently read native MD5/RIHS identities.

## Observation, errors and ownership

The caller supplies an existing exact-type alias, a total poll budget of 1..250 and a synchronous wait function returning an original uint32 status. Examples wait 20 ms only after idle 11. The budget includes the first poll. Acquire one owner and subscribe once; idle 11 alone permits another poll. Capacity, protocol, decoding, permission and wait failures do not replay. Every normal acquired path closes once. Ordinary errors use explicit finally/ensure/pcall or nonthrowing Result paths; fatal traps, unrecoverable allocation failures and process termination require outer instance retirement.

| Field | Contract |
| --- | --- |
| `primary` | First validation/open/subscribe/poll/decode/wait error, independent of close. |
| `rpc_status`, `rpc_present`, `polls` | Original last uint32 poll status, explicit presence and actual poll count. |
| `required_present`, `required`, `length` | Original u64 slot and its validity; diagnostic JSON uses exact decimal strings and does not invent successful lengths. |
| `cleanup_present`, `cleanup` | Whether close was attempted and its separate original status. |
| `value`, `response_present`, `wire_hex` | Expose the whole owned value only after complete validation; retain every canonical byte after close. |

Exit precedence is primary, then cleanup, then output failure, clamped to 0..125; JSON retains full original statuses. Common statuses are 0 success, 5 I/O/protocol failure, 9 retired handle, 11 idle, 22 invalid input/whole codec, 38 incompatible ABI, and 90 insufficient capacity. Unknown original statuses are retained.

## Six standalone examples

| Backend | Example | Complete original native type |
| --- | --- | --- |
| ROS1 | `example/platform/unitree/moonbit/ros1/motion_state` | `unitree_legged_msgs/HighState` |
| ROS1 | `example/platform/unitree/moonbit/ros1/low_state` | `unitree_legged_msgs/LowState` |
| ROS1 | `example/platform/unitree/moonbit/ros1/motor_state` | `unitree_legged_msgs/MotorState` |
| ROS2 | `example/platform/unitree/moonbit/ros2/motion_state` | `unitree_go/msg/SportModeState` |
| ROS2 | `example/platform/unitree/moonbit/ros2/low_state` | `unitree_go/msg/LowState` |
| ROS2 | `example/platform/unitree/moonbit/ros2/wireless_controller` | `unitree_go/msg/WirelessController` |

Run directly inside any example directory:

```text
xmake
```

The build host needs Xmake alone. Genuine compilers/VMs are fixed SDK inputs; no installed shell, Python, Node, language compiler, uwvm or ROS is required. Bundled examples locate the installed root automatically; external projects may set UWVM_ROS_SDK_ROOT explicitly. Each build/ contains one sole .wasm; intermediates belong in .uwvm-ros.

Running separately requires actual uwvm2-ros, the production native gateway, the exact sourced Noetic/Jazzy installation and trusted deployment JSON. Bind each exact native type, alias, resource, identity, quotas and WASI grants explicitly. Lua additionally requires `"runtime_features": ["exceptions"]`. The closed feature list accepts only unrepeated exceptions; the default empty list adds no feature.

```text
xmake f --ros-run-config=/absolute/path/deployment.json
xmake run unitree-moonbit-ros1-motion_state
xmake run unitree-moonbit-ros1-motion_state
```

run does not autobuild or require compiler/engine input assets. The same existing Wasm contains the actual application closure. Examples publish no robot command, contact no physical controller and add no default control topic or permission. Services, actions, asynchronous callbacks, threading and physical robot behavior are outside this route’s acceptance.

## Complete record catalog and original fields

### ROS1

| Original type | Public class | Canonical bytes | Original fields |
| --- | --- | --- | --- |
| `unitree_legged_msgs/BmsCmd` | `Ros1Unitree_legged_msgsBmsCmd` | 4..4 | off → native_off, reserve → native_reserve |
| `unitree_legged_msgs/BmsState` | `Ros1Unitree_legged_msgsBmsState` | 34..34 | version_h → native_version_h, version_l → native_version_l, bms_status → native_bms_status, SOC → native_SOC, current → native_current, cycle → native_cycle, BQ_NTC → native_BQ_NTC, MCU_NTC → native_MCU_NTC, cell_vol → native_cell_vol |
| `unitree_legged_msgs/Cartesian` | `Ros1Unitree_legged_msgsCartesian` | 12..12 | x → native_x, y → native_y, z → native_z |
| `unitree_legged_msgs/LED` | `Ros1Unitree_legged_msgsLED` | 3..3 | r → native_r, g → native_g, b → native_b |
| `unitree_legged_msgs/HighCmd` | `Ros1Unitree_legged_msgsHighCmd` | 129..129 | head → native_head, levelFlag → native_levelFlag, frameReserve → native_frameReserve, SN → native_SN, version → native_version, bandWidth → native_bandWidth, mode → native_mode, gaitType → native_gaitType, speedLevel → native_speedLevel, footRaiseHeight → native_footRaiseHeight, bodyHeight → native_bodyHeight, position → native_position, euler → native_euler, velocity → native_velocity, yawSpeed → native_yawSpeed, bms → native_bms, led → native_led, wirelessRemote → native_wirelessRemote, reserve → native_reserve, crc → native_crc |
| `unitree_legged_msgs/IMU` | `Ros1Unitree_legged_msgsIMU` | 53..53 | quaternion → native_quaternion, gyroscope → native_gyroscope, accelerometer → native_accelerometer, rpy → native_rpy, temperature → native_temperature |
| `unitree_legged_msgs/MotorState` | `Ros1Unitree_legged_msgsMotorState` | 38..38 | mode → native_mode, q → native_q, dq → native_dq, ddq → native_ddq, tauEst → native_tauEst, q_raw → native_q_raw, dq_raw → native_dq_raw, ddq_raw → native_ddq_raw, temperature → native_temperature, reserve → native_reserve |
| `unitree_legged_msgs/HighState` | `Ros1Unitree_legged_msgsHighState` | 1087..1087 | head → native_head, levelFlag → native_levelFlag, frameReserve → native_frameReserve, SN → native_SN, version → native_version, bandWidth → native_bandWidth, imu → native_imu, motorState → native_motorState, bms → native_bms, footForce → native_footForce, footForceEst → native_footForceEst, mode → native_mode, progress → native_progress, gaitType → native_gaitType, footRaiseHeight → native_footRaiseHeight, position → native_position, bodyHeight → native_bodyHeight, velocity → native_velocity, yawSpeed → native_yawSpeed, rangeObstacle → native_rangeObstacle, footPosition2Body → native_footPosition2Body, footSpeed2Body → native_footSpeed2Body, wirelessRemote → native_wirelessRemote, reserve → native_reserve, crc → native_crc |
| `unitree_legged_msgs/MotorCmd` | `Ros1Unitree_legged_msgsMotorCmd` | 33..33 | mode → native_mode, q → native_q, dq → native_dq, tau → native_tau, Kp → native_Kp, Kd → native_Kd, reserve → native_reserve |
| `unitree_legged_msgs/LowCmd` | `Ros1Unitree_legged_msgsLowCmd` | 734..734 | head → native_head, levelFlag → native_levelFlag, frameReserve → native_frameReserve, SN → native_SN, version → native_version, bandWidth → native_bandWidth, motorCmd → native_motorCmd, bms → native_bms, wirelessRemote → native_wirelessRemote, reserve → native_reserve, crc → native_crc |
| `unitree_legged_msgs/LowState` | `Ros1Unitree_legged_msgsLowState` | 1069..1069 | head → native_head, levelFlag → native_levelFlag, frameReserve → native_frameReserve, SN → native_SN, version → native_version, bandWidth → native_bandWidth, imu → native_imu, motorState → native_motorState, bms → native_bms, footForce → native_footForce, footForceEst → native_footForceEst, tick → native_tick, wirelessRemote → native_wirelessRemote, reserve → native_reserve, crc → native_crc, eeForceRaw → native_eeForceRaw, eeForce → native_eeForce, position → native_position, velocity → native_velocity, velocity_w → native_velocity_w |

### ROS2

| Original type | Public class | Canonical bytes | Original fields |
| --- | --- | --- | --- |
| `unitree_api/msg/RequestIdentity` | `Ros2Unitree_apiMsgRequestIdentity` | 16..16 | id → native_id, api_id → native_api_id |
| `unitree_api/msg/RequestLease` | `Ros2Unitree_apiMsgRequestLease` | 8..8 | id → native_id |
| `unitree_api/msg/RequestPolicy` | `Ros2Unitree_apiMsgRequestPolicy` | 5..5 | priority → native_priority, noreply → native_noreply |
| `unitree_api/msg/RequestHeader` | `Ros2Unitree_apiMsgRequestHeader` | 29..29 | identity → native_identity, lease → native_lease, policy → native_policy |
| `unitree_api/msg/Request` | `Ros2Unitree_apiMsgRequest` | 37..4133 | header → native_header, parameter → native_parameter, binary → native_binary |
| `unitree_api/msg/ResponseStatus` | `Ros2Unitree_apiMsgResponseStatus` | 4..4 | code → native_code |
| `unitree_api/msg/ResponseHeader` | `Ros2Unitree_apiMsgResponseHeader` | 20..20 | identity → native_identity, status → native_status |
| `unitree_api/msg/Response` | `Ros2Unitree_apiMsgResponse` | 28..2108 | header → native_header, data → native_data, binary → native_binary |
| `unitree_go/msg/AudioData` | `Ros2Unitree_goMsgAudioData` | 12..2060 | time_frame → native_time_frame, data → native_data |
| `unitree_go/msg/BmsCmd` | `Ros2Unitree_goMsgBmsCmd` | 4..4 | off → native_off, reserve → native_reserve |
| `unitree_go/msg/BmsState` | `Ros2Unitree_goMsgBmsState` | 44..44 | version_high → native_version_high, version_low → native_version_low, status → native_status, soc → native_soc, current → native_current, cycle → native_cycle, bq_ntc → native_bq_ntc, mcu_ntc → native_mcu_ntc, cell_vol → native_cell_vol |
| `unitree_go/msg/Error` | `Ros2Unitree_goMsgError` | 8..8 | source → native_source, state → native_state |
| `unitree_go/msg/Go2FrontVideoData` | `Ros2Unitree_goMsgGo2FrontVideoData` | 20..6164 | time_frame → native_time_frame, video720p → native_video720p, video360p → native_video360p, video180p → native_video180p |
| `unitree_go/msg/HeightMap` | `Ros2Unitree_goMsgHeightMap` | 36..2212 | stamp → native_stamp, frame_id → native_frame_id, resolution → native_resolution, width → native_width, height → native_height, origin → native_origin, data → native_data |
| `unitree_go/msg/IMUState` | `Ros2Unitree_goMsgIMUState` | 53..53 | quaternion → native_quaternion, gyroscope → native_gyroscope, accelerometer → native_accelerometer, rpy → native_rpy, temperature → native_temperature |
| `unitree_go/msg/InterfaceConfig` | `Ros2Unitree_goMsgInterfaceConfig` | 4..4 | mode → native_mode, value → native_value, reserve → native_reserve |
| `unitree_go/msg/LidarState` | `Ros2Unitree_goMsgLidarState` | 81..6225 | stamp → native_stamp, firmware_version → native_firmware_version, software_version → native_software_version, sdk_version → native_sdk_version, sys_rotation_speed → native_sys_rotation_speed, com_rotation_speed → native_com_rotation_speed, error_state → native_error_state, cloud_frequency → native_cloud_frequency, cloud_packet_loss_rate → native_cloud_packet_loss_rate, cloud_size → native_cloud_size, cloud_scan_num → native_cloud_scan_num, imu_frequency → native_imu_frequency, imu_packet_loss_rate → native_imu_packet_loss_rate, imu_rpy → native_imu_rpy, serial_recv_stamp → native_serial_recv_stamp, serial_buffer_size → native_serial_buffer_size, serial_buffer_read → native_serial_buffer_read |
| `unitree_go/msg/MotorCmd` | `Ros2Unitree_goMsgMotorCmd` | 33..33 | mode → native_mode, q → native_q, dq → native_dq, tau → native_tau, kp → native_kp, kd → native_kd, reserve → native_reserve |
| `unitree_go/msg/LowCmd` | `Ros2Unitree_goMsgLowCmd` | 749..749 | head → native_head, level_flag → native_level_flag, frame_reserve → native_frame_reserve, sn → native_sn, version → native_version, bandwidth → native_bandwidth, motor_cmd → native_motor_cmd, bms_cmd → native_bms_cmd, wireless_remote → native_wireless_remote, led → native_led, fan → native_fan, gpio → native_gpio, reserve → native_reserve, crc → native_crc |
| `unitree_go/msg/MotorState` | `Ros2Unitree_goMsgMotorState` | 42..42 | mode → native_mode, q → native_q, dq → native_dq, ddq → native_ddq, tau_est → native_tau_est, q_raw → native_q_raw, dq_raw → native_dq_raw, ddq_raw → native_ddq_raw, temperature → native_temperature, lost → native_lost, reserve → native_reserve |
| `unitree_go/msg/LowState` | `Ros2Unitree_goMsgLowState` | 1050..1050 | head → native_head, level_flag → native_level_flag, frame_reserve → native_frame_reserve, sn → native_sn, version → native_version, bandwidth → native_bandwidth, imu_state → native_imu_state, motor_state → native_motor_state, bms_state → native_bms_state, foot_force → native_foot_force, foot_force_est → native_foot_force_est, tick → native_tick, wireless_remote → native_wireless_remote, bit_flag → native_bit_flag, adc_reel → native_adc_reel, temperature_ntc1 → native_temperature_ntc1, temperature_ntc2 → native_temperature_ntc2, power_v → native_power_v, power_a → native_power_a, fan_frequency → native_fan_frequency, reserve → native_reserve, crc → native_crc |
| `unitree_go/msg/MotorCmds` | `Ros2Unitree_goMsgMotorCmds` | 4..1060 | cmds → native_cmds |
| `unitree_go/msg/MotorStates` | `Ros2Unitree_goMsgMotorStates` | 4..1348 | states → native_states |
| `unitree_go/msg/PathPoint` | `Ros2Unitree_goMsgPathPoint` | 28..28 | t_from_start → native_t_from_start, x → native_x, y → native_y, yaw → native_yaw, vx → native_vx, vy → native_vy, vyaw → native_vyaw |
| `unitree_go/msg/Req` | `Ros2Unitree_goMsgReq` | 8..4104 | uuid → native_uuid, body → native_body |
| `unitree_go/msg/Res` | `Ros2Unitree_goMsgRes` | 12..6156 | uuid → native_uuid, data → native_data, body → native_body |
| `unitree_go/msg/SportModeCmd` | `Ros2Unitree_goMsgSportModeCmd` | 887..887 | mode → native_mode, gait_type → native_gait_type, speed_level → native_speed_level, foot_raise_height → native_foot_raise_height, body_height → native_body_height, position → native_position, euler → native_euler, velocity → native_velocity, yaw_speed → native_yaw_speed, bms_cmd → native_bms_cmd, path_point → native_path_point |
| `unitree_go/msg/TimeSpec` | `Ros2Unitree_goMsgTimeSpec` | 8..8 | sec → native_sec, nanosec → native_nanosec |
| `unitree_go/msg/SportModeState` | `Ros2Unitree_goMsgSportModeState` | 227..227 | stamp → native_stamp, error_code → native_error_code, imu_state → native_imu_state, mode → native_mode, progress → native_progress, gait_type → native_gait_type, foot_raise_height → native_foot_raise_height, position → native_position, body_height → native_body_height, velocity → native_velocity, yaw_speed → native_yaw_speed, range_obstacle → native_range_obstacle, foot_force → native_foot_force, foot_position_body → native_foot_position_body, foot_speed_body → native_foot_speed_body |
| `unitree_go/msg/UwbState` | `Ros2Unitree_goMsgUwbState` | 55..55 | version → native_version, channel → native_channel, joy_mode → native_joy_mode, orientation_est → native_orientation_est, pitch_est → native_pitch_est, distance_est → native_distance_est, yaw_est → native_yaw_est, tag_roll → native_tag_roll, tag_pitch → native_tag_pitch, tag_yaw → native_tag_yaw, base_roll → native_base_roll, base_pitch → native_base_pitch, base_yaw → native_base_yaw, joystick → native_joystick, error_state → native_error_state, buttons → native_buttons, enabled_from_app → native_enabled_from_app |
| `unitree_go/msg/UwbSwitch` | `Ros2Unitree_goMsgUwbSwitch` | 1..1 | enabled → native_enabled |
| `unitree_go/msg/WirelessController` | `Ros2Unitree_goMsgWirelessController` | 18..18 | lx → native_lx, ly → native_ly, rx → native_rx, ry → native_ry, keys → native_keys |
| `unitree_hg/msg/BmsCmd` | `Ros2Unitree_hgMsgBmsCmd` | 41..41 | cmd → native_cmd, reserve → native_reserve |
| `unitree_hg/msg/BmsState` | `Ros2Unitree_hgMsgBmsState` | 161..161 | version_high → native_version_high, version_low → native_version_low, fn → native_fn, cell_vol → native_cell_vol, bmsvoltage → native_bmsvoltage, current → native_current, soc → native_soc, soh → native_soh, temperature → native_temperature, cycle → native_cycle, manufacturer_date → native_manufacturer_date, bmsstate → native_bmsstate, reserve → native_reserve |
| `unitree_hg/msg/MotorCmd` | `Ros2Unitree_hgMsgMotorCmd` | 25..25 | mode → native_mode, q → native_q, dq → native_dq, tau → native_tau, kp → native_kp, kd → native_kd, reserve → native_reserve |
| `unitree_hg/msg/HandCmd` | `Ros2Unitree_hgMsgHandCmd` | 20..820 | motor_cmd → native_motor_cmd, reserve → native_reserve |
| `unitree_hg/msg/MotorState` | `Ros2Unitree_hgMsgMotorState` | 53..53 | mode → native_mode, q → native_q, dq → native_dq, ddq → native_ddq, tau_est → native_tau_est, temperature → native_temperature, vol → native_vol, sensor → native_sensor, motorstate → native_motorstate, reserve → native_reserve |
| `unitree_hg/msg/PressSensorState` | `Ros2Unitree_hgMsgPressSensorState` | 104..104 | pressure → native_pressure, temperature → native_temperature, lost → native_lost, reserve → native_reserve |
| `unitree_hg/msg/IMUState` | `Ros2Unitree_hgMsgIMUState` | 54..54 | quaternion → native_quaternion, gyroscope → native_gyroscope, accelerometer → native_accelerometer, rpy → native_rpy, temperature → native_temperature |
| `unitree_hg/msg/HandState` | `Ros2Unitree_hgMsgHandState` | 94..5118 | motor_state → native_motor_state, press_sensor_state → native_press_sensor_state, imu_state → native_imu_state, power_v → native_power_v, power_a → native_power_a, system_v → native_system_v, device_v → native_device_v, error → native_error, reserve → native_reserve |
| `unitree_hg/msg/LowCmd` | `Ros2Unitree_hgMsgLowCmd` | 897..897 | mode_pr → native_mode_pr, mode_machine → native_mode_machine, motor_cmd → native_motor_cmd, reserve → native_reserve, crc → native_crc |
| `unitree_hg/msg/LowState` | `Ros2Unitree_hgMsgLowState` | 1983..1983 | version → native_version, mode_pr → native_mode_pr, mode_machine → native_mode_machine, tick → native_tick, imu_state → native_imu_state, motor_state → native_motor_state, wireless_remote → native_wireless_remote, reserve → native_reserve, crc → native_crc |
| `unitree_hg/msg/MainBoardState` | `Ros2Unitree_hgMsgMainBoardState` | 72..72 | fan_state → native_fan_state, temperature → native_temperature, value → native_value, state → native_state |

## Qualification and explicit limits

`share/platform/unitree/embedded-qualification.json`

Only actual receipts establish qualification: Linux x86_64 tools, wasm32 WASI Preview 1, Noetic/Jazzy and the six complete-byte read-only observation scenarios above. All-record codec boundary checks are recorded separately using genuine guest engines and native-derived vectors; they do not establish per-type physical transport. Memory64, Preview 2, other hosts/distributions and hardware are not qualified here.

See `share/platform/unitree/embedded-ir.json` for original .msg/native-metadata pins, per-field quotas and source mappings. See `share/platform/unitree/engine-provenance.json` for genuine-engine provenance and per-signature ROS1 import relocation with unchanged-byte proofs.

Current accepted configuration choices: [shared provider configuration](../../CONFIGURATION.md).
