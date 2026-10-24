# Unitree — Lua

本路线使用真实 Lua 5.4.8，提供 ROS1 Noetic 与 ROS2 Jazzy 的完整原始记录、严格 codec 和三种独立只读观察。ROS1 保留全部 11 种记录，ROS2 保留全部 43 种记录；不是字段投影或 C 应用替身。

## 公共 API 与值表示

`unitree/lua/ros1/observation / unitree/lua/ros2/observation`

`receive(alias, codec, attempts, pause); wait_motion_state / wait_low_state / wait_motor_state / wait_wireless_controller; output(result)`

codec.new({ original_fields }); codec.encode(value); codec.decode(bytes). uint64 uses exactly eight little-endian bytes, created with roswasm.wire.uint64(hex); signed int64 uses genuine Lua integers.

所有构造器只创建本地值，不获取原生句柄。嵌套记录与固定数组拥有独立存储；返回值在原生 owner 关闭后仍有效。PHP、Lua 的精确 word 表示与完整整数类型不能换成近似浮点数。描述表在编解码期间按只读契约使用。

## 完整 codec 契约

每个字段保留原始顺序、宽度、符号、嵌套类型及数组形状。整数溢出、布尔值不是 0/1、数组长度错误、超额序列、NaN、正负无穷、畸形 UTF-8、NUL、截断或尾随字节均拒绝。float32 编码按原始目标位宽舍入，溢出拒绝；解码后的负零与所有整数位在重新编码时保留。UTF-8 的前导 BOM 是普通数据，不能丢弃。

公开原生声明中的无界字符串与序列仍保留原含义；SDK 的有限准入配额单独记录在描述表中：字符串通常最多 2048 个 UTF-8 字节，字节负载序列通常最多 2048 项，记录/数值序列通常最多 32 项，以逐字段表为准。单条完整记录范围为 1..6225 字节，不得截断以适应容量。codec_identity 是规范编码身份，不可冒充独立读取的原生 MD5/RIHS 身份。

## 观察、错误与 owner 生命周期

调用者传入既有的精确类型 alias、1..250 次总轮询预算和同步等待函数。等待函数返回原始 uint32 状态；样例仅在 idle 11 后等待 20ms。预算包含第一次轮询。成功获取一次 owner 后订阅一次，仅 idle 11 允许下一次 poll；容量、协议、解码、权限、等待错误都不重试。所有正常获取后的返回路径都关闭一次。普通异常走显式 finally/ensure/pcall 或非抛出 Result 路径；陷阱、不可恢复内存失败与进程终止需要外层实例回收。

| 字段 | 含义 |
| --- | --- |
| `primary` | 原始首个验证/获取/订阅/轮询/解码/等待错误；不被关闭结果覆盖。 |
| `rpc_status`, `rpc_present`, `polls` | 最后一次真正 poll 的原始完整 uint32 状态、是否调用与实际次数。 |
| `required_present`, `required`, `length` | 原始 u64 长度与有效性，诊断 JSON 用十进制字符串；未知结果不伪造成功长度。 |
| `cleanup_present`, `cleanup` | 是否已尝试关闭及其独立原始状态。 |
| `value`, `response_present`, `wire_hex` | 仅完整校验后暴露整个拥有值；所有规范字节在关闭后仍完整保留。 |

进程退出优先取 primary，再取 cleanup，最后取输出错误，并限为 0..125；JSON 保留完整原始状态。常见状态：0 成功、5 I/O/协议失败、9 已退役句柄、11 idle、22 无效参数/完整 codec 错误、38 不兼容 ABI、90 容量不足。未知原始状态仍完整保留。

## 六个独立样例

| Backend | Example | Complete original native type |
| --- | --- | --- |
| ROS1 | `example/platform/unitree/lua/ros1/motion_state` | `unitree_legged_msgs/HighState` |
| ROS1 | `example/platform/unitree/lua/ros1/low_state` | `unitree_legged_msgs/LowState` |
| ROS1 | `example/platform/unitree/lua/ros1/motor_state` | `unitree_legged_msgs/MotorState` |
| ROS2 | `example/platform/unitree/lua/ros2/motion_state` | `unitree_go/msg/SportModeState` |
| ROS2 | `example/platform/unitree/lua/ros2/low_state` | `unitree_go/msg/LowState` |
| ROS2 | `example/platform/unitree/lua/ros2/wireless_controller` | `unitree_go/msg/WirelessController` |

在任一样例目录直接运行：

```text
xmake
```

构建主机只需 Xmake，真实编译器/VM 是固定 SDK 输入；不要求预装 shell、Python、Node、语言编译器、uwvm 或 ROS。SDK 内样例自动定位安装根；外部工程可显式设置 UWVM_ROS_SDK_ROOT。每例只产生 build/ 下的一份 .wasm，中间文件在 .uwvm-ros。

运行另需真实 uwvm2-ros、生产原生 gateway、正确 source 的 Noetic/Jazzy 与可信部署 JSON。部署必须逐例绑定准确原生类型、alias、资源、身份、准入配额及 WASI 权限。Lua 还需要部署显式包含 `"runtime_features": ["exceptions"]`；白名单只接受不重复的 exceptions，默认空列表不添加特性。

```text
xmake f --ros-run-config=/absolute/path/deployment.json
xmake run unitree-lua-ros1-motion_state
xmake run unitree-lua-ros1-motion_state
```

run 不自动编译，也不需要编译器或源 VM 文件；已经编译的同一份 Wasm 内含实际应用闭包。样例不发布机器人命令，不连接物理控制器，不设置默认控制话题或追加授权。所有服务、动作、异步回调、线程与物理机器人行为均不由本路线验收。

## 完整记录目录与原字段映射

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

## 资格与明确边界

`share/platform/unitree/embedded-qualification.json`

本私有路线仅按实际凭证记录通过状态：Linux x86_64 工具、wasm32 WASI Preview 1、Noetic/Jazzy，以及上述六个全字节只读观察场景。全部原始类型的 codec 边界另由真实 guest 的完整 native 向量验证记录，不等于逐类型物理通信。memory64、Preview 2、其他主机/发行版与硬件均未在本路线验收。

原始 .msg、独立原生元数据、逐字段配额与所有语言的源类型映射见 `share/platform/unitree/embedded-ir.json`。引擎来源、逐签名 ROS1 import 重绑定及不变字节证明见 `share/platform/unitree/engine-provenance.json`。

当前可接受的配置选择见[共享 provider 配置](../../CONFIGURATION.md)。
