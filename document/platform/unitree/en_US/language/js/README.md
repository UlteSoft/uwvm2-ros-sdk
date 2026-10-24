# Unitree — JavaScript

This route uses genuine QuickJS 2026-06-04 for complete original records, strict codecs and three independent read-only observations on ROS1 Noetic and ROS2 Jazzy. All 11 ROS1 and all 43 ROS2 records are retained. Codecs and application decisions execute in the selected language.

## Public API and values

`unitree/js/ros1/observation / unitree/js/ros2/observation`

`receive(alias, codec, attempts, pause); wait_motion_state / wait_low_state / wait_motor_state / wait_wireless_controller; output(result)`

new Type({ original_fields }); value.encode(); Type.decode(Uint8Array). int64/uint64 use BigInt; other integer fields use checked exact Number values.

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
| ROS1 | `example/platform/unitree/js/ros1/motion_state` | `unitree_legged_msgs/HighState` |
| ROS1 | `example/platform/unitree/js/ros1/low_state` | `unitree_legged_msgs/LowState` |
| ROS1 | `example/platform/unitree/js/ros1/motor_state` | `unitree_legged_msgs/MotorState` |
| ROS2 | `example/platform/unitree/js/ros2/motion_state` | `unitree_go/msg/SportModeState` |
| ROS2 | `example/platform/unitree/js/ros2/low_state` | `unitree_go/msg/LowState` |
| ROS2 | `example/platform/unitree/js/ros2/wireless_controller` | `unitree_go/msg/WirelessController` |

Run directly inside any example directory:

```text
xmake
```

The build host needs Xmake alone. Genuine compilers/VMs are fixed SDK inputs; no installed shell, Python, Node, language compiler, uwvm or ROS is required. Bundled examples locate the installed root automatically; external projects may set UWVM_ROS_SDK_ROOT explicitly. Each build/ contains one sole .wasm; intermediates belong in .uwvm-ros.

Running separately requires actual uwvm2-ros, the production native gateway, the exact sourced Noetic/Jazzy installation and trusted deployment JSON. Bind each exact native type, alias, resource, identity, quotas and WASI grants explicitly. Lua additionally requires `"runtime_features": ["exceptions"]`. The closed feature list accepts only unrepeated exceptions; the default empty list adds no feature.

```text
xmake f --ros-run-config=/absolute/path/deployment.json
xmake run unitree-js-ros1-motion_state
xmake run unitree-js-ros1-motion_state
```

run does not autobuild or require compiler/engine input assets. The same existing Wasm contains the actual application closure. Examples publish no robot command, contact no physical controller and add no default control topic or permission. Services, actions, asynchronous callbacks, threading and physical robot behavior are outside this route’s acceptance.

## Complete record catalog and original fields

### ROS1

| Original type | Public class | Canonical bytes | Original fields |
| --- | --- | --- | --- |
| `unitree_legged_msgs/BmsCmd` | `Ros1Unitree_legged_msgsBmsCmd` | 4..4 | off, reserve |
| `unitree_legged_msgs/BmsState` | `Ros1Unitree_legged_msgsBmsState` | 34..34 | version_h, version_l, bms_status, SOC, current, cycle, BQ_NTC, MCU_NTC, cell_vol |
| `unitree_legged_msgs/Cartesian` | `Ros1Unitree_legged_msgsCartesian` | 12..12 | x, y, z |
| `unitree_legged_msgs/LED` | `Ros1Unitree_legged_msgsLED` | 3..3 | r, g, b |
| `unitree_legged_msgs/HighCmd` | `Ros1Unitree_legged_msgsHighCmd` | 129..129 | head, levelFlag, frameReserve, SN, version, bandWidth, mode, gaitType, speedLevel, footRaiseHeight, bodyHeight, position, euler, velocity, yawSpeed, bms, led, wirelessRemote, reserve, crc |
| `unitree_legged_msgs/IMU` | `Ros1Unitree_legged_msgsIMU` | 53..53 | quaternion, gyroscope, accelerometer, rpy, temperature |
| `unitree_legged_msgs/MotorState` | `Ros1Unitree_legged_msgsMotorState` | 38..38 | mode, q, dq, ddq, tauEst, q_raw, dq_raw, ddq_raw, temperature, reserve |
| `unitree_legged_msgs/HighState` | `Ros1Unitree_legged_msgsHighState` | 1087..1087 | head, levelFlag, frameReserve, SN, version, bandWidth, imu, motorState, bms, footForce, footForceEst, mode, progress, gaitType, footRaiseHeight, position, bodyHeight, velocity, yawSpeed, rangeObstacle, footPosition2Body, footSpeed2Body, wirelessRemote, reserve, crc |
| `unitree_legged_msgs/MotorCmd` | `Ros1Unitree_legged_msgsMotorCmd` | 33..33 | mode, q, dq, tau, Kp, Kd, reserve |
| `unitree_legged_msgs/LowCmd` | `Ros1Unitree_legged_msgsLowCmd` | 734..734 | head, levelFlag, frameReserve, SN, version, bandWidth, motorCmd, bms, wirelessRemote, reserve, crc |
| `unitree_legged_msgs/LowState` | `Ros1Unitree_legged_msgsLowState` | 1069..1069 | head, levelFlag, frameReserve, SN, version, bandWidth, imu, motorState, bms, footForce, footForceEst, tick, wirelessRemote, reserve, crc, eeForceRaw, eeForce, position, velocity, velocity_w |

