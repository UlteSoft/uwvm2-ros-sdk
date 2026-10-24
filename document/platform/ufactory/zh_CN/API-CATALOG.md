# ufactory: 完整原始 API 索引

下列内容保留每个原始字段及服务、动作组件；原生类型身份仍须独立绑定。

## ros1_kinetic

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `xarm_gripper/MoveGoal` | `Ros1Xarm_gripperMoveGoal` | 8..8 | target_pulse: float32; pulse_speed: float32 |
| `xarm_gripper/MoveResult` | `Ros1Xarm_gripperMoveResult` | 3..3 | success: bool; err_code: int16 |
| `xarm_gripper/MoveFeedback` | `Ros1Xarm_gripperMoveFeedback` | 4..4 | current_pulse: float32 |
| `geometry_msgs/Point` | `Ros1Geometry_msgsPoint` | 24..24 | x: float64; y: float64; z: float64 |
| `geometry_msgs/Quaternion` | `Ros1Geometry_msgsQuaternion` | 32..32 | x: float64; y: float64; z: float64; w: float64 |
| `geometry_msgs/Pose` | `Ros1Geometry_msgsPose` | 56..56 | position: geometry_msgs/Point; orientation: geometry_msgs/Quaternion |
| `time` | `Ros1Time` | 8..8 | sec: uint32; nsec: uint32 |
| `std_msgs/Header` | `Ros1Std_msgsHeader` | 16..272 | seq: uint32; stamp: time; frame_id: string text<=256B |
| `xarm_msgs/CIOState` | `Ros1Xarm_msgsCIOState` | 76..332 | header: std_msgs/Header; state: int16; code: int16; input_digitals: uint16[2]; output_digitals: uint16[2]; input_analogs: float32[2]; output_analogs: float32[2]; input_conf: uint8[16]; output_conf: uint8[16] |
| `xarm_msgs/IOState` | `Ros1Xarm_msgsIOState` | 16..16 | digital_1: int32; digital_2: int32; analog_1: float32; analog_2: float32 |
| `xarm_msgs/RobotMsg` | `Ros1Xarm_msgsRobotMsg` | 82..366 | header: std_msgs/Header; state: int16; mode: int16; cmdnum: int16; mt_brake: int16; mt_able: int16; err: int16; warn: int16; angle: float32 sequence<=7; pose: float32[6]; offset: float32[6] |
| `xarm_msgs/VeloMoveMsg` | `Ros1Xarm_msgsVeloMoveMsg` | 10..138 | speeds: float32 sequence<=32; is_sync: bool; is_tool_coord: bool; duration: float32 |
| `xarm_msgs/CallRequest` | `Ros1Xarm_msgsCallRequest` | 0..0 | (empty original component) |
| `xarm_msgs/CallResponse` | `Ros1Xarm_msgsCallResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/ClearErrRequest` | `Ros1Xarm_msgsClearErrRequest` | 0..0 | (empty original component) |
| `xarm_msgs/ClearErrResponse` | `Ros1Xarm_msgsClearErrResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/ConfigToolModbusRequest` | `Ros1Xarm_msgsConfigToolModbusRequest` | 8..8 | baud_rate: int32; timeout_ms: int32 |
| `xarm_msgs/ConfigToolModbusResponse` | `Ros1Xarm_msgsConfigToolModbusResponse` | 6..262 | message: string text<=256B; ret: int16 |
| `xarm_msgs/FtCaliLoadRequest` | `Ros1Xarm_msgsFtCaliLoadRequest` | 5..133 | datas: float32 sequence<=32; association_setting_tcp_load: bool |
| `xarm_msgs/FtCaliLoadResponse` | `Ros1Xarm_msgsFtCaliLoadResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/FtIdenLoadRequest` | `Ros1Xarm_msgsFtIdenLoadRequest` | 0..0 | (empty original component) |
| `xarm_msgs/FtIdenLoadResponse` | `Ros1Xarm_msgsFtIdenLoadResponse` | 10..394 | ret: int16; message: string text<=256B; datas: float32 sequence<=32 |
| `xarm_msgs/GetAnalogIORequest` | `Ros1Xarm_msgsGetAnalogIORequest` | 2..2 | port_num: int16 |
| `xarm_msgs/GetAnalogIOResponse` | `Ros1Xarm_msgsGetAnalogIOResponse` | 10..266 | analog_value: float32; ret: int16; message: string text<=256B |
| `xarm_msgs/GetControllerDigitalIORequest` | `Ros1Xarm_msgsGetControllerDigitalIORequest` | 2..2 | io_num: int16 |
| `xarm_msgs/GetControllerDigitalIOResponse` | `Ros1Xarm_msgsGetControllerDigitalIOResponse` | 8..264 | ret: int16; value: int16; message: string text<=256B |
| `xarm_msgs/GetDigitalIORequest` | `Ros1Xarm_msgsGetDigitalIORequest` | 0..0 | (empty original component) |
| `xarm_msgs/GetDigitalIOResponse` | `Ros1Xarm_msgsGetDigitalIOResponse` | 14..270 | digital_1: int32; digital_2: int32; ret: int16; message: string text<=256B |
| `xarm_msgs/GetErrRequest` | `Ros1Xarm_msgsGetErrRequest` | 0..0 | (empty original component) |
| `xarm_msgs/GetErrResponse` | `Ros1Xarm_msgsGetErrResponse` | 8..264 | err: int16; ret: int16; message: string text<=256B |
| `xarm_msgs/GetFloat32ListRequest` | `Ros1Xarm_msgsGetFloat32ListRequest` | 0..0 | (empty original component) |
| `xarm_msgs/GetFloat32ListResponse` | `Ros1Xarm_msgsGetFloat32ListResponse` | 10..394 | ret: int16; message: string text<=256B; datas: float32 sequence<=32 |
| `xarm_msgs/GetInt32Request` | `Ros1Xarm_msgsGetInt32Request` | 0..0 | (empty original component) |
| `xarm_msgs/GetInt32Response` | `Ros1Xarm_msgsGetInt32Response` | 10..266 | data: int32; ret: int16; message: string text<=256B |
| `xarm_msgs/GetSetModbusDataRequest` | `Ros1Xarm_msgsGetSetModbusDataRequest` | 9..4105 | send_data: uint8 sequence<=4096; respond_len: int16; host_id: uint8; is_transparent_transmission: bool; use_503_port: bool |
| `xarm_msgs/GetSetModbusDataResponse` | `Ros1Xarm_msgsGetSetModbusDataResponse` | 10..4362 | ret: int16; message: string text<=256B; respond_data: uint8 sequence<=4096 |
| `xarm_msgs/GripperConfigRequest` | `Ros1Xarm_msgsGripperConfigRequest` | 4..4 | pulse_vel: float32 |
| `xarm_msgs/GripperConfigResponse` | `Ros1Xarm_msgsGripperConfigResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/GripperMoveRequest` | `Ros1Xarm_msgsGripperMoveRequest` | 4..4 | pulse_pos: float32 |
| `xarm_msgs/GripperMoveResponse` | `Ros1Xarm_msgsGripperMoveResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/GripperStateRequest` | `Ros1Xarm_msgsGripperStateRequest` | 0..0 | (empty original component) |
| `xarm_msgs/GripperStateResponse` | `Ros1Xarm_msgsGripperStateResponse` | 12..268 | ret: int16; message: string text<=256B; curr_pos: float32; err_code: int16 |
| `xarm_msgs/MoveRequest` | `Ros1Xarm_msgsMoveRequest` | 20..148 | pose: float32 sequence<=32; mvvelo: float32; mvacc: float32; mvtime: float32; mvradii: float32 |
| `xarm_msgs/MoveResponse` | `Ros1Xarm_msgsMoveResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/MoveAxisAngleRequest` | `Ros1Xarm_msgsMoveAxisAngleRequest` | 20..148 | pose: float32 sequence<=32; mvvelo: float32; mvacc: float32; mvtime: float32; coord: int16; relative: int16 |
| `xarm_msgs/MoveAxisAngleResponse` | `Ros1Xarm_msgsMoveAxisAngleResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/MoveVeloRequest` | `Ros1Xarm_msgsMoveVeloRequest` | 8..136 | velocities: float32 sequence<=32; jnt_sync: int16; coord: int16 |
| `xarm_msgs/MoveVeloResponse` | `Ros1Xarm_msgsMoveVeloResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/MoveVelocityRequest` | `Ros1Xarm_msgsMoveVelocityRequest` | 10..138 | speeds: float32 sequence<=32; is_sync: bool; is_tool_coord: bool; duration: float32 |
| `xarm_msgs/MoveVelocityResponse` | `Ros1Xarm_msgsMoveVelocityResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/PlayTrajRequest` | `Ros1Xarm_msgsPlayTrajRequest` | 8..264 | traj_file: string text<=256B; repeat_times: int16; speed_factor: int16 |
| `xarm_msgs/PlayTrajResponse` | `Ros1Xarm_msgsPlayTrajResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/SetAxisRequest` | `Ros1Xarm_msgsSetAxisRequest` | 4..4 | id: int16; data: int16 |
| `xarm_msgs/SetAxisResponse` | `Ros1Xarm_msgsSetAxisResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/SetControllerAnalogIORequest` | `Ros1Xarm_msgsSetControllerAnalogIORequest` | 6..6 | port_num: int16; analog_value: float32 |
| `xarm_msgs/SetControllerAnalogIOResponse` | `Ros1Xarm_msgsSetControllerAnalogIOResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/SetDigitalIORequest` | `Ros1Xarm_msgsSetDigitalIORequest` | 4..4 | io_num: int16; value: int16 |
| `xarm_msgs/SetDigitalIOResponse` | `Ros1Xarm_msgsSetDigitalIOResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/SetFloat32Request` | `Ros1Xarm_msgsSetFloat32Request` | 4..4 | data: float32 |
| `xarm_msgs/SetFloat32Response` | `Ros1Xarm_msgsSetFloat32Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/SetInt16Request` | `Ros1Xarm_msgsSetInt16Request` | 2..2 | data: int16 |
| `xarm_msgs/SetInt16Response` | `Ros1Xarm_msgsSetInt16Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/SetLoadRequest` | `Ros1Xarm_msgsSetLoadRequest` | 16..16 | mass: float32; xc: float32; yc: float32; zc: float32 |
| `xarm_msgs/SetLoadResponse` | `Ros1Xarm_msgsSetLoadResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/SetModbusTimeoutRequest` | `Ros1Xarm_msgsSetModbusTimeoutRequest` | 5..5 | timeout_ms: int32; is_transparent_transmission: bool |
| `xarm_msgs/SetModbusTimeoutResponse` | `Ros1Xarm_msgsSetModbusTimeoutResponse` | 6..262 | message: string text<=256B; ret: int16 |
| `xarm_msgs/SetMultipleIntsRequest` | `Ros1Xarm_msgsSetMultipleIntsRequest` | 4..68 | data_int: int16 sequence<=32 |
| `xarm_msgs/SetMultipleIntsResponse` | `Ros1Xarm_msgsSetMultipleIntsResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/SetStringRequest` | `Ros1Xarm_msgsSetStringRequest` | 8..264 | str_data: string text<=256B; timeout: float32 |
| `xarm_msgs/SetStringResponse` | `Ros1Xarm_msgsSetStringResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/SetToolModbusRequest` | `Ros1Xarm_msgsSetToolModbusRequest` | 6..4102 | send_data: uint8 sequence<=4096; respond_len: int16 |
| `xarm_msgs/SetToolModbusResponse` | `Ros1Xarm_msgsSetToolModbusResponse` | 10..4362 | ret: int16; message: string text<=256B; respond_data: uint8 sequence<=4096 |
| `xarm_msgs/TCPOffsetRequest` | `Ros1Xarm_msgsTCPOffsetRequest` | 24..24 | x: float32; y: float32; z: float32; roll: float32; pitch: float32; yaw: float32 |
| `xarm_msgs/TCPOffsetResponse` | `Ros1Xarm_msgsTCPOffsetResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/VacuumGripperCtrlRequest` | `Ros1Xarm_msgsVacuumGripperCtrlRequest` | 13..13 | on: bool; wait: bool; timeout: float32; delay_sec: float32; sync: bool; hardware_version: int16 |
| `xarm_msgs/VacuumGripperCtrlResponse` | `Ros1Xarm_msgsVacuumGripperCtrlResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_planner/exec_planRequest` | `Ros1Xarm_plannerExec_planRequest` | 1..1 | exec: bool |
| `xarm_planner/exec_planResponse` | `Ros1Xarm_plannerExec_planResponse` | 1..1 | success: bool |
| `xarm_planner/joint_planRequest` | `Ros1Xarm_plannerJoint_planRequest` | 4..260 | target: float64 sequence<=32 |
| `xarm_planner/joint_planResponse` | `Ros1Xarm_plannerJoint_planResponse` | 1..1 | success: bool |
| `xarm_planner/pose_planRequest` | `Ros1Xarm_plannerPose_planRequest` | 56..56 | target: geometry_msgs/Pose |
| `xarm_planner/pose_planResponse` | `Ros1Xarm_plannerPose_planResponse` | 1..1 | success: bool |
| `xarm_planner/single_straight_planRequest` | `Ros1Xarm_plannerSingle_straight_planRequest` | 56..56 | target: geometry_msgs/Pose |
| `xarm_planner/single_straight_planResponse` | `Ros1Xarm_plannerSingle_straight_planResponse` | 1..1 | success: bool |

Interfaces:

- `xarm_gripper/Move` (action): goal → `Ros1Xarm_gripperMoveGoal`, result → `Ros1Xarm_gripperMoveResult`, feedback → `Ros1Xarm_gripperMoveFeedback`
- `geometry_msgs/Point` (message): message → `Ros1Geometry_msgsPoint`
- `geometry_msgs/Pose` (message): message → `Ros1Geometry_msgsPose`
- `geometry_msgs/Quaternion` (message): message → `Ros1Geometry_msgsQuaternion`
- `std_msgs/Header` (message): message → `Ros1Std_msgsHeader`
- `xarm_msgs/CIOState` (message): message → `Ros1Xarm_msgsCIOState`
- `xarm_msgs/IOState` (message): message → `Ros1Xarm_msgsIOState`
- `xarm_msgs/RobotMsg` (message): message → `Ros1Xarm_msgsRobotMsg`
- `xarm_msgs/VeloMoveMsg` (message): message → `Ros1Xarm_msgsVeloMoveMsg`
- `xarm_msgs/Call` (service): request → `Ros1Xarm_msgsCallRequest`, response → `Ros1Xarm_msgsCallResponse`
- `xarm_msgs/ClearErr` (service): request → `Ros1Xarm_msgsClearErrRequest`, response → `Ros1Xarm_msgsClearErrResponse`
- `xarm_msgs/ConfigToolModbus` (service): request → `Ros1Xarm_msgsConfigToolModbusRequest`, response → `Ros1Xarm_msgsConfigToolModbusResponse`
- `xarm_msgs/FtCaliLoad` (service): request → `Ros1Xarm_msgsFtCaliLoadRequest`, response → `Ros1Xarm_msgsFtCaliLoadResponse`
- `xarm_msgs/FtIdenLoad` (service): request → `Ros1Xarm_msgsFtIdenLoadRequest`, response → `Ros1Xarm_msgsFtIdenLoadResponse`
- `xarm_msgs/GetAnalogIO` (service): request → `Ros1Xarm_msgsGetAnalogIORequest`, response → `Ros1Xarm_msgsGetAnalogIOResponse`
- `xarm_msgs/GetControllerDigitalIO` (service): request → `Ros1Xarm_msgsGetControllerDigitalIORequest`, response → `Ros1Xarm_msgsGetControllerDigitalIOResponse`
- `xarm_msgs/GetDigitalIO` (service): request → `Ros1Xarm_msgsGetDigitalIORequest`, response → `Ros1Xarm_msgsGetDigitalIOResponse`
- `xarm_msgs/GetErr` (service): request → `Ros1Xarm_msgsGetErrRequest`, response → `Ros1Xarm_msgsGetErrResponse`
- `xarm_msgs/GetFloat32List` (service): request → `Ros1Xarm_msgsGetFloat32ListRequest`, response → `Ros1Xarm_msgsGetFloat32ListResponse`
- `xarm_msgs/GetInt32` (service): request → `Ros1Xarm_msgsGetInt32Request`, response → `Ros1Xarm_msgsGetInt32Response`
- `xarm_msgs/GetSetModbusData` (service): request → `Ros1Xarm_msgsGetSetModbusDataRequest`, response → `Ros1Xarm_msgsGetSetModbusDataResponse`
- `xarm_msgs/GripperConfig` (service): request → `Ros1Xarm_msgsGripperConfigRequest`, response → `Ros1Xarm_msgsGripperConfigResponse`
- `xarm_msgs/GripperMove` (service): request → `Ros1Xarm_msgsGripperMoveRequest`, response → `Ros1Xarm_msgsGripperMoveResponse`
- `xarm_msgs/GripperState` (service): request → `Ros1Xarm_msgsGripperStateRequest`, response → `Ros1Xarm_msgsGripperStateResponse`
- `xarm_msgs/Move` (service): request → `Ros1Xarm_msgsMoveRequest`, response → `Ros1Xarm_msgsMoveResponse`
- `xarm_msgs/MoveAxisAngle` (service): request → `Ros1Xarm_msgsMoveAxisAngleRequest`, response → `Ros1Xarm_msgsMoveAxisAngleResponse`
- `xarm_msgs/MoveVelo` (service): request → `Ros1Xarm_msgsMoveVeloRequest`, response → `Ros1Xarm_msgsMoveVeloResponse`
- `xarm_msgs/MoveVelocity` (service): request → `Ros1Xarm_msgsMoveVelocityRequest`, response → `Ros1Xarm_msgsMoveVelocityResponse`
- `xarm_msgs/PlayTraj` (service): request → `Ros1Xarm_msgsPlayTrajRequest`, response → `Ros1Xarm_msgsPlayTrajResponse`
- `xarm_msgs/SetAxis` (service): request → `Ros1Xarm_msgsSetAxisRequest`, response → `Ros1Xarm_msgsSetAxisResponse`
- `xarm_msgs/SetControllerAnalogIO` (service): request → `Ros1Xarm_msgsSetControllerAnalogIORequest`, response → `Ros1Xarm_msgsSetControllerAnalogIOResponse`
- `xarm_msgs/SetDigitalIO` (service): request → `Ros1Xarm_msgsSetDigitalIORequest`, response → `Ros1Xarm_msgsSetDigitalIOResponse`
- `xarm_msgs/SetFloat32` (service): request → `Ros1Xarm_msgsSetFloat32Request`, response → `Ros1Xarm_msgsSetFloat32Response`
- `xarm_msgs/SetInt16` (service): request → `Ros1Xarm_msgsSetInt16Request`, response → `Ros1Xarm_msgsSetInt16Response`
- `xarm_msgs/SetLoad` (service): request → `Ros1Xarm_msgsSetLoadRequest`, response → `Ros1Xarm_msgsSetLoadResponse`
- `xarm_msgs/SetModbusTimeout` (service): request → `Ros1Xarm_msgsSetModbusTimeoutRequest`, response → `Ros1Xarm_msgsSetModbusTimeoutResponse`
- `xarm_msgs/SetMultipleInts` (service): request → `Ros1Xarm_msgsSetMultipleIntsRequest`, response → `Ros1Xarm_msgsSetMultipleIntsResponse`
- `xarm_msgs/SetString` (service): request → `Ros1Xarm_msgsSetStringRequest`, response → `Ros1Xarm_msgsSetStringResponse`
- `xarm_msgs/SetToolModbus` (service): request → `Ros1Xarm_msgsSetToolModbusRequest`, response → `Ros1Xarm_msgsSetToolModbusResponse`
- `xarm_msgs/TCPOffset` (service): request → `Ros1Xarm_msgsTCPOffsetRequest`, response → `Ros1Xarm_msgsTCPOffsetResponse`
- `xarm_msgs/VacuumGripperCtrl` (service): request → `Ros1Xarm_msgsVacuumGripperCtrlRequest`, response → `Ros1Xarm_msgsVacuumGripperCtrlResponse`
- `xarm_planner/exec_plan` (service): request → `Ros1Xarm_plannerExec_planRequest`, response → `Ros1Xarm_plannerExec_planResponse`
- `xarm_planner/joint_plan` (service): request → `Ros1Xarm_plannerJoint_planRequest`, response → `Ros1Xarm_plannerJoint_planResponse`
- `xarm_planner/pose_plan` (service): request → `Ros1Xarm_plannerPose_planRequest`, response → `Ros1Xarm_plannerPose_planResponse`
- `xarm_planner/single_straight_plan` (service): request → `Ros1Xarm_plannerSingle_straight_planRequest`, response → `Ros1Xarm_plannerSingle_straight_planResponse`

Immutable upstream sources:

- [xArm-Developer/xarm_ros @ 7319ef78abc309d30102bee1de3fe9ece56023b3](https://github.com/xArm-Developer/xarm_ros/tree/7319ef78abc309d30102bee1de3fe9ece56023b3)
- [ros/std_msgs @ f3554d4182c057f7b9c9ddb1911629126148ae7e](https://github.com/ros/std_msgs/tree/f3554d4182c057f7b9c9ddb1911629126148ae7e)
- [ros/common_msgs @ cb1dc920803679800de84d35edd70a86754fffbb](https://github.com/ros/common_msgs/tree/cb1dc920803679800de84d35edd70a86754fffbb)

## ros1_legacy

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `geometry_msgs/Point` | `Ros1Geometry_msgsPoint` | 24..24 | x: float64; y: float64; z: float64 |
| `geometry_msgs/Quaternion` | `Ros1Geometry_msgsQuaternion` | 32..32 | x: float64; y: float64; z: float64; w: float64 |
| `geometry_msgs/Pose` | `Ros1Geometry_msgsPose` | 56..56 | position: geometry_msgs/Point; orientation: geometry_msgs/Quaternion |
| `xarm_msgs/IOState` | `Ros1Xarm_msgsIOState` | 16..16 | digital_1: int32; digital_2: int32; analog_1: float32; analog_2: float32 |
| `xarm_msgs/RobotMsg` | `Ros1Xarm_msgsRobotMsg` | 66..94 | state: int16; mode: int16; cmdnum: int16; mt_brake: int16; mt_able: int16; err: int16; warn: int16; angle: float32 sequence<=7; pose: float32[6]; offset: float32[6] |
| `xarm_msgs/ClearErrRequest` | `Ros1Xarm_msgsClearErrRequest` | 0..0 | (empty original component) |
| `xarm_msgs/ClearErrResponse` | `Ros1Xarm_msgsClearErrResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/GetAnalogIORequest` | `Ros1Xarm_msgsGetAnalogIORequest` | 2..2 | port_num: int16 |
| `xarm_msgs/GetAnalogIOResponse` | `Ros1Xarm_msgsGetAnalogIOResponse` | 10..266 | analog_value: float32; ret: int16; message: string text<=256B |
| `xarm_msgs/GetDigitalIORequest` | `Ros1Xarm_msgsGetDigitalIORequest` | 0..0 | (empty original component) |
| `xarm_msgs/GetDigitalIOResponse` | `Ros1Xarm_msgsGetDigitalIOResponse` | 14..270 | digital_1: int32; digital_2: int32; ret: int16; message: string text<=256B |
| `xarm_msgs/MoveRequest` | `Ros1Xarm_msgsMoveRequest` | 20..148 | pose: float32 sequence<=32; mvvelo: float32; mvacc: float32; mvtime: float32; mvradii: float32 |
| `xarm_msgs/MoveResponse` | `Ros1Xarm_msgsMoveResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/SetAxisRequest` | `Ros1Xarm_msgsSetAxisRequest` | 4..4 | id: int16; data: int16 |
| `xarm_msgs/SetAxisResponse` | `Ros1Xarm_msgsSetAxisResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/SetDigitalIORequest` | `Ros1Xarm_msgsSetDigitalIORequest` | 4..4 | io_num: int16; value: int16 |
| `xarm_msgs/SetDigitalIOResponse` | `Ros1Xarm_msgsSetDigitalIOResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/SetInt16Request` | `Ros1Xarm_msgsSetInt16Request` | 2..2 | data: int16 |
| `xarm_msgs/SetInt16Response` | `Ros1Xarm_msgsSetInt16Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/TCPOffsetRequest` | `Ros1Xarm_msgsTCPOffsetRequest` | 24..24 | x: float32; y: float32; z: float32; roll: float32; pitch: float32; yaw: float32 |
| `xarm_msgs/TCPOffsetResponse` | `Ros1Xarm_msgsTCPOffsetResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_planner/exec_planRequest` | `Ros1Xarm_plannerExec_planRequest` | 1..1 | exec: bool |
| `xarm_planner/exec_planResponse` | `Ros1Xarm_plannerExec_planResponse` | 1..1 | success: bool |
| `xarm_planner/joint_planRequest` | `Ros1Xarm_plannerJoint_planRequest` | 4..260 | target: float64 sequence<=32 |
| `xarm_planner/joint_planResponse` | `Ros1Xarm_plannerJoint_planResponse` | 1..1 | success: bool |
| `xarm_planner/pose_planRequest` | `Ros1Xarm_plannerPose_planRequest` | 56..56 | target: geometry_msgs/Pose |
| `xarm_planner/pose_planResponse` | `Ros1Xarm_plannerPose_planResponse` | 1..1 | success: bool |
| `xarm_planner/single_straight_planRequest` | `Ros1Xarm_plannerSingle_straight_planRequest` | 56..56 | target: geometry_msgs/Pose |
| `xarm_planner/single_straight_planResponse` | `Ros1Xarm_plannerSingle_straight_planResponse` | 1..1 | success: bool |

Interfaces:

- `geometry_msgs/Point` (message): message → `Ros1Geometry_msgsPoint`
- `geometry_msgs/Pose` (message): message → `Ros1Geometry_msgsPose`
- `geometry_msgs/Quaternion` (message): message → `Ros1Geometry_msgsQuaternion`
- `xarm_msgs/IOState` (message): message → `Ros1Xarm_msgsIOState`
- `xarm_msgs/RobotMsg` (message): message → `Ros1Xarm_msgsRobotMsg`
- `xarm_msgs/ClearErr` (service): request → `Ros1Xarm_msgsClearErrRequest`, response → `Ros1Xarm_msgsClearErrResponse`
- `xarm_msgs/GetAnalogIO` (service): request → `Ros1Xarm_msgsGetAnalogIORequest`, response → `Ros1Xarm_msgsGetAnalogIOResponse`
- `xarm_msgs/GetDigitalIO` (service): request → `Ros1Xarm_msgsGetDigitalIORequest`, response → `Ros1Xarm_msgsGetDigitalIOResponse`
- `xarm_msgs/Move` (service): request → `Ros1Xarm_msgsMoveRequest`, response → `Ros1Xarm_msgsMoveResponse`
- `xarm_msgs/SetAxis` (service): request → `Ros1Xarm_msgsSetAxisRequest`, response → `Ros1Xarm_msgsSetAxisResponse`
- `xarm_msgs/SetDigitalIO` (service): request → `Ros1Xarm_msgsSetDigitalIORequest`, response → `Ros1Xarm_msgsSetDigitalIOResponse`
- `xarm_msgs/SetInt16` (service): request → `Ros1Xarm_msgsSetInt16Request`, response → `Ros1Xarm_msgsSetInt16Response`
- `xarm_msgs/TCPOffset` (service): request → `Ros1Xarm_msgsTCPOffsetRequest`, response → `Ros1Xarm_msgsTCPOffsetResponse`
- `xarm_planner/exec_plan` (service): request → `Ros1Xarm_plannerExec_planRequest`, response → `Ros1Xarm_plannerExec_planResponse`
- `xarm_planner/joint_plan` (service): request → `Ros1Xarm_plannerJoint_planRequest`, response → `Ros1Xarm_plannerJoint_planResponse`
- `xarm_planner/pose_plan` (service): request → `Ros1Xarm_plannerPose_planRequest`, response → `Ros1Xarm_plannerPose_planResponse`
- `xarm_planner/single_straight_plan` (service): request → `Ros1Xarm_plannerSingle_straight_planRequest`, response → `Ros1Xarm_plannerSingle_straight_planResponse`

Immutable upstream sources:

- [xArm-Developer/xarm_ros @ 3bc6c4da51769d90ce2a6d1419a0b65446d177e3](https://github.com/xArm-Developer/xarm_ros/tree/3bc6c4da51769d90ce2a6d1419a0b65446d177e3)
- [ros/common_msgs @ cb1dc920803679800de84d35edd70a86754fffbb](https://github.com/ros/common_msgs/tree/cb1dc920803679800de84d35edd70a86754fffbb)

## ros1_master

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `xarm_gripper/MoveGoal` | `Ros1Xarm_gripperMoveGoal` | 8..8 | target_pulse: float32; pulse_speed: float32 |
| `xarm_gripper/MoveResult` | `Ros1Xarm_gripperMoveResult` | 3..3 | success: bool; err_code: int16 |
| `xarm_gripper/MoveFeedback` | `Ros1Xarm_gripperMoveFeedback` | 4..4 | current_pulse: float32 |
| `geometry_msgs/Point` | `Ros1Geometry_msgsPoint` | 24..24 | x: float64; y: float64; z: float64 |
| `geometry_msgs/Quaternion` | `Ros1Geometry_msgsQuaternion` | 32..32 | x: float64; y: float64; z: float64; w: float64 |
| `geometry_msgs/Pose` | `Ros1Geometry_msgsPose` | 56..56 | position: geometry_msgs/Point; orientation: geometry_msgs/Quaternion |
| `time` | `Ros1Time` | 8..8 | sec: uint32; nsec: uint32 |
| `std_msgs/Header` | `Ros1Std_msgsHeader` | 16..272 | seq: uint32; stamp: time; frame_id: string text<=256B |
| `xarm_msgs/CIOState` | `Ros1Xarm_msgsCIOState` | 76..332 | header: std_msgs/Header; state: int16; code: int16; input_digitals: uint16[2]; output_digitals: uint16[2]; input_analogs: float32[2]; output_analogs: float32[2]; input_conf: uint8[16]; output_conf: uint8[16] |
| `xarm_msgs/IOState` | `Ros1Xarm_msgsIOState` | 16..16 | digital_1: int32; digital_2: int32; analog_1: float32; analog_2: float32 |
| `xarm_msgs/RobotMsg` | `Ros1Xarm_msgsRobotMsg` | 82..366 | header: std_msgs/Header; state: int16; mode: int16; cmdnum: int16; mt_brake: int16; mt_able: int16; err: int16; warn: int16; angle: float32 sequence<=7; pose: float32[6]; offset: float32[6] |
| `xarm_msgs/VeloMoveMsg` | `Ros1Xarm_msgsVeloMoveMsg` | 10..138 | speeds: float32 sequence<=32; is_sync: bool; is_tool_coord: bool; duration: float32 |
| `xarm_msgs/CallRequest` | `Ros1Xarm_msgsCallRequest` | 0..0 | (empty original component) |
| `xarm_msgs/CallResponse` | `Ros1Xarm_msgsCallResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/ClearErrRequest` | `Ros1Xarm_msgsClearErrRequest` | 0..0 | (empty original component) |
| `xarm_msgs/ClearErrResponse` | `Ros1Xarm_msgsClearErrResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/ConfigToolModbusRequest` | `Ros1Xarm_msgsConfigToolModbusRequest` | 8..8 | baud_rate: int32; timeout_ms: int32 |
| `xarm_msgs/ConfigToolModbusResponse` | `Ros1Xarm_msgsConfigToolModbusResponse` | 6..262 | message: string text<=256B; ret: int16 |
| `xarm_msgs/FtCaliLoadRequest` | `Ros1Xarm_msgsFtCaliLoadRequest` | 5..133 | datas: float32 sequence<=32; association_setting_tcp_load: bool |
| `xarm_msgs/FtCaliLoadResponse` | `Ros1Xarm_msgsFtCaliLoadResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/FtIdenLoadRequest` | `Ros1Xarm_msgsFtIdenLoadRequest` | 0..0 | (empty original component) |
| `xarm_msgs/FtIdenLoadResponse` | `Ros1Xarm_msgsFtIdenLoadResponse` | 10..394 | ret: int16; message: string text<=256B; datas: float32 sequence<=32 |
| `xarm_msgs/GetAnalogIORequest` | `Ros1Xarm_msgsGetAnalogIORequest` | 2..2 | port_num: int16 |
| `xarm_msgs/GetAnalogIOResponse` | `Ros1Xarm_msgsGetAnalogIOResponse` | 10..266 | analog_value: float32; ret: int16; message: string text<=256B |
| `xarm_msgs/GetControllerDigitalIORequest` | `Ros1Xarm_msgsGetControllerDigitalIORequest` | 2..2 | io_num: int16 |
| `xarm_msgs/GetControllerDigitalIOResponse` | `Ros1Xarm_msgsGetControllerDigitalIOResponse` | 8..264 | ret: int16; value: int16; message: string text<=256B |
| `xarm_msgs/GetDigitalIORequest` | `Ros1Xarm_msgsGetDigitalIORequest` | 0..0 | (empty original component) |
| `xarm_msgs/GetDigitalIOResponse` | `Ros1Xarm_msgsGetDigitalIOResponse` | 14..270 | digital_1: int32; digital_2: int32; ret: int16; message: string text<=256B |
| `xarm_msgs/GetErrRequest` | `Ros1Xarm_msgsGetErrRequest` | 0..0 | (empty original component) |
| `xarm_msgs/GetErrResponse` | `Ros1Xarm_msgsGetErrResponse` | 8..264 | err: int16; ret: int16; message: string text<=256B |
| `xarm_msgs/GetFloat32ListRequest` | `Ros1Xarm_msgsGetFloat32ListRequest` | 0..0 | (empty original component) |
| `xarm_msgs/GetFloat32ListResponse` | `Ros1Xarm_msgsGetFloat32ListResponse` | 10..394 | ret: int16; message: string text<=256B; datas: float32 sequence<=32 |
| `xarm_msgs/GetInt32Request` | `Ros1Xarm_msgsGetInt32Request` | 0..0 | (empty original component) |
| `xarm_msgs/GetInt32Response` | `Ros1Xarm_msgsGetInt32Response` | 10..266 | data: int32; ret: int16; message: string text<=256B |
| `xarm_msgs/GetSetModbusDataRequest` | `Ros1Xarm_msgsGetSetModbusDataRequest` | 9..4105 | send_data: uint8 sequence<=4096; respond_len: int16; host_id: uint8; is_transparent_transmission: bool; use_503_port: bool |
| `xarm_msgs/GetSetModbusDataResponse` | `Ros1Xarm_msgsGetSetModbusDataResponse` | 10..4362 | ret: int16; message: string text<=256B; respond_data: uint8 sequence<=4096 |
| `xarm_msgs/GripperConfigRequest` | `Ros1Xarm_msgsGripperConfigRequest` | 4..4 | pulse_vel: float32 |
| `xarm_msgs/GripperConfigResponse` | `Ros1Xarm_msgsGripperConfigResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/GripperMoveRequest` | `Ros1Xarm_msgsGripperMoveRequest` | 4..4 | pulse_pos: float32 |
| `xarm_msgs/GripperMoveResponse` | `Ros1Xarm_msgsGripperMoveResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/GripperStateRequest` | `Ros1Xarm_msgsGripperStateRequest` | 0..0 | (empty original component) |
| `xarm_msgs/GripperStateResponse` | `Ros1Xarm_msgsGripperStateResponse` | 12..268 | ret: int16; message: string text<=256B; curr_pos: float32; err_code: int16 |
| `xarm_msgs/MoveRequest` | `Ros1Xarm_msgsMoveRequest` | 20..148 | pose: float32 sequence<=32; mvvelo: float32; mvacc: float32; mvtime: float32; mvradii: float32 |
| `xarm_msgs/MoveResponse` | `Ros1Xarm_msgsMoveResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/MoveAxisAngleRequest` | `Ros1Xarm_msgsMoveAxisAngleRequest` | 20..148 | pose: float32 sequence<=32; mvvelo: float32; mvacc: float32; mvtime: float32; coord: int16; relative: int16 |
| `xarm_msgs/MoveAxisAngleResponse` | `Ros1Xarm_msgsMoveAxisAngleResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/MoveVeloRequest` | `Ros1Xarm_msgsMoveVeloRequest` | 8..136 | velocities: float32 sequence<=32; jnt_sync: int16; coord: int16 |
| `xarm_msgs/MoveVeloResponse` | `Ros1Xarm_msgsMoveVeloResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/MoveVelocityRequest` | `Ros1Xarm_msgsMoveVelocityRequest` | 10..138 | speeds: float32 sequence<=32; is_sync: bool; is_tool_coord: bool; duration: float32 |
| `xarm_msgs/MoveVelocityResponse` | `Ros1Xarm_msgsMoveVelocityResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/PlayTrajRequest` | `Ros1Xarm_msgsPlayTrajRequest` | 8..264 | traj_file: string text<=256B; repeat_times: int16; speed_factor: int16 |
| `xarm_msgs/PlayTrajResponse` | `Ros1Xarm_msgsPlayTrajResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/SetAxisRequest` | `Ros1Xarm_msgsSetAxisRequest` | 4..4 | id: int16; data: int16 |
| `xarm_msgs/SetAxisResponse` | `Ros1Xarm_msgsSetAxisResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/SetControllerAnalogIORequest` | `Ros1Xarm_msgsSetControllerAnalogIORequest` | 6..6 | port_num: int16; analog_value: float32 |
| `xarm_msgs/SetControllerAnalogIOResponse` | `Ros1Xarm_msgsSetControllerAnalogIOResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/SetDigitalIORequest` | `Ros1Xarm_msgsSetDigitalIORequest` | 4..4 | io_num: int16; value: int16 |
| `xarm_msgs/SetDigitalIOResponse` | `Ros1Xarm_msgsSetDigitalIOResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/SetFloat32Request` | `Ros1Xarm_msgsSetFloat32Request` | 4..4 | data: float32 |
| `xarm_msgs/SetFloat32Response` | `Ros1Xarm_msgsSetFloat32Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/SetInt16Request` | `Ros1Xarm_msgsSetInt16Request` | 2..2 | data: int16 |
| `xarm_msgs/SetInt16Response` | `Ros1Xarm_msgsSetInt16Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/SetLoadRequest` | `Ros1Xarm_msgsSetLoadRequest` | 16..16 | mass: float32; xc: float32; yc: float32; zc: float32 |
| `xarm_msgs/SetLoadResponse` | `Ros1Xarm_msgsSetLoadResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/SetModbusTimeoutRequest` | `Ros1Xarm_msgsSetModbusTimeoutRequest` | 5..5 | timeout_ms: int32; is_transparent_transmission: bool |
| `xarm_msgs/SetModbusTimeoutResponse` | `Ros1Xarm_msgsSetModbusTimeoutResponse` | 6..262 | message: string text<=256B; ret: int16 |
| `xarm_msgs/SetMultipleIntsRequest` | `Ros1Xarm_msgsSetMultipleIntsRequest` | 4..68 | data_int: int16 sequence<=32 |
| `xarm_msgs/SetMultipleIntsResponse` | `Ros1Xarm_msgsSetMultipleIntsResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/SetStringRequest` | `Ros1Xarm_msgsSetStringRequest` | 8..264 | str_data: string text<=256B; timeout: float32 |
| `xarm_msgs/SetStringResponse` | `Ros1Xarm_msgsSetStringResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/SetToolModbusRequest` | `Ros1Xarm_msgsSetToolModbusRequest` | 6..4102 | send_data: uint8 sequence<=4096; respond_len: int16 |
| `xarm_msgs/SetToolModbusResponse` | `Ros1Xarm_msgsSetToolModbusResponse` | 10..4362 | ret: int16; message: string text<=256B; respond_data: uint8 sequence<=4096 |
| `xarm_msgs/TCPOffsetRequest` | `Ros1Xarm_msgsTCPOffsetRequest` | 24..24 | x: float32; y: float32; z: float32; roll: float32; pitch: float32; yaw: float32 |
| `xarm_msgs/TCPOffsetResponse` | `Ros1Xarm_msgsTCPOffsetResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/VacuumGripperCtrlRequest` | `Ros1Xarm_msgsVacuumGripperCtrlRequest` | 13..13 | on: bool; wait: bool; timeout: float32; delay_sec: float32; sync: bool; hardware_version: int16 |
| `xarm_msgs/VacuumGripperCtrlResponse` | `Ros1Xarm_msgsVacuumGripperCtrlResponse` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_planner/exec_planRequest` | `Ros1Xarm_plannerExec_planRequest` | 1..1 | exec: bool |
| `xarm_planner/exec_planResponse` | `Ros1Xarm_plannerExec_planResponse` | 1..1 | success: bool |
| `xarm_planner/joint_planRequest` | `Ros1Xarm_plannerJoint_planRequest` | 4..260 | target: float64 sequence<=32 |
| `xarm_planner/joint_planResponse` | `Ros1Xarm_plannerJoint_planResponse` | 1..1 | success: bool |
| `xarm_planner/pose_planRequest` | `Ros1Xarm_plannerPose_planRequest` | 56..56 | target: geometry_msgs/Pose |
| `xarm_planner/pose_planResponse` | `Ros1Xarm_plannerPose_planResponse` | 1..1 | success: bool |
| `xarm_planner/single_straight_planRequest` | `Ros1Xarm_plannerSingle_straight_planRequest` | 56..56 | target: geometry_msgs/Pose |
| `xarm_planner/single_straight_planResponse` | `Ros1Xarm_plannerSingle_straight_planResponse` | 1..1 | success: bool |

Interfaces:

- `xarm_gripper/Move` (action): goal → `Ros1Xarm_gripperMoveGoal`, result → `Ros1Xarm_gripperMoveResult`, feedback → `Ros1Xarm_gripperMoveFeedback`
- `geometry_msgs/Point` (message): message → `Ros1Geometry_msgsPoint`
- `geometry_msgs/Pose` (message): message → `Ros1Geometry_msgsPose`
- `geometry_msgs/Quaternion` (message): message → `Ros1Geometry_msgsQuaternion`
- `std_msgs/Header` (message): message → `Ros1Std_msgsHeader`
- `xarm_msgs/CIOState` (message): message → `Ros1Xarm_msgsCIOState`
- `xarm_msgs/IOState` (message): message → `Ros1Xarm_msgsIOState`
- `xarm_msgs/RobotMsg` (message): message → `Ros1Xarm_msgsRobotMsg`
- `xarm_msgs/VeloMoveMsg` (message): message → `Ros1Xarm_msgsVeloMoveMsg`
- `xarm_msgs/Call` (service): request → `Ros1Xarm_msgsCallRequest`, response → `Ros1Xarm_msgsCallResponse`
- `xarm_msgs/ClearErr` (service): request → `Ros1Xarm_msgsClearErrRequest`, response → `Ros1Xarm_msgsClearErrResponse`
- `xarm_msgs/ConfigToolModbus` (service): request → `Ros1Xarm_msgsConfigToolModbusRequest`, response → `Ros1Xarm_msgsConfigToolModbusResponse`
- `xarm_msgs/FtCaliLoad` (service): request → `Ros1Xarm_msgsFtCaliLoadRequest`, response → `Ros1Xarm_msgsFtCaliLoadResponse`
- `xarm_msgs/FtIdenLoad` (service): request → `Ros1Xarm_msgsFtIdenLoadRequest`, response → `Ros1Xarm_msgsFtIdenLoadResponse`
- `xarm_msgs/GetAnalogIO` (service): request → `Ros1Xarm_msgsGetAnalogIORequest`, response → `Ros1Xarm_msgsGetAnalogIOResponse`
- `xarm_msgs/GetControllerDigitalIO` (service): request → `Ros1Xarm_msgsGetControllerDigitalIORequest`, response → `Ros1Xarm_msgsGetControllerDigitalIOResponse`
- `xarm_msgs/GetDigitalIO` (service): request → `Ros1Xarm_msgsGetDigitalIORequest`, response → `Ros1Xarm_msgsGetDigitalIOResponse`
- `xarm_msgs/GetErr` (service): request → `Ros1Xarm_msgsGetErrRequest`, response → `Ros1Xarm_msgsGetErrResponse`
- `xarm_msgs/GetFloat32List` (service): request → `Ros1Xarm_msgsGetFloat32ListRequest`, response → `Ros1Xarm_msgsGetFloat32ListResponse`
- `xarm_msgs/GetInt32` (service): request → `Ros1Xarm_msgsGetInt32Request`, response → `Ros1Xarm_msgsGetInt32Response`
- `xarm_msgs/GetSetModbusData` (service): request → `Ros1Xarm_msgsGetSetModbusDataRequest`, response → `Ros1Xarm_msgsGetSetModbusDataResponse`
- `xarm_msgs/GripperConfig` (service): request → `Ros1Xarm_msgsGripperConfigRequest`, response → `Ros1Xarm_msgsGripperConfigResponse`
- `xarm_msgs/GripperMove` (service): request → `Ros1Xarm_msgsGripperMoveRequest`, response → `Ros1Xarm_msgsGripperMoveResponse`
- `xarm_msgs/GripperState` (service): request → `Ros1Xarm_msgsGripperStateRequest`, response → `Ros1Xarm_msgsGripperStateResponse`
- `xarm_msgs/Move` (service): request → `Ros1Xarm_msgsMoveRequest`, response → `Ros1Xarm_msgsMoveResponse`
- `xarm_msgs/MoveAxisAngle` (service): request → `Ros1Xarm_msgsMoveAxisAngleRequest`, response → `Ros1Xarm_msgsMoveAxisAngleResponse`
- `xarm_msgs/MoveVelo` (service): request → `Ros1Xarm_msgsMoveVeloRequest`, response → `Ros1Xarm_msgsMoveVeloResponse`
- `xarm_msgs/MoveVelocity` (service): request → `Ros1Xarm_msgsMoveVelocityRequest`, response → `Ros1Xarm_msgsMoveVelocityResponse`
- `xarm_msgs/PlayTraj` (service): request → `Ros1Xarm_msgsPlayTrajRequest`, response → `Ros1Xarm_msgsPlayTrajResponse`
- `xarm_msgs/SetAxis` (service): request → `Ros1Xarm_msgsSetAxisRequest`, response → `Ros1Xarm_msgsSetAxisResponse`
- `xarm_msgs/SetControllerAnalogIO` (service): request → `Ros1Xarm_msgsSetControllerAnalogIORequest`, response → `Ros1Xarm_msgsSetControllerAnalogIOResponse`
- `xarm_msgs/SetDigitalIO` (service): request → `Ros1Xarm_msgsSetDigitalIORequest`, response → `Ros1Xarm_msgsSetDigitalIOResponse`
- `xarm_msgs/SetFloat32` (service): request → `Ros1Xarm_msgsSetFloat32Request`, response → `Ros1Xarm_msgsSetFloat32Response`
- `xarm_msgs/SetInt16` (service): request → `Ros1Xarm_msgsSetInt16Request`, response → `Ros1Xarm_msgsSetInt16Response`
- `xarm_msgs/SetLoad` (service): request → `Ros1Xarm_msgsSetLoadRequest`, response → `Ros1Xarm_msgsSetLoadResponse`
- `xarm_msgs/SetModbusTimeout` (service): request → `Ros1Xarm_msgsSetModbusTimeoutRequest`, response → `Ros1Xarm_msgsSetModbusTimeoutResponse`
- `xarm_msgs/SetMultipleInts` (service): request → `Ros1Xarm_msgsSetMultipleIntsRequest`, response → `Ros1Xarm_msgsSetMultipleIntsResponse`
- `xarm_msgs/SetString` (service): request → `Ros1Xarm_msgsSetStringRequest`, response → `Ros1Xarm_msgsSetStringResponse`
- `xarm_msgs/SetToolModbus` (service): request → `Ros1Xarm_msgsSetToolModbusRequest`, response → `Ros1Xarm_msgsSetToolModbusResponse`
- `xarm_msgs/TCPOffset` (service): request → `Ros1Xarm_msgsTCPOffsetRequest`, response → `Ros1Xarm_msgsTCPOffsetResponse`
- `xarm_msgs/VacuumGripperCtrl` (service): request → `Ros1Xarm_msgsVacuumGripperCtrlRequest`, response → `Ros1Xarm_msgsVacuumGripperCtrlResponse`
- `xarm_planner/exec_plan` (service): request → `Ros1Xarm_plannerExec_planRequest`, response → `Ros1Xarm_plannerExec_planResponse`
- `xarm_planner/joint_plan` (service): request → `Ros1Xarm_plannerJoint_planRequest`, response → `Ros1Xarm_plannerJoint_planResponse`
- `xarm_planner/pose_plan` (service): request → `Ros1Xarm_plannerPose_planRequest`, response → `Ros1Xarm_plannerPose_planResponse`
- `xarm_planner/single_straight_plan` (service): request → `Ros1Xarm_plannerSingle_straight_planRequest`, response → `Ros1Xarm_plannerSingle_straight_planResponse`

Immutable upstream sources:

- [xArm-Developer/xarm_ros @ aad7e1611c9c46eb719045414394bfdd42dcb0f8](https://github.com/xArm-Developer/xarm_ros/tree/aad7e1611c9c46eb719045414394bfdd42dcb0f8)
- [ros/std_msgs @ 34198520757d1aab358118a0ef294fe2609fde33](https://github.com/ros/std_msgs/tree/34198520757d1aab358118a0ef294fe2609fde33)
- [ros/common_msgs @ 092bc230c8153dd4cfee0c84c9796cc7e6b09fdb](https://github.com/ros/common_msgs/tree/092bc230c8153dd4cfee0c84c9796cc7e6b09fdb)

## ros2_foxy

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `builtin_interfaces/msg/Time` | `Ros2Builtin_interfacesMsgTime` | 8..8 | sec: int32; nanosec: uint32 |
| `geometry_msgs/msg/Point` | `Ros2Geometry_msgsMsgPoint` | 24..24 | x: float64; y: float64; z: float64 |
| `geometry_msgs/msg/Quaternion` | `Ros2Geometry_msgsMsgQuaternion` | 32..32 | x: float64; y: float64; z: float64; w: float64 |
| `geometry_msgs/msg/Pose` | `Ros2Geometry_msgsMsgPose` | 56..56 | position: geometry_msgs/msg/Point; orientation: geometry_msgs/msg/Quaternion |
| `std_msgs/msg/Header` | `Ros2Std_msgsMsgHeader` | 12..268 | stamp: builtin_interfaces/msg/Time; frame_id: string text<=256B |
| `xarm_msgs/msg/CIOState` | `Ros2Xarm_msgsMsgCIOState` | 72..328 | header: std_msgs/msg/Header; state: int16; code: int16; input_digitals: uint16[2]; output_digitals: uint16[2]; input_analogs: float32[2]; output_analogs: float32[2]; input_conf: uint8[16]; output_conf: uint8[16] |
| `xarm_msgs/msg/IOState` | `Ros2Xarm_msgsMsgIOState` | 16..16 | digital_1: int32; digital_2: int32; analog_1: float32; analog_2: float32 |
| `xarm_msgs/msg/MoveVelocity` | `Ros2Xarm_msgsMsgMoveVelocity` | 10..138 | speeds: float32 sequence<=32; is_sync: bool; is_tool_coord: bool; duration: float32 |
| `xarm_msgs/msg/RobotMsg` | `Ros2Xarm_msgsMsgRobotMsg` | 78..362 | header: std_msgs/msg/Header; state: int16; mode: int16; cmdnum: int16; mt_brake: int16; mt_able: int16; err: int16; warn: int16; angle: float32 sequence<=7; pose: float32[6]; offset: float32[6] |
| `xarm_msgs/srv/BioGripperCtrl_Request` | `Ros2Xarm_msgsSrvBioGripperCtrl_Request` | 7..7 | speed: int16; wait: bool; timeout: float32 |
| `xarm_msgs/srv/BioGripperCtrl_Response` | `Ros2Xarm_msgsSrvBioGripperCtrl_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/BioGripperEnable_Request` | `Ros2Xarm_msgsSrvBioGripperEnable_Request` | 6..6 | enable: bool; wait: bool; timeout: float32 |
| `xarm_msgs/srv/BioGripperEnable_Response` | `Ros2Xarm_msgsSrvBioGripperEnable_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/Call_Request` | `Ros2Xarm_msgsSrvCall_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/Call_Response` | `Ros2Xarm_msgsSrvCall_Response` | 8..264 | ret: int32; message: string text<=256B |
| `xarm_msgs/srv/FtAdmittanceParams_Request` | `Ros2Xarm_msgsSrvFtAdmittanceParams_Request` | 18..466 | coord: int16; c_axis: int16 sequence<=32; m: float32 sequence<=32; k: float32 sequence<=32; b: float32 sequence<=32 |
| `xarm_msgs/srv/FtAdmittanceParams_Response` | `Ros2Xarm_msgsSrvFtAdmittanceParams_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtCaliLoad_Request` | `Ros2Xarm_msgsSrvFtCaliLoad_Request` | 21..149 | datas: float32 sequence<=32; association_setting_tcp_load: bool; m: float32; x: float32; y: float32; z: float32 |
| `xarm_msgs/srv/FtCaliLoad_Response` | `Ros2Xarm_msgsSrvFtCaliLoad_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtForceConfig_Request` | `Ros2Xarm_msgsSrvFtForceConfig_Request` | 14..334 | coord: int16; c_axis: int16 sequence<=32; ref: float32 sequence<=32; limits: float32 sequence<=32 |
| `xarm_msgs/srv/FtForceConfig_Response` | `Ros2Xarm_msgsSrvFtForceConfig_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtForceParams_Request` | `Ros2Xarm_msgsSrvFtForceParams_Request` | 30..862 | coord: int16; c_axis: int16 sequence<=32; ref: float32 sequence<=32; limits: float32 sequence<=32; kp: float32 sequence<=32; ki: float32 sequence<=32; kd: float32 sequence<=32; xe_limit: float32 sequence<=32 |
| `xarm_msgs/srv/FtForceParams_Response` | `Ros2Xarm_msgsSrvFtForceParams_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtForcePid_Request` | `Ros2Xarm_msgsSrvFtForcePid_Request` | 16..528 | kp: float32 sequence<=32; ki: float32 sequence<=32; kd: float32 sequence<=32; xe_limit: float32 sequence<=32 |
| `xarm_msgs/srv/FtForcePid_Response` | `Ros2Xarm_msgsSrvFtForcePid_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtImpedance_Request` | `Ros2Xarm_msgsSrvFtImpedance_Request` | 18..466 | coord: int16; c_axis: int16 sequence<=32; m: float32 sequence<=32; k: float32 sequence<=32; b: float32 sequence<=32 |
| `xarm_msgs/srv/FtImpedance_Response` | `Ros2Xarm_msgsSrvFtImpedance_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/GetAnalogIO_Request` | `Ros2Xarm_msgsSrvGetAnalogIO_Request` | 2..2 | ionum: int16 |
| `xarm_msgs/srv/GetAnalogIO_Response` | `Ros2Xarm_msgsSrvGetAnalogIO_Response` | 10..266 | ret: int16; message: string text<=256B; data: float32 |
| `xarm_msgs/srv/GetDigitalIO_Request` | `Ros2Xarm_msgsSrvGetDigitalIO_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetDigitalIO_Response` | `Ros2Xarm_msgsSrvGetDigitalIO_Response` | 10..330 | ret: int16; message: string text<=256B; digitals: int16 sequence<=32 |
| `xarm_msgs/srv/GetFloat32_Request` | `Ros2Xarm_msgsSrvGetFloat32_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetFloat32_Response` | `Ros2Xarm_msgsSrvGetFloat32_Response` | 10..266 | ret: int16; message: string text<=256B; data: float32 |
| `xarm_msgs/srv/GetFloat32List_Request` | `Ros2Xarm_msgsSrvGetFloat32List_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetFloat32List_Response` | `Ros2Xarm_msgsSrvGetFloat32List_Response` | 10..394 | ret: int16; message: string text<=256B; datas: float32 sequence<=32 |
| `xarm_msgs/srv/GetInt16_Request` | `Ros2Xarm_msgsSrvGetInt16_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetInt16_Response` | `Ros2Xarm_msgsSrvGetInt16_Response` | 8..264 | ret: int16; message: string text<=256B; data: int16 |
| `xarm_msgs/srv/GetInt16List_Request` | `Ros2Xarm_msgsSrvGetInt16List_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetInt16List_Response` | `Ros2Xarm_msgsSrvGetInt16List_Response` | 10..330 | ret: int16; message: string text<=256B; datas: int16 sequence<=32 |
| `xarm_msgs/srv/GetInt32_Request` | `Ros2Xarm_msgsSrvGetInt32_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetInt32_Response` | `Ros2Xarm_msgsSrvGetInt32_Response` | 10..266 | ret: int16; message: string text<=256B; data: int32 |
| `xarm_msgs/srv/GetInt32ByType_Request` | `Ros2Xarm_msgsSrvGetInt32ByType_Request` | 2..2 | type: int16 |
| `xarm_msgs/srv/GetInt32ByType_Response` | `Ros2Xarm_msgsSrvGetInt32ByType_Response` | 10..266 | ret: int16; message: string text<=256B; data: int32 |
| `xarm_msgs/srv/GetSetModbusData_Request` | `Ros2Xarm_msgsSrvGetSetModbusData_Request` | 11..4107 | modbus_data: uint8 sequence<=4096; modbus_length: int16; ret_length: int16; host_id: uint8; is_transparent_transmission: bool; use_503_port: bool |
| `xarm_msgs/srv/GetSetModbusData_Response` | `Ros2Xarm_msgsSrvGetSetModbusData_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/GripperMove_Request` | `Ros2Xarm_msgsSrvGripperMove_Request` | 9..9 | pos: float32; wait: bool; timeout: float32 |
| `xarm_msgs/srv/GripperMove_Response` | `Ros2Xarm_msgsSrvGripperMove_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/IdenLoad_Request` | `Ros2Xarm_msgsSrvIdenLoad_Request` | 4..4 | estimated_mass: float32 |
| `xarm_msgs/srv/IdenLoad_Response` | `Ros2Xarm_msgsSrvIdenLoad_Response` | 10..394 | ret: int16; message: string text<=256B; datas: float32 sequence<=32 |
| `xarm_msgs/srv/LinearMotorBackOrigin_Request` | `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request` | 2..2 | wait: bool; auto_enable: bool |
| `xarm_msgs/srv/LinearMotorBackOrigin_Response` | `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/LinearMotorSetPos_Request` | `Ros2Xarm_msgsSrvLinearMotorSetPos_Request` | 10..10 | pos: int16; speed: int16; wait: bool; timeout: float32; auto_enable: bool |
| `xarm_msgs/srv/LinearMotorSetPos_Response` | `Ros2Xarm_msgsSrvLinearMotorSetPos_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/LinearTrackBackOrigin_Request` | `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request` | 2..2 | wait: bool; auto_enable: bool |
| `xarm_msgs/srv/LinearTrackBackOrigin_Response` | `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/LinearTrackSetPos_Request` | `Ros2Xarm_msgsSrvLinearTrackSetPos_Request` | 10..10 | pos: int16; speed: int16; wait: bool; timeout: float32; auto_enable: bool |
| `xarm_msgs/srv/LinearTrackSetPos_Response` | `Ros2Xarm_msgsSrvLinearTrackSetPos_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveCartesian_Request` | `Ros2Xarm_msgsSrvMoveCartesian_Request` | 28..156 | pose: float32 sequence<=32; speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32; radius: float32; is_tool_coord: bool; relative: bool; motion_type: uint8 |
| `xarm_msgs/srv/MoveCartesian_Response` | `Ros2Xarm_msgsSrvMoveCartesian_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveCircle_Request` | `Ros2Xarm_msgsSrvMoveCircle_Request` | 31..287 | pose1: float32 sequence<=32; pose2: float32 sequence<=32; percent: float32; speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32; is_tool_coord: bool; is_axis_angle: bool |
| `xarm_msgs/srv/MoveCircle_Response` | `Ros2Xarm_msgsSrvMoveCircle_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveHome_Request` | `Ros2Xarm_msgsSrvMoveHome_Request` | 17..17 | speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32 |
| `xarm_msgs/srv/MoveHome_Response` | `Ros2Xarm_msgsSrvMoveHome_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveJoint_Request` | `Ros2Xarm_msgsSrvMoveJoint_Request` | 26..154 | angles: float32 sequence<=32; speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32; radius: float32; relative: bool |
| `xarm_msgs/srv/MoveJoint_Response` | `Ros2Xarm_msgsSrvMoveJoint_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveVelocity_Request` | `Ros2Xarm_msgsSrvMoveVelocity_Request` | 10..138 | speeds: float32 sequence<=32; is_sync: bool; is_tool_coord: bool; duration: float32 |
| `xarm_msgs/srv/MoveVelocity_Response` | `Ros2Xarm_msgsSrvMoveVelocity_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/PlanExec_Request` | `Ros2Xarm_msgsSrvPlanExec_Request` | 1..1 | wait: bool |
| `xarm_msgs/srv/PlanExec_Response` | `Ros2Xarm_msgsSrvPlanExec_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/PlanJoint_Request` | `Ros2Xarm_msgsSrvPlanJoint_Request` | 4..260 | target: float64 sequence<=32 |
| `xarm_msgs/srv/PlanJoint_Response` | `Ros2Xarm_msgsSrvPlanJoint_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/PlanPose_Request` | `Ros2Xarm_msgsSrvPlanPose_Request` | 56..56 | target: geometry_msgs/msg/Pose |
| `xarm_msgs/srv/PlanPose_Response` | `Ros2Xarm_msgsSrvPlanPose_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/PlanSingleStraight_Request` | `Ros2Xarm_msgsSrvPlanSingleStraight_Request` | 56..56 | target: geometry_msgs/msg/Pose |
| `xarm_msgs/srv/PlanSingleStraight_Response` | `Ros2Xarm_msgsSrvPlanSingleStraight_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/RobotiqActivate_Request` | `Ros2Xarm_msgsSrvRobotiqActivate_Request` | 5..5 | wait: bool; timeout: float32 |
| `xarm_msgs/srv/RobotiqActivate_Response` | `Ros2Xarm_msgsSrvRobotiqActivate_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/RobotiqGetStatus_Request` | `Ros2Xarm_msgsSrvRobotiqGetStatus_Request` | 1..1 | number_of_registers: uint8 |
| `xarm_msgs/srv/RobotiqGetStatus_Response` | `Ros2Xarm_msgsSrvRobotiqGetStatus_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/RobotiqMove_Request` | `Ros2Xarm_msgsSrvRobotiqMove_Request` | 8..8 | pos: uint8; speed: uint8; force: uint8; wait: bool; timeout: float32 |
| `xarm_msgs/srv/RobotiqMove_Response` | `Ros2Xarm_msgsSrvRobotiqMove_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/RobotiqReset_Request` | `Ros2Xarm_msgsSrvRobotiqReset_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/RobotiqReset_Response` | `Ros2Xarm_msgsSrvRobotiqReset_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/SetAnalogIO_Request` | `Ros2Xarm_msgsSrvSetAnalogIO_Request` | 14..142 | ionum: int16; value: float32; xyz: float32 sequence<=32; tol_r: float32 |
| `xarm_msgs/srv/SetAnalogIO_Response` | `Ros2Xarm_msgsSrvSetAnalogIO_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetDigitalIO_Request` | `Ros2Xarm_msgsSrvSetDigitalIO_Request` | 16..144 | ionum: int16; value: int16; delay_sec: float32; xyz: float32 sequence<=32; tol_r: float32 |
| `xarm_msgs/srv/SetDigitalIO_Response` | `Ros2Xarm_msgsSrvSetDigitalIO_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetFloat32_Request` | `Ros2Xarm_msgsSrvSetFloat32_Request` | 4..4 | data: float32 |
| `xarm_msgs/srv/SetFloat32_Response` | `Ros2Xarm_msgsSrvSetFloat32_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetFloat32List_Request` | `Ros2Xarm_msgsSrvSetFloat32List_Request` | 4..132 | datas: float32 sequence<=32 |
| `xarm_msgs/srv/SetFloat32List_Response` | `Ros2Xarm_msgsSrvSetFloat32List_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt16_Request` | `Ros2Xarm_msgsSrvSetInt16_Request` | 2..2 | data: int16 |
| `xarm_msgs/srv/SetInt16_Response` | `Ros2Xarm_msgsSrvSetInt16_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt16ById_Request` | `Ros2Xarm_msgsSrvSetInt16ById_Request` | 4..4 | id: int16; data: int16 |
| `xarm_msgs/srv/SetInt16ById_Response` | `Ros2Xarm_msgsSrvSetInt16ById_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt16List_Request` | `Ros2Xarm_msgsSrvSetInt16List_Request` | 4..68 | datas: int16 sequence<=32 |
| `xarm_msgs/srv/SetInt16List_Response` | `Ros2Xarm_msgsSrvSetInt16List_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt32_Request` | `Ros2Xarm_msgsSrvSetInt32_Request` | 4..4 | data: int32 |
| `xarm_msgs/srv/SetInt32_Response` | `Ros2Xarm_msgsSrvSetInt32_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt32ByType_Request` | `Ros2Xarm_msgsSrvSetInt32ByType_Request` | 6..6 | type: int16; data: int32 |
| `xarm_msgs/srv/SetInt32ByType_Response` | `Ros2Xarm_msgsSrvSetInt32ByType_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetModbusTimeout_Request` | `Ros2Xarm_msgsSrvSetModbusTimeout_Request` | 5..5 | timeout: int32; is_transparent_transmission: bool |
| `xarm_msgs/srv/SetModbusTimeout_Response` | `Ros2Xarm_msgsSrvSetModbusTimeout_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetTcpLoad_Request` | `Ros2Xarm_msgsSrvSetTcpLoad_Request` | 8..136 | weight: float32; center_of_gravity: float32 sequence<=32 |
| `xarm_msgs/srv/SetTcpLoad_Response` | `Ros2Xarm_msgsSrvSetTcpLoad_Response` | 8..264 | ret: int32; message: string text<=256B |
| `xarm_msgs/srv/TrajCtrl_Request` | `Ros2Xarm_msgsSrvTrajCtrl_Request` | 8..264 | filename: string text<=256B; timeout: float32 |
| `xarm_msgs/srv/TrajCtrl_Response` | `Ros2Xarm_msgsSrvTrajCtrl_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/TrajPlay_Request` | `Ros2Xarm_msgsSrvTrajPlay_Request` | 9..265 | filename: string text<=256B; times: int16; double_speed: int16; wait: bool |
| `xarm_msgs/srv/TrajPlay_Response` | `Ros2Xarm_msgsSrvTrajPlay_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/VacuumGripperCtrl_Request` | `Ros2Xarm_msgsSrvVacuumGripperCtrl_Request` | 13..13 | on: bool; wait: bool; timeout: float32; delay_sec: float32; sync: bool; hardware_version: int16 |
| `xarm_msgs/srv/VacuumGripperCtrl_Response` | `Ros2Xarm_msgsSrvVacuumGripperCtrl_Response` | 6..262 | ret: int16; message: string text<=256B |

Interfaces:

- `builtin_interfaces/msg/Time` (message): message → `Ros2Builtin_interfacesMsgTime`
- `geometry_msgs/msg/Point` (message): message → `Ros2Geometry_msgsMsgPoint`
- `geometry_msgs/msg/Pose` (message): message → `Ros2Geometry_msgsMsgPose`
- `geometry_msgs/msg/Quaternion` (message): message → `Ros2Geometry_msgsMsgQuaternion`
- `std_msgs/msg/Header` (message): message → `Ros2Std_msgsMsgHeader`
- `xarm_msgs/msg/CIOState` (message): message → `Ros2Xarm_msgsMsgCIOState`
- `xarm_msgs/msg/IOState` (message): message → `Ros2Xarm_msgsMsgIOState`
- `xarm_msgs/msg/MoveVelocity` (message): message → `Ros2Xarm_msgsMsgMoveVelocity`
- `xarm_msgs/msg/RobotMsg` (message): message → `Ros2Xarm_msgsMsgRobotMsg`
- `xarm_msgs/srv/BioGripperCtrl` (service): request → `Ros2Xarm_msgsSrvBioGripperCtrl_Request`, response → `Ros2Xarm_msgsSrvBioGripperCtrl_Response`
- `xarm_msgs/srv/BioGripperEnable` (service): request → `Ros2Xarm_msgsSrvBioGripperEnable_Request`, response → `Ros2Xarm_msgsSrvBioGripperEnable_Response`
- `xarm_msgs/srv/Call` (service): request → `Ros2Xarm_msgsSrvCall_Request`, response → `Ros2Xarm_msgsSrvCall_Response`
- `xarm_msgs/srv/FtAdmittanceParams` (service): request → `Ros2Xarm_msgsSrvFtAdmittanceParams_Request`, response → `Ros2Xarm_msgsSrvFtAdmittanceParams_Response`
- `xarm_msgs/srv/FtCaliLoad` (service): request → `Ros2Xarm_msgsSrvFtCaliLoad_Request`, response → `Ros2Xarm_msgsSrvFtCaliLoad_Response`
- `xarm_msgs/srv/FtForceConfig` (service): request → `Ros2Xarm_msgsSrvFtForceConfig_Request`, response → `Ros2Xarm_msgsSrvFtForceConfig_Response`
- `xarm_msgs/srv/FtForceParams` (service): request → `Ros2Xarm_msgsSrvFtForceParams_Request`, response → `Ros2Xarm_msgsSrvFtForceParams_Response`
- `xarm_msgs/srv/FtForcePid` (service): request → `Ros2Xarm_msgsSrvFtForcePid_Request`, response → `Ros2Xarm_msgsSrvFtForcePid_Response`
- `xarm_msgs/srv/FtImpedance` (service): request → `Ros2Xarm_msgsSrvFtImpedance_Request`, response → `Ros2Xarm_msgsSrvFtImpedance_Response`
- `xarm_msgs/srv/GetAnalogIO` (service): request → `Ros2Xarm_msgsSrvGetAnalogIO_Request`, response → `Ros2Xarm_msgsSrvGetAnalogIO_Response`
- `xarm_msgs/srv/GetDigitalIO` (service): request → `Ros2Xarm_msgsSrvGetDigitalIO_Request`, response → `Ros2Xarm_msgsSrvGetDigitalIO_Response`
- `xarm_msgs/srv/GetFloat32` (service): request → `Ros2Xarm_msgsSrvGetFloat32_Request`, response → `Ros2Xarm_msgsSrvGetFloat32_Response`
- `xarm_msgs/srv/GetFloat32List` (service): request → `Ros2Xarm_msgsSrvGetFloat32List_Request`, response → `Ros2Xarm_msgsSrvGetFloat32List_Response`
- `xarm_msgs/srv/GetInt16` (service): request → `Ros2Xarm_msgsSrvGetInt16_Request`, response → `Ros2Xarm_msgsSrvGetInt16_Response`
- `xarm_msgs/srv/GetInt16List` (service): request → `Ros2Xarm_msgsSrvGetInt16List_Request`, response → `Ros2Xarm_msgsSrvGetInt16List_Response`
- `xarm_msgs/srv/GetInt32` (service): request → `Ros2Xarm_msgsSrvGetInt32_Request`, response → `Ros2Xarm_msgsSrvGetInt32_Response`
- `xarm_msgs/srv/GetInt32ByType` (service): request → `Ros2Xarm_msgsSrvGetInt32ByType_Request`, response → `Ros2Xarm_msgsSrvGetInt32ByType_Response`
- `xarm_msgs/srv/GetSetModbusData` (service): request → `Ros2Xarm_msgsSrvGetSetModbusData_Request`, response → `Ros2Xarm_msgsSrvGetSetModbusData_Response`
- `xarm_msgs/srv/GripperMove` (service): request → `Ros2Xarm_msgsSrvGripperMove_Request`, response → `Ros2Xarm_msgsSrvGripperMove_Response`
- `xarm_msgs/srv/IdenLoad` (service): request → `Ros2Xarm_msgsSrvIdenLoad_Request`, response → `Ros2Xarm_msgsSrvIdenLoad_Response`
- `xarm_msgs/srv/LinearMotorBackOrigin` (service): request → `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request`, response → `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response`
- `xarm_msgs/srv/LinearMotorSetPos` (service): request → `Ros2Xarm_msgsSrvLinearMotorSetPos_Request`, response → `Ros2Xarm_msgsSrvLinearMotorSetPos_Response`
- `xarm_msgs/srv/LinearTrackBackOrigin` (service): request → `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request`, response → `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response`
- `xarm_msgs/srv/LinearTrackSetPos` (service): request → `Ros2Xarm_msgsSrvLinearTrackSetPos_Request`, response → `Ros2Xarm_msgsSrvLinearTrackSetPos_Response`
- `xarm_msgs/srv/MoveCartesian` (service): request → `Ros2Xarm_msgsSrvMoveCartesian_Request`, response → `Ros2Xarm_msgsSrvMoveCartesian_Response`
- `xarm_msgs/srv/MoveCircle` (service): request → `Ros2Xarm_msgsSrvMoveCircle_Request`, response → `Ros2Xarm_msgsSrvMoveCircle_Response`
- `xarm_msgs/srv/MoveHome` (service): request → `Ros2Xarm_msgsSrvMoveHome_Request`, response → `Ros2Xarm_msgsSrvMoveHome_Response`
- `xarm_msgs/srv/MoveJoint` (service): request → `Ros2Xarm_msgsSrvMoveJoint_Request`, response → `Ros2Xarm_msgsSrvMoveJoint_Response`
- `xarm_msgs/srv/MoveVelocity` (service): request → `Ros2Xarm_msgsSrvMoveVelocity_Request`, response → `Ros2Xarm_msgsSrvMoveVelocity_Response`
- `xarm_msgs/srv/PlanExec` (service): request → `Ros2Xarm_msgsSrvPlanExec_Request`, response → `Ros2Xarm_msgsSrvPlanExec_Response`
- `xarm_msgs/srv/PlanJoint` (service): request → `Ros2Xarm_msgsSrvPlanJoint_Request`, response → `Ros2Xarm_msgsSrvPlanJoint_Response`
- `xarm_msgs/srv/PlanPose` (service): request → `Ros2Xarm_msgsSrvPlanPose_Request`, response → `Ros2Xarm_msgsSrvPlanPose_Response`
- `xarm_msgs/srv/PlanSingleStraight` (service): request → `Ros2Xarm_msgsSrvPlanSingleStraight_Request`, response → `Ros2Xarm_msgsSrvPlanSingleStraight_Response`
- `xarm_msgs/srv/RobotiqActivate` (service): request → `Ros2Xarm_msgsSrvRobotiqActivate_Request`, response → `Ros2Xarm_msgsSrvRobotiqActivate_Response`
- `xarm_msgs/srv/RobotiqGetStatus` (service): request → `Ros2Xarm_msgsSrvRobotiqGetStatus_Request`, response → `Ros2Xarm_msgsSrvRobotiqGetStatus_Response`
- `xarm_msgs/srv/RobotiqMove` (service): request → `Ros2Xarm_msgsSrvRobotiqMove_Request`, response → `Ros2Xarm_msgsSrvRobotiqMove_Response`
- `xarm_msgs/srv/RobotiqReset` (service): request → `Ros2Xarm_msgsSrvRobotiqReset_Request`, response → `Ros2Xarm_msgsSrvRobotiqReset_Response`
- `xarm_msgs/srv/SetAnalogIO` (service): request → `Ros2Xarm_msgsSrvSetAnalogIO_Request`, response → `Ros2Xarm_msgsSrvSetAnalogIO_Response`
- `xarm_msgs/srv/SetDigitalIO` (service): request → `Ros2Xarm_msgsSrvSetDigitalIO_Request`, response → `Ros2Xarm_msgsSrvSetDigitalIO_Response`
- `xarm_msgs/srv/SetFloat32` (service): request → `Ros2Xarm_msgsSrvSetFloat32_Request`, response → `Ros2Xarm_msgsSrvSetFloat32_Response`
- `xarm_msgs/srv/SetFloat32List` (service): request → `Ros2Xarm_msgsSrvSetFloat32List_Request`, response → `Ros2Xarm_msgsSrvSetFloat32List_Response`
- `xarm_msgs/srv/SetInt16` (service): request → `Ros2Xarm_msgsSrvSetInt16_Request`, response → `Ros2Xarm_msgsSrvSetInt16_Response`
- `xarm_msgs/srv/SetInt16ById` (service): request → `Ros2Xarm_msgsSrvSetInt16ById_Request`, response → `Ros2Xarm_msgsSrvSetInt16ById_Response`
- `xarm_msgs/srv/SetInt16List` (service): request → `Ros2Xarm_msgsSrvSetInt16List_Request`, response → `Ros2Xarm_msgsSrvSetInt16List_Response`
- `xarm_msgs/srv/SetInt32` (service): request → `Ros2Xarm_msgsSrvSetInt32_Request`, response → `Ros2Xarm_msgsSrvSetInt32_Response`
- `xarm_msgs/srv/SetInt32ByType` (service): request → `Ros2Xarm_msgsSrvSetInt32ByType_Request`, response → `Ros2Xarm_msgsSrvSetInt32ByType_Response`
- `xarm_msgs/srv/SetModbusTimeout` (service): request → `Ros2Xarm_msgsSrvSetModbusTimeout_Request`, response → `Ros2Xarm_msgsSrvSetModbusTimeout_Response`
- `xarm_msgs/srv/SetTcpLoad` (service): request → `Ros2Xarm_msgsSrvSetTcpLoad_Request`, response → `Ros2Xarm_msgsSrvSetTcpLoad_Response`
- `xarm_msgs/srv/TrajCtrl` (service): request → `Ros2Xarm_msgsSrvTrajCtrl_Request`, response → `Ros2Xarm_msgsSrvTrajCtrl_Response`
- `xarm_msgs/srv/TrajPlay` (service): request → `Ros2Xarm_msgsSrvTrajPlay_Request`, response → `Ros2Xarm_msgsSrvTrajPlay_Response`
- `xarm_msgs/srv/VacuumGripperCtrl` (service): request → `Ros2Xarm_msgsSrvVacuumGripperCtrl_Request`, response → `Ros2Xarm_msgsSrvVacuumGripperCtrl_Response`

Immutable upstream sources:

- [xArm-Developer/xarm_ros2 @ 8f1ee67368bb4c89dccb37f72c836e6e466b0a6f](https://github.com/xArm-Developer/xarm_ros2/tree/8f1ee67368bb4c89dccb37f72c836e6e466b0a6f)
- [ros2/common_interfaces @ 6356bc82f3a034f5d2c61c6760df0007a6cadfb0](https://github.com/ros2/common_interfaces/tree/6356bc82f3a034f5d2c61c6760df0007a6cadfb0)
- [ros2/rcl_interfaces @ ee04e046132be9d9fdcdaeff8dd54a5d0d9aa022](https://github.com/ros2/rcl_interfaces/tree/ee04e046132be9d9fdcdaeff8dd54a5d0d9aa022)

## ros2_galactic

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `builtin_interfaces/msg/Time` | `Ros2Builtin_interfacesMsgTime` | 8..8 | sec: int32; nanosec: uint32 |
| `geometry_msgs/msg/Point` | `Ros2Geometry_msgsMsgPoint` | 24..24 | x: float64; y: float64; z: float64 |
| `geometry_msgs/msg/Quaternion` | `Ros2Geometry_msgsMsgQuaternion` | 32..32 | x: float64; y: float64; z: float64; w: float64 |
| `geometry_msgs/msg/Pose` | `Ros2Geometry_msgsMsgPose` | 56..56 | position: geometry_msgs/msg/Point; orientation: geometry_msgs/msg/Quaternion |
| `std_msgs/msg/Header` | `Ros2Std_msgsMsgHeader` | 12..268 | stamp: builtin_interfaces/msg/Time; frame_id: string text<=256B |
| `xarm_msgs/msg/CIOState` | `Ros2Xarm_msgsMsgCIOState` | 72..328 | header: std_msgs/msg/Header; state: int16; code: int16; input_digitals: uint16[2]; output_digitals: uint16[2]; input_analogs: float32[2]; output_analogs: float32[2]; input_conf: uint8[16]; output_conf: uint8[16] |
| `xarm_msgs/msg/IOState` | `Ros2Xarm_msgsMsgIOState` | 16..16 | digital_1: int32; digital_2: int32; analog_1: float32; analog_2: float32 |
| `xarm_msgs/msg/MoveVelocity` | `Ros2Xarm_msgsMsgMoveVelocity` | 10..138 | speeds: float32 sequence<=32; is_sync: bool; is_tool_coord: bool; duration: float32 |
| `xarm_msgs/msg/RobotMsg` | `Ros2Xarm_msgsMsgRobotMsg` | 78..362 | header: std_msgs/msg/Header; state: int16; mode: int16; cmdnum: int16; mt_brake: int16; mt_able: int16; err: int16; warn: int16; angle: float32 sequence<=7; pose: float32[6]; offset: float32[6] |
| `xarm_msgs/srv/BioGripperCtrl_Request` | `Ros2Xarm_msgsSrvBioGripperCtrl_Request` | 7..7 | speed: int16; wait: bool; timeout: float32 |
| `xarm_msgs/srv/BioGripperCtrl_Response` | `Ros2Xarm_msgsSrvBioGripperCtrl_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/BioGripperEnable_Request` | `Ros2Xarm_msgsSrvBioGripperEnable_Request` | 6..6 | enable: bool; wait: bool; timeout: float32 |
| `xarm_msgs/srv/BioGripperEnable_Response` | `Ros2Xarm_msgsSrvBioGripperEnable_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/Call_Request` | `Ros2Xarm_msgsSrvCall_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/Call_Response` | `Ros2Xarm_msgsSrvCall_Response` | 8..264 | ret: int32; message: string text<=256B |
| `xarm_msgs/srv/FtAdmittanceParams_Request` | `Ros2Xarm_msgsSrvFtAdmittanceParams_Request` | 18..466 | coord: int16; c_axis: int16 sequence<=32; m: float32 sequence<=32; k: float32 sequence<=32; b: float32 sequence<=32 |
| `xarm_msgs/srv/FtAdmittanceParams_Response` | `Ros2Xarm_msgsSrvFtAdmittanceParams_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtCaliLoad_Request` | `Ros2Xarm_msgsSrvFtCaliLoad_Request` | 21..149 | datas: float32 sequence<=32; association_setting_tcp_load: bool; m: float32; x: float32; y: float32; z: float32 |
| `xarm_msgs/srv/FtCaliLoad_Response` | `Ros2Xarm_msgsSrvFtCaliLoad_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtForceConfig_Request` | `Ros2Xarm_msgsSrvFtForceConfig_Request` | 14..334 | coord: int16; c_axis: int16 sequence<=32; ref: float32 sequence<=32; limits: float32 sequence<=32 |
| `xarm_msgs/srv/FtForceConfig_Response` | `Ros2Xarm_msgsSrvFtForceConfig_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtForceParams_Request` | `Ros2Xarm_msgsSrvFtForceParams_Request` | 30..862 | coord: int16; c_axis: int16 sequence<=32; ref: float32 sequence<=32; limits: float32 sequence<=32; kp: float32 sequence<=32; ki: float32 sequence<=32; kd: float32 sequence<=32; xe_limit: float32 sequence<=32 |
| `xarm_msgs/srv/FtForceParams_Response` | `Ros2Xarm_msgsSrvFtForceParams_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtForcePid_Request` | `Ros2Xarm_msgsSrvFtForcePid_Request` | 16..528 | kp: float32 sequence<=32; ki: float32 sequence<=32; kd: float32 sequence<=32; xe_limit: float32 sequence<=32 |
| `xarm_msgs/srv/FtForcePid_Response` | `Ros2Xarm_msgsSrvFtForcePid_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtImpedance_Request` | `Ros2Xarm_msgsSrvFtImpedance_Request` | 18..466 | coord: int16; c_axis: int16 sequence<=32; m: float32 sequence<=32; k: float32 sequence<=32; b: float32 sequence<=32 |
| `xarm_msgs/srv/FtImpedance_Response` | `Ros2Xarm_msgsSrvFtImpedance_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/GetAnalogIO_Request` | `Ros2Xarm_msgsSrvGetAnalogIO_Request` | 2..2 | ionum: int16 |
| `xarm_msgs/srv/GetAnalogIO_Response` | `Ros2Xarm_msgsSrvGetAnalogIO_Response` | 10..266 | ret: int16; message: string text<=256B; data: float32 |
| `xarm_msgs/srv/GetDigitalIO_Request` | `Ros2Xarm_msgsSrvGetDigitalIO_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetDigitalIO_Response` | `Ros2Xarm_msgsSrvGetDigitalIO_Response` | 10..330 | ret: int16; message: string text<=256B; digitals: int16 sequence<=32 |
| `xarm_msgs/srv/GetFloat32_Request` | `Ros2Xarm_msgsSrvGetFloat32_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetFloat32_Response` | `Ros2Xarm_msgsSrvGetFloat32_Response` | 10..266 | ret: int16; message: string text<=256B; data: float32 |
| `xarm_msgs/srv/GetFloat32List_Request` | `Ros2Xarm_msgsSrvGetFloat32List_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetFloat32List_Response` | `Ros2Xarm_msgsSrvGetFloat32List_Response` | 10..394 | ret: int16; message: string text<=256B; datas: float32 sequence<=32 |
| `xarm_msgs/srv/GetInt16_Request` | `Ros2Xarm_msgsSrvGetInt16_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetInt16_Response` | `Ros2Xarm_msgsSrvGetInt16_Response` | 8..264 | ret: int16; message: string text<=256B; data: int16 |
| `xarm_msgs/srv/GetInt16List_Request` | `Ros2Xarm_msgsSrvGetInt16List_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetInt16List_Response` | `Ros2Xarm_msgsSrvGetInt16List_Response` | 10..330 | ret: int16; message: string text<=256B; datas: int16 sequence<=32 |
| `xarm_msgs/srv/GetInt32_Request` | `Ros2Xarm_msgsSrvGetInt32_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetInt32_Response` | `Ros2Xarm_msgsSrvGetInt32_Response` | 10..266 | ret: int16; message: string text<=256B; data: int32 |
| `xarm_msgs/srv/GetInt32ByType_Request` | `Ros2Xarm_msgsSrvGetInt32ByType_Request` | 2..2 | type: int16 |
| `xarm_msgs/srv/GetInt32ByType_Response` | `Ros2Xarm_msgsSrvGetInt32ByType_Response` | 10..266 | ret: int16; message: string text<=256B; data: int32 |
| `xarm_msgs/srv/GetSetModbusData_Request` | `Ros2Xarm_msgsSrvGetSetModbusData_Request` | 11..4107 | modbus_data: uint8 sequence<=4096; modbus_length: int16; ret_length: int16; host_id: uint8; is_transparent_transmission: bool; use_503_port: bool |
| `xarm_msgs/srv/GetSetModbusData_Response` | `Ros2Xarm_msgsSrvGetSetModbusData_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/GripperMove_Request` | `Ros2Xarm_msgsSrvGripperMove_Request` | 9..9 | pos: float32; wait: bool; timeout: float32 |
| `xarm_msgs/srv/GripperMove_Response` | `Ros2Xarm_msgsSrvGripperMove_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/IdenLoad_Request` | `Ros2Xarm_msgsSrvIdenLoad_Request` | 4..4 | estimated_mass: float32 |
| `xarm_msgs/srv/IdenLoad_Response` | `Ros2Xarm_msgsSrvIdenLoad_Response` | 10..394 | ret: int16; message: string text<=256B; datas: float32 sequence<=32 |
| `xarm_msgs/srv/LinearMotorBackOrigin_Request` | `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request` | 2..2 | wait: bool; auto_enable: bool |
| `xarm_msgs/srv/LinearMotorBackOrigin_Response` | `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/LinearMotorSetPos_Request` | `Ros2Xarm_msgsSrvLinearMotorSetPos_Request` | 10..10 | pos: int16; speed: int16; wait: bool; timeout: float32; auto_enable: bool |
| `xarm_msgs/srv/LinearMotorSetPos_Response` | `Ros2Xarm_msgsSrvLinearMotorSetPos_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/LinearTrackBackOrigin_Request` | `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request` | 2..2 | wait: bool; auto_enable: bool |
| `xarm_msgs/srv/LinearTrackBackOrigin_Response` | `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/LinearTrackSetPos_Request` | `Ros2Xarm_msgsSrvLinearTrackSetPos_Request` | 10..10 | pos: int16; speed: int16; wait: bool; timeout: float32; auto_enable: bool |
| `xarm_msgs/srv/LinearTrackSetPos_Response` | `Ros2Xarm_msgsSrvLinearTrackSetPos_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveCartesian_Request` | `Ros2Xarm_msgsSrvMoveCartesian_Request` | 28..156 | pose: float32 sequence<=32; speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32; radius: float32; is_tool_coord: bool; relative: bool; motion_type: uint8 |
| `xarm_msgs/srv/MoveCartesian_Response` | `Ros2Xarm_msgsSrvMoveCartesian_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveCircle_Request` | `Ros2Xarm_msgsSrvMoveCircle_Request` | 31..287 | pose1: float32 sequence<=32; pose2: float32 sequence<=32; percent: float32; speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32; is_tool_coord: bool; is_axis_angle: bool |
| `xarm_msgs/srv/MoveCircle_Response` | `Ros2Xarm_msgsSrvMoveCircle_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveHome_Request` | `Ros2Xarm_msgsSrvMoveHome_Request` | 17..17 | speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32 |
| `xarm_msgs/srv/MoveHome_Response` | `Ros2Xarm_msgsSrvMoveHome_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveJoint_Request` | `Ros2Xarm_msgsSrvMoveJoint_Request` | 26..154 | angles: float32 sequence<=32; speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32; radius: float32; relative: bool |
| `xarm_msgs/srv/MoveJoint_Response` | `Ros2Xarm_msgsSrvMoveJoint_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveVelocity_Request` | `Ros2Xarm_msgsSrvMoveVelocity_Request` | 10..138 | speeds: float32 sequence<=32; is_sync: bool; is_tool_coord: bool; duration: float32 |
| `xarm_msgs/srv/MoveVelocity_Response` | `Ros2Xarm_msgsSrvMoveVelocity_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/PlanExec_Request` | `Ros2Xarm_msgsSrvPlanExec_Request` | 1..1 | wait: bool |
| `xarm_msgs/srv/PlanExec_Response` | `Ros2Xarm_msgsSrvPlanExec_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/PlanJoint_Request` | `Ros2Xarm_msgsSrvPlanJoint_Request` | 4..260 | target: float64 sequence<=32 |
| `xarm_msgs/srv/PlanJoint_Response` | `Ros2Xarm_msgsSrvPlanJoint_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/PlanPose_Request` | `Ros2Xarm_msgsSrvPlanPose_Request` | 56..56 | target: geometry_msgs/msg/Pose |
| `xarm_msgs/srv/PlanPose_Response` | `Ros2Xarm_msgsSrvPlanPose_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/PlanSingleStraight_Request` | `Ros2Xarm_msgsSrvPlanSingleStraight_Request` | 56..56 | target: geometry_msgs/msg/Pose |
| `xarm_msgs/srv/PlanSingleStraight_Response` | `Ros2Xarm_msgsSrvPlanSingleStraight_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/RobotiqActivate_Request` | `Ros2Xarm_msgsSrvRobotiqActivate_Request` | 5..5 | wait: bool; timeout: float32 |
| `xarm_msgs/srv/RobotiqActivate_Response` | `Ros2Xarm_msgsSrvRobotiqActivate_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/RobotiqGetStatus_Request` | `Ros2Xarm_msgsSrvRobotiqGetStatus_Request` | 1..1 | number_of_registers: uint8 |
| `xarm_msgs/srv/RobotiqGetStatus_Response` | `Ros2Xarm_msgsSrvRobotiqGetStatus_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/RobotiqMove_Request` | `Ros2Xarm_msgsSrvRobotiqMove_Request` | 8..8 | pos: uint8; speed: uint8; force: uint8; wait: bool; timeout: float32 |
| `xarm_msgs/srv/RobotiqMove_Response` | `Ros2Xarm_msgsSrvRobotiqMove_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/RobotiqReset_Request` | `Ros2Xarm_msgsSrvRobotiqReset_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/RobotiqReset_Response` | `Ros2Xarm_msgsSrvRobotiqReset_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/SetAnalogIO_Request` | `Ros2Xarm_msgsSrvSetAnalogIO_Request` | 14..142 | ionum: int16; value: float32; xyz: float32 sequence<=32; tol_r: float32 |
| `xarm_msgs/srv/SetAnalogIO_Response` | `Ros2Xarm_msgsSrvSetAnalogIO_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetDigitalIO_Request` | `Ros2Xarm_msgsSrvSetDigitalIO_Request` | 16..144 | ionum: int16; value: int16; delay_sec: float32; xyz: float32 sequence<=32; tol_r: float32 |
| `xarm_msgs/srv/SetDigitalIO_Response` | `Ros2Xarm_msgsSrvSetDigitalIO_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetFloat32_Request` | `Ros2Xarm_msgsSrvSetFloat32_Request` | 4..4 | data: float32 |
| `xarm_msgs/srv/SetFloat32_Response` | `Ros2Xarm_msgsSrvSetFloat32_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetFloat32List_Request` | `Ros2Xarm_msgsSrvSetFloat32List_Request` | 4..132 | datas: float32 sequence<=32 |
| `xarm_msgs/srv/SetFloat32List_Response` | `Ros2Xarm_msgsSrvSetFloat32List_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt16_Request` | `Ros2Xarm_msgsSrvSetInt16_Request` | 2..2 | data: int16 |
| `xarm_msgs/srv/SetInt16_Response` | `Ros2Xarm_msgsSrvSetInt16_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt16ById_Request` | `Ros2Xarm_msgsSrvSetInt16ById_Request` | 4..4 | id: int16; data: int16 |
| `xarm_msgs/srv/SetInt16ById_Response` | `Ros2Xarm_msgsSrvSetInt16ById_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt16List_Request` | `Ros2Xarm_msgsSrvSetInt16List_Request` | 4..68 | datas: int16 sequence<=32 |
| `xarm_msgs/srv/SetInt16List_Response` | `Ros2Xarm_msgsSrvSetInt16List_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt32_Request` | `Ros2Xarm_msgsSrvSetInt32_Request` | 4..4 | data: int32 |
| `xarm_msgs/srv/SetInt32_Response` | `Ros2Xarm_msgsSrvSetInt32_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt32ByType_Request` | `Ros2Xarm_msgsSrvSetInt32ByType_Request` | 6..6 | type: int16; data: int32 |
| `xarm_msgs/srv/SetInt32ByType_Response` | `Ros2Xarm_msgsSrvSetInt32ByType_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetModbusTimeout_Request` | `Ros2Xarm_msgsSrvSetModbusTimeout_Request` | 5..5 | timeout: int32; is_transparent_transmission: bool |
| `xarm_msgs/srv/SetModbusTimeout_Response` | `Ros2Xarm_msgsSrvSetModbusTimeout_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetTcpLoad_Request` | `Ros2Xarm_msgsSrvSetTcpLoad_Request` | 8..136 | weight: float32; center_of_gravity: float32 sequence<=32 |
| `xarm_msgs/srv/SetTcpLoad_Response` | `Ros2Xarm_msgsSrvSetTcpLoad_Response` | 8..264 | ret: int32; message: string text<=256B |
| `xarm_msgs/srv/TrajCtrl_Request` | `Ros2Xarm_msgsSrvTrajCtrl_Request` | 8..264 | filename: string text<=256B; timeout: float32 |
| `xarm_msgs/srv/TrajCtrl_Response` | `Ros2Xarm_msgsSrvTrajCtrl_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/TrajPlay_Request` | `Ros2Xarm_msgsSrvTrajPlay_Request` | 9..265 | filename: string text<=256B; times: int16; double_speed: int16; wait: bool |
| `xarm_msgs/srv/TrajPlay_Response` | `Ros2Xarm_msgsSrvTrajPlay_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/VacuumGripperCtrl_Request` | `Ros2Xarm_msgsSrvVacuumGripperCtrl_Request` | 13..13 | on: bool; wait: bool; timeout: float32; delay_sec: float32; sync: bool; hardware_version: int16 |
| `xarm_msgs/srv/VacuumGripperCtrl_Response` | `Ros2Xarm_msgsSrvVacuumGripperCtrl_Response` | 6..262 | ret: int16; message: string text<=256B |

Interfaces:

- `builtin_interfaces/msg/Time` (message): message → `Ros2Builtin_interfacesMsgTime`
- `geometry_msgs/msg/Point` (message): message → `Ros2Geometry_msgsMsgPoint`
- `geometry_msgs/msg/Pose` (message): message → `Ros2Geometry_msgsMsgPose`
- `geometry_msgs/msg/Quaternion` (message): message → `Ros2Geometry_msgsMsgQuaternion`
- `std_msgs/msg/Header` (message): message → `Ros2Std_msgsMsgHeader`
- `xarm_msgs/msg/CIOState` (message): message → `Ros2Xarm_msgsMsgCIOState`
- `xarm_msgs/msg/IOState` (message): message → `Ros2Xarm_msgsMsgIOState`
- `xarm_msgs/msg/MoveVelocity` (message): message → `Ros2Xarm_msgsMsgMoveVelocity`
- `xarm_msgs/msg/RobotMsg` (message): message → `Ros2Xarm_msgsMsgRobotMsg`
- `xarm_msgs/srv/BioGripperCtrl` (service): request → `Ros2Xarm_msgsSrvBioGripperCtrl_Request`, response → `Ros2Xarm_msgsSrvBioGripperCtrl_Response`
- `xarm_msgs/srv/BioGripperEnable` (service): request → `Ros2Xarm_msgsSrvBioGripperEnable_Request`, response → `Ros2Xarm_msgsSrvBioGripperEnable_Response`
- `xarm_msgs/srv/Call` (service): request → `Ros2Xarm_msgsSrvCall_Request`, response → `Ros2Xarm_msgsSrvCall_Response`
- `xarm_msgs/srv/FtAdmittanceParams` (service): request → `Ros2Xarm_msgsSrvFtAdmittanceParams_Request`, response → `Ros2Xarm_msgsSrvFtAdmittanceParams_Response`
- `xarm_msgs/srv/FtCaliLoad` (service): request → `Ros2Xarm_msgsSrvFtCaliLoad_Request`, response → `Ros2Xarm_msgsSrvFtCaliLoad_Response`
- `xarm_msgs/srv/FtForceConfig` (service): request → `Ros2Xarm_msgsSrvFtForceConfig_Request`, response → `Ros2Xarm_msgsSrvFtForceConfig_Response`
- `xarm_msgs/srv/FtForceParams` (service): request → `Ros2Xarm_msgsSrvFtForceParams_Request`, response → `Ros2Xarm_msgsSrvFtForceParams_Response`
- `xarm_msgs/srv/FtForcePid` (service): request → `Ros2Xarm_msgsSrvFtForcePid_Request`, response → `Ros2Xarm_msgsSrvFtForcePid_Response`
- `xarm_msgs/srv/FtImpedance` (service): request → `Ros2Xarm_msgsSrvFtImpedance_Request`, response → `Ros2Xarm_msgsSrvFtImpedance_Response`
- `xarm_msgs/srv/GetAnalogIO` (service): request → `Ros2Xarm_msgsSrvGetAnalogIO_Request`, response → `Ros2Xarm_msgsSrvGetAnalogIO_Response`
- `xarm_msgs/srv/GetDigitalIO` (service): request → `Ros2Xarm_msgsSrvGetDigitalIO_Request`, response → `Ros2Xarm_msgsSrvGetDigitalIO_Response`
- `xarm_msgs/srv/GetFloat32` (service): request → `Ros2Xarm_msgsSrvGetFloat32_Request`, response → `Ros2Xarm_msgsSrvGetFloat32_Response`
- `xarm_msgs/srv/GetFloat32List` (service): request → `Ros2Xarm_msgsSrvGetFloat32List_Request`, response → `Ros2Xarm_msgsSrvGetFloat32List_Response`
- `xarm_msgs/srv/GetInt16` (service): request → `Ros2Xarm_msgsSrvGetInt16_Request`, response → `Ros2Xarm_msgsSrvGetInt16_Response`
- `xarm_msgs/srv/GetInt16List` (service): request → `Ros2Xarm_msgsSrvGetInt16List_Request`, response → `Ros2Xarm_msgsSrvGetInt16List_Response`
- `xarm_msgs/srv/GetInt32` (service): request → `Ros2Xarm_msgsSrvGetInt32_Request`, response → `Ros2Xarm_msgsSrvGetInt32_Response`
- `xarm_msgs/srv/GetInt32ByType` (service): request → `Ros2Xarm_msgsSrvGetInt32ByType_Request`, response → `Ros2Xarm_msgsSrvGetInt32ByType_Response`
- `xarm_msgs/srv/GetSetModbusData` (service): request → `Ros2Xarm_msgsSrvGetSetModbusData_Request`, response → `Ros2Xarm_msgsSrvGetSetModbusData_Response`
- `xarm_msgs/srv/GripperMove` (service): request → `Ros2Xarm_msgsSrvGripperMove_Request`, response → `Ros2Xarm_msgsSrvGripperMove_Response`
- `xarm_msgs/srv/IdenLoad` (service): request → `Ros2Xarm_msgsSrvIdenLoad_Request`, response → `Ros2Xarm_msgsSrvIdenLoad_Response`
- `xarm_msgs/srv/LinearMotorBackOrigin` (service): request → `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request`, response → `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response`
- `xarm_msgs/srv/LinearMotorSetPos` (service): request → `Ros2Xarm_msgsSrvLinearMotorSetPos_Request`, response → `Ros2Xarm_msgsSrvLinearMotorSetPos_Response`
- `xarm_msgs/srv/LinearTrackBackOrigin` (service): request → `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request`, response → `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response`
- `xarm_msgs/srv/LinearTrackSetPos` (service): request → `Ros2Xarm_msgsSrvLinearTrackSetPos_Request`, response → `Ros2Xarm_msgsSrvLinearTrackSetPos_Response`
- `xarm_msgs/srv/MoveCartesian` (service): request → `Ros2Xarm_msgsSrvMoveCartesian_Request`, response → `Ros2Xarm_msgsSrvMoveCartesian_Response`
- `xarm_msgs/srv/MoveCircle` (service): request → `Ros2Xarm_msgsSrvMoveCircle_Request`, response → `Ros2Xarm_msgsSrvMoveCircle_Response`
- `xarm_msgs/srv/MoveHome` (service): request → `Ros2Xarm_msgsSrvMoveHome_Request`, response → `Ros2Xarm_msgsSrvMoveHome_Response`
- `xarm_msgs/srv/MoveJoint` (service): request → `Ros2Xarm_msgsSrvMoveJoint_Request`, response → `Ros2Xarm_msgsSrvMoveJoint_Response`
- `xarm_msgs/srv/MoveVelocity` (service): request → `Ros2Xarm_msgsSrvMoveVelocity_Request`, response → `Ros2Xarm_msgsSrvMoveVelocity_Response`
- `xarm_msgs/srv/PlanExec` (service): request → `Ros2Xarm_msgsSrvPlanExec_Request`, response → `Ros2Xarm_msgsSrvPlanExec_Response`
- `xarm_msgs/srv/PlanJoint` (service): request → `Ros2Xarm_msgsSrvPlanJoint_Request`, response → `Ros2Xarm_msgsSrvPlanJoint_Response`
- `xarm_msgs/srv/PlanPose` (service): request → `Ros2Xarm_msgsSrvPlanPose_Request`, response → `Ros2Xarm_msgsSrvPlanPose_Response`
- `xarm_msgs/srv/PlanSingleStraight` (service): request → `Ros2Xarm_msgsSrvPlanSingleStraight_Request`, response → `Ros2Xarm_msgsSrvPlanSingleStraight_Response`
- `xarm_msgs/srv/RobotiqActivate` (service): request → `Ros2Xarm_msgsSrvRobotiqActivate_Request`, response → `Ros2Xarm_msgsSrvRobotiqActivate_Response`
- `xarm_msgs/srv/RobotiqGetStatus` (service): request → `Ros2Xarm_msgsSrvRobotiqGetStatus_Request`, response → `Ros2Xarm_msgsSrvRobotiqGetStatus_Response`
- `xarm_msgs/srv/RobotiqMove` (service): request → `Ros2Xarm_msgsSrvRobotiqMove_Request`, response → `Ros2Xarm_msgsSrvRobotiqMove_Response`
- `xarm_msgs/srv/RobotiqReset` (service): request → `Ros2Xarm_msgsSrvRobotiqReset_Request`, response → `Ros2Xarm_msgsSrvRobotiqReset_Response`
- `xarm_msgs/srv/SetAnalogIO` (service): request → `Ros2Xarm_msgsSrvSetAnalogIO_Request`, response → `Ros2Xarm_msgsSrvSetAnalogIO_Response`
- `xarm_msgs/srv/SetDigitalIO` (service): request → `Ros2Xarm_msgsSrvSetDigitalIO_Request`, response → `Ros2Xarm_msgsSrvSetDigitalIO_Response`
- `xarm_msgs/srv/SetFloat32` (service): request → `Ros2Xarm_msgsSrvSetFloat32_Request`, response → `Ros2Xarm_msgsSrvSetFloat32_Response`
- `xarm_msgs/srv/SetFloat32List` (service): request → `Ros2Xarm_msgsSrvSetFloat32List_Request`, response → `Ros2Xarm_msgsSrvSetFloat32List_Response`
- `xarm_msgs/srv/SetInt16` (service): request → `Ros2Xarm_msgsSrvSetInt16_Request`, response → `Ros2Xarm_msgsSrvSetInt16_Response`
- `xarm_msgs/srv/SetInt16ById` (service): request → `Ros2Xarm_msgsSrvSetInt16ById_Request`, response → `Ros2Xarm_msgsSrvSetInt16ById_Response`
- `xarm_msgs/srv/SetInt16List` (service): request → `Ros2Xarm_msgsSrvSetInt16List_Request`, response → `Ros2Xarm_msgsSrvSetInt16List_Response`
- `xarm_msgs/srv/SetInt32` (service): request → `Ros2Xarm_msgsSrvSetInt32_Request`, response → `Ros2Xarm_msgsSrvSetInt32_Response`
- `xarm_msgs/srv/SetInt32ByType` (service): request → `Ros2Xarm_msgsSrvSetInt32ByType_Request`, response → `Ros2Xarm_msgsSrvSetInt32ByType_Response`
- `xarm_msgs/srv/SetModbusTimeout` (service): request → `Ros2Xarm_msgsSrvSetModbusTimeout_Request`, response → `Ros2Xarm_msgsSrvSetModbusTimeout_Response`
- `xarm_msgs/srv/SetTcpLoad` (service): request → `Ros2Xarm_msgsSrvSetTcpLoad_Request`, response → `Ros2Xarm_msgsSrvSetTcpLoad_Response`
- `xarm_msgs/srv/TrajCtrl` (service): request → `Ros2Xarm_msgsSrvTrajCtrl_Request`, response → `Ros2Xarm_msgsSrvTrajCtrl_Response`
- `xarm_msgs/srv/TrajPlay` (service): request → `Ros2Xarm_msgsSrvTrajPlay_Request`, response → `Ros2Xarm_msgsSrvTrajPlay_Response`
- `xarm_msgs/srv/VacuumGripperCtrl` (service): request → `Ros2Xarm_msgsSrvVacuumGripperCtrl_Request`, response → `Ros2Xarm_msgsSrvVacuumGripperCtrl_Response`

Immutable upstream sources:

- [xArm-Developer/xarm_ros2 @ c7d0cc84a79909d5e782484db5c79505fcffe414](https://github.com/xArm-Developer/xarm_ros2/tree/c7d0cc84a79909d5e782484db5c79505fcffe414)
- [ros2/common_interfaces @ 969a56b0b59f7f70b5c4561185ea34aaa2b74e1d](https://github.com/ros2/common_interfaces/tree/969a56b0b59f7f70b5c4561185ea34aaa2b74e1d)
- [ros2/rcl_interfaces @ c5d0a20150533a6cb93d5dcbd6e27cea9300aa6e](https://github.com/ros2/rcl_interfaces/tree/c5d0a20150533a6cb93d5dcbd6e27cea9300aa6e)

## ros2_humble

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `builtin_interfaces/msg/Time` | `Ros2Builtin_interfacesMsgTime` | 8..8 | sec: int32; nanosec: uint32 |
| `geometry_msgs/msg/Point` | `Ros2Geometry_msgsMsgPoint` | 24..24 | x: float64; y: float64; z: float64 |
| `geometry_msgs/msg/Quaternion` | `Ros2Geometry_msgsMsgQuaternion` | 32..32 | x: float64; y: float64; z: float64; w: float64 |
| `geometry_msgs/msg/Pose` | `Ros2Geometry_msgsMsgPose` | 56..56 | position: geometry_msgs/msg/Point; orientation: geometry_msgs/msg/Quaternion |
| `std_msgs/msg/Header` | `Ros2Std_msgsMsgHeader` | 12..268 | stamp: builtin_interfaces/msg/Time; frame_id: string text<=256B |
| `xarm_msgs/msg/CIOState` | `Ros2Xarm_msgsMsgCIOState` | 72..328 | header: std_msgs/msg/Header; state: int16; code: int16; input_digitals: uint16[2]; output_digitals: uint16[2]; input_analogs: float32[2]; output_analogs: float32[2]; input_conf: uint8[16]; output_conf: uint8[16] |
| `xarm_msgs/msg/IOState` | `Ros2Xarm_msgsMsgIOState` | 16..16 | digital_1: int32; digital_2: int32; analog_1: float32; analog_2: float32 |
| `xarm_msgs/msg/MoveVelocity` | `Ros2Xarm_msgsMsgMoveVelocity` | 10..138 | speeds: float32 sequence<=32; is_sync: bool; is_tool_coord: bool; duration: float32 |
| `xarm_msgs/msg/RobotMsg` | `Ros2Xarm_msgsMsgRobotMsg` | 78..362 | header: std_msgs/msg/Header; state: int16; mode: int16; cmdnum: int16; mt_brake: int16; mt_able: int16; err: int16; warn: int16; angle: float32 sequence<=7; pose: float32[6]; offset: float32[6] |
| `xarm_msgs/srv/BioGripperCtrl_Request` | `Ros2Xarm_msgsSrvBioGripperCtrl_Request` | 7..7 | speed: int16; wait: bool; timeout: float32 |
| `xarm_msgs/srv/BioGripperCtrl_Response` | `Ros2Xarm_msgsSrvBioGripperCtrl_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/BioGripperEnable_Request` | `Ros2Xarm_msgsSrvBioGripperEnable_Request` | 6..6 | enable: bool; wait: bool; timeout: float32 |
| `xarm_msgs/srv/BioGripperEnable_Response` | `Ros2Xarm_msgsSrvBioGripperEnable_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/Call_Request` | `Ros2Xarm_msgsSrvCall_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/Call_Response` | `Ros2Xarm_msgsSrvCall_Response` | 8..264 | ret: int32; message: string text<=256B |
| `xarm_msgs/srv/FtAdmittanceParams_Request` | `Ros2Xarm_msgsSrvFtAdmittanceParams_Request` | 18..466 | coord: int16; c_axis: int16 sequence<=32; m: float32 sequence<=32; k: float32 sequence<=32; b: float32 sequence<=32 |
| `xarm_msgs/srv/FtAdmittanceParams_Response` | `Ros2Xarm_msgsSrvFtAdmittanceParams_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtCaliLoad_Request` | `Ros2Xarm_msgsSrvFtCaliLoad_Request` | 21..149 | datas: float32 sequence<=32; association_setting_tcp_load: bool; m: float32; x: float32; y: float32; z: float32 |
| `xarm_msgs/srv/FtCaliLoad_Response` | `Ros2Xarm_msgsSrvFtCaliLoad_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtForceConfig_Request` | `Ros2Xarm_msgsSrvFtForceConfig_Request` | 14..334 | coord: int16; c_axis: int16 sequence<=32; ref: float32 sequence<=32; limits: float32 sequence<=32 |
| `xarm_msgs/srv/FtForceConfig_Response` | `Ros2Xarm_msgsSrvFtForceConfig_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtForceParams_Request` | `Ros2Xarm_msgsSrvFtForceParams_Request` | 30..862 | coord: int16; c_axis: int16 sequence<=32; ref: float32 sequence<=32; limits: float32 sequence<=32; kp: float32 sequence<=32; ki: float32 sequence<=32; kd: float32 sequence<=32; xe_limit: float32 sequence<=32 |
| `xarm_msgs/srv/FtForceParams_Response` | `Ros2Xarm_msgsSrvFtForceParams_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtForcePid_Request` | `Ros2Xarm_msgsSrvFtForcePid_Request` | 16..528 | kp: float32 sequence<=32; ki: float32 sequence<=32; kd: float32 sequence<=32; xe_limit: float32 sequence<=32 |
| `xarm_msgs/srv/FtForcePid_Response` | `Ros2Xarm_msgsSrvFtForcePid_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtImpedance_Request` | `Ros2Xarm_msgsSrvFtImpedance_Request` | 18..466 | coord: int16; c_axis: int16 sequence<=32; m: float32 sequence<=32; k: float32 sequence<=32; b: float32 sequence<=32 |
| `xarm_msgs/srv/FtImpedance_Response` | `Ros2Xarm_msgsSrvFtImpedance_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/GetAnalogIO_Request` | `Ros2Xarm_msgsSrvGetAnalogIO_Request` | 2..2 | ionum: int16 |
| `xarm_msgs/srv/GetAnalogIO_Response` | `Ros2Xarm_msgsSrvGetAnalogIO_Response` | 10..266 | ret: int16; message: string text<=256B; data: float32 |
| `xarm_msgs/srv/GetDigitalIO_Request` | `Ros2Xarm_msgsSrvGetDigitalIO_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetDigitalIO_Response` | `Ros2Xarm_msgsSrvGetDigitalIO_Response` | 10..330 | ret: int16; message: string text<=256B; digitals: int16 sequence<=32 |
| `xarm_msgs/srv/GetFloat32_Request` | `Ros2Xarm_msgsSrvGetFloat32_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetFloat32_Response` | `Ros2Xarm_msgsSrvGetFloat32_Response` | 10..266 | ret: int16; message: string text<=256B; data: float32 |
| `xarm_msgs/srv/GetFloat32List_Request` | `Ros2Xarm_msgsSrvGetFloat32List_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetFloat32List_Response` | `Ros2Xarm_msgsSrvGetFloat32List_Response` | 10..394 | ret: int16; message: string text<=256B; datas: float32 sequence<=32 |
| `xarm_msgs/srv/GetInt16_Request` | `Ros2Xarm_msgsSrvGetInt16_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetInt16_Response` | `Ros2Xarm_msgsSrvGetInt16_Response` | 8..264 | ret: int16; message: string text<=256B; data: int16 |
| `xarm_msgs/srv/GetInt16List_Request` | `Ros2Xarm_msgsSrvGetInt16List_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetInt16List_Response` | `Ros2Xarm_msgsSrvGetInt16List_Response` | 10..330 | ret: int16; message: string text<=256B; datas: int16 sequence<=32 |
| `xarm_msgs/srv/GetInt32_Request` | `Ros2Xarm_msgsSrvGetInt32_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetInt32_Response` | `Ros2Xarm_msgsSrvGetInt32_Response` | 10..266 | ret: int16; message: string text<=256B; data: int32 |
| `xarm_msgs/srv/GetInt32ByType_Request` | `Ros2Xarm_msgsSrvGetInt32ByType_Request` | 2..2 | type: int16 |
| `xarm_msgs/srv/GetInt32ByType_Response` | `Ros2Xarm_msgsSrvGetInt32ByType_Response` | 10..266 | ret: int16; message: string text<=256B; data: int32 |
| `xarm_msgs/srv/GetSetModbusData_Request` | `Ros2Xarm_msgsSrvGetSetModbusData_Request` | 11..4107 | modbus_data: uint8 sequence<=4096; modbus_length: int16; ret_length: int16; host_id: uint8; is_transparent_transmission: bool; use_503_port: bool |
| `xarm_msgs/srv/GetSetModbusData_Response` | `Ros2Xarm_msgsSrvGetSetModbusData_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/GripperMove_Request` | `Ros2Xarm_msgsSrvGripperMove_Request` | 9..9 | pos: float32; wait: bool; timeout: float32 |
| `xarm_msgs/srv/GripperMove_Response` | `Ros2Xarm_msgsSrvGripperMove_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/IdenLoad_Request` | `Ros2Xarm_msgsSrvIdenLoad_Request` | 4..4 | estimated_mass: float32 |
| `xarm_msgs/srv/IdenLoad_Response` | `Ros2Xarm_msgsSrvIdenLoad_Response` | 10..394 | ret: int16; message: string text<=256B; datas: float32 sequence<=32 |
| `xarm_msgs/srv/LinearMotorBackOrigin_Request` | `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request` | 2..2 | wait: bool; auto_enable: bool |
| `xarm_msgs/srv/LinearMotorBackOrigin_Response` | `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/LinearMotorSetPos_Request` | `Ros2Xarm_msgsSrvLinearMotorSetPos_Request` | 10..10 | pos: int16; speed: int16; wait: bool; timeout: float32; auto_enable: bool |
| `xarm_msgs/srv/LinearMotorSetPos_Response` | `Ros2Xarm_msgsSrvLinearMotorSetPos_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/LinearTrackBackOrigin_Request` | `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request` | 2..2 | wait: bool; auto_enable: bool |
| `xarm_msgs/srv/LinearTrackBackOrigin_Response` | `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/LinearTrackSetPos_Request` | `Ros2Xarm_msgsSrvLinearTrackSetPos_Request` | 10..10 | pos: int16; speed: int16; wait: bool; timeout: float32; auto_enable: bool |
| `xarm_msgs/srv/LinearTrackSetPos_Response` | `Ros2Xarm_msgsSrvLinearTrackSetPos_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveCartesian_Request` | `Ros2Xarm_msgsSrvMoveCartesian_Request` | 28..156 | pose: float32 sequence<=32; speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32; radius: float32; is_tool_coord: bool; relative: bool; motion_type: uint8 |
| `xarm_msgs/srv/MoveCartesian_Response` | `Ros2Xarm_msgsSrvMoveCartesian_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveCircle_Request` | `Ros2Xarm_msgsSrvMoveCircle_Request` | 31..287 | pose1: float32 sequence<=32; pose2: float32 sequence<=32; percent: float32; speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32; is_tool_coord: bool; is_axis_angle: bool |
| `xarm_msgs/srv/MoveCircle_Response` | `Ros2Xarm_msgsSrvMoveCircle_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveHome_Request` | `Ros2Xarm_msgsSrvMoveHome_Request` | 17..17 | speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32 |
| `xarm_msgs/srv/MoveHome_Response` | `Ros2Xarm_msgsSrvMoveHome_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveJoint_Request` | `Ros2Xarm_msgsSrvMoveJoint_Request` | 26..154 | angles: float32 sequence<=32; speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32; radius: float32; relative: bool |
| `xarm_msgs/srv/MoveJoint_Response` | `Ros2Xarm_msgsSrvMoveJoint_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveVelocity_Request` | `Ros2Xarm_msgsSrvMoveVelocity_Request` | 10..138 | speeds: float32 sequence<=32; is_sync: bool; is_tool_coord: bool; duration: float32 |
| `xarm_msgs/srv/MoveVelocity_Response` | `Ros2Xarm_msgsSrvMoveVelocity_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/PlanExec_Request` | `Ros2Xarm_msgsSrvPlanExec_Request` | 1..1 | wait: bool |
| `xarm_msgs/srv/PlanExec_Response` | `Ros2Xarm_msgsSrvPlanExec_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/PlanJoint_Request` | `Ros2Xarm_msgsSrvPlanJoint_Request` | 4..260 | target: float64 sequence<=32 |
| `xarm_msgs/srv/PlanJoint_Response` | `Ros2Xarm_msgsSrvPlanJoint_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/PlanPose_Request` | `Ros2Xarm_msgsSrvPlanPose_Request` | 56..56 | target: geometry_msgs/msg/Pose |
| `xarm_msgs/srv/PlanPose_Response` | `Ros2Xarm_msgsSrvPlanPose_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/PlanSingleStraight_Request` | `Ros2Xarm_msgsSrvPlanSingleStraight_Request` | 56..56 | target: geometry_msgs/msg/Pose |
| `xarm_msgs/srv/PlanSingleStraight_Response` | `Ros2Xarm_msgsSrvPlanSingleStraight_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/RobotiqActivate_Request` | `Ros2Xarm_msgsSrvRobotiqActivate_Request` | 5..5 | wait: bool; timeout: float32 |
| `xarm_msgs/srv/RobotiqActivate_Response` | `Ros2Xarm_msgsSrvRobotiqActivate_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/RobotiqGetStatus_Request` | `Ros2Xarm_msgsSrvRobotiqGetStatus_Request` | 1..1 | number_of_registers: uint8 |
| `xarm_msgs/srv/RobotiqGetStatus_Response` | `Ros2Xarm_msgsSrvRobotiqGetStatus_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/RobotiqMove_Request` | `Ros2Xarm_msgsSrvRobotiqMove_Request` | 8..8 | pos: uint8; speed: uint8; force: uint8; wait: bool; timeout: float32 |
| `xarm_msgs/srv/RobotiqMove_Response` | `Ros2Xarm_msgsSrvRobotiqMove_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/RobotiqReset_Request` | `Ros2Xarm_msgsSrvRobotiqReset_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/RobotiqReset_Response` | `Ros2Xarm_msgsSrvRobotiqReset_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/SetAnalogIO_Request` | `Ros2Xarm_msgsSrvSetAnalogIO_Request` | 14..142 | ionum: int16; value: float32; xyz: float32 sequence<=32; tol_r: float32 |
| `xarm_msgs/srv/SetAnalogIO_Response` | `Ros2Xarm_msgsSrvSetAnalogIO_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetDigitalIO_Request` | `Ros2Xarm_msgsSrvSetDigitalIO_Request` | 16..144 | ionum: int16; value: int16; delay_sec: float32; xyz: float32 sequence<=32; tol_r: float32 |
| `xarm_msgs/srv/SetDigitalIO_Response` | `Ros2Xarm_msgsSrvSetDigitalIO_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetFloat32_Request` | `Ros2Xarm_msgsSrvSetFloat32_Request` | 4..4 | data: float32 |
| `xarm_msgs/srv/SetFloat32_Response` | `Ros2Xarm_msgsSrvSetFloat32_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetFloat32List_Request` | `Ros2Xarm_msgsSrvSetFloat32List_Request` | 4..132 | datas: float32 sequence<=32 |
| `xarm_msgs/srv/SetFloat32List_Response` | `Ros2Xarm_msgsSrvSetFloat32List_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt16_Request` | `Ros2Xarm_msgsSrvSetInt16_Request` | 2..2 | data: int16 |
| `xarm_msgs/srv/SetInt16_Response` | `Ros2Xarm_msgsSrvSetInt16_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt16ById_Request` | `Ros2Xarm_msgsSrvSetInt16ById_Request` | 4..4 | id: int16; data: int16 |
| `xarm_msgs/srv/SetInt16ById_Response` | `Ros2Xarm_msgsSrvSetInt16ById_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt16List_Request` | `Ros2Xarm_msgsSrvSetInt16List_Request` | 4..68 | datas: int16 sequence<=32 |
| `xarm_msgs/srv/SetInt16List_Response` | `Ros2Xarm_msgsSrvSetInt16List_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt32_Request` | `Ros2Xarm_msgsSrvSetInt32_Request` | 4..4 | data: int32 |
| `xarm_msgs/srv/SetInt32_Response` | `Ros2Xarm_msgsSrvSetInt32_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt32ByType_Request` | `Ros2Xarm_msgsSrvSetInt32ByType_Request` | 6..6 | type: int16; data: int32 |
| `xarm_msgs/srv/SetInt32ByType_Response` | `Ros2Xarm_msgsSrvSetInt32ByType_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetModbusTimeout_Request` | `Ros2Xarm_msgsSrvSetModbusTimeout_Request` | 5..5 | timeout: int32; is_transparent_transmission: bool |
| `xarm_msgs/srv/SetModbusTimeout_Response` | `Ros2Xarm_msgsSrvSetModbusTimeout_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetTcpLoad_Request` | `Ros2Xarm_msgsSrvSetTcpLoad_Request` | 8..136 | weight: float32; center_of_gravity: float32 sequence<=32 |
| `xarm_msgs/srv/SetTcpLoad_Response` | `Ros2Xarm_msgsSrvSetTcpLoad_Response` | 8..264 | ret: int32; message: string text<=256B |
| `xarm_msgs/srv/TrajCtrl_Request` | `Ros2Xarm_msgsSrvTrajCtrl_Request` | 8..264 | filename: string text<=256B; timeout: float32 |
| `xarm_msgs/srv/TrajCtrl_Response` | `Ros2Xarm_msgsSrvTrajCtrl_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/TrajPlay_Request` | `Ros2Xarm_msgsSrvTrajPlay_Request` | 9..265 | filename: string text<=256B; times: int16; double_speed: int16; wait: bool |
| `xarm_msgs/srv/TrajPlay_Response` | `Ros2Xarm_msgsSrvTrajPlay_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/VacuumGripperCtrl_Request` | `Ros2Xarm_msgsSrvVacuumGripperCtrl_Request` | 13..13 | on: bool; wait: bool; timeout: float32; delay_sec: float32; sync: bool; hardware_version: int16 |
| `xarm_msgs/srv/VacuumGripperCtrl_Response` | `Ros2Xarm_msgsSrvVacuumGripperCtrl_Response` | 6..262 | ret: int16; message: string text<=256B |

Interfaces:

- `builtin_interfaces/msg/Time` (message): message → `Ros2Builtin_interfacesMsgTime`
- `geometry_msgs/msg/Point` (message): message → `Ros2Geometry_msgsMsgPoint`
- `geometry_msgs/msg/Pose` (message): message → `Ros2Geometry_msgsMsgPose`
- `geometry_msgs/msg/Quaternion` (message): message → `Ros2Geometry_msgsMsgQuaternion`
- `std_msgs/msg/Header` (message): message → `Ros2Std_msgsMsgHeader`
- `xarm_msgs/msg/CIOState` (message): message → `Ros2Xarm_msgsMsgCIOState`
- `xarm_msgs/msg/IOState` (message): message → `Ros2Xarm_msgsMsgIOState`
- `xarm_msgs/msg/MoveVelocity` (message): message → `Ros2Xarm_msgsMsgMoveVelocity`
- `xarm_msgs/msg/RobotMsg` (message): message → `Ros2Xarm_msgsMsgRobotMsg`
- `xarm_msgs/srv/BioGripperCtrl` (service): request → `Ros2Xarm_msgsSrvBioGripperCtrl_Request`, response → `Ros2Xarm_msgsSrvBioGripperCtrl_Response`
- `xarm_msgs/srv/BioGripperEnable` (service): request → `Ros2Xarm_msgsSrvBioGripperEnable_Request`, response → `Ros2Xarm_msgsSrvBioGripperEnable_Response`
- `xarm_msgs/srv/Call` (service): request → `Ros2Xarm_msgsSrvCall_Request`, response → `Ros2Xarm_msgsSrvCall_Response`
- `xarm_msgs/srv/FtAdmittanceParams` (service): request → `Ros2Xarm_msgsSrvFtAdmittanceParams_Request`, response → `Ros2Xarm_msgsSrvFtAdmittanceParams_Response`
- `xarm_msgs/srv/FtCaliLoad` (service): request → `Ros2Xarm_msgsSrvFtCaliLoad_Request`, response → `Ros2Xarm_msgsSrvFtCaliLoad_Response`
- `xarm_msgs/srv/FtForceConfig` (service): request → `Ros2Xarm_msgsSrvFtForceConfig_Request`, response → `Ros2Xarm_msgsSrvFtForceConfig_Response`
- `xarm_msgs/srv/FtForceParams` (service): request → `Ros2Xarm_msgsSrvFtForceParams_Request`, response → `Ros2Xarm_msgsSrvFtForceParams_Response`
- `xarm_msgs/srv/FtForcePid` (service): request → `Ros2Xarm_msgsSrvFtForcePid_Request`, response → `Ros2Xarm_msgsSrvFtForcePid_Response`
- `xarm_msgs/srv/FtImpedance` (service): request → `Ros2Xarm_msgsSrvFtImpedance_Request`, response → `Ros2Xarm_msgsSrvFtImpedance_Response`
- `xarm_msgs/srv/GetAnalogIO` (service): request → `Ros2Xarm_msgsSrvGetAnalogIO_Request`, response → `Ros2Xarm_msgsSrvGetAnalogIO_Response`
- `xarm_msgs/srv/GetDigitalIO` (service): request → `Ros2Xarm_msgsSrvGetDigitalIO_Request`, response → `Ros2Xarm_msgsSrvGetDigitalIO_Response`
- `xarm_msgs/srv/GetFloat32` (service): request → `Ros2Xarm_msgsSrvGetFloat32_Request`, response → `Ros2Xarm_msgsSrvGetFloat32_Response`
- `xarm_msgs/srv/GetFloat32List` (service): request → `Ros2Xarm_msgsSrvGetFloat32List_Request`, response → `Ros2Xarm_msgsSrvGetFloat32List_Response`
- `xarm_msgs/srv/GetInt16` (service): request → `Ros2Xarm_msgsSrvGetInt16_Request`, response → `Ros2Xarm_msgsSrvGetInt16_Response`
- `xarm_msgs/srv/GetInt16List` (service): request → `Ros2Xarm_msgsSrvGetInt16List_Request`, response → `Ros2Xarm_msgsSrvGetInt16List_Response`
- `xarm_msgs/srv/GetInt32` (service): request → `Ros2Xarm_msgsSrvGetInt32_Request`, response → `Ros2Xarm_msgsSrvGetInt32_Response`
- `xarm_msgs/srv/GetInt32ByType` (service): request → `Ros2Xarm_msgsSrvGetInt32ByType_Request`, response → `Ros2Xarm_msgsSrvGetInt32ByType_Response`
- `xarm_msgs/srv/GetSetModbusData` (service): request → `Ros2Xarm_msgsSrvGetSetModbusData_Request`, response → `Ros2Xarm_msgsSrvGetSetModbusData_Response`
- `xarm_msgs/srv/GripperMove` (service): request → `Ros2Xarm_msgsSrvGripperMove_Request`, response → `Ros2Xarm_msgsSrvGripperMove_Response`
- `xarm_msgs/srv/IdenLoad` (service): request → `Ros2Xarm_msgsSrvIdenLoad_Request`, response → `Ros2Xarm_msgsSrvIdenLoad_Response`
- `xarm_msgs/srv/LinearMotorBackOrigin` (service): request → `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request`, response → `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response`
- `xarm_msgs/srv/LinearMotorSetPos` (service): request → `Ros2Xarm_msgsSrvLinearMotorSetPos_Request`, response → `Ros2Xarm_msgsSrvLinearMotorSetPos_Response`
- `xarm_msgs/srv/LinearTrackBackOrigin` (service): request → `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request`, response → `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response`
- `xarm_msgs/srv/LinearTrackSetPos` (service): request → `Ros2Xarm_msgsSrvLinearTrackSetPos_Request`, response → `Ros2Xarm_msgsSrvLinearTrackSetPos_Response`
- `xarm_msgs/srv/MoveCartesian` (service): request → `Ros2Xarm_msgsSrvMoveCartesian_Request`, response → `Ros2Xarm_msgsSrvMoveCartesian_Response`
- `xarm_msgs/srv/MoveCircle` (service): request → `Ros2Xarm_msgsSrvMoveCircle_Request`, response → `Ros2Xarm_msgsSrvMoveCircle_Response`
- `xarm_msgs/srv/MoveHome` (service): request → `Ros2Xarm_msgsSrvMoveHome_Request`, response → `Ros2Xarm_msgsSrvMoveHome_Response`
- `xarm_msgs/srv/MoveJoint` (service): request → `Ros2Xarm_msgsSrvMoveJoint_Request`, response → `Ros2Xarm_msgsSrvMoveJoint_Response`
- `xarm_msgs/srv/MoveVelocity` (service): request → `Ros2Xarm_msgsSrvMoveVelocity_Request`, response → `Ros2Xarm_msgsSrvMoveVelocity_Response`
- `xarm_msgs/srv/PlanExec` (service): request → `Ros2Xarm_msgsSrvPlanExec_Request`, response → `Ros2Xarm_msgsSrvPlanExec_Response`
- `xarm_msgs/srv/PlanJoint` (service): request → `Ros2Xarm_msgsSrvPlanJoint_Request`, response → `Ros2Xarm_msgsSrvPlanJoint_Response`
- `xarm_msgs/srv/PlanPose` (service): request → `Ros2Xarm_msgsSrvPlanPose_Request`, response → `Ros2Xarm_msgsSrvPlanPose_Response`
- `xarm_msgs/srv/PlanSingleStraight` (service): request → `Ros2Xarm_msgsSrvPlanSingleStraight_Request`, response → `Ros2Xarm_msgsSrvPlanSingleStraight_Response`
- `xarm_msgs/srv/RobotiqActivate` (service): request → `Ros2Xarm_msgsSrvRobotiqActivate_Request`, response → `Ros2Xarm_msgsSrvRobotiqActivate_Response`
- `xarm_msgs/srv/RobotiqGetStatus` (service): request → `Ros2Xarm_msgsSrvRobotiqGetStatus_Request`, response → `Ros2Xarm_msgsSrvRobotiqGetStatus_Response`
- `xarm_msgs/srv/RobotiqMove` (service): request → `Ros2Xarm_msgsSrvRobotiqMove_Request`, response → `Ros2Xarm_msgsSrvRobotiqMove_Response`
- `xarm_msgs/srv/RobotiqReset` (service): request → `Ros2Xarm_msgsSrvRobotiqReset_Request`, response → `Ros2Xarm_msgsSrvRobotiqReset_Response`
- `xarm_msgs/srv/SetAnalogIO` (service): request → `Ros2Xarm_msgsSrvSetAnalogIO_Request`, response → `Ros2Xarm_msgsSrvSetAnalogIO_Response`
- `xarm_msgs/srv/SetDigitalIO` (service): request → `Ros2Xarm_msgsSrvSetDigitalIO_Request`, response → `Ros2Xarm_msgsSrvSetDigitalIO_Response`
- `xarm_msgs/srv/SetFloat32` (service): request → `Ros2Xarm_msgsSrvSetFloat32_Request`, response → `Ros2Xarm_msgsSrvSetFloat32_Response`
- `xarm_msgs/srv/SetFloat32List` (service): request → `Ros2Xarm_msgsSrvSetFloat32List_Request`, response → `Ros2Xarm_msgsSrvSetFloat32List_Response`
- `xarm_msgs/srv/SetInt16` (service): request → `Ros2Xarm_msgsSrvSetInt16_Request`, response → `Ros2Xarm_msgsSrvSetInt16_Response`
- `xarm_msgs/srv/SetInt16ById` (service): request → `Ros2Xarm_msgsSrvSetInt16ById_Request`, response → `Ros2Xarm_msgsSrvSetInt16ById_Response`
- `xarm_msgs/srv/SetInt16List` (service): request → `Ros2Xarm_msgsSrvSetInt16List_Request`, response → `Ros2Xarm_msgsSrvSetInt16List_Response`
- `xarm_msgs/srv/SetInt32` (service): request → `Ros2Xarm_msgsSrvSetInt32_Request`, response → `Ros2Xarm_msgsSrvSetInt32_Response`
- `xarm_msgs/srv/SetInt32ByType` (service): request → `Ros2Xarm_msgsSrvSetInt32ByType_Request`, response → `Ros2Xarm_msgsSrvSetInt32ByType_Response`
- `xarm_msgs/srv/SetModbusTimeout` (service): request → `Ros2Xarm_msgsSrvSetModbusTimeout_Request`, response → `Ros2Xarm_msgsSrvSetModbusTimeout_Response`
- `xarm_msgs/srv/SetTcpLoad` (service): request → `Ros2Xarm_msgsSrvSetTcpLoad_Request`, response → `Ros2Xarm_msgsSrvSetTcpLoad_Response`
- `xarm_msgs/srv/TrajCtrl` (service): request → `Ros2Xarm_msgsSrvTrajCtrl_Request`, response → `Ros2Xarm_msgsSrvTrajCtrl_Response`
- `xarm_msgs/srv/TrajPlay` (service): request → `Ros2Xarm_msgsSrvTrajPlay_Request`, response → `Ros2Xarm_msgsSrvTrajPlay_Response`
- `xarm_msgs/srv/VacuumGripperCtrl` (service): request → `Ros2Xarm_msgsSrvVacuumGripperCtrl_Request`, response → `Ros2Xarm_msgsSrvVacuumGripperCtrl_Response`

Immutable upstream sources:

- [xArm-Developer/xarm_ros2 @ 62936f7ea1846a85f7350de2c4c18f39e6d19715](https://github.com/xArm-Developer/xarm_ros2/tree/62936f7ea1846a85f7350de2c4c18f39e6d19715)
- [ros2/common_interfaces @ 08434490d3e4abd37ccc5462cdde69b88853b5b8](https://github.com/ros2/common_interfaces/tree/08434490d3e4abd37ccc5462cdde69b88853b5b8)
- [ros2/rcl_interfaces @ 82776fc9068d1e0cd4af11c2e2700195994b2eb1](https://github.com/ros2/rcl_interfaces/tree/82776fc9068d1e0cd4af11c2e2700195994b2eb1)

## ros2_humble_gz

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `builtin_interfaces/msg/Time` | `Ros2Builtin_interfacesMsgTime` | 8..8 | sec: int32; nanosec: uint32 |
| `geometry_msgs/msg/Point` | `Ros2Geometry_msgsMsgPoint` | 24..24 | x: float64; y: float64; z: float64 |
| `geometry_msgs/msg/Quaternion` | `Ros2Geometry_msgsMsgQuaternion` | 32..32 | x: float64; y: float64; z: float64; w: float64 |
| `geometry_msgs/msg/Pose` | `Ros2Geometry_msgsMsgPose` | 56..56 | position: geometry_msgs/msg/Point; orientation: geometry_msgs/msg/Quaternion |
| `std_msgs/msg/Header` | `Ros2Std_msgsMsgHeader` | 12..268 | stamp: builtin_interfaces/msg/Time; frame_id: string text<=256B |
| `xarm_msgs/msg/CIOState` | `Ros2Xarm_msgsMsgCIOState` | 72..328 | header: std_msgs/msg/Header; state: int16; code: int16; input_digitals: uint16[2]; output_digitals: uint16[2]; input_analogs: float32[2]; output_analogs: float32[2]; input_conf: uint8[16]; output_conf: uint8[16] |
| `xarm_msgs/msg/IOState` | `Ros2Xarm_msgsMsgIOState` | 16..16 | digital_1: int32; digital_2: int32; analog_1: float32; analog_2: float32 |
| `xarm_msgs/msg/MoveVelocity` | `Ros2Xarm_msgsMsgMoveVelocity` | 10..138 | speeds: float32 sequence<=32; is_sync: bool; is_tool_coord: bool; duration: float32 |
| `xarm_msgs/msg/RobotMsg` | `Ros2Xarm_msgsMsgRobotMsg` | 78..362 | header: std_msgs/msg/Header; state: int16; mode: int16; cmdnum: int16; mt_brake: int16; mt_able: int16; err: int16; warn: int16; angle: float32 sequence<=7; pose: float32[6]; offset: float32[6] |
| `xarm_msgs/srv/BioGripperCtrl_Request` | `Ros2Xarm_msgsSrvBioGripperCtrl_Request` | 7..7 | speed: int16; wait: bool; timeout: float32 |
| `xarm_msgs/srv/BioGripperCtrl_Response` | `Ros2Xarm_msgsSrvBioGripperCtrl_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/BioGripperEnable_Request` | `Ros2Xarm_msgsSrvBioGripperEnable_Request` | 6..6 | enable: bool; wait: bool; timeout: float32 |
| `xarm_msgs/srv/BioGripperEnable_Response` | `Ros2Xarm_msgsSrvBioGripperEnable_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/Call_Request` | `Ros2Xarm_msgsSrvCall_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/Call_Response` | `Ros2Xarm_msgsSrvCall_Response` | 8..264 | ret: int32; message: string text<=256B |
| `xarm_msgs/srv/FtAdmittanceParams_Request` | `Ros2Xarm_msgsSrvFtAdmittanceParams_Request` | 18..466 | coord: int16; c_axis: int16 sequence<=32; m: float32 sequence<=32; k: float32 sequence<=32; b: float32 sequence<=32 |
| `xarm_msgs/srv/FtAdmittanceParams_Response` | `Ros2Xarm_msgsSrvFtAdmittanceParams_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtCaliLoad_Request` | `Ros2Xarm_msgsSrvFtCaliLoad_Request` | 21..149 | datas: float32 sequence<=32; association_setting_tcp_load: bool; m: float32; x: float32; y: float32; z: float32 |
| `xarm_msgs/srv/FtCaliLoad_Response` | `Ros2Xarm_msgsSrvFtCaliLoad_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtForceConfig_Request` | `Ros2Xarm_msgsSrvFtForceConfig_Request` | 14..334 | coord: int16; c_axis: int16 sequence<=32; ref: float32 sequence<=32; limits: float32 sequence<=32 |
| `xarm_msgs/srv/FtForceConfig_Response` | `Ros2Xarm_msgsSrvFtForceConfig_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtForceParams_Request` | `Ros2Xarm_msgsSrvFtForceParams_Request` | 30..862 | coord: int16; c_axis: int16 sequence<=32; ref: float32 sequence<=32; limits: float32 sequence<=32; kp: float32 sequence<=32; ki: float32 sequence<=32; kd: float32 sequence<=32; xe_limit: float32 sequence<=32 |
| `xarm_msgs/srv/FtForceParams_Response` | `Ros2Xarm_msgsSrvFtForceParams_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtForcePid_Request` | `Ros2Xarm_msgsSrvFtForcePid_Request` | 16..528 | kp: float32 sequence<=32; ki: float32 sequence<=32; kd: float32 sequence<=32; xe_limit: float32 sequence<=32 |
| `xarm_msgs/srv/FtForcePid_Response` | `Ros2Xarm_msgsSrvFtForcePid_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtImpedance_Request` | `Ros2Xarm_msgsSrvFtImpedance_Request` | 18..466 | coord: int16; c_axis: int16 sequence<=32; m: float32 sequence<=32; k: float32 sequence<=32; b: float32 sequence<=32 |
| `xarm_msgs/srv/FtImpedance_Response` | `Ros2Xarm_msgsSrvFtImpedance_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/GetAnalogIO_Request` | `Ros2Xarm_msgsSrvGetAnalogIO_Request` | 2..2 | ionum: int16 |
| `xarm_msgs/srv/GetAnalogIO_Response` | `Ros2Xarm_msgsSrvGetAnalogIO_Response` | 10..266 | ret: int16; message: string text<=256B; data: float32 |
| `xarm_msgs/srv/GetDigitalIO_Request` | `Ros2Xarm_msgsSrvGetDigitalIO_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetDigitalIO_Response` | `Ros2Xarm_msgsSrvGetDigitalIO_Response` | 10..330 | ret: int16; message: string text<=256B; digitals: int16 sequence<=32 |
| `xarm_msgs/srv/GetFloat32_Request` | `Ros2Xarm_msgsSrvGetFloat32_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetFloat32_Response` | `Ros2Xarm_msgsSrvGetFloat32_Response` | 10..266 | ret: int16; message: string text<=256B; data: float32 |
| `xarm_msgs/srv/GetFloat32List_Request` | `Ros2Xarm_msgsSrvGetFloat32List_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetFloat32List_Response` | `Ros2Xarm_msgsSrvGetFloat32List_Response` | 10..394 | ret: int16; message: string text<=256B; datas: float32 sequence<=32 |
| `xarm_msgs/srv/GetInt16_Request` | `Ros2Xarm_msgsSrvGetInt16_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetInt16_Response` | `Ros2Xarm_msgsSrvGetInt16_Response` | 8..264 | ret: int16; message: string text<=256B; data: int16 |
| `xarm_msgs/srv/GetInt16List_Request` | `Ros2Xarm_msgsSrvGetInt16List_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetInt16List_Response` | `Ros2Xarm_msgsSrvGetInt16List_Response` | 10..330 | ret: int16; message: string text<=256B; datas: int16 sequence<=32 |
| `xarm_msgs/srv/GetInt32_Request` | `Ros2Xarm_msgsSrvGetInt32_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetInt32_Response` | `Ros2Xarm_msgsSrvGetInt32_Response` | 10..266 | ret: int16; message: string text<=256B; data: int32 |
| `xarm_msgs/srv/GetInt32ByType_Request` | `Ros2Xarm_msgsSrvGetInt32ByType_Request` | 2..2 | type: int16 |
| `xarm_msgs/srv/GetInt32ByType_Response` | `Ros2Xarm_msgsSrvGetInt32ByType_Response` | 10..266 | ret: int16; message: string text<=256B; data: int32 |
| `xarm_msgs/srv/GetSetModbusData_Request` | `Ros2Xarm_msgsSrvGetSetModbusData_Request` | 11..4107 | modbus_data: uint8 sequence<=4096; modbus_length: int16; ret_length: int16; host_id: uint8; is_transparent_transmission: bool; use_503_port: bool |
| `xarm_msgs/srv/GetSetModbusData_Response` | `Ros2Xarm_msgsSrvGetSetModbusData_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/GripperMove_Request` | `Ros2Xarm_msgsSrvGripperMove_Request` | 9..9 | pos: float32; wait: bool; timeout: float32 |
| `xarm_msgs/srv/GripperMove_Response` | `Ros2Xarm_msgsSrvGripperMove_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/IdenLoad_Request` | `Ros2Xarm_msgsSrvIdenLoad_Request` | 4..4 | estimated_mass: float32 |
| `xarm_msgs/srv/IdenLoad_Response` | `Ros2Xarm_msgsSrvIdenLoad_Response` | 10..394 | ret: int16; message: string text<=256B; datas: float32 sequence<=32 |
| `xarm_msgs/srv/LinearMotorBackOrigin_Request` | `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request` | 2..2 | wait: bool; auto_enable: bool |
| `xarm_msgs/srv/LinearMotorBackOrigin_Response` | `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/LinearMotorSetPos_Request` | `Ros2Xarm_msgsSrvLinearMotorSetPos_Request` | 10..10 | pos: int16; speed: int16; wait: bool; timeout: float32; auto_enable: bool |
| `xarm_msgs/srv/LinearMotorSetPos_Response` | `Ros2Xarm_msgsSrvLinearMotorSetPos_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/LinearTrackBackOrigin_Request` | `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request` | 2..2 | wait: bool; auto_enable: bool |
| `xarm_msgs/srv/LinearTrackBackOrigin_Response` | `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/LinearTrackSetPos_Request` | `Ros2Xarm_msgsSrvLinearTrackSetPos_Request` | 10..10 | pos: int16; speed: int16; wait: bool; timeout: float32; auto_enable: bool |
| `xarm_msgs/srv/LinearTrackSetPos_Response` | `Ros2Xarm_msgsSrvLinearTrackSetPos_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveCartesian_Request` | `Ros2Xarm_msgsSrvMoveCartesian_Request` | 28..156 | pose: float32 sequence<=32; speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32; radius: float32; is_tool_coord: bool; relative: bool; motion_type: uint8 |
| `xarm_msgs/srv/MoveCartesian_Response` | `Ros2Xarm_msgsSrvMoveCartesian_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveCircle_Request` | `Ros2Xarm_msgsSrvMoveCircle_Request` | 31..287 | pose1: float32 sequence<=32; pose2: float32 sequence<=32; percent: float32; speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32; is_tool_coord: bool; is_axis_angle: bool |
| `xarm_msgs/srv/MoveCircle_Response` | `Ros2Xarm_msgsSrvMoveCircle_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveHome_Request` | `Ros2Xarm_msgsSrvMoveHome_Request` | 17..17 | speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32 |
| `xarm_msgs/srv/MoveHome_Response` | `Ros2Xarm_msgsSrvMoveHome_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveJoint_Request` | `Ros2Xarm_msgsSrvMoveJoint_Request` | 26..154 | angles: float32 sequence<=32; speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32; radius: float32; relative: bool |
| `xarm_msgs/srv/MoveJoint_Response` | `Ros2Xarm_msgsSrvMoveJoint_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveVelocity_Request` | `Ros2Xarm_msgsSrvMoveVelocity_Request` | 10..138 | speeds: float32 sequence<=32; is_sync: bool; is_tool_coord: bool; duration: float32 |
| `xarm_msgs/srv/MoveVelocity_Response` | `Ros2Xarm_msgsSrvMoveVelocity_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/PlanExec_Request` | `Ros2Xarm_msgsSrvPlanExec_Request` | 1..1 | wait: bool |
| `xarm_msgs/srv/PlanExec_Response` | `Ros2Xarm_msgsSrvPlanExec_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/PlanJoint_Request` | `Ros2Xarm_msgsSrvPlanJoint_Request` | 4..260 | target: float64 sequence<=32 |
| `xarm_msgs/srv/PlanJoint_Response` | `Ros2Xarm_msgsSrvPlanJoint_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/PlanPose_Request` | `Ros2Xarm_msgsSrvPlanPose_Request` | 56..56 | target: geometry_msgs/msg/Pose |
| `xarm_msgs/srv/PlanPose_Response` | `Ros2Xarm_msgsSrvPlanPose_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/PlanSingleStraight_Request` | `Ros2Xarm_msgsSrvPlanSingleStraight_Request` | 56..56 | target: geometry_msgs/msg/Pose |
| `xarm_msgs/srv/PlanSingleStraight_Response` | `Ros2Xarm_msgsSrvPlanSingleStraight_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/RobotiqActivate_Request` | `Ros2Xarm_msgsSrvRobotiqActivate_Request` | 5..5 | wait: bool; timeout: float32 |
| `xarm_msgs/srv/RobotiqActivate_Response` | `Ros2Xarm_msgsSrvRobotiqActivate_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/RobotiqGetStatus_Request` | `Ros2Xarm_msgsSrvRobotiqGetStatus_Request` | 1..1 | number_of_registers: uint8 |
| `xarm_msgs/srv/RobotiqGetStatus_Response` | `Ros2Xarm_msgsSrvRobotiqGetStatus_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/RobotiqMove_Request` | `Ros2Xarm_msgsSrvRobotiqMove_Request` | 8..8 | pos: uint8; speed: uint8; force: uint8; wait: bool; timeout: float32 |
| `xarm_msgs/srv/RobotiqMove_Response` | `Ros2Xarm_msgsSrvRobotiqMove_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/RobotiqReset_Request` | `Ros2Xarm_msgsSrvRobotiqReset_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/RobotiqReset_Response` | `Ros2Xarm_msgsSrvRobotiqReset_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/SetAnalogIO_Request` | `Ros2Xarm_msgsSrvSetAnalogIO_Request` | 14..142 | ionum: int16; value: float32; xyz: float32 sequence<=32; tol_r: float32 |
| `xarm_msgs/srv/SetAnalogIO_Response` | `Ros2Xarm_msgsSrvSetAnalogIO_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetDigitalIO_Request` | `Ros2Xarm_msgsSrvSetDigitalIO_Request` | 16..144 | ionum: int16; value: int16; delay_sec: float32; xyz: float32 sequence<=32; tol_r: float32 |
| `xarm_msgs/srv/SetDigitalIO_Response` | `Ros2Xarm_msgsSrvSetDigitalIO_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetFloat32_Request` | `Ros2Xarm_msgsSrvSetFloat32_Request` | 4..4 | data: float32 |
| `xarm_msgs/srv/SetFloat32_Response` | `Ros2Xarm_msgsSrvSetFloat32_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetFloat32List_Request` | `Ros2Xarm_msgsSrvSetFloat32List_Request` | 4..132 | datas: float32 sequence<=32 |
| `xarm_msgs/srv/SetFloat32List_Response` | `Ros2Xarm_msgsSrvSetFloat32List_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt16_Request` | `Ros2Xarm_msgsSrvSetInt16_Request` | 2..2 | data: int16 |
| `xarm_msgs/srv/SetInt16_Response` | `Ros2Xarm_msgsSrvSetInt16_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt16ById_Request` | `Ros2Xarm_msgsSrvSetInt16ById_Request` | 4..4 | id: int16; data: int16 |
| `xarm_msgs/srv/SetInt16ById_Response` | `Ros2Xarm_msgsSrvSetInt16ById_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt16List_Request` | `Ros2Xarm_msgsSrvSetInt16List_Request` | 4..68 | datas: int16 sequence<=32 |
| `xarm_msgs/srv/SetInt16List_Response` | `Ros2Xarm_msgsSrvSetInt16List_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt32_Request` | `Ros2Xarm_msgsSrvSetInt32_Request` | 4..4 | data: int32 |
| `xarm_msgs/srv/SetInt32_Response` | `Ros2Xarm_msgsSrvSetInt32_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt32ByType_Request` | `Ros2Xarm_msgsSrvSetInt32ByType_Request` | 6..6 | type: int16; data: int32 |
| `xarm_msgs/srv/SetInt32ByType_Response` | `Ros2Xarm_msgsSrvSetInt32ByType_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetModbusTimeout_Request` | `Ros2Xarm_msgsSrvSetModbusTimeout_Request` | 5..5 | timeout: int32; is_transparent_transmission: bool |
| `xarm_msgs/srv/SetModbusTimeout_Response` | `Ros2Xarm_msgsSrvSetModbusTimeout_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetTcpLoad_Request` | `Ros2Xarm_msgsSrvSetTcpLoad_Request` | 8..136 | weight: float32; center_of_gravity: float32 sequence<=32 |
| `xarm_msgs/srv/SetTcpLoad_Response` | `Ros2Xarm_msgsSrvSetTcpLoad_Response` | 8..264 | ret: int32; message: string text<=256B |
| `xarm_msgs/srv/TrajCtrl_Request` | `Ros2Xarm_msgsSrvTrajCtrl_Request` | 8..264 | filename: string text<=256B; timeout: float32 |
| `xarm_msgs/srv/TrajCtrl_Response` | `Ros2Xarm_msgsSrvTrajCtrl_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/TrajPlay_Request` | `Ros2Xarm_msgsSrvTrajPlay_Request` | 9..265 | filename: string text<=256B; times: int16; double_speed: int16; wait: bool |
| `xarm_msgs/srv/TrajPlay_Response` | `Ros2Xarm_msgsSrvTrajPlay_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/VacuumGripperCtrl_Request` | `Ros2Xarm_msgsSrvVacuumGripperCtrl_Request` | 13..13 | on: bool; wait: bool; timeout: float32; delay_sec: float32; sync: bool; hardware_version: int16 |
| `xarm_msgs/srv/VacuumGripperCtrl_Response` | `Ros2Xarm_msgsSrvVacuumGripperCtrl_Response` | 6..262 | ret: int16; message: string text<=256B |

Interfaces:

- `builtin_interfaces/msg/Time` (message): message → `Ros2Builtin_interfacesMsgTime`
- `geometry_msgs/msg/Point` (message): message → `Ros2Geometry_msgsMsgPoint`
- `geometry_msgs/msg/Pose` (message): message → `Ros2Geometry_msgsMsgPose`
- `geometry_msgs/msg/Quaternion` (message): message → `Ros2Geometry_msgsMsgQuaternion`
- `std_msgs/msg/Header` (message): message → `Ros2Std_msgsMsgHeader`
- `xarm_msgs/msg/CIOState` (message): message → `Ros2Xarm_msgsMsgCIOState`
- `xarm_msgs/msg/IOState` (message): message → `Ros2Xarm_msgsMsgIOState`
- `xarm_msgs/msg/MoveVelocity` (message): message → `Ros2Xarm_msgsMsgMoveVelocity`
- `xarm_msgs/msg/RobotMsg` (message): message → `Ros2Xarm_msgsMsgRobotMsg`
- `xarm_msgs/srv/BioGripperCtrl` (service): request → `Ros2Xarm_msgsSrvBioGripperCtrl_Request`, response → `Ros2Xarm_msgsSrvBioGripperCtrl_Response`
- `xarm_msgs/srv/BioGripperEnable` (service): request → `Ros2Xarm_msgsSrvBioGripperEnable_Request`, response → `Ros2Xarm_msgsSrvBioGripperEnable_Response`
- `xarm_msgs/srv/Call` (service): request → `Ros2Xarm_msgsSrvCall_Request`, response → `Ros2Xarm_msgsSrvCall_Response`
- `xarm_msgs/srv/FtAdmittanceParams` (service): request → `Ros2Xarm_msgsSrvFtAdmittanceParams_Request`, response → `Ros2Xarm_msgsSrvFtAdmittanceParams_Response`
- `xarm_msgs/srv/FtCaliLoad` (service): request → `Ros2Xarm_msgsSrvFtCaliLoad_Request`, response → `Ros2Xarm_msgsSrvFtCaliLoad_Response`
- `xarm_msgs/srv/FtForceConfig` (service): request → `Ros2Xarm_msgsSrvFtForceConfig_Request`, response → `Ros2Xarm_msgsSrvFtForceConfig_Response`
- `xarm_msgs/srv/FtForceParams` (service): request → `Ros2Xarm_msgsSrvFtForceParams_Request`, response → `Ros2Xarm_msgsSrvFtForceParams_Response`
- `xarm_msgs/srv/FtForcePid` (service): request → `Ros2Xarm_msgsSrvFtForcePid_Request`, response → `Ros2Xarm_msgsSrvFtForcePid_Response`
- `xarm_msgs/srv/FtImpedance` (service): request → `Ros2Xarm_msgsSrvFtImpedance_Request`, response → `Ros2Xarm_msgsSrvFtImpedance_Response`
- `xarm_msgs/srv/GetAnalogIO` (service): request → `Ros2Xarm_msgsSrvGetAnalogIO_Request`, response → `Ros2Xarm_msgsSrvGetAnalogIO_Response`
- `xarm_msgs/srv/GetDigitalIO` (service): request → `Ros2Xarm_msgsSrvGetDigitalIO_Request`, response → `Ros2Xarm_msgsSrvGetDigitalIO_Response`
- `xarm_msgs/srv/GetFloat32` (service): request → `Ros2Xarm_msgsSrvGetFloat32_Request`, response → `Ros2Xarm_msgsSrvGetFloat32_Response`
- `xarm_msgs/srv/GetFloat32List` (service): request → `Ros2Xarm_msgsSrvGetFloat32List_Request`, response → `Ros2Xarm_msgsSrvGetFloat32List_Response`
- `xarm_msgs/srv/GetInt16` (service): request → `Ros2Xarm_msgsSrvGetInt16_Request`, response → `Ros2Xarm_msgsSrvGetInt16_Response`
- `xarm_msgs/srv/GetInt16List` (service): request → `Ros2Xarm_msgsSrvGetInt16List_Request`, response → `Ros2Xarm_msgsSrvGetInt16List_Response`
- `xarm_msgs/srv/GetInt32` (service): request → `Ros2Xarm_msgsSrvGetInt32_Request`, response → `Ros2Xarm_msgsSrvGetInt32_Response`
- `xarm_msgs/srv/GetInt32ByType` (service): request → `Ros2Xarm_msgsSrvGetInt32ByType_Request`, response → `Ros2Xarm_msgsSrvGetInt32ByType_Response`
- `xarm_msgs/srv/GetSetModbusData` (service): request → `Ros2Xarm_msgsSrvGetSetModbusData_Request`, response → `Ros2Xarm_msgsSrvGetSetModbusData_Response`
- `xarm_msgs/srv/GripperMove` (service): request → `Ros2Xarm_msgsSrvGripperMove_Request`, response → `Ros2Xarm_msgsSrvGripperMove_Response`
- `xarm_msgs/srv/IdenLoad` (service): request → `Ros2Xarm_msgsSrvIdenLoad_Request`, response → `Ros2Xarm_msgsSrvIdenLoad_Response`
- `xarm_msgs/srv/LinearMotorBackOrigin` (service): request → `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request`, response → `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response`
- `xarm_msgs/srv/LinearMotorSetPos` (service): request → `Ros2Xarm_msgsSrvLinearMotorSetPos_Request`, response → `Ros2Xarm_msgsSrvLinearMotorSetPos_Response`
- `xarm_msgs/srv/LinearTrackBackOrigin` (service): request → `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request`, response → `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response`
- `xarm_msgs/srv/LinearTrackSetPos` (service): request → `Ros2Xarm_msgsSrvLinearTrackSetPos_Request`, response → `Ros2Xarm_msgsSrvLinearTrackSetPos_Response`
- `xarm_msgs/srv/MoveCartesian` (service): request → `Ros2Xarm_msgsSrvMoveCartesian_Request`, response → `Ros2Xarm_msgsSrvMoveCartesian_Response`
- `xarm_msgs/srv/MoveCircle` (service): request → `Ros2Xarm_msgsSrvMoveCircle_Request`, response → `Ros2Xarm_msgsSrvMoveCircle_Response`
- `xarm_msgs/srv/MoveHome` (service): request → `Ros2Xarm_msgsSrvMoveHome_Request`, response → `Ros2Xarm_msgsSrvMoveHome_Response`
- `xarm_msgs/srv/MoveJoint` (service): request → `Ros2Xarm_msgsSrvMoveJoint_Request`, response → `Ros2Xarm_msgsSrvMoveJoint_Response`
- `xarm_msgs/srv/MoveVelocity` (service): request → `Ros2Xarm_msgsSrvMoveVelocity_Request`, response → `Ros2Xarm_msgsSrvMoveVelocity_Response`
- `xarm_msgs/srv/PlanExec` (service): request → `Ros2Xarm_msgsSrvPlanExec_Request`, response → `Ros2Xarm_msgsSrvPlanExec_Response`
- `xarm_msgs/srv/PlanJoint` (service): request → `Ros2Xarm_msgsSrvPlanJoint_Request`, response → `Ros2Xarm_msgsSrvPlanJoint_Response`
- `xarm_msgs/srv/PlanPose` (service): request → `Ros2Xarm_msgsSrvPlanPose_Request`, response → `Ros2Xarm_msgsSrvPlanPose_Response`
- `xarm_msgs/srv/PlanSingleStraight` (service): request → `Ros2Xarm_msgsSrvPlanSingleStraight_Request`, response → `Ros2Xarm_msgsSrvPlanSingleStraight_Response`
- `xarm_msgs/srv/RobotiqActivate` (service): request → `Ros2Xarm_msgsSrvRobotiqActivate_Request`, response → `Ros2Xarm_msgsSrvRobotiqActivate_Response`
- `xarm_msgs/srv/RobotiqGetStatus` (service): request → `Ros2Xarm_msgsSrvRobotiqGetStatus_Request`, response → `Ros2Xarm_msgsSrvRobotiqGetStatus_Response`
- `xarm_msgs/srv/RobotiqMove` (service): request → `Ros2Xarm_msgsSrvRobotiqMove_Request`, response → `Ros2Xarm_msgsSrvRobotiqMove_Response`
- `xarm_msgs/srv/RobotiqReset` (service): request → `Ros2Xarm_msgsSrvRobotiqReset_Request`, response → `Ros2Xarm_msgsSrvRobotiqReset_Response`
- `xarm_msgs/srv/SetAnalogIO` (service): request → `Ros2Xarm_msgsSrvSetAnalogIO_Request`, response → `Ros2Xarm_msgsSrvSetAnalogIO_Response`
- `xarm_msgs/srv/SetDigitalIO` (service): request → `Ros2Xarm_msgsSrvSetDigitalIO_Request`, response → `Ros2Xarm_msgsSrvSetDigitalIO_Response`
- `xarm_msgs/srv/SetFloat32` (service): request → `Ros2Xarm_msgsSrvSetFloat32_Request`, response → `Ros2Xarm_msgsSrvSetFloat32_Response`
- `xarm_msgs/srv/SetFloat32List` (service): request → `Ros2Xarm_msgsSrvSetFloat32List_Request`, response → `Ros2Xarm_msgsSrvSetFloat32List_Response`
- `xarm_msgs/srv/SetInt16` (service): request → `Ros2Xarm_msgsSrvSetInt16_Request`, response → `Ros2Xarm_msgsSrvSetInt16_Response`
- `xarm_msgs/srv/SetInt16ById` (service): request → `Ros2Xarm_msgsSrvSetInt16ById_Request`, response → `Ros2Xarm_msgsSrvSetInt16ById_Response`
- `xarm_msgs/srv/SetInt16List` (service): request → `Ros2Xarm_msgsSrvSetInt16List_Request`, response → `Ros2Xarm_msgsSrvSetInt16List_Response`
- `xarm_msgs/srv/SetInt32` (service): request → `Ros2Xarm_msgsSrvSetInt32_Request`, response → `Ros2Xarm_msgsSrvSetInt32_Response`
- `xarm_msgs/srv/SetInt32ByType` (service): request → `Ros2Xarm_msgsSrvSetInt32ByType_Request`, response → `Ros2Xarm_msgsSrvSetInt32ByType_Response`
- `xarm_msgs/srv/SetModbusTimeout` (service): request → `Ros2Xarm_msgsSrvSetModbusTimeout_Request`, response → `Ros2Xarm_msgsSrvSetModbusTimeout_Response`
- `xarm_msgs/srv/SetTcpLoad` (service): request → `Ros2Xarm_msgsSrvSetTcpLoad_Request`, response → `Ros2Xarm_msgsSrvSetTcpLoad_Response`
- `xarm_msgs/srv/TrajCtrl` (service): request → `Ros2Xarm_msgsSrvTrajCtrl_Request`, response → `Ros2Xarm_msgsSrvTrajCtrl_Response`
- `xarm_msgs/srv/TrajPlay` (service): request → `Ros2Xarm_msgsSrvTrajPlay_Request`, response → `Ros2Xarm_msgsSrvTrajPlay_Response`
- `xarm_msgs/srv/VacuumGripperCtrl` (service): request → `Ros2Xarm_msgsSrvVacuumGripperCtrl_Request`, response → `Ros2Xarm_msgsSrvVacuumGripperCtrl_Response`

Immutable upstream sources:

- [xArm-Developer/xarm_ros2 @ 5e126d492e04beb887f8bfee3a30c2c93d9f4d19](https://github.com/xArm-Developer/xarm_ros2/tree/5e126d492e04beb887f8bfee3a30c2c93d9f4d19)
- [ros2/common_interfaces @ 08434490d3e4abd37ccc5462cdde69b88853b5b8](https://github.com/ros2/common_interfaces/tree/08434490d3e4abd37ccc5462cdde69b88853b5b8)
- [ros2/rcl_interfaces @ 82776fc9068d1e0cd4af11c2e2700195994b2eb1](https://github.com/ros2/rcl_interfaces/tree/82776fc9068d1e0cd4af11c2e2700195994b2eb1)

## ros2_jazzy

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `builtin_interfaces/msg/Time` | `Ros2Builtin_interfacesMsgTime` | 8..8 | sec: int32; nanosec: uint32 |
| `geometry_msgs/msg/Point` | `Ros2Geometry_msgsMsgPoint` | 24..24 | x: float64; y: float64; z: float64 |
| `geometry_msgs/msg/Quaternion` | `Ros2Geometry_msgsMsgQuaternion` | 32..32 | x: float64; y: float64; z: float64; w: float64 |
| `geometry_msgs/msg/Pose` | `Ros2Geometry_msgsMsgPose` | 56..56 | position: geometry_msgs/msg/Point; orientation: geometry_msgs/msg/Quaternion |
| `std_msgs/msg/Header` | `Ros2Std_msgsMsgHeader` | 12..268 | stamp: builtin_interfaces/msg/Time; frame_id: string text<=256B |
| `xarm_msgs/msg/CIOState` | `Ros2Xarm_msgsMsgCIOState` | 72..328 | header: std_msgs/msg/Header; state: int16; code: int16; input_digitals: uint16[2]; output_digitals: uint16[2]; input_analogs: float32[2]; output_analogs: float32[2]; input_conf: uint8[16]; output_conf: uint8[16] |
| `xarm_msgs/msg/IOState` | `Ros2Xarm_msgsMsgIOState` | 16..16 | digital_1: int32; digital_2: int32; analog_1: float32; analog_2: float32 |
| `xarm_msgs/msg/MoveVelocity` | `Ros2Xarm_msgsMsgMoveVelocity` | 10..138 | speeds: float32 sequence<=32; is_sync: bool; is_tool_coord: bool; duration: float32 |
| `xarm_msgs/msg/RobotMsg` | `Ros2Xarm_msgsMsgRobotMsg` | 78..362 | header: std_msgs/msg/Header; state: int16; mode: int16; cmdnum: int16; mt_brake: int16; mt_able: int16; err: int16; warn: int16; angle: float32 sequence<=7; pose: float32[6]; offset: float32[6] |
| `xarm_msgs/srv/BioGripperCtrl_Request` | `Ros2Xarm_msgsSrvBioGripperCtrl_Request` | 7..7 | speed: int16; wait: bool; timeout: float32 |
| `xarm_msgs/srv/BioGripperCtrl_Response` | `Ros2Xarm_msgsSrvBioGripperCtrl_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/BioGripperEnable_Request` | `Ros2Xarm_msgsSrvBioGripperEnable_Request` | 6..6 | enable: bool; wait: bool; timeout: float32 |
| `xarm_msgs/srv/BioGripperEnable_Response` | `Ros2Xarm_msgsSrvBioGripperEnable_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/Call_Request` | `Ros2Xarm_msgsSrvCall_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/Call_Response` | `Ros2Xarm_msgsSrvCall_Response` | 8..264 | ret: int32; message: string text<=256B |
| `xarm_msgs/srv/FtAdmittanceParams_Request` | `Ros2Xarm_msgsSrvFtAdmittanceParams_Request` | 18..466 | coord: int16; c_axis: int16 sequence<=32; m: float32 sequence<=32; k: float32 sequence<=32; b: float32 sequence<=32 |
| `xarm_msgs/srv/FtAdmittanceParams_Response` | `Ros2Xarm_msgsSrvFtAdmittanceParams_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtCaliLoad_Request` | `Ros2Xarm_msgsSrvFtCaliLoad_Request` | 21..149 | datas: float32 sequence<=32; association_setting_tcp_load: bool; m: float32; x: float32; y: float32; z: float32 |
| `xarm_msgs/srv/FtCaliLoad_Response` | `Ros2Xarm_msgsSrvFtCaliLoad_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtForceConfig_Request` | `Ros2Xarm_msgsSrvFtForceConfig_Request` | 14..334 | coord: int16; c_axis: int16 sequence<=32; ref: float32 sequence<=32; limits: float32 sequence<=32 |
| `xarm_msgs/srv/FtForceConfig_Response` | `Ros2Xarm_msgsSrvFtForceConfig_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtForceParams_Request` | `Ros2Xarm_msgsSrvFtForceParams_Request` | 30..862 | coord: int16; c_axis: int16 sequence<=32; ref: float32 sequence<=32; limits: float32 sequence<=32; kp: float32 sequence<=32; ki: float32 sequence<=32; kd: float32 sequence<=32; xe_limit: float32 sequence<=32 |
| `xarm_msgs/srv/FtForceParams_Response` | `Ros2Xarm_msgsSrvFtForceParams_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtForcePid_Request` | `Ros2Xarm_msgsSrvFtForcePid_Request` | 16..528 | kp: float32 sequence<=32; ki: float32 sequence<=32; kd: float32 sequence<=32; xe_limit: float32 sequence<=32 |
| `xarm_msgs/srv/FtForcePid_Response` | `Ros2Xarm_msgsSrvFtForcePid_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtImpedance_Request` | `Ros2Xarm_msgsSrvFtImpedance_Request` | 18..466 | coord: int16; c_axis: int16 sequence<=32; m: float32 sequence<=32; k: float32 sequence<=32; b: float32 sequence<=32 |
| `xarm_msgs/srv/FtImpedance_Response` | `Ros2Xarm_msgsSrvFtImpedance_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/GetAnalogIO_Request` | `Ros2Xarm_msgsSrvGetAnalogIO_Request` | 2..2 | ionum: int16 |
| `xarm_msgs/srv/GetAnalogIO_Response` | `Ros2Xarm_msgsSrvGetAnalogIO_Response` | 10..266 | ret: int16; message: string text<=256B; data: float32 |
| `xarm_msgs/srv/GetDigitalIO_Request` | `Ros2Xarm_msgsSrvGetDigitalIO_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetDigitalIO_Response` | `Ros2Xarm_msgsSrvGetDigitalIO_Response` | 10..330 | ret: int16; message: string text<=256B; digitals: int16 sequence<=32 |
| `xarm_msgs/srv/GetFloat32_Request` | `Ros2Xarm_msgsSrvGetFloat32_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetFloat32_Response` | `Ros2Xarm_msgsSrvGetFloat32_Response` | 10..266 | ret: int16; message: string text<=256B; data: float32 |
| `xarm_msgs/srv/GetFloat32List_Request` | `Ros2Xarm_msgsSrvGetFloat32List_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetFloat32List_Response` | `Ros2Xarm_msgsSrvGetFloat32List_Response` | 10..394 | ret: int16; message: string text<=256B; datas: float32 sequence<=32 |
| `xarm_msgs/srv/GetInt16_Request` | `Ros2Xarm_msgsSrvGetInt16_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetInt16_Response` | `Ros2Xarm_msgsSrvGetInt16_Response` | 8..264 | ret: int16; message: string text<=256B; data: int16 |
| `xarm_msgs/srv/GetInt16List_Request` | `Ros2Xarm_msgsSrvGetInt16List_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetInt16List_Response` | `Ros2Xarm_msgsSrvGetInt16List_Response` | 10..330 | ret: int16; message: string text<=256B; datas: int16 sequence<=32 |
| `xarm_msgs/srv/GetInt32_Request` | `Ros2Xarm_msgsSrvGetInt32_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetInt32_Response` | `Ros2Xarm_msgsSrvGetInt32_Response` | 10..266 | ret: int16; message: string text<=256B; data: int32 |
| `xarm_msgs/srv/GetInt32ByType_Request` | `Ros2Xarm_msgsSrvGetInt32ByType_Request` | 2..2 | type: int16 |
| `xarm_msgs/srv/GetInt32ByType_Response` | `Ros2Xarm_msgsSrvGetInt32ByType_Response` | 10..266 | ret: int16; message: string text<=256B; data: int32 |
| `xarm_msgs/srv/GetSetModbusData_Request` | `Ros2Xarm_msgsSrvGetSetModbusData_Request` | 11..4107 | modbus_data: uint8 sequence<=4096; modbus_length: int16; ret_length: int16; host_id: uint8; is_transparent_transmission: bool; use_503_port: bool |
| `xarm_msgs/srv/GetSetModbusData_Response` | `Ros2Xarm_msgsSrvGetSetModbusData_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/GripperMove_Request` | `Ros2Xarm_msgsSrvGripperMove_Request` | 9..9 | pos: float32; wait: bool; timeout: float32 |
| `xarm_msgs/srv/GripperMove_Response` | `Ros2Xarm_msgsSrvGripperMove_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/IdenLoad_Request` | `Ros2Xarm_msgsSrvIdenLoad_Request` | 4..4 | estimated_mass: float32 |
| `xarm_msgs/srv/IdenLoad_Response` | `Ros2Xarm_msgsSrvIdenLoad_Response` | 10..394 | ret: int16; message: string text<=256B; datas: float32 sequence<=32 |
| `xarm_msgs/srv/LinearMotorBackOrigin_Request` | `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request` | 2..2 | wait: bool; auto_enable: bool |
| `xarm_msgs/srv/LinearMotorBackOrigin_Response` | `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/LinearMotorSetPos_Request` | `Ros2Xarm_msgsSrvLinearMotorSetPos_Request` | 10..10 | pos: int16; speed: int16; wait: bool; timeout: float32; auto_enable: bool |
| `xarm_msgs/srv/LinearMotorSetPos_Response` | `Ros2Xarm_msgsSrvLinearMotorSetPos_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/LinearTrackBackOrigin_Request` | `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request` | 2..2 | wait: bool; auto_enable: bool |
| `xarm_msgs/srv/LinearTrackBackOrigin_Response` | `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/LinearTrackSetPos_Request` | `Ros2Xarm_msgsSrvLinearTrackSetPos_Request` | 10..10 | pos: int16; speed: int16; wait: bool; timeout: float32; auto_enable: bool |
| `xarm_msgs/srv/LinearTrackSetPos_Response` | `Ros2Xarm_msgsSrvLinearTrackSetPos_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveCartesian_Request` | `Ros2Xarm_msgsSrvMoveCartesian_Request` | 28..156 | pose: float32 sequence<=32; speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32; radius: float32; is_tool_coord: bool; relative: bool; motion_type: uint8 |
| `xarm_msgs/srv/MoveCartesian_Response` | `Ros2Xarm_msgsSrvMoveCartesian_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveCircle_Request` | `Ros2Xarm_msgsSrvMoveCircle_Request` | 31..287 | pose1: float32 sequence<=32; pose2: float32 sequence<=32; percent: float32; speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32; is_tool_coord: bool; is_axis_angle: bool |
| `xarm_msgs/srv/MoveCircle_Response` | `Ros2Xarm_msgsSrvMoveCircle_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveHome_Request` | `Ros2Xarm_msgsSrvMoveHome_Request` | 17..17 | speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32 |
| `xarm_msgs/srv/MoveHome_Response` | `Ros2Xarm_msgsSrvMoveHome_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveJoint_Request` | `Ros2Xarm_msgsSrvMoveJoint_Request` | 26..154 | angles: float32 sequence<=32; speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32; radius: float32; relative: bool |
| `xarm_msgs/srv/MoveJoint_Response` | `Ros2Xarm_msgsSrvMoveJoint_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveVelocity_Request` | `Ros2Xarm_msgsSrvMoveVelocity_Request` | 10..138 | speeds: float32 sequence<=32; is_sync: bool; is_tool_coord: bool; duration: float32 |
| `xarm_msgs/srv/MoveVelocity_Response` | `Ros2Xarm_msgsSrvMoveVelocity_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/PlanExec_Request` | `Ros2Xarm_msgsSrvPlanExec_Request` | 1..1 | wait: bool |
| `xarm_msgs/srv/PlanExec_Response` | `Ros2Xarm_msgsSrvPlanExec_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/PlanJoint_Request` | `Ros2Xarm_msgsSrvPlanJoint_Request` | 4..260 | target: float64 sequence<=32 |
| `xarm_msgs/srv/PlanJoint_Response` | `Ros2Xarm_msgsSrvPlanJoint_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/PlanPose_Request` | `Ros2Xarm_msgsSrvPlanPose_Request` | 56..56 | target: geometry_msgs/msg/Pose |
| `xarm_msgs/srv/PlanPose_Response` | `Ros2Xarm_msgsSrvPlanPose_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/PlanSingleStraight_Request` | `Ros2Xarm_msgsSrvPlanSingleStraight_Request` | 56..56 | target: geometry_msgs/msg/Pose |
| `xarm_msgs/srv/PlanSingleStraight_Response` | `Ros2Xarm_msgsSrvPlanSingleStraight_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/RobotiqActivate_Request` | `Ros2Xarm_msgsSrvRobotiqActivate_Request` | 5..5 | wait: bool; timeout: float32 |
| `xarm_msgs/srv/RobotiqActivate_Response` | `Ros2Xarm_msgsSrvRobotiqActivate_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/RobotiqGetStatus_Request` | `Ros2Xarm_msgsSrvRobotiqGetStatus_Request` | 1..1 | number_of_registers: uint8 |
| `xarm_msgs/srv/RobotiqGetStatus_Response` | `Ros2Xarm_msgsSrvRobotiqGetStatus_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/RobotiqMove_Request` | `Ros2Xarm_msgsSrvRobotiqMove_Request` | 8..8 | pos: uint8; speed: uint8; force: uint8; wait: bool; timeout: float32 |
| `xarm_msgs/srv/RobotiqMove_Response` | `Ros2Xarm_msgsSrvRobotiqMove_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/RobotiqReset_Request` | `Ros2Xarm_msgsSrvRobotiqReset_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/RobotiqReset_Response` | `Ros2Xarm_msgsSrvRobotiqReset_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/SetAnalogIO_Request` | `Ros2Xarm_msgsSrvSetAnalogIO_Request` | 14..142 | ionum: int16; value: float32; xyz: float32 sequence<=32; tol_r: float32 |
| `xarm_msgs/srv/SetAnalogIO_Response` | `Ros2Xarm_msgsSrvSetAnalogIO_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetDigitalIO_Request` | `Ros2Xarm_msgsSrvSetDigitalIO_Request` | 16..144 | ionum: int16; value: int16; delay_sec: float32; xyz: float32 sequence<=32; tol_r: float32 |
| `xarm_msgs/srv/SetDigitalIO_Response` | `Ros2Xarm_msgsSrvSetDigitalIO_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetFloat32_Request` | `Ros2Xarm_msgsSrvSetFloat32_Request` | 4..4 | data: float32 |
| `xarm_msgs/srv/SetFloat32_Response` | `Ros2Xarm_msgsSrvSetFloat32_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetFloat32List_Request` | `Ros2Xarm_msgsSrvSetFloat32List_Request` | 4..132 | datas: float32 sequence<=32 |
| `xarm_msgs/srv/SetFloat32List_Response` | `Ros2Xarm_msgsSrvSetFloat32List_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt16_Request` | `Ros2Xarm_msgsSrvSetInt16_Request` | 2..2 | data: int16 |
| `xarm_msgs/srv/SetInt16_Response` | `Ros2Xarm_msgsSrvSetInt16_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt16ById_Request` | `Ros2Xarm_msgsSrvSetInt16ById_Request` | 4..4 | id: int16; data: int16 |
| `xarm_msgs/srv/SetInt16ById_Response` | `Ros2Xarm_msgsSrvSetInt16ById_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt16List_Request` | `Ros2Xarm_msgsSrvSetInt16List_Request` | 4..68 | datas: int16 sequence<=32 |
| `xarm_msgs/srv/SetInt16List_Response` | `Ros2Xarm_msgsSrvSetInt16List_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt32_Request` | `Ros2Xarm_msgsSrvSetInt32_Request` | 4..4 | data: int32 |
| `xarm_msgs/srv/SetInt32_Response` | `Ros2Xarm_msgsSrvSetInt32_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt32ByType_Request` | `Ros2Xarm_msgsSrvSetInt32ByType_Request` | 6..6 | type: int16; data: int32 |
| `xarm_msgs/srv/SetInt32ByType_Response` | `Ros2Xarm_msgsSrvSetInt32ByType_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetModbusTimeout_Request` | `Ros2Xarm_msgsSrvSetModbusTimeout_Request` | 5..5 | timeout: int32; is_transparent_transmission: bool |
| `xarm_msgs/srv/SetModbusTimeout_Response` | `Ros2Xarm_msgsSrvSetModbusTimeout_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetTcpLoad_Request` | `Ros2Xarm_msgsSrvSetTcpLoad_Request` | 8..136 | weight: float32; center_of_gravity: float32 sequence<=32 |
| `xarm_msgs/srv/SetTcpLoad_Response` | `Ros2Xarm_msgsSrvSetTcpLoad_Response` | 8..264 | ret: int32; message: string text<=256B |
| `xarm_msgs/srv/TrajCtrl_Request` | `Ros2Xarm_msgsSrvTrajCtrl_Request` | 8..264 | filename: string text<=256B; timeout: float32 |
| `xarm_msgs/srv/TrajCtrl_Response` | `Ros2Xarm_msgsSrvTrajCtrl_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/TrajPlay_Request` | `Ros2Xarm_msgsSrvTrajPlay_Request` | 9..265 | filename: string text<=256B; times: int16; double_speed: int16; wait: bool |
| `xarm_msgs/srv/TrajPlay_Response` | `Ros2Xarm_msgsSrvTrajPlay_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/VacuumGripperCtrl_Request` | `Ros2Xarm_msgsSrvVacuumGripperCtrl_Request` | 13..13 | on: bool; wait: bool; timeout: float32; delay_sec: float32; sync: bool; hardware_version: int16 |
| `xarm_msgs/srv/VacuumGripperCtrl_Response` | `Ros2Xarm_msgsSrvVacuumGripperCtrl_Response` | 6..262 | ret: int16; message: string text<=256B |

Interfaces:

- `builtin_interfaces/msg/Time` (message): message → `Ros2Builtin_interfacesMsgTime`
- `geometry_msgs/msg/Point` (message): message → `Ros2Geometry_msgsMsgPoint`
- `geometry_msgs/msg/Pose` (message): message → `Ros2Geometry_msgsMsgPose`
- `geometry_msgs/msg/Quaternion` (message): message → `Ros2Geometry_msgsMsgQuaternion`
- `std_msgs/msg/Header` (message): message → `Ros2Std_msgsMsgHeader`
- `xarm_msgs/msg/CIOState` (message): message → `Ros2Xarm_msgsMsgCIOState`
- `xarm_msgs/msg/IOState` (message): message → `Ros2Xarm_msgsMsgIOState`
- `xarm_msgs/msg/MoveVelocity` (message): message → `Ros2Xarm_msgsMsgMoveVelocity`
- `xarm_msgs/msg/RobotMsg` (message): message → `Ros2Xarm_msgsMsgRobotMsg`
- `xarm_msgs/srv/BioGripperCtrl` (service): request → `Ros2Xarm_msgsSrvBioGripperCtrl_Request`, response → `Ros2Xarm_msgsSrvBioGripperCtrl_Response`
- `xarm_msgs/srv/BioGripperEnable` (service): request → `Ros2Xarm_msgsSrvBioGripperEnable_Request`, response → `Ros2Xarm_msgsSrvBioGripperEnable_Response`
- `xarm_msgs/srv/Call` (service): request → `Ros2Xarm_msgsSrvCall_Request`, response → `Ros2Xarm_msgsSrvCall_Response`
- `xarm_msgs/srv/FtAdmittanceParams` (service): request → `Ros2Xarm_msgsSrvFtAdmittanceParams_Request`, response → `Ros2Xarm_msgsSrvFtAdmittanceParams_Response`
- `xarm_msgs/srv/FtCaliLoad` (service): request → `Ros2Xarm_msgsSrvFtCaliLoad_Request`, response → `Ros2Xarm_msgsSrvFtCaliLoad_Response`
- `xarm_msgs/srv/FtForceConfig` (service): request → `Ros2Xarm_msgsSrvFtForceConfig_Request`, response → `Ros2Xarm_msgsSrvFtForceConfig_Response`
- `xarm_msgs/srv/FtForceParams` (service): request → `Ros2Xarm_msgsSrvFtForceParams_Request`, response → `Ros2Xarm_msgsSrvFtForceParams_Response`
- `xarm_msgs/srv/FtForcePid` (service): request → `Ros2Xarm_msgsSrvFtForcePid_Request`, response → `Ros2Xarm_msgsSrvFtForcePid_Response`
- `xarm_msgs/srv/FtImpedance` (service): request → `Ros2Xarm_msgsSrvFtImpedance_Request`, response → `Ros2Xarm_msgsSrvFtImpedance_Response`
- `xarm_msgs/srv/GetAnalogIO` (service): request → `Ros2Xarm_msgsSrvGetAnalogIO_Request`, response → `Ros2Xarm_msgsSrvGetAnalogIO_Response`
- `xarm_msgs/srv/GetDigitalIO` (service): request → `Ros2Xarm_msgsSrvGetDigitalIO_Request`, response → `Ros2Xarm_msgsSrvGetDigitalIO_Response`
- `xarm_msgs/srv/GetFloat32` (service): request → `Ros2Xarm_msgsSrvGetFloat32_Request`, response → `Ros2Xarm_msgsSrvGetFloat32_Response`
- `xarm_msgs/srv/GetFloat32List` (service): request → `Ros2Xarm_msgsSrvGetFloat32List_Request`, response → `Ros2Xarm_msgsSrvGetFloat32List_Response`
- `xarm_msgs/srv/GetInt16` (service): request → `Ros2Xarm_msgsSrvGetInt16_Request`, response → `Ros2Xarm_msgsSrvGetInt16_Response`
- `xarm_msgs/srv/GetInt16List` (service): request → `Ros2Xarm_msgsSrvGetInt16List_Request`, response → `Ros2Xarm_msgsSrvGetInt16List_Response`
- `xarm_msgs/srv/GetInt32` (service): request → `Ros2Xarm_msgsSrvGetInt32_Request`, response → `Ros2Xarm_msgsSrvGetInt32_Response`
- `xarm_msgs/srv/GetInt32ByType` (service): request → `Ros2Xarm_msgsSrvGetInt32ByType_Request`, response → `Ros2Xarm_msgsSrvGetInt32ByType_Response`
- `xarm_msgs/srv/GetSetModbusData` (service): request → `Ros2Xarm_msgsSrvGetSetModbusData_Request`, response → `Ros2Xarm_msgsSrvGetSetModbusData_Response`
- `xarm_msgs/srv/GripperMove` (service): request → `Ros2Xarm_msgsSrvGripperMove_Request`, response → `Ros2Xarm_msgsSrvGripperMove_Response`
- `xarm_msgs/srv/IdenLoad` (service): request → `Ros2Xarm_msgsSrvIdenLoad_Request`, response → `Ros2Xarm_msgsSrvIdenLoad_Response`
- `xarm_msgs/srv/LinearMotorBackOrigin` (service): request → `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request`, response → `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response`
- `xarm_msgs/srv/LinearMotorSetPos` (service): request → `Ros2Xarm_msgsSrvLinearMotorSetPos_Request`, response → `Ros2Xarm_msgsSrvLinearMotorSetPos_Response`
- `xarm_msgs/srv/LinearTrackBackOrigin` (service): request → `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request`, response → `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response`
- `xarm_msgs/srv/LinearTrackSetPos` (service): request → `Ros2Xarm_msgsSrvLinearTrackSetPos_Request`, response → `Ros2Xarm_msgsSrvLinearTrackSetPos_Response`
- `xarm_msgs/srv/MoveCartesian` (service): request → `Ros2Xarm_msgsSrvMoveCartesian_Request`, response → `Ros2Xarm_msgsSrvMoveCartesian_Response`
- `xarm_msgs/srv/MoveCircle` (service): request → `Ros2Xarm_msgsSrvMoveCircle_Request`, response → `Ros2Xarm_msgsSrvMoveCircle_Response`
- `xarm_msgs/srv/MoveHome` (service): request → `Ros2Xarm_msgsSrvMoveHome_Request`, response → `Ros2Xarm_msgsSrvMoveHome_Response`
- `xarm_msgs/srv/MoveJoint` (service): request → `Ros2Xarm_msgsSrvMoveJoint_Request`, response → `Ros2Xarm_msgsSrvMoveJoint_Response`
- `xarm_msgs/srv/MoveVelocity` (service): request → `Ros2Xarm_msgsSrvMoveVelocity_Request`, response → `Ros2Xarm_msgsSrvMoveVelocity_Response`
- `xarm_msgs/srv/PlanExec` (service): request → `Ros2Xarm_msgsSrvPlanExec_Request`, response → `Ros2Xarm_msgsSrvPlanExec_Response`
- `xarm_msgs/srv/PlanJoint` (service): request → `Ros2Xarm_msgsSrvPlanJoint_Request`, response → `Ros2Xarm_msgsSrvPlanJoint_Response`
- `xarm_msgs/srv/PlanPose` (service): request → `Ros2Xarm_msgsSrvPlanPose_Request`, response → `Ros2Xarm_msgsSrvPlanPose_Response`
- `xarm_msgs/srv/PlanSingleStraight` (service): request → `Ros2Xarm_msgsSrvPlanSingleStraight_Request`, response → `Ros2Xarm_msgsSrvPlanSingleStraight_Response`
- `xarm_msgs/srv/RobotiqActivate` (service): request → `Ros2Xarm_msgsSrvRobotiqActivate_Request`, response → `Ros2Xarm_msgsSrvRobotiqActivate_Response`
- `xarm_msgs/srv/RobotiqGetStatus` (service): request → `Ros2Xarm_msgsSrvRobotiqGetStatus_Request`, response → `Ros2Xarm_msgsSrvRobotiqGetStatus_Response`
- `xarm_msgs/srv/RobotiqMove` (service): request → `Ros2Xarm_msgsSrvRobotiqMove_Request`, response → `Ros2Xarm_msgsSrvRobotiqMove_Response`
- `xarm_msgs/srv/RobotiqReset` (service): request → `Ros2Xarm_msgsSrvRobotiqReset_Request`, response → `Ros2Xarm_msgsSrvRobotiqReset_Response`
- `xarm_msgs/srv/SetAnalogIO` (service): request → `Ros2Xarm_msgsSrvSetAnalogIO_Request`, response → `Ros2Xarm_msgsSrvSetAnalogIO_Response`
- `xarm_msgs/srv/SetDigitalIO` (service): request → `Ros2Xarm_msgsSrvSetDigitalIO_Request`, response → `Ros2Xarm_msgsSrvSetDigitalIO_Response`
- `xarm_msgs/srv/SetFloat32` (service): request → `Ros2Xarm_msgsSrvSetFloat32_Request`, response → `Ros2Xarm_msgsSrvSetFloat32_Response`
- `xarm_msgs/srv/SetFloat32List` (service): request → `Ros2Xarm_msgsSrvSetFloat32List_Request`, response → `Ros2Xarm_msgsSrvSetFloat32List_Response`
- `xarm_msgs/srv/SetInt16` (service): request → `Ros2Xarm_msgsSrvSetInt16_Request`, response → `Ros2Xarm_msgsSrvSetInt16_Response`
- `xarm_msgs/srv/SetInt16ById` (service): request → `Ros2Xarm_msgsSrvSetInt16ById_Request`, response → `Ros2Xarm_msgsSrvSetInt16ById_Response`
- `xarm_msgs/srv/SetInt16List` (service): request → `Ros2Xarm_msgsSrvSetInt16List_Request`, response → `Ros2Xarm_msgsSrvSetInt16List_Response`
- `xarm_msgs/srv/SetInt32` (service): request → `Ros2Xarm_msgsSrvSetInt32_Request`, response → `Ros2Xarm_msgsSrvSetInt32_Response`
- `xarm_msgs/srv/SetInt32ByType` (service): request → `Ros2Xarm_msgsSrvSetInt32ByType_Request`, response → `Ros2Xarm_msgsSrvSetInt32ByType_Response`
- `xarm_msgs/srv/SetModbusTimeout` (service): request → `Ros2Xarm_msgsSrvSetModbusTimeout_Request`, response → `Ros2Xarm_msgsSrvSetModbusTimeout_Response`
- `xarm_msgs/srv/SetTcpLoad` (service): request → `Ros2Xarm_msgsSrvSetTcpLoad_Request`, response → `Ros2Xarm_msgsSrvSetTcpLoad_Response`
- `xarm_msgs/srv/TrajCtrl` (service): request → `Ros2Xarm_msgsSrvTrajCtrl_Request`, response → `Ros2Xarm_msgsSrvTrajCtrl_Response`
- `xarm_msgs/srv/TrajPlay` (service): request → `Ros2Xarm_msgsSrvTrajPlay_Request`, response → `Ros2Xarm_msgsSrvTrajPlay_Response`
- `xarm_msgs/srv/VacuumGripperCtrl` (service): request → `Ros2Xarm_msgsSrvVacuumGripperCtrl_Request`, response → `Ros2Xarm_msgsSrvVacuumGripperCtrl_Response`

Immutable upstream sources:

- [xArm-Developer/xarm_ros2 @ 3dc2b5e8294758d96b54b15fa5920d581b7cbb3d](https://github.com/xArm-Developer/xarm_ros2/tree/3dc2b5e8294758d96b54b15fa5920d581b7cbb3d)
- [ros2/common_interfaces @ a941f14bb318d8d904505ed935ccbb97f24a70a4](https://github.com/ros2/common_interfaces/tree/a941f14bb318d8d904505ed935ccbb97f24a70a4)
- [ros2/rcl_interfaces @ 7aa3caf43377ea6ad615bc1040832e2c7566bfbe](https://github.com/ros2/rcl_interfaces/tree/7aa3caf43377ea6ad615bc1040832e2c7566bfbe)

## ros2_master

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `builtin_interfaces/msg/Time` | `Ros2Builtin_interfacesMsgTime` | 8..8 | sec: int32; nanosec: uint32 |
| `geometry_msgs/msg/Point` | `Ros2Geometry_msgsMsgPoint` | 24..24 | x: float64; y: float64; z: float64 |
| `geometry_msgs/msg/Quaternion` | `Ros2Geometry_msgsMsgQuaternion` | 32..32 | x: float64; y: float64; z: float64; w: float64 |
| `geometry_msgs/msg/Pose` | `Ros2Geometry_msgsMsgPose` | 56..56 | position: geometry_msgs/msg/Point; orientation: geometry_msgs/msg/Quaternion |
| `std_msgs/msg/Header` | `Ros2Std_msgsMsgHeader` | 12..268 | stamp: builtin_interfaces/msg/Time; frame_id: string text<=256B |
| `xarm_msgs/msg/CIOState` | `Ros2Xarm_msgsMsgCIOState` | 72..328 | header: std_msgs/msg/Header; state: int16; code: int16; input_digitals: uint16[2]; output_digitals: uint16[2]; input_analogs: float32[2]; output_analogs: float32[2]; input_conf: uint8[16]; output_conf: uint8[16] |
| `xarm_msgs/msg/IOState` | `Ros2Xarm_msgsMsgIOState` | 16..16 | digital_1: int32; digital_2: int32; analog_1: float32; analog_2: float32 |
| `xarm_msgs/msg/RobotMsg` | `Ros2Xarm_msgsMsgRobotMsg` | 78..362 | header: std_msgs/msg/Header; state: int16; mode: int16; cmdnum: int16; mt_brake: int16; mt_able: int16; err: int16; warn: int16; angle: float32 sequence<=7; pose: float32[6]; offset: float32[6] |
| `xarm_msgs/srv/BioGripperCtrl_Request` | `Ros2Xarm_msgsSrvBioGripperCtrl_Request` | 7..7 | speed: int16; wait: bool; timeout: float32 |
| `xarm_msgs/srv/BioGripperCtrl_Response` | `Ros2Xarm_msgsSrvBioGripperCtrl_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/BioGripperEnable_Request` | `Ros2Xarm_msgsSrvBioGripperEnable_Request` | 6..6 | enable: bool; wait: bool; timeout: float32 |
| `xarm_msgs/srv/BioGripperEnable_Response` | `Ros2Xarm_msgsSrvBioGripperEnable_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/Call_Request` | `Ros2Xarm_msgsSrvCall_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/Call_Response` | `Ros2Xarm_msgsSrvCall_Response` | 8..264 | ret: int32; message: string text<=256B |
| `xarm_msgs/srv/FtCaliLoad_Request` | `Ros2Xarm_msgsSrvFtCaliLoad_Request` | 21..149 | datas: float32 sequence<=32; association_setting_tcp_load: bool; m: float32; x: float32; y: float32; z: float32 |
| `xarm_msgs/srv/FtCaliLoad_Response` | `Ros2Xarm_msgsSrvFtCaliLoad_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtForceConfig_Request` | `Ros2Xarm_msgsSrvFtForceConfig_Request` | 14..334 | coord: int16; c_axis: int16 sequence<=32; ref: float32 sequence<=32; limits: float32 sequence<=32 |
| `xarm_msgs/srv/FtForceConfig_Response` | `Ros2Xarm_msgsSrvFtForceConfig_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtForcePid_Request` | `Ros2Xarm_msgsSrvFtForcePid_Request` | 16..528 | kp: float32 sequence<=32; ki: float32 sequence<=32; kd: float32 sequence<=32; xe_limit: float32 sequence<=32 |
| `xarm_msgs/srv/FtForcePid_Response` | `Ros2Xarm_msgsSrvFtForcePid_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtImpedance_Request` | `Ros2Xarm_msgsSrvFtImpedance_Request` | 18..466 | coord: int16; c_axis: int16 sequence<=32; m: float32 sequence<=32; k: float32 sequence<=32; b: float32 sequence<=32 |
| `xarm_msgs/srv/FtImpedance_Response` | `Ros2Xarm_msgsSrvFtImpedance_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/GetAnalogIO_Request` | `Ros2Xarm_msgsSrvGetAnalogIO_Request` | 2..2 | ionum: int16 |
| `xarm_msgs/srv/GetAnalogIO_Response` | `Ros2Xarm_msgsSrvGetAnalogIO_Response` | 10..266 | ret: int16; message: string text<=256B; data: float32 |
| `xarm_msgs/srv/GetDigitalIO_Request` | `Ros2Xarm_msgsSrvGetDigitalIO_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetDigitalIO_Response` | `Ros2Xarm_msgsSrvGetDigitalIO_Response` | 10..330 | ret: int16; message: string text<=256B; digitals: int16 sequence<=32 |
| `xarm_msgs/srv/GetFloat32_Request` | `Ros2Xarm_msgsSrvGetFloat32_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetFloat32_Response` | `Ros2Xarm_msgsSrvGetFloat32_Response` | 10..266 | ret: int16; message: string text<=256B; data: float32 |
| `xarm_msgs/srv/GetFloat32List_Request` | `Ros2Xarm_msgsSrvGetFloat32List_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetFloat32List_Response` | `Ros2Xarm_msgsSrvGetFloat32List_Response` | 10..394 | ret: int16; message: string text<=256B; datas: float32 sequence<=32 |
| `xarm_msgs/srv/GetInt16_Request` | `Ros2Xarm_msgsSrvGetInt16_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetInt16_Response` | `Ros2Xarm_msgsSrvGetInt16_Response` | 8..264 | ret: int16; message: string text<=256B; data: int16 |
| `xarm_msgs/srv/GetInt16List_Request` | `Ros2Xarm_msgsSrvGetInt16List_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetInt16List_Response` | `Ros2Xarm_msgsSrvGetInt16List_Response` | 10..330 | ret: int16; message: string text<=256B; datas: int16 sequence<=32 |
| `xarm_msgs/srv/GetInt32_Request` | `Ros2Xarm_msgsSrvGetInt32_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetInt32_Response` | `Ros2Xarm_msgsSrvGetInt32_Response` | 10..266 | ret: int16; message: string text<=256B; data: int32 |
| `xarm_msgs/srv/GetInt32ByType_Request` | `Ros2Xarm_msgsSrvGetInt32ByType_Request` | 2..2 | type: int16 |
| `xarm_msgs/srv/GetInt32ByType_Response` | `Ros2Xarm_msgsSrvGetInt32ByType_Response` | 10..266 | ret: int16; message: string text<=256B; data: int32 |
| `xarm_msgs/srv/GetSetModbusData_Request` | `Ros2Xarm_msgsSrvGetSetModbusData_Request` | 11..4107 | modbus_data: uint8 sequence<=4096; modbus_length: int16; ret_length: int16; host_id: uint8; is_transparent_transmission: bool; use_503_port: bool |
| `xarm_msgs/srv/GetSetModbusData_Response` | `Ros2Xarm_msgsSrvGetSetModbusData_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/GripperMove_Request` | `Ros2Xarm_msgsSrvGripperMove_Request` | 9..9 | pos: float32; wait: bool; timeout: float32 |
| `xarm_msgs/srv/GripperMove_Response` | `Ros2Xarm_msgsSrvGripperMove_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/IdenLoad_Request` | `Ros2Xarm_msgsSrvIdenLoad_Request` | 4..4 | estimated_mass: float32 |
| `xarm_msgs/srv/IdenLoad_Response` | `Ros2Xarm_msgsSrvIdenLoad_Response` | 10..394 | ret: int16; message: string text<=256B; datas: float32 sequence<=32 |
| `xarm_msgs/srv/LinearTrackBackOrigin_Request` | `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request` | 2..2 | wait: bool; auto_enable: bool |
| `xarm_msgs/srv/LinearTrackBackOrigin_Response` | `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/LinearTrackSetPos_Request` | `Ros2Xarm_msgsSrvLinearTrackSetPos_Request` | 10..10 | pos: int16; speed: int16; wait: bool; timeout: float32; auto_enable: bool |
| `xarm_msgs/srv/LinearTrackSetPos_Response` | `Ros2Xarm_msgsSrvLinearTrackSetPos_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveCartesian_Request` | `Ros2Xarm_msgsSrvMoveCartesian_Request` | 27..155 | pose: float32 sequence<=32; speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32; radius: float32; is_tool_coord: bool; relative: bool |
| `xarm_msgs/srv/MoveCartesian_Response` | `Ros2Xarm_msgsSrvMoveCartesian_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveCircle_Request` | `Ros2Xarm_msgsSrvMoveCircle_Request` | 29..285 | pose1: float32 sequence<=32; pose2: float32 sequence<=32; percent: float32; speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32 |
| `xarm_msgs/srv/MoveCircle_Response` | `Ros2Xarm_msgsSrvMoveCircle_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveHome_Request` | `Ros2Xarm_msgsSrvMoveHome_Request` | 17..17 | speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32 |
| `xarm_msgs/srv/MoveHome_Response` | `Ros2Xarm_msgsSrvMoveHome_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveJoint_Request` | `Ros2Xarm_msgsSrvMoveJoint_Request` | 25..153 | angles: float32 sequence<=32; speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32; radius: float32 |
| `xarm_msgs/srv/MoveJoint_Response` | `Ros2Xarm_msgsSrvMoveJoint_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveVelocity_Request` | `Ros2Xarm_msgsSrvMoveVelocity_Request` | 10..138 | speeds: float32 sequence<=32; is_sync: bool; is_tool_coord: bool; duration: float32 |
| `xarm_msgs/srv/MoveVelocity_Response` | `Ros2Xarm_msgsSrvMoveVelocity_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/PlanExec_Request` | `Ros2Xarm_msgsSrvPlanExec_Request` | 1..1 | wait: bool |
| `xarm_msgs/srv/PlanExec_Response` | `Ros2Xarm_msgsSrvPlanExec_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/PlanJoint_Request` | `Ros2Xarm_msgsSrvPlanJoint_Request` | 4..260 | target: float64 sequence<=32 |
| `xarm_msgs/srv/PlanJoint_Response` | `Ros2Xarm_msgsSrvPlanJoint_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/PlanPose_Request` | `Ros2Xarm_msgsSrvPlanPose_Request` | 56..56 | target: geometry_msgs/msg/Pose |
| `xarm_msgs/srv/PlanPose_Response` | `Ros2Xarm_msgsSrvPlanPose_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/PlanSingleStraight_Request` | `Ros2Xarm_msgsSrvPlanSingleStraight_Request` | 56..56 | target: geometry_msgs/msg/Pose |
| `xarm_msgs/srv/PlanSingleStraight_Response` | `Ros2Xarm_msgsSrvPlanSingleStraight_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/RobotiqActivate_Request` | `Ros2Xarm_msgsSrvRobotiqActivate_Request` | 5..5 | wait: bool; timeout: float32 |
| `xarm_msgs/srv/RobotiqActivate_Response` | `Ros2Xarm_msgsSrvRobotiqActivate_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/RobotiqGetStatus_Request` | `Ros2Xarm_msgsSrvRobotiqGetStatus_Request` | 1..1 | number_of_registers: uint8 |
| `xarm_msgs/srv/RobotiqGetStatus_Response` | `Ros2Xarm_msgsSrvRobotiqGetStatus_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/RobotiqMove_Request` | `Ros2Xarm_msgsSrvRobotiqMove_Request` | 8..8 | pos: uint8; speed: uint8; force: uint8; wait: bool; timeout: float32 |
| `xarm_msgs/srv/RobotiqMove_Response` | `Ros2Xarm_msgsSrvRobotiqMove_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/RobotiqReset_Request` | `Ros2Xarm_msgsSrvRobotiqReset_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/RobotiqReset_Response` | `Ros2Xarm_msgsSrvRobotiqReset_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/SetAnalogIO_Request` | `Ros2Xarm_msgsSrvSetAnalogIO_Request` | 14..142 | ionum: int16; value: float32; xyz: float32 sequence<=32; tol_r: float32 |
| `xarm_msgs/srv/SetAnalogIO_Response` | `Ros2Xarm_msgsSrvSetAnalogIO_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetDigitalIO_Request` | `Ros2Xarm_msgsSrvSetDigitalIO_Request` | 16..144 | ionum: int16; value: int16; delay_sec: float32; xyz: float32 sequence<=32; tol_r: float32 |
| `xarm_msgs/srv/SetDigitalIO_Response` | `Ros2Xarm_msgsSrvSetDigitalIO_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetFloat32_Request` | `Ros2Xarm_msgsSrvSetFloat32_Request` | 4..4 | data: float32 |
| `xarm_msgs/srv/SetFloat32_Response` | `Ros2Xarm_msgsSrvSetFloat32_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetFloat32List_Request` | `Ros2Xarm_msgsSrvSetFloat32List_Request` | 4..132 | datas: float32 sequence<=32 |
| `xarm_msgs/srv/SetFloat32List_Response` | `Ros2Xarm_msgsSrvSetFloat32List_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt16_Request` | `Ros2Xarm_msgsSrvSetInt16_Request` | 2..2 | data: int16 |
| `xarm_msgs/srv/SetInt16_Response` | `Ros2Xarm_msgsSrvSetInt16_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt16ById_Request` | `Ros2Xarm_msgsSrvSetInt16ById_Request` | 4..4 | id: int16; data: int16 |
| `xarm_msgs/srv/SetInt16ById_Response` | `Ros2Xarm_msgsSrvSetInt16ById_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt16List_Request` | `Ros2Xarm_msgsSrvSetInt16List_Request` | 4..68 | datas: int16 sequence<=32 |
| `xarm_msgs/srv/SetInt16List_Response` | `Ros2Xarm_msgsSrvSetInt16List_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt32_Request` | `Ros2Xarm_msgsSrvSetInt32_Request` | 4..4 | data: int32 |
| `xarm_msgs/srv/SetInt32_Response` | `Ros2Xarm_msgsSrvSetInt32_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt32ByType_Request` | `Ros2Xarm_msgsSrvSetInt32ByType_Request` | 6..6 | type: int16; data: int32 |
| `xarm_msgs/srv/SetInt32ByType_Response` | `Ros2Xarm_msgsSrvSetInt32ByType_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetModbusTimeout_Request` | `Ros2Xarm_msgsSrvSetModbusTimeout_Request` | 5..5 | timeout: int32; is_transparent_transmission: bool |
| `xarm_msgs/srv/SetModbusTimeout_Response` | `Ros2Xarm_msgsSrvSetModbusTimeout_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetTcpLoad_Request` | `Ros2Xarm_msgsSrvSetTcpLoad_Request` | 8..136 | weight: float32; center_of_gravity: float32 sequence<=32 |
| `xarm_msgs/srv/SetTcpLoad_Response` | `Ros2Xarm_msgsSrvSetTcpLoad_Response` | 8..264 | ret: int32; message: string text<=256B |
| `xarm_msgs/srv/TrajCtrl_Request` | `Ros2Xarm_msgsSrvTrajCtrl_Request` | 8..264 | filename: string text<=256B; timeout: float32 |
| `xarm_msgs/srv/TrajCtrl_Response` | `Ros2Xarm_msgsSrvTrajCtrl_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/TrajPlay_Request` | `Ros2Xarm_msgsSrvTrajPlay_Request` | 9..265 | filename: string text<=256B; times: int16; double_speed: int16; wait: bool |
| `xarm_msgs/srv/TrajPlay_Response` | `Ros2Xarm_msgsSrvTrajPlay_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/VacuumGripperCtrl_Request` | `Ros2Xarm_msgsSrvVacuumGripperCtrl_Request` | 10..10 | on: bool; wait: bool; timeout: float32; delay_sec: float32 |
| `xarm_msgs/srv/VacuumGripperCtrl_Response` | `Ros2Xarm_msgsSrvVacuumGripperCtrl_Response` | 6..262 | ret: int16; message: string text<=256B |

Interfaces:

- `builtin_interfaces/msg/Time` (message): message → `Ros2Builtin_interfacesMsgTime`
- `geometry_msgs/msg/Point` (message): message → `Ros2Geometry_msgsMsgPoint`
- `geometry_msgs/msg/Pose` (message): message → `Ros2Geometry_msgsMsgPose`
- `geometry_msgs/msg/Quaternion` (message): message → `Ros2Geometry_msgsMsgQuaternion`
- `std_msgs/msg/Header` (message): message → `Ros2Std_msgsMsgHeader`
- `xarm_msgs/msg/CIOState` (message): message → `Ros2Xarm_msgsMsgCIOState`
- `xarm_msgs/msg/IOState` (message): message → `Ros2Xarm_msgsMsgIOState`
- `xarm_msgs/msg/RobotMsg` (message): message → `Ros2Xarm_msgsMsgRobotMsg`
- `xarm_msgs/srv/BioGripperCtrl` (service): request → `Ros2Xarm_msgsSrvBioGripperCtrl_Request`, response → `Ros2Xarm_msgsSrvBioGripperCtrl_Response`
- `xarm_msgs/srv/BioGripperEnable` (service): request → `Ros2Xarm_msgsSrvBioGripperEnable_Request`, response → `Ros2Xarm_msgsSrvBioGripperEnable_Response`
- `xarm_msgs/srv/Call` (service): request → `Ros2Xarm_msgsSrvCall_Request`, response → `Ros2Xarm_msgsSrvCall_Response`
- `xarm_msgs/srv/FtCaliLoad` (service): request → `Ros2Xarm_msgsSrvFtCaliLoad_Request`, response → `Ros2Xarm_msgsSrvFtCaliLoad_Response`
- `xarm_msgs/srv/FtForceConfig` (service): request → `Ros2Xarm_msgsSrvFtForceConfig_Request`, response → `Ros2Xarm_msgsSrvFtForceConfig_Response`
- `xarm_msgs/srv/FtForcePid` (service): request → `Ros2Xarm_msgsSrvFtForcePid_Request`, response → `Ros2Xarm_msgsSrvFtForcePid_Response`
- `xarm_msgs/srv/FtImpedance` (service): request → `Ros2Xarm_msgsSrvFtImpedance_Request`, response → `Ros2Xarm_msgsSrvFtImpedance_Response`
- `xarm_msgs/srv/GetAnalogIO` (service): request → `Ros2Xarm_msgsSrvGetAnalogIO_Request`, response → `Ros2Xarm_msgsSrvGetAnalogIO_Response`
- `xarm_msgs/srv/GetDigitalIO` (service): request → `Ros2Xarm_msgsSrvGetDigitalIO_Request`, response → `Ros2Xarm_msgsSrvGetDigitalIO_Response`
- `xarm_msgs/srv/GetFloat32` (service): request → `Ros2Xarm_msgsSrvGetFloat32_Request`, response → `Ros2Xarm_msgsSrvGetFloat32_Response`
- `xarm_msgs/srv/GetFloat32List` (service): request → `Ros2Xarm_msgsSrvGetFloat32List_Request`, response → `Ros2Xarm_msgsSrvGetFloat32List_Response`
- `xarm_msgs/srv/GetInt16` (service): request → `Ros2Xarm_msgsSrvGetInt16_Request`, response → `Ros2Xarm_msgsSrvGetInt16_Response`
- `xarm_msgs/srv/GetInt16List` (service): request → `Ros2Xarm_msgsSrvGetInt16List_Request`, response → `Ros2Xarm_msgsSrvGetInt16List_Response`
- `xarm_msgs/srv/GetInt32` (service): request → `Ros2Xarm_msgsSrvGetInt32_Request`, response → `Ros2Xarm_msgsSrvGetInt32_Response`
- `xarm_msgs/srv/GetInt32ByType` (service): request → `Ros2Xarm_msgsSrvGetInt32ByType_Request`, response → `Ros2Xarm_msgsSrvGetInt32ByType_Response`
- `xarm_msgs/srv/GetSetModbusData` (service): request → `Ros2Xarm_msgsSrvGetSetModbusData_Request`, response → `Ros2Xarm_msgsSrvGetSetModbusData_Response`
- `xarm_msgs/srv/GripperMove` (service): request → `Ros2Xarm_msgsSrvGripperMove_Request`, response → `Ros2Xarm_msgsSrvGripperMove_Response`
- `xarm_msgs/srv/IdenLoad` (service): request → `Ros2Xarm_msgsSrvIdenLoad_Request`, response → `Ros2Xarm_msgsSrvIdenLoad_Response`
- `xarm_msgs/srv/LinearTrackBackOrigin` (service): request → `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request`, response → `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response`
- `xarm_msgs/srv/LinearTrackSetPos` (service): request → `Ros2Xarm_msgsSrvLinearTrackSetPos_Request`, response → `Ros2Xarm_msgsSrvLinearTrackSetPos_Response`
- `xarm_msgs/srv/MoveCartesian` (service): request → `Ros2Xarm_msgsSrvMoveCartesian_Request`, response → `Ros2Xarm_msgsSrvMoveCartesian_Response`
- `xarm_msgs/srv/MoveCircle` (service): request → `Ros2Xarm_msgsSrvMoveCircle_Request`, response → `Ros2Xarm_msgsSrvMoveCircle_Response`
- `xarm_msgs/srv/MoveHome` (service): request → `Ros2Xarm_msgsSrvMoveHome_Request`, response → `Ros2Xarm_msgsSrvMoveHome_Response`
- `xarm_msgs/srv/MoveJoint` (service): request → `Ros2Xarm_msgsSrvMoveJoint_Request`, response → `Ros2Xarm_msgsSrvMoveJoint_Response`
- `xarm_msgs/srv/MoveVelocity` (service): request → `Ros2Xarm_msgsSrvMoveVelocity_Request`, response → `Ros2Xarm_msgsSrvMoveVelocity_Response`
- `xarm_msgs/srv/PlanExec` (service): request → `Ros2Xarm_msgsSrvPlanExec_Request`, response → `Ros2Xarm_msgsSrvPlanExec_Response`
- `xarm_msgs/srv/PlanJoint` (service): request → `Ros2Xarm_msgsSrvPlanJoint_Request`, response → `Ros2Xarm_msgsSrvPlanJoint_Response`
- `xarm_msgs/srv/PlanPose` (service): request → `Ros2Xarm_msgsSrvPlanPose_Request`, response → `Ros2Xarm_msgsSrvPlanPose_Response`
- `xarm_msgs/srv/PlanSingleStraight` (service): request → `Ros2Xarm_msgsSrvPlanSingleStraight_Request`, response → `Ros2Xarm_msgsSrvPlanSingleStraight_Response`
- `xarm_msgs/srv/RobotiqActivate` (service): request → `Ros2Xarm_msgsSrvRobotiqActivate_Request`, response → `Ros2Xarm_msgsSrvRobotiqActivate_Response`
- `xarm_msgs/srv/RobotiqGetStatus` (service): request → `Ros2Xarm_msgsSrvRobotiqGetStatus_Request`, response → `Ros2Xarm_msgsSrvRobotiqGetStatus_Response`
- `xarm_msgs/srv/RobotiqMove` (service): request → `Ros2Xarm_msgsSrvRobotiqMove_Request`, response → `Ros2Xarm_msgsSrvRobotiqMove_Response`
- `xarm_msgs/srv/RobotiqReset` (service): request → `Ros2Xarm_msgsSrvRobotiqReset_Request`, response → `Ros2Xarm_msgsSrvRobotiqReset_Response`
- `xarm_msgs/srv/SetAnalogIO` (service): request → `Ros2Xarm_msgsSrvSetAnalogIO_Request`, response → `Ros2Xarm_msgsSrvSetAnalogIO_Response`
- `xarm_msgs/srv/SetDigitalIO` (service): request → `Ros2Xarm_msgsSrvSetDigitalIO_Request`, response → `Ros2Xarm_msgsSrvSetDigitalIO_Response`
- `xarm_msgs/srv/SetFloat32` (service): request → `Ros2Xarm_msgsSrvSetFloat32_Request`, response → `Ros2Xarm_msgsSrvSetFloat32_Response`
- `xarm_msgs/srv/SetFloat32List` (service): request → `Ros2Xarm_msgsSrvSetFloat32List_Request`, response → `Ros2Xarm_msgsSrvSetFloat32List_Response`
- `xarm_msgs/srv/SetInt16` (service): request → `Ros2Xarm_msgsSrvSetInt16_Request`, response → `Ros2Xarm_msgsSrvSetInt16_Response`
- `xarm_msgs/srv/SetInt16ById` (service): request → `Ros2Xarm_msgsSrvSetInt16ById_Request`, response → `Ros2Xarm_msgsSrvSetInt16ById_Response`
- `xarm_msgs/srv/SetInt16List` (service): request → `Ros2Xarm_msgsSrvSetInt16List_Request`, response → `Ros2Xarm_msgsSrvSetInt16List_Response`
- `xarm_msgs/srv/SetInt32` (service): request → `Ros2Xarm_msgsSrvSetInt32_Request`, response → `Ros2Xarm_msgsSrvSetInt32_Response`
- `xarm_msgs/srv/SetInt32ByType` (service): request → `Ros2Xarm_msgsSrvSetInt32ByType_Request`, response → `Ros2Xarm_msgsSrvSetInt32ByType_Response`
- `xarm_msgs/srv/SetModbusTimeout` (service): request → `Ros2Xarm_msgsSrvSetModbusTimeout_Request`, response → `Ros2Xarm_msgsSrvSetModbusTimeout_Response`
- `xarm_msgs/srv/SetTcpLoad` (service): request → `Ros2Xarm_msgsSrvSetTcpLoad_Request`, response → `Ros2Xarm_msgsSrvSetTcpLoad_Response`
- `xarm_msgs/srv/TrajCtrl` (service): request → `Ros2Xarm_msgsSrvTrajCtrl_Request`, response → `Ros2Xarm_msgsSrvTrajCtrl_Response`
- `xarm_msgs/srv/TrajPlay` (service): request → `Ros2Xarm_msgsSrvTrajPlay_Request`, response → `Ros2Xarm_msgsSrvTrajPlay_Response`
- `xarm_msgs/srv/VacuumGripperCtrl` (service): request → `Ros2Xarm_msgsSrvVacuumGripperCtrl_Request`, response → `Ros2Xarm_msgsSrvVacuumGripperCtrl_Response`

Immutable upstream sources:

- [xArm-Developer/xarm_ros2 @ 3654ba7bb2a0e502088251728d07263ea399d4a4](https://github.com/xArm-Developer/xarm_ros2/tree/3654ba7bb2a0e502088251728d07263ea399d4a4)
- [ros2/common_interfaces @ 6356bc82f3a034f5d2c61c6760df0007a6cadfb0](https://github.com/ros2/common_interfaces/tree/6356bc82f3a034f5d2c61c6760df0007a6cadfb0)
- [ros2/rcl_interfaces @ ee04e046132be9d9fdcdaeff8dd54a5d0d9aa022](https://github.com/ros2/rcl_interfaces/tree/ee04e046132be9d9fdcdaeff8dd54a5d0d9aa022)

## ros2_rolling

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `builtin_interfaces/msg/Time` | `Ros2Builtin_interfacesMsgTime` | 8..8 | sec: int32; nanosec: uint32 |
| `geometry_msgs/msg/Point` | `Ros2Geometry_msgsMsgPoint` | 24..24 | x: float64; y: float64; z: float64 |
| `geometry_msgs/msg/Quaternion` | `Ros2Geometry_msgsMsgQuaternion` | 32..32 | x: float64; y: float64; z: float64; w: float64 |
| `geometry_msgs/msg/Pose` | `Ros2Geometry_msgsMsgPose` | 56..56 | position: geometry_msgs/msg/Point; orientation: geometry_msgs/msg/Quaternion |
| `std_msgs/msg/Header` | `Ros2Std_msgsMsgHeader` | 12..268 | stamp: builtin_interfaces/msg/Time; frame_id: string text<=256B |
| `xarm_msgs/msg/CIOState` | `Ros2Xarm_msgsMsgCIOState` | 72..328 | header: std_msgs/msg/Header; state: int16; code: int16; input_digitals: uint16[2]; output_digitals: uint16[2]; input_analogs: float32[2]; output_analogs: float32[2]; input_conf: uint8[16]; output_conf: uint8[16] |
| `xarm_msgs/msg/IOState` | `Ros2Xarm_msgsMsgIOState` | 16..16 | digital_1: int32; digital_2: int32; analog_1: float32; analog_2: float32 |
| `xarm_msgs/msg/MoveVelocity` | `Ros2Xarm_msgsMsgMoveVelocity` | 10..138 | speeds: float32 sequence<=32; is_sync: bool; is_tool_coord: bool; duration: float32 |
| `xarm_msgs/msg/RobotMsg` | `Ros2Xarm_msgsMsgRobotMsg` | 78..362 | header: std_msgs/msg/Header; state: int16; mode: int16; cmdnum: int16; mt_brake: int16; mt_able: int16; err: int16; warn: int16; angle: float32 sequence<=7; pose: float32[6]; offset: float32[6] |
| `xarm_msgs/srv/BioGripperCtrl_Request` | `Ros2Xarm_msgsSrvBioGripperCtrl_Request` | 7..7 | speed: int16; wait: bool; timeout: float32 |
| `xarm_msgs/srv/BioGripperCtrl_Response` | `Ros2Xarm_msgsSrvBioGripperCtrl_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/BioGripperEnable_Request` | `Ros2Xarm_msgsSrvBioGripperEnable_Request` | 6..6 | enable: bool; wait: bool; timeout: float32 |
| `xarm_msgs/srv/BioGripperEnable_Response` | `Ros2Xarm_msgsSrvBioGripperEnable_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/Call_Request` | `Ros2Xarm_msgsSrvCall_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/Call_Response` | `Ros2Xarm_msgsSrvCall_Response` | 8..264 | ret: int32; message: string text<=256B |
| `xarm_msgs/srv/FtAdmittanceParams_Request` | `Ros2Xarm_msgsSrvFtAdmittanceParams_Request` | 18..466 | coord: int16; c_axis: int16 sequence<=32; m: float32 sequence<=32; k: float32 sequence<=32; b: float32 sequence<=32 |
| `xarm_msgs/srv/FtAdmittanceParams_Response` | `Ros2Xarm_msgsSrvFtAdmittanceParams_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtCaliLoad_Request` | `Ros2Xarm_msgsSrvFtCaliLoad_Request` | 21..149 | datas: float32 sequence<=32; association_setting_tcp_load: bool; m: float32; x: float32; y: float32; z: float32 |
| `xarm_msgs/srv/FtCaliLoad_Response` | `Ros2Xarm_msgsSrvFtCaliLoad_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtForceConfig_Request` | `Ros2Xarm_msgsSrvFtForceConfig_Request` | 14..334 | coord: int16; c_axis: int16 sequence<=32; ref: float32 sequence<=32; limits: float32 sequence<=32 |
| `xarm_msgs/srv/FtForceConfig_Response` | `Ros2Xarm_msgsSrvFtForceConfig_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtForceParams_Request` | `Ros2Xarm_msgsSrvFtForceParams_Request` | 30..862 | coord: int16; c_axis: int16 sequence<=32; ref: float32 sequence<=32; limits: float32 sequence<=32; kp: float32 sequence<=32; ki: float32 sequence<=32; kd: float32 sequence<=32; xe_limit: float32 sequence<=32 |
| `xarm_msgs/srv/FtForceParams_Response` | `Ros2Xarm_msgsSrvFtForceParams_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtForcePid_Request` | `Ros2Xarm_msgsSrvFtForcePid_Request` | 16..528 | kp: float32 sequence<=32; ki: float32 sequence<=32; kd: float32 sequence<=32; xe_limit: float32 sequence<=32 |
| `xarm_msgs/srv/FtForcePid_Response` | `Ros2Xarm_msgsSrvFtForcePid_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/FtImpedance_Request` | `Ros2Xarm_msgsSrvFtImpedance_Request` | 18..466 | coord: int16; c_axis: int16 sequence<=32; m: float32 sequence<=32; k: float32 sequence<=32; b: float32 sequence<=32 |
| `xarm_msgs/srv/FtImpedance_Response` | `Ros2Xarm_msgsSrvFtImpedance_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/GetAnalogIO_Request` | `Ros2Xarm_msgsSrvGetAnalogIO_Request` | 2..2 | ionum: int16 |
| `xarm_msgs/srv/GetAnalogIO_Response` | `Ros2Xarm_msgsSrvGetAnalogIO_Response` | 10..266 | ret: int16; message: string text<=256B; data: float32 |
| `xarm_msgs/srv/GetDigitalIO_Request` | `Ros2Xarm_msgsSrvGetDigitalIO_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetDigitalIO_Response` | `Ros2Xarm_msgsSrvGetDigitalIO_Response` | 10..330 | ret: int16; message: string text<=256B; digitals: int16 sequence<=32 |
| `xarm_msgs/srv/GetFloat32_Request` | `Ros2Xarm_msgsSrvGetFloat32_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetFloat32_Response` | `Ros2Xarm_msgsSrvGetFloat32_Response` | 10..266 | ret: int16; message: string text<=256B; data: float32 |
| `xarm_msgs/srv/GetFloat32List_Request` | `Ros2Xarm_msgsSrvGetFloat32List_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetFloat32List_Response` | `Ros2Xarm_msgsSrvGetFloat32List_Response` | 10..394 | ret: int16; message: string text<=256B; datas: float32 sequence<=32 |
| `xarm_msgs/srv/GetInt16_Request` | `Ros2Xarm_msgsSrvGetInt16_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetInt16_Response` | `Ros2Xarm_msgsSrvGetInt16_Response` | 8..264 | ret: int16; message: string text<=256B; data: int16 |
| `xarm_msgs/srv/GetInt16List_Request` | `Ros2Xarm_msgsSrvGetInt16List_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetInt16List_Response` | `Ros2Xarm_msgsSrvGetInt16List_Response` | 10..330 | ret: int16; message: string text<=256B; datas: int16 sequence<=32 |
| `xarm_msgs/srv/GetInt32_Request` | `Ros2Xarm_msgsSrvGetInt32_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/GetInt32_Response` | `Ros2Xarm_msgsSrvGetInt32_Response` | 10..266 | ret: int16; message: string text<=256B; data: int32 |
| `xarm_msgs/srv/GetInt32ByType_Request` | `Ros2Xarm_msgsSrvGetInt32ByType_Request` | 2..2 | type: int16 |
| `xarm_msgs/srv/GetInt32ByType_Response` | `Ros2Xarm_msgsSrvGetInt32ByType_Response` | 10..266 | ret: int16; message: string text<=256B; data: int32 |
| `xarm_msgs/srv/GetSetModbusData_Request` | `Ros2Xarm_msgsSrvGetSetModbusData_Request` | 11..4107 | modbus_data: uint8 sequence<=4096; modbus_length: int16; ret_length: int16; host_id: uint8; is_transparent_transmission: bool; use_503_port: bool |
| `xarm_msgs/srv/GetSetModbusData_Response` | `Ros2Xarm_msgsSrvGetSetModbusData_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/GripperMove_Request` | `Ros2Xarm_msgsSrvGripperMove_Request` | 9..9 | pos: float32; wait: bool; timeout: float32 |
| `xarm_msgs/srv/GripperMove_Response` | `Ros2Xarm_msgsSrvGripperMove_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/IdenLoad_Request` | `Ros2Xarm_msgsSrvIdenLoad_Request` | 4..4 | estimated_mass: float32 |
| `xarm_msgs/srv/IdenLoad_Response` | `Ros2Xarm_msgsSrvIdenLoad_Response` | 10..394 | ret: int16; message: string text<=256B; datas: float32 sequence<=32 |
| `xarm_msgs/srv/LinearMotorBackOrigin_Request` | `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request` | 2..2 | wait: bool; auto_enable: bool |
| `xarm_msgs/srv/LinearMotorBackOrigin_Response` | `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/LinearMotorSetPos_Request` | `Ros2Xarm_msgsSrvLinearMotorSetPos_Request` | 10..10 | pos: int16; speed: int16; wait: bool; timeout: float32; auto_enable: bool |
| `xarm_msgs/srv/LinearMotorSetPos_Response` | `Ros2Xarm_msgsSrvLinearMotorSetPos_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/LinearTrackBackOrigin_Request` | `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request` | 2..2 | wait: bool; auto_enable: bool |
| `xarm_msgs/srv/LinearTrackBackOrigin_Response` | `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/LinearTrackSetPos_Request` | `Ros2Xarm_msgsSrvLinearTrackSetPos_Request` | 10..10 | pos: int16; speed: int16; wait: bool; timeout: float32; auto_enable: bool |
| `xarm_msgs/srv/LinearTrackSetPos_Response` | `Ros2Xarm_msgsSrvLinearTrackSetPos_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveCartesian_Request` | `Ros2Xarm_msgsSrvMoveCartesian_Request` | 28..156 | pose: float32 sequence<=32; speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32; radius: float32; is_tool_coord: bool; relative: bool; motion_type: uint8 |
| `xarm_msgs/srv/MoveCartesian_Response` | `Ros2Xarm_msgsSrvMoveCartesian_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveCircle_Request` | `Ros2Xarm_msgsSrvMoveCircle_Request` | 31..287 | pose1: float32 sequence<=32; pose2: float32 sequence<=32; percent: float32; speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32; is_tool_coord: bool; is_axis_angle: bool |
| `xarm_msgs/srv/MoveCircle_Response` | `Ros2Xarm_msgsSrvMoveCircle_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveHome_Request` | `Ros2Xarm_msgsSrvMoveHome_Request` | 17..17 | speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32 |
| `xarm_msgs/srv/MoveHome_Response` | `Ros2Xarm_msgsSrvMoveHome_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveJoint_Request` | `Ros2Xarm_msgsSrvMoveJoint_Request` | 26..154 | angles: float32 sequence<=32; speed: float32; acc: float32; mvtime: float32; wait: bool; timeout: float32; radius: float32; relative: bool |
| `xarm_msgs/srv/MoveJoint_Response` | `Ros2Xarm_msgsSrvMoveJoint_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/MoveVelocity_Request` | `Ros2Xarm_msgsSrvMoveVelocity_Request` | 10..138 | speeds: float32 sequence<=32; is_sync: bool; is_tool_coord: bool; duration: float32 |
| `xarm_msgs/srv/MoveVelocity_Response` | `Ros2Xarm_msgsSrvMoveVelocity_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/PlanExec_Request` | `Ros2Xarm_msgsSrvPlanExec_Request` | 1..1 | wait: bool |
| `xarm_msgs/srv/PlanExec_Response` | `Ros2Xarm_msgsSrvPlanExec_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/PlanJoint_Request` | `Ros2Xarm_msgsSrvPlanJoint_Request` | 4..260 | target: float64 sequence<=32 |
| `xarm_msgs/srv/PlanJoint_Response` | `Ros2Xarm_msgsSrvPlanJoint_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/PlanPose_Request` | `Ros2Xarm_msgsSrvPlanPose_Request` | 56..56 | target: geometry_msgs/msg/Pose |
| `xarm_msgs/srv/PlanPose_Response` | `Ros2Xarm_msgsSrvPlanPose_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/PlanSingleStraight_Request` | `Ros2Xarm_msgsSrvPlanSingleStraight_Request` | 56..56 | target: geometry_msgs/msg/Pose |
| `xarm_msgs/srv/PlanSingleStraight_Response` | `Ros2Xarm_msgsSrvPlanSingleStraight_Response` | 1..1 | success: bool |
| `xarm_msgs/srv/RobotiqActivate_Request` | `Ros2Xarm_msgsSrvRobotiqActivate_Request` | 5..5 | wait: bool; timeout: float32 |
| `xarm_msgs/srv/RobotiqActivate_Response` | `Ros2Xarm_msgsSrvRobotiqActivate_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/RobotiqGetStatus_Request` | `Ros2Xarm_msgsSrvRobotiqGetStatus_Request` | 1..1 | number_of_registers: uint8 |
| `xarm_msgs/srv/RobotiqGetStatus_Response` | `Ros2Xarm_msgsSrvRobotiqGetStatus_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/RobotiqMove_Request` | `Ros2Xarm_msgsSrvRobotiqMove_Request` | 8..8 | pos: uint8; speed: uint8; force: uint8; wait: bool; timeout: float32 |
| `xarm_msgs/srv/RobotiqMove_Response` | `Ros2Xarm_msgsSrvRobotiqMove_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/RobotiqReset_Request` | `Ros2Xarm_msgsSrvRobotiqReset_Request` | 0..0 | (empty original component) |
| `xarm_msgs/srv/RobotiqReset_Response` | `Ros2Xarm_msgsSrvRobotiqReset_Response` | 10..4362 | ret: int16; message: string text<=256B; ret_data: uint8 sequence<=4096 |
| `xarm_msgs/srv/SetAnalogIO_Request` | `Ros2Xarm_msgsSrvSetAnalogIO_Request` | 14..142 | ionum: int16; value: float32; xyz: float32 sequence<=32; tol_r: float32 |
| `xarm_msgs/srv/SetAnalogIO_Response` | `Ros2Xarm_msgsSrvSetAnalogIO_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetDigitalIO_Request` | `Ros2Xarm_msgsSrvSetDigitalIO_Request` | 16..144 | ionum: int16; value: int16; delay_sec: float32; xyz: float32 sequence<=32; tol_r: float32 |
| `xarm_msgs/srv/SetDigitalIO_Response` | `Ros2Xarm_msgsSrvSetDigitalIO_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetFloat32_Request` | `Ros2Xarm_msgsSrvSetFloat32_Request` | 4..4 | data: float32 |
| `xarm_msgs/srv/SetFloat32_Response` | `Ros2Xarm_msgsSrvSetFloat32_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetFloat32List_Request` | `Ros2Xarm_msgsSrvSetFloat32List_Request` | 4..132 | datas: float32 sequence<=32 |
| `xarm_msgs/srv/SetFloat32List_Response` | `Ros2Xarm_msgsSrvSetFloat32List_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt16_Request` | `Ros2Xarm_msgsSrvSetInt16_Request` | 2..2 | data: int16 |
| `xarm_msgs/srv/SetInt16_Response` | `Ros2Xarm_msgsSrvSetInt16_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt16ById_Request` | `Ros2Xarm_msgsSrvSetInt16ById_Request` | 4..4 | id: int16; data: int16 |
| `xarm_msgs/srv/SetInt16ById_Response` | `Ros2Xarm_msgsSrvSetInt16ById_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt16List_Request` | `Ros2Xarm_msgsSrvSetInt16List_Request` | 4..68 | datas: int16 sequence<=32 |
| `xarm_msgs/srv/SetInt16List_Response` | `Ros2Xarm_msgsSrvSetInt16List_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt32_Request` | `Ros2Xarm_msgsSrvSetInt32_Request` | 4..4 | data: int32 |
| `xarm_msgs/srv/SetInt32_Response` | `Ros2Xarm_msgsSrvSetInt32_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetInt32ByType_Request` | `Ros2Xarm_msgsSrvSetInt32ByType_Request` | 6..6 | type: int16; data: int32 |
| `xarm_msgs/srv/SetInt32ByType_Response` | `Ros2Xarm_msgsSrvSetInt32ByType_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetModbusTimeout_Request` | `Ros2Xarm_msgsSrvSetModbusTimeout_Request` | 5..5 | timeout: int32; is_transparent_transmission: bool |
| `xarm_msgs/srv/SetModbusTimeout_Response` | `Ros2Xarm_msgsSrvSetModbusTimeout_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/SetTcpLoad_Request` | `Ros2Xarm_msgsSrvSetTcpLoad_Request` | 8..136 | weight: float32; center_of_gravity: float32 sequence<=32 |
| `xarm_msgs/srv/SetTcpLoad_Response` | `Ros2Xarm_msgsSrvSetTcpLoad_Response` | 8..264 | ret: int32; message: string text<=256B |
| `xarm_msgs/srv/TrajCtrl_Request` | `Ros2Xarm_msgsSrvTrajCtrl_Request` | 8..264 | filename: string text<=256B; timeout: float32 |
| `xarm_msgs/srv/TrajCtrl_Response` | `Ros2Xarm_msgsSrvTrajCtrl_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/TrajPlay_Request` | `Ros2Xarm_msgsSrvTrajPlay_Request` | 9..265 | filename: string text<=256B; times: int16; double_speed: int16; wait: bool |
| `xarm_msgs/srv/TrajPlay_Response` | `Ros2Xarm_msgsSrvTrajPlay_Response` | 6..262 | ret: int16; message: string text<=256B |
| `xarm_msgs/srv/VacuumGripperCtrl_Request` | `Ros2Xarm_msgsSrvVacuumGripperCtrl_Request` | 13..13 | on: bool; wait: bool; timeout: float32; delay_sec: float32; sync: bool; hardware_version: int16 |
| `xarm_msgs/srv/VacuumGripperCtrl_Response` | `Ros2Xarm_msgsSrvVacuumGripperCtrl_Response` | 6..262 | ret: int16; message: string text<=256B |

Interfaces:

- `builtin_interfaces/msg/Time` (message): message → `Ros2Builtin_interfacesMsgTime`
- `geometry_msgs/msg/Point` (message): message → `Ros2Geometry_msgsMsgPoint`
- `geometry_msgs/msg/Pose` (message): message → `Ros2Geometry_msgsMsgPose`
- `geometry_msgs/msg/Quaternion` (message): message → `Ros2Geometry_msgsMsgQuaternion`
- `std_msgs/msg/Header` (message): message → `Ros2Std_msgsMsgHeader`
- `xarm_msgs/msg/CIOState` (message): message → `Ros2Xarm_msgsMsgCIOState`
- `xarm_msgs/msg/IOState` (message): message → `Ros2Xarm_msgsMsgIOState`
- `xarm_msgs/msg/MoveVelocity` (message): message → `Ros2Xarm_msgsMsgMoveVelocity`
- `xarm_msgs/msg/RobotMsg` (message): message → `Ros2Xarm_msgsMsgRobotMsg`
- `xarm_msgs/srv/BioGripperCtrl` (service): request → `Ros2Xarm_msgsSrvBioGripperCtrl_Request`, response → `Ros2Xarm_msgsSrvBioGripperCtrl_Response`
- `xarm_msgs/srv/BioGripperEnable` (service): request → `Ros2Xarm_msgsSrvBioGripperEnable_Request`, response → `Ros2Xarm_msgsSrvBioGripperEnable_Response`
- `xarm_msgs/srv/Call` (service): request → `Ros2Xarm_msgsSrvCall_Request`, response → `Ros2Xarm_msgsSrvCall_Response`
- `xarm_msgs/srv/FtAdmittanceParams` (service): request → `Ros2Xarm_msgsSrvFtAdmittanceParams_Request`, response → `Ros2Xarm_msgsSrvFtAdmittanceParams_Response`
- `xarm_msgs/srv/FtCaliLoad` (service): request → `Ros2Xarm_msgsSrvFtCaliLoad_Request`, response → `Ros2Xarm_msgsSrvFtCaliLoad_Response`
- `xarm_msgs/srv/FtForceConfig` (service): request → `Ros2Xarm_msgsSrvFtForceConfig_Request`, response → `Ros2Xarm_msgsSrvFtForceConfig_Response`
- `xarm_msgs/srv/FtForceParams` (service): request → `Ros2Xarm_msgsSrvFtForceParams_Request`, response → `Ros2Xarm_msgsSrvFtForceParams_Response`
- `xarm_msgs/srv/FtForcePid` (service): request → `Ros2Xarm_msgsSrvFtForcePid_Request`, response → `Ros2Xarm_msgsSrvFtForcePid_Response`
- `xarm_msgs/srv/FtImpedance` (service): request → `Ros2Xarm_msgsSrvFtImpedance_Request`, response → `Ros2Xarm_msgsSrvFtImpedance_Response`
- `xarm_msgs/srv/GetAnalogIO` (service): request → `Ros2Xarm_msgsSrvGetAnalogIO_Request`, response → `Ros2Xarm_msgsSrvGetAnalogIO_Response`
- `xarm_msgs/srv/GetDigitalIO` (service): request → `Ros2Xarm_msgsSrvGetDigitalIO_Request`, response → `Ros2Xarm_msgsSrvGetDigitalIO_Response`
- `xarm_msgs/srv/GetFloat32` (service): request → `Ros2Xarm_msgsSrvGetFloat32_Request`, response → `Ros2Xarm_msgsSrvGetFloat32_Response`
- `xarm_msgs/srv/GetFloat32List` (service): request → `Ros2Xarm_msgsSrvGetFloat32List_Request`, response → `Ros2Xarm_msgsSrvGetFloat32List_Response`
- `xarm_msgs/srv/GetInt16` (service): request → `Ros2Xarm_msgsSrvGetInt16_Request`, response → `Ros2Xarm_msgsSrvGetInt16_Response`
- `xarm_msgs/srv/GetInt16List` (service): request → `Ros2Xarm_msgsSrvGetInt16List_Request`, response → `Ros2Xarm_msgsSrvGetInt16List_Response`
- `xarm_msgs/srv/GetInt32` (service): request → `Ros2Xarm_msgsSrvGetInt32_Request`, response → `Ros2Xarm_msgsSrvGetInt32_Response`
- `xarm_msgs/srv/GetInt32ByType` (service): request → `Ros2Xarm_msgsSrvGetInt32ByType_Request`, response → `Ros2Xarm_msgsSrvGetInt32ByType_Response`
- `xarm_msgs/srv/GetSetModbusData` (service): request → `Ros2Xarm_msgsSrvGetSetModbusData_Request`, response → `Ros2Xarm_msgsSrvGetSetModbusData_Response`
- `xarm_msgs/srv/GripperMove` (service): request → `Ros2Xarm_msgsSrvGripperMove_Request`, response → `Ros2Xarm_msgsSrvGripperMove_Response`
- `xarm_msgs/srv/IdenLoad` (service): request → `Ros2Xarm_msgsSrvIdenLoad_Request`, response → `Ros2Xarm_msgsSrvIdenLoad_Response`
- `xarm_msgs/srv/LinearMotorBackOrigin` (service): request → `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request`, response → `Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response`
- `xarm_msgs/srv/LinearMotorSetPos` (service): request → `Ros2Xarm_msgsSrvLinearMotorSetPos_Request`, response → `Ros2Xarm_msgsSrvLinearMotorSetPos_Response`
- `xarm_msgs/srv/LinearTrackBackOrigin` (service): request → `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request`, response → `Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response`
- `xarm_msgs/srv/LinearTrackSetPos` (service): request → `Ros2Xarm_msgsSrvLinearTrackSetPos_Request`, response → `Ros2Xarm_msgsSrvLinearTrackSetPos_Response`
- `xarm_msgs/srv/MoveCartesian` (service): request → `Ros2Xarm_msgsSrvMoveCartesian_Request`, response → `Ros2Xarm_msgsSrvMoveCartesian_Response`
- `xarm_msgs/srv/MoveCircle` (service): request → `Ros2Xarm_msgsSrvMoveCircle_Request`, response → `Ros2Xarm_msgsSrvMoveCircle_Response`
- `xarm_msgs/srv/MoveHome` (service): request → `Ros2Xarm_msgsSrvMoveHome_Request`, response → `Ros2Xarm_msgsSrvMoveHome_Response`
- `xarm_msgs/srv/MoveJoint` (service): request → `Ros2Xarm_msgsSrvMoveJoint_Request`, response → `Ros2Xarm_msgsSrvMoveJoint_Response`
- `xarm_msgs/srv/MoveVelocity` (service): request → `Ros2Xarm_msgsSrvMoveVelocity_Request`, response → `Ros2Xarm_msgsSrvMoveVelocity_Response`
- `xarm_msgs/srv/PlanExec` (service): request → `Ros2Xarm_msgsSrvPlanExec_Request`, response → `Ros2Xarm_msgsSrvPlanExec_Response`
- `xarm_msgs/srv/PlanJoint` (service): request → `Ros2Xarm_msgsSrvPlanJoint_Request`, response → `Ros2Xarm_msgsSrvPlanJoint_Response`
- `xarm_msgs/srv/PlanPose` (service): request → `Ros2Xarm_msgsSrvPlanPose_Request`, response → `Ros2Xarm_msgsSrvPlanPose_Response`
- `xarm_msgs/srv/PlanSingleStraight` (service): request → `Ros2Xarm_msgsSrvPlanSingleStraight_Request`, response → `Ros2Xarm_msgsSrvPlanSingleStraight_Response`
- `xarm_msgs/srv/RobotiqActivate` (service): request → `Ros2Xarm_msgsSrvRobotiqActivate_Request`, response → `Ros2Xarm_msgsSrvRobotiqActivate_Response`
- `xarm_msgs/srv/RobotiqGetStatus` (service): request → `Ros2Xarm_msgsSrvRobotiqGetStatus_Request`, response → `Ros2Xarm_msgsSrvRobotiqGetStatus_Response`
- `xarm_msgs/srv/RobotiqMove` (service): request → `Ros2Xarm_msgsSrvRobotiqMove_Request`, response → `Ros2Xarm_msgsSrvRobotiqMove_Response`
- `xarm_msgs/srv/RobotiqReset` (service): request → `Ros2Xarm_msgsSrvRobotiqReset_Request`, response → `Ros2Xarm_msgsSrvRobotiqReset_Response`
- `xarm_msgs/srv/SetAnalogIO` (service): request → `Ros2Xarm_msgsSrvSetAnalogIO_Request`, response → `Ros2Xarm_msgsSrvSetAnalogIO_Response`
- `xarm_msgs/srv/SetDigitalIO` (service): request → `Ros2Xarm_msgsSrvSetDigitalIO_Request`, response → `Ros2Xarm_msgsSrvSetDigitalIO_Response`
- `xarm_msgs/srv/SetFloat32` (service): request → `Ros2Xarm_msgsSrvSetFloat32_Request`, response → `Ros2Xarm_msgsSrvSetFloat32_Response`
- `xarm_msgs/srv/SetFloat32List` (service): request → `Ros2Xarm_msgsSrvSetFloat32List_Request`, response → `Ros2Xarm_msgsSrvSetFloat32List_Response`
- `xarm_msgs/srv/SetInt16` (service): request → `Ros2Xarm_msgsSrvSetInt16_Request`, response → `Ros2Xarm_msgsSrvSetInt16_Response`
- `xarm_msgs/srv/SetInt16ById` (service): request → `Ros2Xarm_msgsSrvSetInt16ById_Request`, response → `Ros2Xarm_msgsSrvSetInt16ById_Response`
- `xarm_msgs/srv/SetInt16List` (service): request → `Ros2Xarm_msgsSrvSetInt16List_Request`, response → `Ros2Xarm_msgsSrvSetInt16List_Response`
- `xarm_msgs/srv/SetInt32` (service): request → `Ros2Xarm_msgsSrvSetInt32_Request`, response → `Ros2Xarm_msgsSrvSetInt32_Response`
- `xarm_msgs/srv/SetInt32ByType` (service): request → `Ros2Xarm_msgsSrvSetInt32ByType_Request`, response → `Ros2Xarm_msgsSrvSetInt32ByType_Response`
- `xarm_msgs/srv/SetModbusTimeout` (service): request → `Ros2Xarm_msgsSrvSetModbusTimeout_Request`, response → `Ros2Xarm_msgsSrvSetModbusTimeout_Response`
- `xarm_msgs/srv/SetTcpLoad` (service): request → `Ros2Xarm_msgsSrvSetTcpLoad_Request`, response → `Ros2Xarm_msgsSrvSetTcpLoad_Response`
- `xarm_msgs/srv/TrajCtrl` (service): request → `Ros2Xarm_msgsSrvTrajCtrl_Request`, response → `Ros2Xarm_msgsSrvTrajCtrl_Response`
- `xarm_msgs/srv/TrajPlay` (service): request → `Ros2Xarm_msgsSrvTrajPlay_Request`, response → `Ros2Xarm_msgsSrvTrajPlay_Response`
- `xarm_msgs/srv/VacuumGripperCtrl` (service): request → `Ros2Xarm_msgsSrvVacuumGripperCtrl_Request`, response → `Ros2Xarm_msgsSrvVacuumGripperCtrl_Response`

Immutable upstream sources:

- [xArm-Developer/xarm_ros2 @ 01c145407e563aacb4b8edab309b23fbaeb25b87](https://github.com/xArm-Developer/xarm_ros2/tree/01c145407e563aacb4b8edab309b23fbaeb25b87)
- [ros2/common_interfaces @ 56be9f336d3ed54d18b3821d3b2b183123ec17d8](https://github.com/ros2/common_interfaces/tree/56be9f336d3ed54d18b3821d3b2b183123ec17d8)
- [ros2/rcl_interfaces @ 614f3c4942e1a67a568546cb805ff3e0ff7777f5](https://github.com/ros2/rcl_interfaces/tree/614f3c4942e1a67a568546cb805ff3e0ff7777f5)