### ROS2

| Original type | Public class | Canonical bytes | Original fields |
| --- | --- | --- | --- |
| `unitree_api/msg/RequestIdentity` | `Ros2Unitree_apiMsgRequestIdentity` | 16..16 | id, api_id |
| `unitree_api/msg/RequestLease` | `Ros2Unitree_apiMsgRequestLease` | 8..8 | id |
| `unitree_api/msg/RequestPolicy` | `Ros2Unitree_apiMsgRequestPolicy` | 5..5 | priority, noreply |
| `unitree_api/msg/RequestHeader` | `Ros2Unitree_apiMsgRequestHeader` | 29..29 | identity, lease, policy |
| `unitree_api/msg/Request` | `Ros2Unitree_apiMsgRequest` | 37..4133 | header, parameter, binary |
| `unitree_api/msg/ResponseStatus` | `Ros2Unitree_apiMsgResponseStatus` | 4..4 | code |
| `unitree_api/msg/ResponseHeader` | `Ros2Unitree_apiMsgResponseHeader` | 20..20 | identity, status |
| `unitree_api/msg/Response` | `Ros2Unitree_apiMsgResponse` | 28..2108 | header, data, binary |
| `unitree_go/msg/AudioData` | `Ros2Unitree_goMsgAudioData` | 12..2060 | time_frame, data |
| `unitree_go/msg/BmsCmd` | `Ros2Unitree_goMsgBmsCmd` | 4..4 | off, reserve |
| `unitree_go/msg/BmsState` | `Ros2Unitree_goMsgBmsState` | 44..44 | version_high, version_low, status, soc, current, cycle, bq_ntc, mcu_ntc, cell_vol |
| `unitree_go/msg/Error` | `Ros2Unitree_goMsgError` | 8..8 | source, state |
| `unitree_go/msg/Go2FrontVideoData` | `Ros2Unitree_goMsgGo2FrontVideoData` | 20..6164 | time_frame, video720p, video360p, video180p |
| `unitree_go/msg/HeightMap` | `Ros2Unitree_goMsgHeightMap` | 36..2212 | stamp, frame_id, resolution, width, height, origin, data |
| `unitree_go/msg/IMUState` | `Ros2Unitree_goMsgIMUState` | 53..53 | quaternion, gyroscope, accelerometer, rpy, temperature |
| `unitree_go/msg/InterfaceConfig` | `Ros2Unitree_goMsgInterfaceConfig` | 4..4 | mode, value, reserve |
| `unitree_go/msg/LidarState` | `Ros2Unitree_goMsgLidarState` | 81..6225 | stamp, firmware_version, software_version, sdk_version, sys_rotation_speed, com_rotation_speed, error_state, cloud_frequency, cloud_packet_loss_rate, cloud_size, cloud_scan_num, imu_frequency, imu_packet_loss_rate, imu_rpy, serial_recv_stamp, serial_buffer_size, serial_buffer_read |
| `unitree_go/msg/MotorCmd` | `Ros2Unitree_goMsgMotorCmd` | 33..33 | mode, q, dq, tau, kp, kd, reserve |
| `unitree_go/msg/LowCmd` | `Ros2Unitree_goMsgLowCmd` | 749..749 | head, level_flag, frame_reserve, sn, version, bandwidth, motor_cmd, bms_cmd, wireless_remote, led, fan, gpio, reserve, crc |
| `unitree_go/msg/MotorState` | `Ros2Unitree_goMsgMotorState` | 42..42 | mode, q, dq, ddq, tau_est, q_raw, dq_raw, ddq_raw, temperature, lost, reserve |
| `unitree_go/msg/LowState` | `Ros2Unitree_goMsgLowState` | 1050..1050 | head, level_flag, frame_reserve, sn, version, bandwidth, imu_state, motor_state, bms_state, foot_force, foot_force_est, tick, wireless_remote, bit_flag, adc_reel, temperature_ntc1, temperature_ntc2, power_v, power_a, fan_frequency, reserve, crc |
| `unitree_go/msg/MotorCmds` | `Ros2Unitree_goMsgMotorCmds` | 4..1060 | cmds |
| `unitree_go/msg/MotorStates` | `Ros2Unitree_goMsgMotorStates` | 4..1348 | states |
| `unitree_go/msg/PathPoint` | `Ros2Unitree_goMsgPathPoint` | 28..28 | t_from_start, x, y, yaw, vx, vy, vyaw |
| `unitree_go/msg/Req` | `Ros2Unitree_goMsgReq` | 8..4104 | uuid, body |
| `unitree_go/msg/Res` | `Ros2Unitree_goMsgRes` | 12..6156 | uuid, data, body |
| `unitree_go/msg/SportModeCmd` | `Ros2Unitree_goMsgSportModeCmd` | 887..887 | mode, gait_type, speed_level, foot_raise_height, body_height, position, euler, velocity, yaw_speed, bms_cmd, path_point |
| `unitree_go/msg/TimeSpec` | `Ros2Unitree_goMsgTimeSpec` | 8..8 | sec, nanosec |
| `unitree_go/msg/SportModeState` | `Ros2Unitree_goMsgSportModeState` | 227..227 | stamp, error_code, imu_state, mode, progress, gait_type, foot_raise_height, position, body_height, velocity, yaw_speed, range_obstacle, foot_force, foot_position_body, foot_speed_body |
| `unitree_go/msg/UwbState` | `Ros2Unitree_goMsgUwbState` | 55..55 | version, channel, joy_mode, orientation_est, pitch_est, distance_est, yaw_est, tag_roll, tag_pitch, tag_yaw, base_roll, base_pitch, base_yaw, joystick, error_state, buttons, enabled_from_app |
| `unitree_go/msg/UwbSwitch` | `Ros2Unitree_goMsgUwbSwitch` | 1..1 | enabled |
| `unitree_go/msg/WirelessController` | `Ros2Unitree_goMsgWirelessController` | 18..18 | lx, ly, rx, ry, keys |
| `unitree_hg/msg/BmsCmd` | `Ros2Unitree_hgMsgBmsCmd` | 41..41 | cmd, reserve |
| `unitree_hg/msg/BmsState` | `Ros2Unitree_hgMsgBmsState` | 161..161 | version_high, version_low, fn, cell_vol, bmsvoltage, current, soc, soh, temperature, cycle, manufacturer_date, bmsstate, reserve |
| `unitree_hg/msg/MotorCmd` | `Ros2Unitree_hgMsgMotorCmd` | 25..25 | mode, q, dq, tau, kp, kd, reserve |
| `unitree_hg/msg/HandCmd` | `Ros2Unitree_hgMsgHandCmd` | 20..820 | motor_cmd, reserve |
| `unitree_hg/msg/MotorState` | `Ros2Unitree_hgMsgMotorState` | 53..53 | mode, q, dq, ddq, tau_est, temperature, vol, sensor, motorstate, reserve |
| `unitree_hg/msg/PressSensorState` | `Ros2Unitree_hgMsgPressSensorState` | 104..104 | pressure, temperature, lost, reserve |
| `unitree_hg/msg/IMUState` | `Ros2Unitree_hgMsgIMUState` | 54..54 | quaternion, gyroscope, accelerometer, rpy, temperature |
| `unitree_hg/msg/HandState` | `Ros2Unitree_hgMsgHandState` | 94..5118 | motor_state, press_sensor_state, imu_state, power_v, power_a, system_v, device_v, error, reserve |
| `unitree_hg/msg/LowCmd` | `Ros2Unitree_hgMsgLowCmd` | 897..897 | mode_pr, mode_machine, motor_cmd, reserve, crc |
| `unitree_hg/msg/LowState` | `Ros2Unitree_hgMsgLowState` | 1983..1983 | version, mode_pr, mode_machine, tick, imu_state, motor_state, wireless_remote, reserve, crc |
| `unitree_hg/msg/MainBoardState` | `Ros2Unitree_hgMsgMainBoardState` | 72..72 | fan_state, temperature, value, state |

## Qualification and explicit limits

`share/platform/unitree/embedded-qualification.json`

Only actual receipts establish qualification: Linux x86_64 tools, wasm32 WASI Preview 1, Noetic/Jazzy and the six complete-byte read-only observation scenarios above. All-record codec boundary checks are recorded separately using genuine guest engines and native-derived vectors; they do not establish per-type physical transport. Memory64, Preview 2, other hosts/distributions and hardware are not qualified here.

See `share/platform/unitree/embedded-ir.json` for original .msg/native-metadata pins, per-field quotas and source mappings. See `share/platform/unitree/engine-provenance.json` for genuine-engine provenance and per-signature ROS1 import relocation with unchanged-byte proofs.

Current accepted configuration choices: [shared provider configuration](../../CONFIGURATION.md).
