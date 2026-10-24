# dobot: 完整原始 API 索引

下列内容保留每个原始字段及服务、动作组件；原生类型身份仍须独立绑定。

## ros1_demo_v3

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `rosdemo_v3/AIRequest` | `Ros1Rosdemo_v3AIRequest` | 4..4 | index: int32 |
| `rosdemo_v3/AIResponse` | `Ros1Rosdemo_v3AIResponse` | 4..4 | res: int32 |
| `rosdemo_v3/AORequest` | `Ros1Rosdemo_v3AORequest` | 8..8 | index: int32; status: int32 |
| `rosdemo_v3/AOResponse` | `Ros1Rosdemo_v3AOResponse` | 4..4 | res: int32 |
| `rosdemo_v3/AOExecuteRequest` | `Ros1Rosdemo_v3AOExecuteRequest` | 8..8 | index: int32; value: int32 |
| `rosdemo_v3/AOExecuteResponse` | `Ros1Rosdemo_v3AOExecuteResponse` | 4..4 | res: int32 |
| `rosdemo_v3/AccJRequest` | `Ros1Rosdemo_v3AccJRequest` | 4..4 | r: int32 |
| `rosdemo_v3/AccJResponse` | `Ros1Rosdemo_v3AccJResponse` | 4..4 | res: int32 |
| `rosdemo_v3/AccLRequest` | `Ros1Rosdemo_v3AccLRequest` | 4..4 | r: int32 |
| `rosdemo_v3/AccLResponse` | `Ros1Rosdemo_v3AccLResponse` | 4..4 | res: int32 |
| `rosdemo_v3/ArcRequest` | `Ros1Rosdemo_v3ArcRequest` | 100..4260 | x1: float64; y1: float64; z1: float64; a1: float64; b1: float64; c1: float64; x2: float64; y2: float64; z2: float64; a2: float64; b2: float64; c2: float64; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v3/ArcResponse` | `Ros1Rosdemo_v3ArcResponse` | 4..4 | res: int32 |
| `rosdemo_v3/ArchRequest` | `Ros1Rosdemo_v3ArchRequest` | 8..4168 | index: int32; cpValue: string sequence<=16 text<=256B |
| `rosdemo_v3/ArchResponse` | `Ros1Rosdemo_v3ArchResponse` | 4..4 | res: int32 |
| `rosdemo_v3/BrakeControlRequest` | `Ros1Rosdemo_v3BrakeControlRequest` | 8..8 | axisID: int32; value: int32 |
| `rosdemo_v3/BrakeControlResponse` | `Ros1Rosdemo_v3BrakeControlResponse` | 4..4 | res: int32 |
| `rosdemo_v3/CPRequest` | `Ros1Rosdemo_v3CPRequest` | 4..4 | r: int32 |
| `rosdemo_v3/CPResponse` | `Ros1Rosdemo_v3CPResponse` | 4..4 | res: int32 |
| `rosdemo_v3/CircleRequest` | `Ros1Rosdemo_v3CircleRequest` | 104..4264 | count: int32; x1: float64; y1: float64; z1: float64; a1: float64; b1: float64; c1: float64; x2: float64; y2: float64; z2: float64; a2: float64; b2: float64; c2: float64; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v3/CircleResponse` | `Ros1Rosdemo_v3CircleResponse` | 4..4 | res: int32 |
| `rosdemo_v3/ClearErrorRequest` | `Ros1Rosdemo_v3ClearErrorRequest` | 0..0 | (empty original component) |
| `rosdemo_v3/ClearErrorResponse` | `Ros1Rosdemo_v3ClearErrorResponse` | 4..4 | res: int32 |
| `rosdemo_v3/ContinueScriptRequest` | `Ros1Rosdemo_v3ContinueScriptRequest` | 0..0 | (empty original component) |
| `rosdemo_v3/ContinueScriptResponse` | `Ros1Rosdemo_v3ContinueScriptResponse` | 4..4 | res: int32 |
| `rosdemo_v3/ContinuesRequest` | `Ros1Rosdemo_v3ContinuesRequest` | 0..0 | (empty original component) |
| `rosdemo_v3/ContinuesResponse` | `Ros1Rosdemo_v3ContinuesResponse` | 4..4 | res: int32 |
| `rosdemo_v3/DIRequest` | `Ros1Rosdemo_v3DIRequest` | 4..4 | index: int32 |
| `rosdemo_v3/DIResponse` | `Ros1Rosdemo_v3DIResponse` | 4..4 | res: int32 |
| `rosdemo_v3/DIGroupRequest` | `Ros1Rosdemo_v3DIGroupRequest` | 4..68 | args: int32 sequence<=16 |
| `rosdemo_v3/DIGroupResponse` | `Ros1Rosdemo_v3DIGroupResponse` | 4..4 | res: int32 |
| `rosdemo_v3/DORequest` | `Ros1Rosdemo_v3DORequest` | 8..8 | index: int32; status: int32 |
| `rosdemo_v3/DOResponse` | `Ros1Rosdemo_v3DOResponse` | 4..4 | res: int32 |
| `rosdemo_v3/DOExecuteRequest` | `Ros1Rosdemo_v3DOExecuteRequest` | 8..8 | index: int32; status: int32 |
| `rosdemo_v3/DOExecuteResponse` | `Ros1Rosdemo_v3DOExecuteResponse` | 4..4 | res: int32 |
| `rosdemo_v3/DOGroupRequest` | `Ros1Rosdemo_v3DOGroupRequest` | 4..68 | args: int32 sequence<=16 |
| `rosdemo_v3/DOGroupResponse` | `Ros1Rosdemo_v3DOGroupResponse` | 4..4 | res: int32 |
| `rosdemo_v3/DigitalOutputsRequest` | `Ros1Rosdemo_v3DigitalOutputsRequest` | 5..5 | index: int32; status: bool |
| `rosdemo_v3/DigitalOutputsResponse` | `Ros1Rosdemo_v3DigitalOutputsResponse` | 4..4 | res: int32 |
| `rosdemo_v3/DisableRobotRequest` | `Ros1Rosdemo_v3DisableRobotRequest` | 0..0 | (empty original component) |
| `rosdemo_v3/DisableRobotResponse` | `Ros1Rosdemo_v3DisableRobotResponse` | 4..4 | res: int32 |
| `rosdemo_v3/EmergencyStopRequest` | `Ros1Rosdemo_v3EmergencyStopRequest` | 0..0 | (empty original component) |
| `rosdemo_v3/EmergencyStopResponse` | `Ros1Rosdemo_v3EmergencyStopResponse` | 4..4 | res: int32 |
| `rosdemo_v3/EnableRobotRequest` | `Ros1Rosdemo_v3EnableRobotRequest` | 4..132 | args: float64 sequence<=16 |
| `rosdemo_v3/EnableRobotResponse` | `Ros1Rosdemo_v3EnableRobotResponse` | 4..4 | res: int32 |
| `rosdemo_v3/GetAngleRequest` | `Ros1Rosdemo_v3GetAngleRequest` | 0..0 | (empty original component) |
| `rosdemo_v3/GetAngleResponse` | `Ros1Rosdemo_v3GetAngleResponse` | 4..4 | res: int32 |
| `rosdemo_v3/GetCoilsRequest` | `Ros1Rosdemo_v3GetCoilsRequest` | 12..12 | index: int32; addr: int32; count: int32 |
| `rosdemo_v3/GetCoilsResponse` | `Ros1Rosdemo_v3GetCoilsResponse` | 4..4 | res: int32 |
| `rosdemo_v3/GetErrorIDRequest` | `Ros1Rosdemo_v3GetErrorIDRequest` | 0..0 | (empty original component) |
| `rosdemo_v3/GetErrorIDResponse` | `Ros1Rosdemo_v3GetErrorIDResponse` | 8..72 | res: int32; errorID: int32 sequence<=16 |
| `rosdemo_v3/GetHoldRegsRequest` | `Ros1Rosdemo_v3GetHoldRegsRequest` | 16..4176 | index: int32; addr: int32; count: int32; valtype: string sequence<=16 text<=256B |
| `rosdemo_v3/GetHoldRegsResponse` | `Ros1Rosdemo_v3GetHoldRegsResponse` | 8..8 | res: int32; index: int32 |
| `rosdemo_v3/GetInBitsRequest` | `Ros1Rosdemo_v3GetInBitsRequest` | 12..12 | index: int32; addr: int32; count: int32 |
| `rosdemo_v3/GetInBitsResponse` | `Ros1Rosdemo_v3GetInBitsResponse` | 4..4 | res: int32 |
| `rosdemo_v3/GetInRegsRequest` | `Ros1Rosdemo_v3GetInRegsRequest` | 16..4176 | index: int32; addr: int32; count: int32; valType: string sequence<=16 text<=256B |
| `rosdemo_v3/GetInRegsResponse` | `Ros1Rosdemo_v3GetInRegsResponse` | 4..4 | res: int32 |
| `rosdemo_v3/GetPathStartPoseRequest` | `Ros1Rosdemo_v3GetPathStartPoseRequest` | 4..260 | traceName: string text<=256B |
| `rosdemo_v3/GetPathStartPoseResponse` | `Ros1Rosdemo_v3GetPathStartPoseResponse` | 4..4 | res: int32 |
| `rosdemo_v3/GetPoseRequest` | `Ros1Rosdemo_v3GetPoseRequest` | 8..136 | user: int32 sequence<=16; tool: int32 sequence<=16 |
| `rosdemo_v3/GetPoseResponse` | `Ros1Rosdemo_v3GetPoseResponse` | 4..4 | res: int32 |
| `rosdemo_v3/GetSixForceDataRequest` | `Ros1Rosdemo_v3GetSixForceDataRequest` | 0..0 | (empty original component) |
| `rosdemo_v3/GetSixForceDataResponse` | `Ros1Rosdemo_v3GetSixForceDataResponse` | 4..4 | res: int32 |
| `rosdemo_v3/GetTerminal485Request` | `Ros1Rosdemo_v3GetTerminal485Request` | 0..0 | (empty original component) |
| `rosdemo_v3/GetTerminal485Response` | `Ros1Rosdemo_v3GetTerminal485Response` | 4..4 | res: int32 |
| `rosdemo_v3/GetTraceStartPoseRequest` | `Ros1Rosdemo_v3GetTraceStartPoseRequest` | 4..260 | traceName: string text<=256B |
| `rosdemo_v3/GetTraceStartPoseResponse` | `Ros1Rosdemo_v3GetTraceStartPoseResponse` | 4..4 | res: int32 |
| `rosdemo_v3/HandleTrajPointsRequest` | `Ros1Rosdemo_v3HandleTrajPointsRequest` | 4..260 | traceName: string text<=256B |
| `rosdemo_v3/HandleTrajPointsResponse` | `Ros1Rosdemo_v3HandleTrajPointsResponse` | 4..4 | res: int32 |
| `rosdemo_v3/InverseSolutionRequest` | `Ros1Rosdemo_v3InverseSolutionRequest` | 64..320 | offset1: float64; offset2: float64; offset3: float64; offset4: float64; offset5: float64; offset6: float64; user: int32; tool: int32; isJointNear: int32; JointNear: string text<=256B |
| `rosdemo_v3/InverseSolutionResponse` | `Ros1Rosdemo_v3InverseSolutionResponse` | 4..4 | res: int32 |
| `rosdemo_v3/JointMovJRequest` | `Ros1Rosdemo_v3JointMovJRequest` | 52..4212 | j1: float64; j2: float64; j3: float64; j4: float64; j5: float64; j6: float64; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v3/JointMovJResponse` | `Ros1Rosdemo_v3JointMovJResponse` | 4..4 | res: int32 |
| `rosdemo_v3/JumpRequest` | `Ros1Rosdemo_v3JumpRequest` | 48..48 | offset1: float64; offset2: float64; offset3: float64; offset4: float64; offset5: float64; offset6: float64 |
| `rosdemo_v3/JumpResponse` | `Ros1Rosdemo_v3JumpResponse` | 4..4 | res: int32 |
| `rosdemo_v3/LimZRequest` | `Ros1Rosdemo_v3LimZRequest` | 4..4 | value: int32 |
| `rosdemo_v3/LimZResponse` | `Ros1Rosdemo_v3LimZResponse` | 4..4 | res: int32 |
| `rosdemo_v3/LoadSwitchRequest` | `Ros1Rosdemo_v3LoadSwitchRequest` | 4..4 | status: int32 |
| `rosdemo_v3/LoadSwitchResponse` | `Ros1Rosdemo_v3LoadSwitchResponse` | 4..4 | res: int32 |
| `rosdemo_v3/ModbusCloseRequest` | `Ros1Rosdemo_v3ModbusCloseRequest` | 4..4 | index: int32 |
| `rosdemo_v3/ModbusCloseResponse` | `Ros1Rosdemo_v3ModbusCloseResponse` | 4..4 | res: int32 |
| `rosdemo_v3/ModbusCreateRequest` | `Ros1Rosdemo_v3ModbusCreateRequest` | 16..336 | ip: string text<=256B; port: int32; slave_id: int32; is_rtu: int32 sequence<=16 |
| `rosdemo_v3/ModbusCreateResponse` | `Ros1Rosdemo_v3ModbusCreateResponse` | 8..8 | res: int32; index: int32 |
| `rosdemo_v3/MovJRequest` | `Ros1Rosdemo_v3MovJRequest` | 52..4212 | x: float64; y: float64; z: float64; a: float64; b: float64; c: float64; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v3/MovJResponse` | `Ros1Rosdemo_v3MovJResponse` | 4..4 | res: int32 |
| `rosdemo_v3/MovJExtRequest` | `Ros1Rosdemo_v3MovJExtRequest` | 12..4172 | offset: float64; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v3/MovJExtResponse` | `Ros1Rosdemo_v3MovJExtResponse` | 4..4 | res: int32 |
| `rosdemo_v3/MovJIORequest` | `Ros1Rosdemo_v3MovJIORequest` | 52..4212 | x: float64; y: float64; z: float64; rx: float64; ry: float64; rz: float64; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v3/MovJIOResponse` | `Ros1Rosdemo_v3MovJIOResponse` | 4..4 | res: int32 |
| `rosdemo_v3/MovLRequest` | `Ros1Rosdemo_v3MovLRequest` | 52..4212 | x: float64; y: float64; z: float64; a: float64; b: float64; c: float64; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v3/MovLResponse` | `Ros1Rosdemo_v3MovLResponse` | 4..4 | res: int32 |
| `rosdemo_v3/MovLIORequest` | `Ros1Rosdemo_v3MovLIORequest` | 52..4212 | x: float64; y: float64; z: float64; rx: float64; ry: float64; rz: float64; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v3/MovLIOResponse` | `Ros1Rosdemo_v3MovLIOResponse` | 4..4 | res: int32 |
| `rosdemo_v3/MoveJogRequest` | `Ros1Rosdemo_v3MoveJogRequest` | 8..4424 | axisID: string text<=256B; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v3/MoveJogResponse` | `Ros1Rosdemo_v3MoveJogResponse` | 4..4 | res: int32 |
| `rosdemo_v3/PauseScriptRequest` | `Ros1Rosdemo_v3PauseScriptRequest` | 0..0 | (empty original component) |
| `rosdemo_v3/PauseScriptResponse` | `Ros1Rosdemo_v3PauseScriptResponse` | 4..4 | res: int32 |
| `rosdemo_v3/PayLoadRequest` | `Ros1Rosdemo_v3PayLoadRequest` | 16..16 | weight: float64; inertia: float64 |
| `rosdemo_v3/PayLoadResponse` | `Ros1Rosdemo_v3PayLoadResponse` | 4..4 | res: int32 |
| `rosdemo_v3/PositiveSolutionRequest` | `Ros1Rosdemo_v3PositiveSolutionRequest` | 56..56 | offset1: float64; offset2: float64; offset3: float64; offset4: float64; offset5: float64; offset6: float64; user: int32; tool: int32 |
| `rosdemo_v3/PositiveSolutionResponse` | `Ros1Rosdemo_v3PositiveSolutionResponse` | 4..4 | res: int32 |
| `rosdemo_v3/PowerOnRequest` | `Ros1Rosdemo_v3PowerOnRequest` | 0..0 | (empty original component) |
| `rosdemo_v3/PowerOnResponse` | `Ros1Rosdemo_v3PowerOnResponse` | 4..4 | res: int32 |
| `rosdemo_v3/RelJointMovJRequest` | `Ros1Rosdemo_v3RelJointMovJRequest` | 52..4212 | offset1: float64; offset2: float64; offset3: float64; offset4: float64; offset5: float64; offset6: float64; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v3/RelJointMovJResponse` | `Ros1Rosdemo_v3RelJointMovJResponse` | 4..4 | res: int32 |
| `rosdemo_v3/RelMovJRequest` | `Ros1Rosdemo_v3RelMovJRequest` | 48..48 | offset1: float64; offset2: float64; offset3: float64; offset4: float64; offset5: float64; offset6: float64 |
| `rosdemo_v3/RelMovJResponse` | `Ros1Rosdemo_v3RelMovJResponse` | 4..4 | res: int32 |
| `rosdemo_v3/RelMovJToolRequest` | `Ros1Rosdemo_v3RelMovJToolRequest` | 56..4216 | x: float64; y: float64; z: float64; rx: float64; ry: float64; rz: float64; tool: int32; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v3/RelMovJToolResponse` | `Ros1Rosdemo_v3RelMovJToolResponse` | 4..4 | res: int32 |
| `rosdemo_v3/RelMovJUserRequest` | `Ros1Rosdemo_v3RelMovJUserRequest` | 56..4216 | x: float64; y: float64; z: float64; rx: float64; ry: float64; rz: float64; user: int32; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v3/RelMovJUserResponse` | `Ros1Rosdemo_v3RelMovJUserResponse` | 4..4 | res: int32 |
| `rosdemo_v3/RelMovLRequest` | `Ros1Rosdemo_v3RelMovLRequest` | 24..24 | x: float64; y: float64; z: float64 |
| `rosdemo_v3/RelMovLResponse` | `Ros1Rosdemo_v3RelMovLResponse` | 4..4 | res: int32 |
| `rosdemo_v3/RelMovLToolRequest` | `Ros1Rosdemo_v3RelMovLToolRequest` | 56..4216 | x: float64; y: float64; z: float64; rx: float64; ry: float64; rz: float64; tool: int32; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v3/RelMovLToolResponse` | `Ros1Rosdemo_v3RelMovLToolResponse` | 4..4 | res: int32 |
| `rosdemo_v3/RelMovLUserRequest` | `Ros1Rosdemo_v3RelMovLUserRequest` | 56..4216 | x: float64; y: float64; z: float64; rx: float64; ry: float64; rz: float64; user: int32; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v3/RelMovLUserResponse` | `Ros1Rosdemo_v3RelMovLUserResponse` | 4..4 | res: int32 |
| `rosdemo_v3/ResetRobotRequest` | `Ros1Rosdemo_v3ResetRobotRequest` | 0..0 | (empty original component) |
| `rosdemo_v3/ResetRobotResponse` | `Ros1Rosdemo_v3ResetRobotResponse` | 4..4 | res: int32 |
| `rosdemo_v3/RobotModeRequest` | `Ros1Rosdemo_v3RobotModeRequest` | 0..0 | (empty original component) |
| `rosdemo_v3/RobotModeResponse` | `Ros1Rosdemo_v3RobotModeResponse` | 8..8 | mode: int32; res: int32 |
| `rosdemo_v3/RunScriptRequest` | `Ros1Rosdemo_v3RunScriptRequest` | 4..260 | projectName: string text<=256B |
| `rosdemo_v3/RunScriptResponse` | `Ros1Rosdemo_v3RunScriptResponse` | 4..4 | res: int32 |
| `rosdemo_v3/ServoJRequest` | `Ros1Rosdemo_v3ServoJRequest` | 60..444 | offset1: float64; offset2: float64; offset3: float64; offset4: float64; offset5: float64; offset6: float64; t: float64 sequence<=16; lookahead_time: float64 sequence<=16; gain: float64 sequence<=16 |
| `rosdemo_v3/ServoJResponse` | `Ros1Rosdemo_v3ServoJResponse` | 4..4 | res: int32 |
| `rosdemo_v3/ServoPRequest` | `Ros1Rosdemo_v3ServoPRequest` | 48..48 | x: float64; y: float64; z: float64; a: float64; b: float64; c: float64 |
| `rosdemo_v3/ServoPResponse` | `Ros1Rosdemo_v3ServoPResponse` | 4..4 | res: int32 |
| `rosdemo_v3/SetArmOrientationRequest` | `Ros1Rosdemo_v3SetArmOrientationRequest` | 16..16 | LorR: int32; UorD: int32; ForN: int32; Config6: int32 |
| `rosdemo_v3/SetArmOrientationResponse` | `Ros1Rosdemo_v3SetArmOrientationResponse` | 4..4 | res: int32 |
| `rosdemo_v3/SetCoilsRequest` | `Ros1Rosdemo_v3SetCoilsRequest` | 16..272 | index: int32; addr: int32; count: int32; valTab: string text<=256B |
| `rosdemo_v3/SetCoilsResponse` | `Ros1Rosdemo_v3SetCoilsResponse` | 4..4 | res: int32 |
| `rosdemo_v3/SetCollideDragRequest` | `Ros1Rosdemo_v3SetCollideDragRequest` | 4..4 | status: int32 |
| `rosdemo_v3/SetCollideDragResponse` | `Ros1Rosdemo_v3SetCollideDragResponse` | 4..4 | res: int32 |
| `rosdemo_v3/SetCollisionLevelRequest` | `Ros1Rosdemo_v3SetCollisionLevelRequest` | 4..4 | level: int32 |
| `rosdemo_v3/SetCollisionLevelResponse` | `Ros1Rosdemo_v3SetCollisionLevelResponse` | 4..4 | res: int32 |
| `rosdemo_v3/SetHoldRegsRequest` | `Ros1Rosdemo_v3SetHoldRegsRequest` | 20..4436 | index: int32; addr: int32; count: int32; valTab: string text<=256B; valtype: string sequence<=16 text<=256B |
| `rosdemo_v3/SetHoldRegsResponse` | `Ros1Rosdemo_v3SetHoldRegsResponse` | 4..4 | res: int32 |
| `rosdemo_v3/SetObstacleAvoidRequest` | `Ros1Rosdemo_v3SetObstacleAvoidRequest` | 4..4 | status: int32 |
| `rosdemo_v3/SetObstacleAvoidResponse` | `Ros1Rosdemo_v3SetObstacleAvoidResponse` | 4..4 | res: int32 |
| `rosdemo_v3/SetPayloadRequest` | `Ros1Rosdemo_v3SetPayloadRequest` | 8..8 | load: float64 |
| `rosdemo_v3/SetPayloadResponse` | `Ros1Rosdemo_v3SetPayloadResponse` | 4..4 | res: int32 |
| `rosdemo_v3/SetSafeSkinRequest` | `Ros1Rosdemo_v3SetSafeSkinRequest` | 4..4 | status: int32 |
| `rosdemo_v3/SetSafeSkinResponse` | `Ros1Rosdemo_v3SetSafeSkinResponse` | 4..4 | res: int32 |
| `rosdemo_v3/SetTerminal485Request` | `Ros1Rosdemo_v3SetTerminal485Request` | 16..272 | baudRate: int32; dataLen: int32; parityBit: string text<=256B; stopBit: int32 |
| `rosdemo_v3/SetTerminal485Response` | `Ros1Rosdemo_v3SetTerminal485Response` | 4..4 | res: int32 |
| `rosdemo_v3/SetTerminalKeysRequest` | `Ros1Rosdemo_v3SetTerminalKeysRequest` | 4..4 | status: int32 |
| `rosdemo_v3/SetTerminalKeysResponse` | `Ros1Rosdemo_v3SetTerminalKeysResponse` | 4..4 | res: int32 |
| `rosdemo_v3/SpeedFactorRequest` | `Ros1Rosdemo_v3SpeedFactorRequest` | 4..4 | ratio: int32 |
| `rosdemo_v3/SpeedFactorResponse` | `Ros1Rosdemo_v3SpeedFactorResponse` | 4..4 | res: int32 |
| `rosdemo_v3/SpeedJRequest` | `Ros1Rosdemo_v3SpeedJRequest` | 4..4 | r: int32 |
| `rosdemo_v3/SpeedJResponse` | `Ros1Rosdemo_v3SpeedJResponse` | 4..4 | res: int32 |
| `rosdemo_v3/SpeedLRequest` | `Ros1Rosdemo_v3SpeedLRequest` | 4..4 | r: int32 |
| `rosdemo_v3/SpeedLResponse` | `Ros1Rosdemo_v3SpeedLResponse` | 4..4 | res: int32 |
| `rosdemo_v3/StartDragRequest` | `Ros1Rosdemo_v3StartDragRequest` | 0..0 | (empty original component) |
| `rosdemo_v3/StartDragResponse` | `Ros1Rosdemo_v3StartDragResponse` | 4..4 | res: int32 |
| `rosdemo_v3/StartFCTraceRequest` | `Ros1Rosdemo_v3StartFCTraceRequest` | 4..260 | trace_name: string text<=256B |
| `rosdemo_v3/StartFCTraceResponse` | `Ros1Rosdemo_v3StartFCTraceResponse` | 4..4 | res: int32 |
| `rosdemo_v3/StartPathRequest` | `Ros1Rosdemo_v3StartPathRequest` | 12..268 | trace_name: string text<=256B; const_val: int32; cart: int32 |
| `rosdemo_v3/StartPathResponse` | `Ros1Rosdemo_v3StartPathResponse` | 4..4 | res: int32 |
| `rosdemo_v3/StartTraceRequest` | `Ros1Rosdemo_v3StartTraceRequest` | 4..260 | trace_name: string text<=256B |
| `rosdemo_v3/StartTraceResponse` | `Ros1Rosdemo_v3StartTraceResponse` | 4..4 | res: int32 |
| `rosdemo_v3/StopDragRequest` | `Ros1Rosdemo_v3StopDragRequest` | 0..0 | (empty original component) |
| `rosdemo_v3/StopDragResponse` | `Ros1Rosdemo_v3StopDragResponse` | 4..4 | res: int32 |
| `rosdemo_v3/StopScriptRequest` | `Ros1Rosdemo_v3StopScriptRequest` | 0..0 | (empty original component) |
| `rosdemo_v3/StopScriptResponse` | `Ros1Rosdemo_v3StopScriptResponse` | 4..4 | res: int32 |
| `rosdemo_v3/StopmoveJogRequest` | `Ros1Rosdemo_v3StopmoveJogRequest` | 0..0 | (empty original component) |
| `rosdemo_v3/StopmoveJogResponse` | `Ros1Rosdemo_v3StopmoveJogResponse` | 4..4 | res: int32 |
| `rosdemo_v3/SyncRequest` | `Ros1Rosdemo_v3SyncRequest` | 0..0 | (empty original component) |
| `rosdemo_v3/SyncResponse` | `Ros1Rosdemo_v3SyncResponse` | 4..4 | res: int32 |
| `rosdemo_v3/SyncAllRequest` | `Ros1Rosdemo_v3SyncAllRequest` | 0..0 | (empty original component) |
| `rosdemo_v3/SyncAllResponse` | `Ros1Rosdemo_v3SyncAllResponse` | 4..4 | res: int32 |
| `rosdemo_v3/TCPSpeedRequest` | `Ros1Rosdemo_v3TCPSpeedRequest` | 4..4 | vt: int32 |
| `rosdemo_v3/TCPSpeedResponse` | `Ros1Rosdemo_v3TCPSpeedResponse` | 4..4 | res: int32 |
| `rosdemo_v3/TCPSpeedEndRequest` | `Ros1Rosdemo_v3TCPSpeedEndRequest` | 0..0 | (empty original component) |
| `rosdemo_v3/TCPSpeedEndResponse` | `Ros1Rosdemo_v3TCPSpeedEndResponse` | 4..4 | res: int32 |
| `rosdemo_v3/ToolRequest` | `Ros1Rosdemo_v3ToolRequest` | 4..4 | index: int32 |
| `rosdemo_v3/ToolResponse` | `Ros1Rosdemo_v3ToolResponse` | 4..4 | res: int32 |
| `rosdemo_v3/ToolAIRequest` | `Ros1Rosdemo_v3ToolAIRequest` | 4..4 | index: int32 |
| `rosdemo_v3/ToolAIResponse` | `Ros1Rosdemo_v3ToolAIResponse` | 4..4 | res: int32 |
| `rosdemo_v3/ToolDIRequest` | `Ros1Rosdemo_v3ToolDIRequest` | 4..4 | index: int32 |
| `rosdemo_v3/ToolDIResponse` | `Ros1Rosdemo_v3ToolDIResponse` | 4..4 | res: int32 |
| `rosdemo_v3/ToolDORequest` | `Ros1Rosdemo_v3ToolDORequest` | 8..8 | index: int32; status: int32 |
| `rosdemo_v3/ToolDOResponse` | `Ros1Rosdemo_v3ToolDOResponse` | 4..4 | res: int32 |
| `rosdemo_v3/ToolDOExecuteRequest` | `Ros1Rosdemo_v3ToolDOExecuteRequest` | 8..8 | index: int32; status: int32 |
| `rosdemo_v3/ToolDOExecuteResponse` | `Ros1Rosdemo_v3ToolDOExecuteResponse` | 4..4 | res: int32 |
| `rosdemo_v3/UserRequest` | `Ros1Rosdemo_v3UserRequest` | 4..4 | index: int32 |
| `rosdemo_v3/UserResponse` | `Ros1Rosdemo_v3UserResponse` | 4..4 | res: int32 |
| `rosdemo_v3/WaitRequest` | `Ros1Rosdemo_v3WaitRequest` | 4..4 | time: int32 |
| `rosdemo_v3/WaitResponse` | `Ros1Rosdemo_v3WaitResponse` | 4..4 | res: int32 |
| `rosdemo_v3/pauseRequest` | `Ros1Rosdemo_v3PauseRequest` | 0..0 | (empty original component) |
| `rosdemo_v3/pauseResponse` | `Ros1Rosdemo_v3PauseResponse` | 4..4 | res: int32 |

Interfaces:

- `rosdemo_v3/AI` (service): request → `Ros1Rosdemo_v3AIRequest`, response → `Ros1Rosdemo_v3AIResponse`
- `rosdemo_v3/AO` (service): request → `Ros1Rosdemo_v3AORequest`, response → `Ros1Rosdemo_v3AOResponse`
- `rosdemo_v3/AOExecute` (service): request → `Ros1Rosdemo_v3AOExecuteRequest`, response → `Ros1Rosdemo_v3AOExecuteResponse`
- `rosdemo_v3/AccJ` (service): request → `Ros1Rosdemo_v3AccJRequest`, response → `Ros1Rosdemo_v3AccJResponse`
- `rosdemo_v3/AccL` (service): request → `Ros1Rosdemo_v3AccLRequest`, response → `Ros1Rosdemo_v3AccLResponse`
- `rosdemo_v3/Arc` (service): request → `Ros1Rosdemo_v3ArcRequest`, response → `Ros1Rosdemo_v3ArcResponse`
- `rosdemo_v3/Arch` (service): request → `Ros1Rosdemo_v3ArchRequest`, response → `Ros1Rosdemo_v3ArchResponse`
- `rosdemo_v3/BrakeControl` (service): request → `Ros1Rosdemo_v3BrakeControlRequest`, response → `Ros1Rosdemo_v3BrakeControlResponse`
- `rosdemo_v3/CP` (service): request → `Ros1Rosdemo_v3CPRequest`, response → `Ros1Rosdemo_v3CPResponse`
- `rosdemo_v3/Circle` (service): request → `Ros1Rosdemo_v3CircleRequest`, response → `Ros1Rosdemo_v3CircleResponse`
- `rosdemo_v3/ClearError` (service): request → `Ros1Rosdemo_v3ClearErrorRequest`, response → `Ros1Rosdemo_v3ClearErrorResponse`
- `rosdemo_v3/ContinueScript` (service): request → `Ros1Rosdemo_v3ContinueScriptRequest`, response → `Ros1Rosdemo_v3ContinueScriptResponse`
- `rosdemo_v3/Continues` (service): request → `Ros1Rosdemo_v3ContinuesRequest`, response → `Ros1Rosdemo_v3ContinuesResponse`
- `rosdemo_v3/DI` (service): request → `Ros1Rosdemo_v3DIRequest`, response → `Ros1Rosdemo_v3DIResponse`
- `rosdemo_v3/DIGroup` (service): request → `Ros1Rosdemo_v3DIGroupRequest`, response → `Ros1Rosdemo_v3DIGroupResponse`
- `rosdemo_v3/DO` (service): request → `Ros1Rosdemo_v3DORequest`, response → `Ros1Rosdemo_v3DOResponse`
- `rosdemo_v3/DOExecute` (service): request → `Ros1Rosdemo_v3DOExecuteRequest`, response → `Ros1Rosdemo_v3DOExecuteResponse`
- `rosdemo_v3/DOGroup` (service): request → `Ros1Rosdemo_v3DOGroupRequest`, response → `Ros1Rosdemo_v3DOGroupResponse`
- `rosdemo_v3/DigitalOutputs` (service): request → `Ros1Rosdemo_v3DigitalOutputsRequest`, response → `Ros1Rosdemo_v3DigitalOutputsResponse`
- `rosdemo_v3/DisableRobot` (service): request → `Ros1Rosdemo_v3DisableRobotRequest`, response → `Ros1Rosdemo_v3DisableRobotResponse`
- `rosdemo_v3/EmergencyStop` (service): request → `Ros1Rosdemo_v3EmergencyStopRequest`, response → `Ros1Rosdemo_v3EmergencyStopResponse`
- `rosdemo_v3/EnableRobot` (service): request → `Ros1Rosdemo_v3EnableRobotRequest`, response → `Ros1Rosdemo_v3EnableRobotResponse`
- `rosdemo_v3/GetAngle` (service): request → `Ros1Rosdemo_v3GetAngleRequest`, response → `Ros1Rosdemo_v3GetAngleResponse`
- `rosdemo_v3/GetCoils` (service): request → `Ros1Rosdemo_v3GetCoilsRequest`, response → `Ros1Rosdemo_v3GetCoilsResponse`
- `rosdemo_v3/GetErrorID` (service): request → `Ros1Rosdemo_v3GetErrorIDRequest`, response → `Ros1Rosdemo_v3GetErrorIDResponse`
- `rosdemo_v3/GetHoldRegs` (service): request → `Ros1Rosdemo_v3GetHoldRegsRequest`, response → `Ros1Rosdemo_v3GetHoldRegsResponse`
- `rosdemo_v3/GetInBits` (service): request → `Ros1Rosdemo_v3GetInBitsRequest`, response → `Ros1Rosdemo_v3GetInBitsResponse`
- `rosdemo_v3/GetInRegs` (service): request → `Ros1Rosdemo_v3GetInRegsRequest`, response → `Ros1Rosdemo_v3GetInRegsResponse`
- `rosdemo_v3/GetPathStartPose` (service): request → `Ros1Rosdemo_v3GetPathStartPoseRequest`, response → `Ros1Rosdemo_v3GetPathStartPoseResponse`
- `rosdemo_v3/GetPose` (service): request → `Ros1Rosdemo_v3GetPoseRequest`, response → `Ros1Rosdemo_v3GetPoseResponse`
- `rosdemo_v3/GetSixForceData` (service): request → `Ros1Rosdemo_v3GetSixForceDataRequest`, response → `Ros1Rosdemo_v3GetSixForceDataResponse`
- `rosdemo_v3/GetTerminal485` (service): request → `Ros1Rosdemo_v3GetTerminal485Request`, response → `Ros1Rosdemo_v3GetTerminal485Response`
- `rosdemo_v3/GetTraceStartPose` (service): request → `Ros1Rosdemo_v3GetTraceStartPoseRequest`, response → `Ros1Rosdemo_v3GetTraceStartPoseResponse`
- `rosdemo_v3/HandleTrajPoints` (service): request → `Ros1Rosdemo_v3HandleTrajPointsRequest`, response → `Ros1Rosdemo_v3HandleTrajPointsResponse`
- `rosdemo_v3/InverseSolution` (service): request → `Ros1Rosdemo_v3InverseSolutionRequest`, response → `Ros1Rosdemo_v3InverseSolutionResponse`
- `rosdemo_v3/JointMovJ` (service): request → `Ros1Rosdemo_v3JointMovJRequest`, response → `Ros1Rosdemo_v3JointMovJResponse`
- `rosdemo_v3/Jump` (service): request → `Ros1Rosdemo_v3JumpRequest`, response → `Ros1Rosdemo_v3JumpResponse`
- `rosdemo_v3/LimZ` (service): request → `Ros1Rosdemo_v3LimZRequest`, response → `Ros1Rosdemo_v3LimZResponse`
- `rosdemo_v3/LoadSwitch` (service): request → `Ros1Rosdemo_v3LoadSwitchRequest`, response → `Ros1Rosdemo_v3LoadSwitchResponse`
- `rosdemo_v3/ModbusClose` (service): request → `Ros1Rosdemo_v3ModbusCloseRequest`, response → `Ros1Rosdemo_v3ModbusCloseResponse`
- `rosdemo_v3/ModbusCreate` (service): request → `Ros1Rosdemo_v3ModbusCreateRequest`, response → `Ros1Rosdemo_v3ModbusCreateResponse`
- `rosdemo_v3/MovJ` (service): request → `Ros1Rosdemo_v3MovJRequest`, response → `Ros1Rosdemo_v3MovJResponse`
- `rosdemo_v3/MovJExt` (service): request → `Ros1Rosdemo_v3MovJExtRequest`, response → `Ros1Rosdemo_v3MovJExtResponse`
- `rosdemo_v3/MovJIO` (service): request → `Ros1Rosdemo_v3MovJIORequest`, response → `Ros1Rosdemo_v3MovJIOResponse`
- `rosdemo_v3/MovL` (service): request → `Ros1Rosdemo_v3MovLRequest`, response → `Ros1Rosdemo_v3MovLResponse`
- `rosdemo_v3/MovLIO` (service): request → `Ros1Rosdemo_v3MovLIORequest`, response → `Ros1Rosdemo_v3MovLIOResponse`
- `rosdemo_v3/MoveJog` (service): request → `Ros1Rosdemo_v3MoveJogRequest`, response → `Ros1Rosdemo_v3MoveJogResponse`
- `rosdemo_v3/PauseScript` (service): request → `Ros1Rosdemo_v3PauseScriptRequest`, response → `Ros1Rosdemo_v3PauseScriptResponse`
- `rosdemo_v3/PayLoad` (service): request → `Ros1Rosdemo_v3PayLoadRequest`, response → `Ros1Rosdemo_v3PayLoadResponse`
- `rosdemo_v3/PositiveSolution` (service): request → `Ros1Rosdemo_v3PositiveSolutionRequest`, response → `Ros1Rosdemo_v3PositiveSolutionResponse`
- `rosdemo_v3/PowerOn` (service): request → `Ros1Rosdemo_v3PowerOnRequest`, response → `Ros1Rosdemo_v3PowerOnResponse`
- `rosdemo_v3/RelJointMovJ` (service): request → `Ros1Rosdemo_v3RelJointMovJRequest`, response → `Ros1Rosdemo_v3RelJointMovJResponse`
- `rosdemo_v3/RelMovJ` (service): request → `Ros1Rosdemo_v3RelMovJRequest`, response → `Ros1Rosdemo_v3RelMovJResponse`
- `rosdemo_v3/RelMovJTool` (service): request → `Ros1Rosdemo_v3RelMovJToolRequest`, response → `Ros1Rosdemo_v3RelMovJToolResponse`
- `rosdemo_v3/RelMovJUser` (service): request → `Ros1Rosdemo_v3RelMovJUserRequest`, response → `Ros1Rosdemo_v3RelMovJUserResponse`
- `rosdemo_v3/RelMovL` (service): request → `Ros1Rosdemo_v3RelMovLRequest`, response → `Ros1Rosdemo_v3RelMovLResponse`
- `rosdemo_v3/RelMovLTool` (service): request → `Ros1Rosdemo_v3RelMovLToolRequest`, response → `Ros1Rosdemo_v3RelMovLToolResponse`
- `rosdemo_v3/RelMovLUser` (service): request → `Ros1Rosdemo_v3RelMovLUserRequest`, response → `Ros1Rosdemo_v3RelMovLUserResponse`
- `rosdemo_v3/ResetRobot` (service): request → `Ros1Rosdemo_v3ResetRobotRequest`, response → `Ros1Rosdemo_v3ResetRobotResponse`
- `rosdemo_v3/RobotMode` (service): request → `Ros1Rosdemo_v3RobotModeRequest`, response → `Ros1Rosdemo_v3RobotModeResponse`
- `rosdemo_v3/RunScript` (service): request → `Ros1Rosdemo_v3RunScriptRequest`, response → `Ros1Rosdemo_v3RunScriptResponse`
- `rosdemo_v3/ServoJ` (service): request → `Ros1Rosdemo_v3ServoJRequest`, response → `Ros1Rosdemo_v3ServoJResponse`
- `rosdemo_v3/ServoP` (service): request → `Ros1Rosdemo_v3ServoPRequest`, response → `Ros1Rosdemo_v3ServoPResponse`
- `rosdemo_v3/SetArmOrientation` (service): request → `Ros1Rosdemo_v3SetArmOrientationRequest`, response → `Ros1Rosdemo_v3SetArmOrientationResponse`
- `rosdemo_v3/SetCoils` (service): request → `Ros1Rosdemo_v3SetCoilsRequest`, response → `Ros1Rosdemo_v3SetCoilsResponse`
- `rosdemo_v3/SetCollideDrag` (service): request → `Ros1Rosdemo_v3SetCollideDragRequest`, response → `Ros1Rosdemo_v3SetCollideDragResponse`
- `rosdemo_v3/SetCollisionLevel` (service): request → `Ros1Rosdemo_v3SetCollisionLevelRequest`, response → `Ros1Rosdemo_v3SetCollisionLevelResponse`
- `rosdemo_v3/SetHoldRegs` (service): request → `Ros1Rosdemo_v3SetHoldRegsRequest`, response → `Ros1Rosdemo_v3SetHoldRegsResponse`
- `rosdemo_v3/SetObstacleAvoid` (service): request → `Ros1Rosdemo_v3SetObstacleAvoidRequest`, response → `Ros1Rosdemo_v3SetObstacleAvoidResponse`
- `rosdemo_v3/SetPayload` (service): request → `Ros1Rosdemo_v3SetPayloadRequest`, response → `Ros1Rosdemo_v3SetPayloadResponse`
- `rosdemo_v3/SetSafeSkin` (service): request → `Ros1Rosdemo_v3SetSafeSkinRequest`, response → `Ros1Rosdemo_v3SetSafeSkinResponse`
- `rosdemo_v3/SetTerminal485` (service): request → `Ros1Rosdemo_v3SetTerminal485Request`, response → `Ros1Rosdemo_v3SetTerminal485Response`
- `rosdemo_v3/SetTerminalKeys` (service): request → `Ros1Rosdemo_v3SetTerminalKeysRequest`, response → `Ros1Rosdemo_v3SetTerminalKeysResponse`
- `rosdemo_v3/SpeedFactor` (service): request → `Ros1Rosdemo_v3SpeedFactorRequest`, response → `Ros1Rosdemo_v3SpeedFactorResponse`
- `rosdemo_v3/SpeedJ` (service): request → `Ros1Rosdemo_v3SpeedJRequest`, response → `Ros1Rosdemo_v3SpeedJResponse`
- `rosdemo_v3/SpeedL` (service): request → `Ros1Rosdemo_v3SpeedLRequest`, response → `Ros1Rosdemo_v3SpeedLResponse`
- `rosdemo_v3/StartDrag` (service): request → `Ros1Rosdemo_v3StartDragRequest`, response → `Ros1Rosdemo_v3StartDragResponse`
- `rosdemo_v3/StartFCTrace` (service): request → `Ros1Rosdemo_v3StartFCTraceRequest`, response → `Ros1Rosdemo_v3StartFCTraceResponse`
- `rosdemo_v3/StartPath` (service): request → `Ros1Rosdemo_v3StartPathRequest`, response → `Ros1Rosdemo_v3StartPathResponse`
- `rosdemo_v3/StartTrace` (service): request → `Ros1Rosdemo_v3StartTraceRequest`, response → `Ros1Rosdemo_v3StartTraceResponse`
- `rosdemo_v3/StopDrag` (service): request → `Ros1Rosdemo_v3StopDragRequest`, response → `Ros1Rosdemo_v3StopDragResponse`
- `rosdemo_v3/StopScript` (service): request → `Ros1Rosdemo_v3StopScriptRequest`, response → `Ros1Rosdemo_v3StopScriptResponse`
- `rosdemo_v3/StopmoveJog` (service): request → `Ros1Rosdemo_v3StopmoveJogRequest`, response → `Ros1Rosdemo_v3StopmoveJogResponse`
- `rosdemo_v3/Sync` (service): request → `Ros1Rosdemo_v3SyncRequest`, response → `Ros1Rosdemo_v3SyncResponse`
- `rosdemo_v3/SyncAll` (service): request → `Ros1Rosdemo_v3SyncAllRequest`, response → `Ros1Rosdemo_v3SyncAllResponse`
- `rosdemo_v3/TCPSpeed` (service): request → `Ros1Rosdemo_v3TCPSpeedRequest`, response → `Ros1Rosdemo_v3TCPSpeedResponse`
- `rosdemo_v3/TCPSpeedEnd` (service): request → `Ros1Rosdemo_v3TCPSpeedEndRequest`, response → `Ros1Rosdemo_v3TCPSpeedEndResponse`
- `rosdemo_v3/Tool` (service): request → `Ros1Rosdemo_v3ToolRequest`, response → `Ros1Rosdemo_v3ToolResponse`
- `rosdemo_v3/ToolAI` (service): request → `Ros1Rosdemo_v3ToolAIRequest`, response → `Ros1Rosdemo_v3ToolAIResponse`
- `rosdemo_v3/ToolDI` (service): request → `Ros1Rosdemo_v3ToolDIRequest`, response → `Ros1Rosdemo_v3ToolDIResponse`
- `rosdemo_v3/ToolDO` (service): request → `Ros1Rosdemo_v3ToolDORequest`, response → `Ros1Rosdemo_v3ToolDOResponse`
- `rosdemo_v3/ToolDOExecute` (service): request → `Ros1Rosdemo_v3ToolDOExecuteRequest`, response → `Ros1Rosdemo_v3ToolDOExecuteResponse`
- `rosdemo_v3/User` (service): request → `Ros1Rosdemo_v3UserRequest`, response → `Ros1Rosdemo_v3UserResponse`
- `rosdemo_v3/Wait` (service): request → `Ros1Rosdemo_v3WaitRequest`, response → `Ros1Rosdemo_v3WaitResponse`
- `rosdemo_v3/pause` (service): request → `Ros1Rosdemo_v3PauseRequest`, response → `Ros1Rosdemo_v3PauseResponse`

Immutable upstream sources:

- [Dobot-Arm/TCP-IP-ROS-6AXis @ 0924e785f1827b7125ba4ba2bc3325811ed21c18](https://github.com/Dobot-Arm/TCP-IP-ROS-6AXis/tree/0924e785f1827b7125ba4ba2bc3325811ed21c18)

## ros1_demo_v4

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `rosdemo_v4/AIRequest` | `Ros1Rosdemo_v4AIRequest` | 4..4 | index: int32 |
| `rosdemo_v4/AIResponse` | `Ros1Rosdemo_v4AIResponse` | 4..4 | res: int32 |
| `rosdemo_v4/AORequest` | `Ros1Rosdemo_v4AORequest` | 8..8 | index: int32; value: int32 |
| `rosdemo_v4/AOResponse` | `Ros1Rosdemo_v4AOResponse` | 4..4 | res: int32 |
| `rosdemo_v4/AOInstantRequest` | `Ros1Rosdemo_v4AOInstantRequest` | 8..8 | index: int32; value: int32 |
| `rosdemo_v4/AOInstantResponse` | `Ros1Rosdemo_v4AOInstantResponse` | 4..4 | res: int32 |
| `rosdemo_v4/AccJRequest` | `Ros1Rosdemo_v4AccJRequest` | 4..4 | r: int32 |
| `rosdemo_v4/AccJResponse` | `Ros1Rosdemo_v4AccJResponse` | 4..4 | res: int32 |
| `rosdemo_v4/AccLRequest` | `Ros1Rosdemo_v4AccLRequest` | 4..4 | r: int32 |
| `rosdemo_v4/AccLResponse` | `Ros1Rosdemo_v4AccLResponse` | 4..4 | res: int32 |
| `rosdemo_v4/ArcRequest` | `Ros1Rosdemo_v4ArcRequest` | 101..4261 | mode: bool; a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; a2: float64; b2: float64; c2: float64; d2: float64; e2: float64; f2: float64; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v4/ArcResponse` | `Ros1Rosdemo_v4ArcResponse` | 4..4 | res: int32 |
| `rosdemo_v4/BrakeControlRequest` | `Ros1Rosdemo_v4BrakeControlRequest` | 8..8 | axisID: int32; value: int32 |
| `rosdemo_v4/BrakeControlResponse` | `Ros1Rosdemo_v4BrakeControlResponse` | 4..4 | res: int32 |
| `rosdemo_v4/CPRequest` | `Ros1Rosdemo_v4CPRequest` | 4..4 | r: int32 |
| `rosdemo_v4/CPResponse` | `Ros1Rosdemo_v4CPResponse` | 4..4 | res: int32 |
| `rosdemo_v4/CalcToolRequest` | `Ros1Rosdemo_v4CalcToolRequest` | 12..268 | index: int32; matrix: int32; offset: string text<=256B |
| `rosdemo_v4/CalcToolResponse` | `Ros1Rosdemo_v4CalcToolResponse` | 4..4 | res: int32 |
| `rosdemo_v4/CalcUserRequest` | `Ros1Rosdemo_v4CalcUserRequest` | 12..268 | index: int32; matrix: int32; offset: string text<=256B |
| `rosdemo_v4/CalcUserResponse` | `Ros1Rosdemo_v4CalcUserResponse` | 4..4 | res: int32 |
| `rosdemo_v4/CircleRequest` | `Ros1Rosdemo_v4CircleRequest` | 105..4265 | mode: bool; a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; a2: float64; b2: float64; c2: float64; d2: float64; e2: float64; f2: float64; count: int32; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v4/CircleResponse` | `Ros1Rosdemo_v4CircleResponse` | 4..4 | res: int32 |
| `rosdemo_v4/ClearErrorRequest` | `Ros1Rosdemo_v4ClearErrorRequest` | 0..0 | (empty original component) |
| `rosdemo_v4/ClearErrorResponse` | `Ros1Rosdemo_v4ClearErrorResponse` | 4..4 | res: int32 |
| `rosdemo_v4/ContinueRequest` | `Ros1Rosdemo_v4ContinueRequest` | 0..0 | (empty original component) |
| `rosdemo_v4/ContinueResponse` | `Ros1Rosdemo_v4ContinueResponse` | 4..4 | res: int32 |
| `rosdemo_v4/DIRequest` | `Ros1Rosdemo_v4DIRequest` | 4..4 | index: int32 |
| `rosdemo_v4/DIResponse` | `Ros1Rosdemo_v4DIResponse` | 4..4 | res: int32 |
| `rosdemo_v4/DIGroupRequest` | `Ros1Rosdemo_v4DIGroupRequest` | 4..68 | args: int32 sequence<=16 |
| `rosdemo_v4/DIGroupResponse` | `Ros1Rosdemo_v4DIGroupResponse` | 4..4 | res: int32 |
| `rosdemo_v4/DORequest` | `Ros1Rosdemo_v4DORequest` | 12..12 | index: int32; status: int32; time: int32 |
| `rosdemo_v4/DOResponse` | `Ros1Rosdemo_v4DOResponse` | 4..4 | res: int32 |
| `rosdemo_v4/DOGroupRequest` | `Ros1Rosdemo_v4DOGroupRequest` | 4..68 | args: int32 sequence<=16 |
| `rosdemo_v4/DOGroupResponse` | `Ros1Rosdemo_v4DOGroupResponse` | 4..4 | res: int32 |
| `rosdemo_v4/DOInstantRequest` | `Ros1Rosdemo_v4DOInstantRequest` | 8..8 | index: int32; status: int32 |
| `rosdemo_v4/DOInstantResponse` | `Ros1Rosdemo_v4DOInstantResponse` | 4..4 | res: int32 |
| `rosdemo_v4/DisableRobotRequest` | `Ros1Rosdemo_v4DisableRobotRequest` | 0..0 | (empty original component) |
| `rosdemo_v4/DisableRobotResponse` | `Ros1Rosdemo_v4DisableRobotResponse` | 4..4 | res: int32 |
| `rosdemo_v4/DragSensivityRequest` | `Ros1Rosdemo_v4DragSensivityRequest` | 8..8 | index: int32; value: int32 |
| `rosdemo_v4/DragSensivityResponse` | `Ros1Rosdemo_v4DragSensivityResponse` | 4..4 | res: int32 |
| `rosdemo_v4/EmergencyStopRequest` | `Ros1Rosdemo_v4EmergencyStopRequest` | 4..4 | value: int32 |
| `rosdemo_v4/EmergencyStopResponse` | `Ros1Rosdemo_v4EmergencyStopResponse` | 4..4 | res: int32 |
| `rosdemo_v4/EnableRobotRequest` | `Ros1Rosdemo_v4EnableRobotRequest` | 0..0 | (empty original component) |
| `rosdemo_v4/EnableRobotResponse` | `Ros1Rosdemo_v4EnableRobotResponse` | 4..4 | res: int32 |
| `rosdemo_v4/EnableSafeSkinRequest` | `Ros1Rosdemo_v4EnableSafeSkinRequest` | 4..4 | status: int32 |
| `rosdemo_v4/EnableSafeSkinResponse` | `Ros1Rosdemo_v4EnableSafeSkinResponse` | 4..4 | res: int32 |
| `rosdemo_v4/GetAORequest` | `Ros1Rosdemo_v4GetAORequest` | 4..4 | index: int32 |
| `rosdemo_v4/GetAOResponse` | `Ros1Rosdemo_v4GetAOResponse` | 4..4 | res: int32 |
| `rosdemo_v4/GetAngleRequest` | `Ros1Rosdemo_v4GetAngleRequest` | 0..0 | (empty original component) |
| `rosdemo_v4/GetAngleResponse` | `Ros1Rosdemo_v4GetAngleResponse` | 4..4 | res: int32 |
| `rosdemo_v4/GetCoilsRequest` | `Ros1Rosdemo_v4GetCoilsRequest` | 12..12 | index: int32; addr: int32; count: int32 |
| `rosdemo_v4/GetCoilsResponse` | `Ros1Rosdemo_v4GetCoilsResponse` | 4..4 | res: int32 |
| `rosdemo_v4/GetCurrentCommandIdRequest` | `Ros1Rosdemo_v4GetCurrentCommandIdRequest` | 0..0 | (empty original component) |
| `rosdemo_v4/GetCurrentCommandIdResponse` | `Ros1Rosdemo_v4GetCurrentCommandIdResponse` | 4..4 | res: int32 |
| `rosdemo_v4/GetDORequest` | `Ros1Rosdemo_v4GetDORequest` | 4..4 | index: int32 |
| `rosdemo_v4/GetDOResponse` | `Ros1Rosdemo_v4GetDOResponse` | 4..4 | res: int32 |
| `rosdemo_v4/GetDOGroupRequest` | `Ros1Rosdemo_v4GetDOGroupRequest` | 4..68 | index_group: int32 sequence<=16 |
| `rosdemo_v4/GetDOGroupResponse` | `Ros1Rosdemo_v4GetDOGroupResponse` | 4..4 | res: int32 |
| `rosdemo_v4/GetErrorIDRequest` | `Ros1Rosdemo_v4GetErrorIDRequest` | 0..0 | (empty original component) |
| `rosdemo_v4/GetErrorIDResponse` | `Ros1Rosdemo_v4GetErrorIDResponse` | 8..72 | error_id: int32 sequence<=16; res: int32 |
| `rosdemo_v4/GetHoldRegsRequest` | `Ros1Rosdemo_v4GetHoldRegsRequest` | 16..272 | index: int32; addr: int32; count: int32; valType: string text<=256B |
| `rosdemo_v4/GetHoldRegsResponse` | `Ros1Rosdemo_v4GetHoldRegsResponse` | 4..4 | res: int32 |
| `rosdemo_v4/GetInBitsRequest` | `Ros1Rosdemo_v4GetInBitsRequest` | 12..12 | index: int32; addr: int32; count: int32 |
| `rosdemo_v4/GetInBitsResponse` | `Ros1Rosdemo_v4GetInBitsResponse` | 4..4 | res: int32 |
| `rosdemo_v4/GetInRegsRequest` | `Ros1Rosdemo_v4GetInRegsRequest` | 16..272 | index: int32; addr: int32; count: int32; valType: string text<=256B |
| `rosdemo_v4/GetInRegsResponse` | `Ros1Rosdemo_v4GetInRegsResponse` | 4..4 | res: int32 |
| `rosdemo_v4/GetInputBoolRequest` | `Ros1Rosdemo_v4GetInputBoolRequest` | 4..4 | address: int32 |
| `rosdemo_v4/GetInputBoolResponse` | `Ros1Rosdemo_v4GetInputBoolResponse` | 4..4 | res: int32 |
| `rosdemo_v4/GetInputFloatRequest` | `Ros1Rosdemo_v4GetInputFloatRequest` | 4..4 | address: int32 |
| `rosdemo_v4/GetInputFloatResponse` | `Ros1Rosdemo_v4GetInputFloatResponse` | 4..4 | res: int32 |
| `rosdemo_v4/GetInputIntRequest` | `Ros1Rosdemo_v4GetInputIntRequest` | 4..4 | address: int32 |
| `rosdemo_v4/GetInputIntResponse` | `Ros1Rosdemo_v4GetInputIntResponse` | 4..4 | res: int32 |
| `rosdemo_v4/GetOutputBoolRequest` | `Ros1Rosdemo_v4GetOutputBoolRequest` | 4..4 | address: int32 |
| `rosdemo_v4/GetOutputBoolResponse` | `Ros1Rosdemo_v4GetOutputBoolResponse` | 4..4 | res: int32 |
| `rosdemo_v4/GetOutputFloatRequest` | `Ros1Rosdemo_v4GetOutputFloatRequest` | 4..4 | address: int32 |
| `rosdemo_v4/GetOutputFloatResponse` | `Ros1Rosdemo_v4GetOutputFloatResponse` | 4..4 | res: int32 |
| `rosdemo_v4/GetOutputIntRequest` | `Ros1Rosdemo_v4GetOutputIntRequest` | 4..4 | address: int32 |
| `rosdemo_v4/GetOutputIntResponse` | `Ros1Rosdemo_v4GetOutputIntResponse` | 4..4 | res: int32 |
| `rosdemo_v4/GetPoseRequest` | `Ros1Rosdemo_v4GetPoseRequest` | 8..520 | user: string text<=256B; tool: string text<=256B |
| `rosdemo_v4/GetPoseResponse` | `Ros1Rosdemo_v4GetPoseResponse` | 8..264 | pose: string text<=256B; res: int32 |
| `rosdemo_v4/GetStartPoseRequest` | `Ros1Rosdemo_v4GetStartPoseRequest` | 4..260 | traceName: string text<=256B |
| `rosdemo_v4/GetStartPoseResponse` | `Ros1Rosdemo_v4GetStartPoseResponse` | 4..4 | res: int32 |
| `rosdemo_v4/InverseKinRequest` | `Ros1Rosdemo_v4InverseKinRequest` | 64..1088 | X: float64; Y: float64; Z: float64; Rx: float64; Ry: float64; Rz: float64; useJointNear: string text<=256B; jointNear: string text<=256B; user: string text<=256B; tool: string text<=256B |
| `rosdemo_v4/InverseKinResponse` | `Ros1Rosdemo_v4InverseKinResponse` | 4..4 | res: int32 |
| `rosdemo_v4/InverseSolutionRequest` | `Ros1Rosdemo_v4InverseSolutionRequest` | 4..260 | parameter: string text<=256B |
| `rosdemo_v4/InverseSolutionResponse` | `Ros1Rosdemo_v4InverseSolutionResponse` | 4..4 | res: int32 |
| `rosdemo_v4/ModbusCloseRequest` | `Ros1Rosdemo_v4ModbusCloseRequest` | 4..4 | index: int32 |
| `rosdemo_v4/ModbusCloseResponse` | `Ros1Rosdemo_v4ModbusCloseResponse` | 4..4 | res: int32 |
| `rosdemo_v4/ModbusCreateRequest` | `Ros1Rosdemo_v4ModbusCreateRequest` | 16..272 | ip: string text<=256B; port: int32; slave_id: int32; isRTU: int32 |
| `rosdemo_v4/ModbusCreateResponse` | `Ros1Rosdemo_v4ModbusCreateResponse` | 4..4 | res: int32 |
| `rosdemo_v4/ModbusRTUCreateRequest` | `Ros1Rosdemo_v4ModbusRTUCreateRequest` | 20..276 | slave_id: int32; baud: int32; parity: string text<=256B; data_bit: int32; stop_bit: int32 |
| `rosdemo_v4/ModbusRTUCreateResponse` | `Ros1Rosdemo_v4ModbusRTUCreateResponse` | 4..4 | res: int32 |
| `rosdemo_v4/MovJRequest` | `Ros1Rosdemo_v4MovJRequest` | 53..4213 | mode: bool; a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v4/MovJResponse` | `Ros1Rosdemo_v4MovJResponse` | 4..4 | res: int32 |
| `rosdemo_v4/MovJIORequest` | `Ros1Rosdemo_v4MovJIORequest` | 57..8377 | mode: bool; a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; MDIS: string sequence<=16 text<=256B; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v4/MovJIOResponse` | `Ros1Rosdemo_v4MovJIOResponse` | 4..4 | res: int32 |
| `rosdemo_v4/MovLRequest` | `Ros1Rosdemo_v4MovLRequest` | 53..4213 | mode: bool; a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v4/MovLResponse` | `Ros1Rosdemo_v4MovLResponse` | 4..4 | res: int32 |
| `rosdemo_v4/MovLIORequest` | `Ros1Rosdemo_v4MovLIORequest` | 57..8377 | mode: bool; a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; MDIS: string sequence<=16 text<=256B; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v4/MovLIOResponse` | `Ros1Rosdemo_v4MovLIOResponse` | 4..4 | res: int32 |
| `rosdemo_v4/MoveJogRequest` | `Ros1Rosdemo_v4MoveJogRequest` | 8..4424 | axisID: string text<=256B; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v4/MoveJogResponse` | `Ros1Rosdemo_v4MoveJogResponse` | 4..4 | res: int32 |
| `rosdemo_v4/PauseRequest` | `Ros1Rosdemo_v4PauseRequest` | 0..0 | (empty original component) |
| `rosdemo_v4/PauseResponse` | `Ros1Rosdemo_v4PauseResponse` | 4..4 | res: int32 |
| `rosdemo_v4/PositiveKinRequest` | `Ros1Rosdemo_v4PositiveKinRequest` | 56..568 | J1: float64; J2: float64; J3: float64; J4: float64; J5: float64; J6: float64; user: string text<=256B; tool: string text<=256B |
| `rosdemo_v4/PositiveKinResponse` | `Ros1Rosdemo_v4PositiveKinResponse` | 4..4 | res: int32 |
| `rosdemo_v4/PowerOnRequest` | `Ros1Rosdemo_v4PowerOnRequest` | 0..0 | (empty original component) |
| `rosdemo_v4/PowerOnResponse` | `Ros1Rosdemo_v4PowerOnResponse` | 4..4 | res: int32 |
| `rosdemo_v4/RelJointMovJRequest` | `Ros1Rosdemo_v4RelJointMovJRequest` | 52..4212 | a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v4/RelJointMovJResponse` | `Ros1Rosdemo_v4RelJointMovJResponse` | 4..4 | res: int32 |
| `rosdemo_v4/RelMovJToolRequest` | `Ros1Rosdemo_v4RelMovJToolRequest` | 52..4212 | a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v4/RelMovJToolResponse` | `Ros1Rosdemo_v4RelMovJToolResponse` | 4..4 | res: int32 |
| `rosdemo_v4/RelMovJUserRequest` | `Ros1Rosdemo_v4RelMovJUserRequest` | 52..4212 | a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v4/RelMovJUserResponse` | `Ros1Rosdemo_v4RelMovJUserResponse` | 4..4 | res: int32 |
| `rosdemo_v4/RelMovLToolRequest` | `Ros1Rosdemo_v4RelMovLToolRequest` | 52..4212 | a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v4/RelMovLToolResponse` | `Ros1Rosdemo_v4RelMovLToolResponse` | 4..4 | res: int32 |
| `rosdemo_v4/RelMovLUserRequest` | `Ros1Rosdemo_v4RelMovLUserRequest` | 52..4212 | a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v4/RelMovLUserResponse` | `Ros1Rosdemo_v4RelMovLUserResponse` | 4..4 | res: int32 |
| `rosdemo_v4/RobotModeRequest` | `Ros1Rosdemo_v4RobotModeRequest` | 0..0 | (empty original component) |
| `rosdemo_v4/RobotModeResponse` | `Ros1Rosdemo_v4RobotModeResponse` | 8..8 | mode: int32; res: int32 |
| `rosdemo_v4/RunScriptRequest` | `Ros1Rosdemo_v4RunScriptRequest` | 4..260 | projectName: string text<=256B |
| `rosdemo_v4/RunScriptResponse` | `Ros1Rosdemo_v4RunScriptResponse` | 4..4 | res: int32 |
| `rosdemo_v4/ServoJRequest` | `Ros1Rosdemo_v4ServoJRequest` | 52..4212 | a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v4/ServoJResponse` | `Ros1Rosdemo_v4ServoJResponse` | 4..4 | res: int32 |
| `rosdemo_v4/ServoPRequest` | `Ros1Rosdemo_v4ServoPRequest` | 52..4212 | a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v4/ServoPResponse` | `Ros1Rosdemo_v4ServoPResponse` | 4..4 | res: int32 |
| `rosdemo_v4/SetBackDistanceRequest` | `Ros1Rosdemo_v4SetBackDistanceRequest` | 8..8 | distance: float64 |
| `rosdemo_v4/SetBackDistanceResponse` | `Ros1Rosdemo_v4SetBackDistanceResponse` | 4..4 | res: int32 |
| `rosdemo_v4/SetCoilsRequest` | `Ros1Rosdemo_v4SetCoilsRequest` | 16..272 | index: int32; addr: int32; count: int32; valTab: string text<=256B |
| `rosdemo_v4/SetCoilsResponse` | `Ros1Rosdemo_v4SetCoilsResponse` | 4..4 | res: int32 |
| `rosdemo_v4/SetCollisionLevelRequest` | `Ros1Rosdemo_v4SetCollisionLevelRequest` | 4..4 | level: int32 |
| `rosdemo_v4/SetCollisionLevelResponse` | `Ros1Rosdemo_v4SetCollisionLevelResponse` | 4..4 | res: int32 |
| `rosdemo_v4/SetHoldRegsRequest` | `Ros1Rosdemo_v4SetHoldRegsRequest` | 20..532 | index: int32; addr: int32; count: int32; valTab: string text<=256B; valType: string text<=256B |
| `rosdemo_v4/SetHoldRegsResponse` | `Ros1Rosdemo_v4SetHoldRegsResponse` | 4..4 | res: int32 |
| `rosdemo_v4/SetOutputBoolRequest` | `Ros1Rosdemo_v4SetOutputBoolRequest` | 8..8 | address: int32; value: int32 |
| `rosdemo_v4/SetOutputBoolResponse` | `Ros1Rosdemo_v4SetOutputBoolResponse` | 4..4 | res: int32 |
| `rosdemo_v4/SetOutputFloatRequest` | `Ros1Rosdemo_v4SetOutputFloatRequest` | 12..12 | address: int32; value: float64 |
| `rosdemo_v4/SetOutputFloatResponse` | `Ros1Rosdemo_v4SetOutputFloatResponse` | 4..4 | res: int32 |
| `rosdemo_v4/SetOutputIntRequest` | `Ros1Rosdemo_v4SetOutputIntRequest` | 8..8 | address: int32; value: int32 |
| `rosdemo_v4/SetOutputIntResponse` | `Ros1Rosdemo_v4SetOutputIntResponse` | 4..4 | res: int32 |
| `rosdemo_v4/SetPayloadRequest` | `Ros1Rosdemo_v4SetPayloadRequest` | 32..32 | load: float64; x: float64; y: float64; z: float64 |
| `rosdemo_v4/SetPayloadResponse` | `Ros1Rosdemo_v4SetPayloadResponse` | 4..4 | res: int32 |
| `rosdemo_v4/SetPostCollisionModeRequest` | `Ros1Rosdemo_v4SetPostCollisionModeRequest` | 4..4 | mode: int32 |
| `rosdemo_v4/SetPostCollisionModeResponse` | `Ros1Rosdemo_v4SetPostCollisionModeResponse` | 4..4 | res: int32 |
| `rosdemo_v4/SetSafeSkinRequest` | `Ros1Rosdemo_v4SetSafeSkinRequest` | 8..8 | part: int32; status: int32 |
| `rosdemo_v4/SetSafeSkinResponse` | `Ros1Rosdemo_v4SetSafeSkinResponse` | 4..4 | res: int32 |
| `rosdemo_v4/SetSafeWallEnableRequest` | `Ros1Rosdemo_v4SetSafeWallEnableRequest` | 8..8 | index: int32; value: int32 |
| `rosdemo_v4/SetSafeWallEnableResponse` | `Ros1Rosdemo_v4SetSafeWallEnableResponse` | 4..4 | res: int32 |
| `rosdemo_v4/SetToolRequest` | `Ros1Rosdemo_v4SetToolRequest` | 8..264 | index: int32; value: string text<=256B |
| `rosdemo_v4/SetToolResponse` | `Ros1Rosdemo_v4SetToolResponse` | 4..4 | res: int32 |
| `rosdemo_v4/SetTool485Request` | `Ros1Rosdemo_v4SetTool485Request` | 16..272 | baudrate: int32; parity: string text<=256B; stop: int32; identify: int32 |
| `rosdemo_v4/SetTool485Response` | `Ros1Rosdemo_v4SetTool485Response` | 4..4 | res: int32 |
| `rosdemo_v4/SetToolModeRequest` | `Ros1Rosdemo_v4SetToolModeRequest` | 8..8 | mode: int32; type: int32 |
| `rosdemo_v4/SetToolModeResponse` | `Ros1Rosdemo_v4SetToolModeResponse` | 4..4 | res: int32 |
| `rosdemo_v4/SetToolPowerRequest` | `Ros1Rosdemo_v4SetToolPowerRequest` | 4..4 | status: int32 |
| `rosdemo_v4/SetToolPowerResponse` | `Ros1Rosdemo_v4SetToolPowerResponse` | 4..4 | res: int32 |
| `rosdemo_v4/SetUserRequest` | `Ros1Rosdemo_v4SetUserRequest` | 8..264 | index: int32; value: string text<=256B |
| `rosdemo_v4/SetUserResponse` | `Ros1Rosdemo_v4SetUserResponse` | 4..4 | res: int32 |
| `rosdemo_v4/SpeedFactorRequest` | `Ros1Rosdemo_v4SpeedFactorRequest` | 4..4 | ratio: int32 |
| `rosdemo_v4/SpeedFactorResponse` | `Ros1Rosdemo_v4SpeedFactorResponse` | 4..4 | res: int32 |
| `rosdemo_v4/StartDragRequest` | `Ros1Rosdemo_v4StartDragRequest` | 0..0 | (empty original component) |
| `rosdemo_v4/StartDragResponse` | `Ros1Rosdemo_v4StartDragResponse` | 4..4 | res: int32 |
| `rosdemo_v4/StartPathRequest` | `Ros1Rosdemo_v4StartPathRequest` | 8..4424 | traceName: string text<=256B; paramValue: string sequence<=16 text<=256B |
| `rosdemo_v4/StartPathResponse` | `Ros1Rosdemo_v4StartPathResponse` | 4..4 | res: int32 |
| `rosdemo_v4/StopRequest` | `Ros1Rosdemo_v4StopRequest` | 0..0 | (empty original component) |
| `rosdemo_v4/StopResponse` | `Ros1Rosdemo_v4StopResponse` | 4..4 | res: int32 |
| `rosdemo_v4/StopDragRequest` | `Ros1Rosdemo_v4StopDragRequest` | 0..0 | (empty original component) |
| `rosdemo_v4/StopDragResponse` | `Ros1Rosdemo_v4StopDragResponse` | 4..4 | res: int32 |
| `rosdemo_v4/StopMoveJogRequest` | `Ros1Rosdemo_v4StopMoveJogRequest` | 0..0 | (empty original component) |
| `rosdemo_v4/StopMoveJogResponse` | `Ros1Rosdemo_v4StopMoveJogResponse` | 4..4 | res: int32 |
| `rosdemo_v4/TcpDashboardRequest` | `Ros1Rosdemo_v4TcpDashboardRequest` | 4..260 | command: string text<=256B |
| `rosdemo_v4/TcpDashboardResponse` | `Ros1Rosdemo_v4TcpDashboardResponse` | 4..260 | result: string text<=256B |
| `rosdemo_v4/ToolRequest` | `Ros1Rosdemo_v4ToolRequest` | 4..4 | index: int32 |
| `rosdemo_v4/ToolResponse` | `Ros1Rosdemo_v4ToolResponse` | 4..4 | res: int32 |
| `rosdemo_v4/ToolAIRequest` | `Ros1Rosdemo_v4ToolAIRequest` | 4..4 | index: int32 |
| `rosdemo_v4/ToolAIResponse` | `Ros1Rosdemo_v4ToolAIResponse` | 4..4 | res: int32 |
| `rosdemo_v4/ToolDIRequest` | `Ros1Rosdemo_v4ToolDIRequest` | 4..4 | index: int32 |
| `rosdemo_v4/ToolDIResponse` | `Ros1Rosdemo_v4ToolDIResponse` | 4..4 | res: int32 |
| `rosdemo_v4/ToolDORequest` | `Ros1Rosdemo_v4ToolDORequest` | 8..8 | index: int32; status: int32 |
| `rosdemo_v4/ToolDOResponse` | `Ros1Rosdemo_v4ToolDOResponse` | 4..4 | res: int32 |
| `rosdemo_v4/ToolDOInstantRequest` | `Ros1Rosdemo_v4ToolDOInstantRequest` | 8..8 | index: int32; status: int32 |
| `rosdemo_v4/ToolDOInstantResponse` | `Ros1Rosdemo_v4ToolDOInstantResponse` | 4..4 | res: int32 |
| `rosdemo_v4/UserRequest` | `Ros1Rosdemo_v4UserRequest` | 4..4 | index: int32 |
| `rosdemo_v4/UserResponse` | `Ros1Rosdemo_v4UserResponse` | 4..4 | res: int32 |
| `rosdemo_v4/VelJRequest` | `Ros1Rosdemo_v4VelJRequest` | 4..4 | r: int32 |
| `rosdemo_v4/VelJResponse` | `Ros1Rosdemo_v4VelJResponse` | 4..4 | res: int32 |
| `rosdemo_v4/VelLRequest` | `Ros1Rosdemo_v4VelLRequest` | 4..4 | r: int32 |
| `rosdemo_v4/VelLResponse` | `Ros1Rosdemo_v4VelLResponse` | 4..4 | res: int32 |

Interfaces:

- `rosdemo_v4/AI` (service): request → `Ros1Rosdemo_v4AIRequest`, response → `Ros1Rosdemo_v4AIResponse`
- `rosdemo_v4/AO` (service): request → `Ros1Rosdemo_v4AORequest`, response → `Ros1Rosdemo_v4AOResponse`
- `rosdemo_v4/AOInstant` (service): request → `Ros1Rosdemo_v4AOInstantRequest`, response → `Ros1Rosdemo_v4AOInstantResponse`
- `rosdemo_v4/AccJ` (service): request → `Ros1Rosdemo_v4AccJRequest`, response → `Ros1Rosdemo_v4AccJResponse`
- `rosdemo_v4/AccL` (service): request → `Ros1Rosdemo_v4AccLRequest`, response → `Ros1Rosdemo_v4AccLResponse`
- `rosdemo_v4/Arc` (service): request → `Ros1Rosdemo_v4ArcRequest`, response → `Ros1Rosdemo_v4ArcResponse`
- `rosdemo_v4/BrakeControl` (service): request → `Ros1Rosdemo_v4BrakeControlRequest`, response → `Ros1Rosdemo_v4BrakeControlResponse`
- `rosdemo_v4/CP` (service): request → `Ros1Rosdemo_v4CPRequest`, response → `Ros1Rosdemo_v4CPResponse`
- `rosdemo_v4/CalcTool` (service): request → `Ros1Rosdemo_v4CalcToolRequest`, response → `Ros1Rosdemo_v4CalcToolResponse`
- `rosdemo_v4/CalcUser` (service): request → `Ros1Rosdemo_v4CalcUserRequest`, response → `Ros1Rosdemo_v4CalcUserResponse`
- `rosdemo_v4/Circle` (service): request → `Ros1Rosdemo_v4CircleRequest`, response → `Ros1Rosdemo_v4CircleResponse`
- `rosdemo_v4/ClearError` (service): request → `Ros1Rosdemo_v4ClearErrorRequest`, response → `Ros1Rosdemo_v4ClearErrorResponse`
- `rosdemo_v4/Continue` (service): request → `Ros1Rosdemo_v4ContinueRequest`, response → `Ros1Rosdemo_v4ContinueResponse`
- `rosdemo_v4/DI` (service): request → `Ros1Rosdemo_v4DIRequest`, response → `Ros1Rosdemo_v4DIResponse`
- `rosdemo_v4/DIGroup` (service): request → `Ros1Rosdemo_v4DIGroupRequest`, response → `Ros1Rosdemo_v4DIGroupResponse`
- `rosdemo_v4/DO` (service): request → `Ros1Rosdemo_v4DORequest`, response → `Ros1Rosdemo_v4DOResponse`
- `rosdemo_v4/DOGroup` (service): request → `Ros1Rosdemo_v4DOGroupRequest`, response → `Ros1Rosdemo_v4DOGroupResponse`
- `rosdemo_v4/DOInstant` (service): request → `Ros1Rosdemo_v4DOInstantRequest`, response → `Ros1Rosdemo_v4DOInstantResponse`
- `rosdemo_v4/DisableRobot` (service): request → `Ros1Rosdemo_v4DisableRobotRequest`, response → `Ros1Rosdemo_v4DisableRobotResponse`
- `rosdemo_v4/DragSensivity` (service): request → `Ros1Rosdemo_v4DragSensivityRequest`, response → `Ros1Rosdemo_v4DragSensivityResponse`
- `rosdemo_v4/EmergencyStop` (service): request → `Ros1Rosdemo_v4EmergencyStopRequest`, response → `Ros1Rosdemo_v4EmergencyStopResponse`
- `rosdemo_v4/EnableRobot` (service): request → `Ros1Rosdemo_v4EnableRobotRequest`, response → `Ros1Rosdemo_v4EnableRobotResponse`
- `rosdemo_v4/EnableSafeSkin` (service): request → `Ros1Rosdemo_v4EnableSafeSkinRequest`, response → `Ros1Rosdemo_v4EnableSafeSkinResponse`
- `rosdemo_v4/GetAO` (service): request → `Ros1Rosdemo_v4GetAORequest`, response → `Ros1Rosdemo_v4GetAOResponse`
- `rosdemo_v4/GetAngle` (service): request → `Ros1Rosdemo_v4GetAngleRequest`, response → `Ros1Rosdemo_v4GetAngleResponse`
- `rosdemo_v4/GetCoils` (service): request → `Ros1Rosdemo_v4GetCoilsRequest`, response → `Ros1Rosdemo_v4GetCoilsResponse`
- `rosdemo_v4/GetCurrentCommandId` (service): request → `Ros1Rosdemo_v4GetCurrentCommandIdRequest`, response → `Ros1Rosdemo_v4GetCurrentCommandIdResponse`
- `rosdemo_v4/GetDO` (service): request → `Ros1Rosdemo_v4GetDORequest`, response → `Ros1Rosdemo_v4GetDOResponse`
- `rosdemo_v4/GetDOGroup` (service): request → `Ros1Rosdemo_v4GetDOGroupRequest`, response → `Ros1Rosdemo_v4GetDOGroupResponse`
- `rosdemo_v4/GetErrorID` (service): request → `Ros1Rosdemo_v4GetErrorIDRequest`, response → `Ros1Rosdemo_v4GetErrorIDResponse`
- `rosdemo_v4/GetHoldRegs` (service): request → `Ros1Rosdemo_v4GetHoldRegsRequest`, response → `Ros1Rosdemo_v4GetHoldRegsResponse`
- `rosdemo_v4/GetInBits` (service): request → `Ros1Rosdemo_v4GetInBitsRequest`, response → `Ros1Rosdemo_v4GetInBitsResponse`
- `rosdemo_v4/GetInRegs` (service): request → `Ros1Rosdemo_v4GetInRegsRequest`, response → `Ros1Rosdemo_v4GetInRegsResponse`
- `rosdemo_v4/GetInputBool` (service): request → `Ros1Rosdemo_v4GetInputBoolRequest`, response → `Ros1Rosdemo_v4GetInputBoolResponse`
- `rosdemo_v4/GetInputFloat` (service): request → `Ros1Rosdemo_v4GetInputFloatRequest`, response → `Ros1Rosdemo_v4GetInputFloatResponse`
- `rosdemo_v4/GetInputInt` (service): request → `Ros1Rosdemo_v4GetInputIntRequest`, response → `Ros1Rosdemo_v4GetInputIntResponse`
- `rosdemo_v4/GetOutputBool` (service): request → `Ros1Rosdemo_v4GetOutputBoolRequest`, response → `Ros1Rosdemo_v4GetOutputBoolResponse`
- `rosdemo_v4/GetOutputFloat` (service): request → `Ros1Rosdemo_v4GetOutputFloatRequest`, response → `Ros1Rosdemo_v4GetOutputFloatResponse`
- `rosdemo_v4/GetOutputInt` (service): request → `Ros1Rosdemo_v4GetOutputIntRequest`, response → `Ros1Rosdemo_v4GetOutputIntResponse`
- `rosdemo_v4/GetPose` (service): request → `Ros1Rosdemo_v4GetPoseRequest`, response → `Ros1Rosdemo_v4GetPoseResponse`
- `rosdemo_v4/GetStartPose` (service): request → `Ros1Rosdemo_v4GetStartPoseRequest`, response → `Ros1Rosdemo_v4GetStartPoseResponse`
- `rosdemo_v4/InverseKin` (service): request → `Ros1Rosdemo_v4InverseKinRequest`, response → `Ros1Rosdemo_v4InverseKinResponse`
- `rosdemo_v4/InverseSolution` (service): request → `Ros1Rosdemo_v4InverseSolutionRequest`, response → `Ros1Rosdemo_v4InverseSolutionResponse`
- `rosdemo_v4/ModbusClose` (service): request → `Ros1Rosdemo_v4ModbusCloseRequest`, response → `Ros1Rosdemo_v4ModbusCloseResponse`
- `rosdemo_v4/ModbusCreate` (service): request → `Ros1Rosdemo_v4ModbusCreateRequest`, response → `Ros1Rosdemo_v4ModbusCreateResponse`
- `rosdemo_v4/ModbusRTUCreate` (service): request → `Ros1Rosdemo_v4ModbusRTUCreateRequest`, response → `Ros1Rosdemo_v4ModbusRTUCreateResponse`
- `rosdemo_v4/MovJ` (service): request → `Ros1Rosdemo_v4MovJRequest`, response → `Ros1Rosdemo_v4MovJResponse`
- `rosdemo_v4/MovJIO` (service): request → `Ros1Rosdemo_v4MovJIORequest`, response → `Ros1Rosdemo_v4MovJIOResponse`
- `rosdemo_v4/MovL` (service): request → `Ros1Rosdemo_v4MovLRequest`, response → `Ros1Rosdemo_v4MovLResponse`
- `rosdemo_v4/MovLIO` (service): request → `Ros1Rosdemo_v4MovLIORequest`, response → `Ros1Rosdemo_v4MovLIOResponse`
- `rosdemo_v4/MoveJog` (service): request → `Ros1Rosdemo_v4MoveJogRequest`, response → `Ros1Rosdemo_v4MoveJogResponse`
- `rosdemo_v4/Pause` (service): request → `Ros1Rosdemo_v4PauseRequest`, response → `Ros1Rosdemo_v4PauseResponse`
- `rosdemo_v4/PositiveKin` (service): request → `Ros1Rosdemo_v4PositiveKinRequest`, response → `Ros1Rosdemo_v4PositiveKinResponse`
- `rosdemo_v4/PowerOn` (service): request → `Ros1Rosdemo_v4PowerOnRequest`, response → `Ros1Rosdemo_v4PowerOnResponse`
- `rosdemo_v4/RelJointMovJ` (service): request → `Ros1Rosdemo_v4RelJointMovJRequest`, response → `Ros1Rosdemo_v4RelJointMovJResponse`
- `rosdemo_v4/RelMovJTool` (service): request → `Ros1Rosdemo_v4RelMovJToolRequest`, response → `Ros1Rosdemo_v4RelMovJToolResponse`
- `rosdemo_v4/RelMovJUser` (service): request → `Ros1Rosdemo_v4RelMovJUserRequest`, response → `Ros1Rosdemo_v4RelMovJUserResponse`
- `rosdemo_v4/RelMovLTool` (service): request → `Ros1Rosdemo_v4RelMovLToolRequest`, response → `Ros1Rosdemo_v4RelMovLToolResponse`
- `rosdemo_v4/RelMovLUser` (service): request → `Ros1Rosdemo_v4RelMovLUserRequest`, response → `Ros1Rosdemo_v4RelMovLUserResponse`
- `rosdemo_v4/RobotMode` (service): request → `Ros1Rosdemo_v4RobotModeRequest`, response → `Ros1Rosdemo_v4RobotModeResponse`
- `rosdemo_v4/RunScript` (service): request → `Ros1Rosdemo_v4RunScriptRequest`, response → `Ros1Rosdemo_v4RunScriptResponse`
- `rosdemo_v4/ServoJ` (service): request → `Ros1Rosdemo_v4ServoJRequest`, response → `Ros1Rosdemo_v4ServoJResponse`
- `rosdemo_v4/ServoP` (service): request → `Ros1Rosdemo_v4ServoPRequest`, response → `Ros1Rosdemo_v4ServoPResponse`
- `rosdemo_v4/SetBackDistance` (service): request → `Ros1Rosdemo_v4SetBackDistanceRequest`, response → `Ros1Rosdemo_v4SetBackDistanceResponse`
- `rosdemo_v4/SetCoils` (service): request → `Ros1Rosdemo_v4SetCoilsRequest`, response → `Ros1Rosdemo_v4SetCoilsResponse`
- `rosdemo_v4/SetCollisionLevel` (service): request → `Ros1Rosdemo_v4SetCollisionLevelRequest`, response → `Ros1Rosdemo_v4SetCollisionLevelResponse`
- `rosdemo_v4/SetHoldRegs` (service): request → `Ros1Rosdemo_v4SetHoldRegsRequest`, response → `Ros1Rosdemo_v4SetHoldRegsResponse`
- `rosdemo_v4/SetOutputBool` (service): request → `Ros1Rosdemo_v4SetOutputBoolRequest`, response → `Ros1Rosdemo_v4SetOutputBoolResponse`
- `rosdemo_v4/SetOutputFloat` (service): request → `Ros1Rosdemo_v4SetOutputFloatRequest`, response → `Ros1Rosdemo_v4SetOutputFloatResponse`
- `rosdemo_v4/SetOutputInt` (service): request → `Ros1Rosdemo_v4SetOutputIntRequest`, response → `Ros1Rosdemo_v4SetOutputIntResponse`
- `rosdemo_v4/SetPayload` (service): request → `Ros1Rosdemo_v4SetPayloadRequest`, response → `Ros1Rosdemo_v4SetPayloadResponse`
- `rosdemo_v4/SetPostCollisionMode` (service): request → `Ros1Rosdemo_v4SetPostCollisionModeRequest`, response → `Ros1Rosdemo_v4SetPostCollisionModeResponse`
- `rosdemo_v4/SetSafeSkin` (service): request → `Ros1Rosdemo_v4SetSafeSkinRequest`, response → `Ros1Rosdemo_v4SetSafeSkinResponse`
- `rosdemo_v4/SetSafeWallEnable` (service): request → `Ros1Rosdemo_v4SetSafeWallEnableRequest`, response → `Ros1Rosdemo_v4SetSafeWallEnableResponse`
- `rosdemo_v4/SetTool` (service): request → `Ros1Rosdemo_v4SetToolRequest`, response → `Ros1Rosdemo_v4SetToolResponse`
- `rosdemo_v4/SetTool485` (service): request → `Ros1Rosdemo_v4SetTool485Request`, response → `Ros1Rosdemo_v4SetTool485Response`
- `rosdemo_v4/SetToolMode` (service): request → `Ros1Rosdemo_v4SetToolModeRequest`, response → `Ros1Rosdemo_v4SetToolModeResponse`
- `rosdemo_v4/SetToolPower` (service): request → `Ros1Rosdemo_v4SetToolPowerRequest`, response → `Ros1Rosdemo_v4SetToolPowerResponse`
- `rosdemo_v4/SetUser` (service): request → `Ros1Rosdemo_v4SetUserRequest`, response → `Ros1Rosdemo_v4SetUserResponse`
- `rosdemo_v4/SpeedFactor` (service): request → `Ros1Rosdemo_v4SpeedFactorRequest`, response → `Ros1Rosdemo_v4SpeedFactorResponse`
- `rosdemo_v4/StartDrag` (service): request → `Ros1Rosdemo_v4StartDragRequest`, response → `Ros1Rosdemo_v4StartDragResponse`
- `rosdemo_v4/StartPath` (service): request → `Ros1Rosdemo_v4StartPathRequest`, response → `Ros1Rosdemo_v4StartPathResponse`
- `rosdemo_v4/Stop` (service): request → `Ros1Rosdemo_v4StopRequest`, response → `Ros1Rosdemo_v4StopResponse`
- `rosdemo_v4/StopDrag` (service): request → `Ros1Rosdemo_v4StopDragRequest`, response → `Ros1Rosdemo_v4StopDragResponse`
- `rosdemo_v4/StopMoveJog` (service): request → `Ros1Rosdemo_v4StopMoveJogRequest`, response → `Ros1Rosdemo_v4StopMoveJogResponse`
- `rosdemo_v4/TcpDashboard` (service): request → `Ros1Rosdemo_v4TcpDashboardRequest`, response → `Ros1Rosdemo_v4TcpDashboardResponse`
- `rosdemo_v4/Tool` (service): request → `Ros1Rosdemo_v4ToolRequest`, response → `Ros1Rosdemo_v4ToolResponse`
- `rosdemo_v4/ToolAI` (service): request → `Ros1Rosdemo_v4ToolAIRequest`, response → `Ros1Rosdemo_v4ToolAIResponse`
- `rosdemo_v4/ToolDI` (service): request → `Ros1Rosdemo_v4ToolDIRequest`, response → `Ros1Rosdemo_v4ToolDIResponse`
- `rosdemo_v4/ToolDO` (service): request → `Ros1Rosdemo_v4ToolDORequest`, response → `Ros1Rosdemo_v4ToolDOResponse`
- `rosdemo_v4/ToolDOInstant` (service): request → `Ros1Rosdemo_v4ToolDOInstantRequest`, response → `Ros1Rosdemo_v4ToolDOInstantResponse`
- `rosdemo_v4/User` (service): request → `Ros1Rosdemo_v4UserRequest`, response → `Ros1Rosdemo_v4UserResponse`
- `rosdemo_v4/VelJ` (service): request → `Ros1Rosdemo_v4VelJRequest`, response → `Ros1Rosdemo_v4VelJResponse`
- `rosdemo_v4/VelL` (service): request → `Ros1Rosdemo_v4VelLRequest`, response → `Ros1Rosdemo_v4VelLResponse`

Immutable upstream sources:

- [Dobot-Arm/TCP-IP-ROS-6AXis @ 0924e785f1827b7125ba4ba2bc3325811ed21c18](https://github.com/Dobot-Arm/TCP-IP-ROS-6AXis/tree/0924e785f1827b7125ba4ba2bc3325811ed21c18)

## ros1_v3

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `dobot_bringup/RobotStatus` | `Ros1Dobot_bringupRobotStatus` | 2..2 | is_enable: bool; is_connected: bool |
| `dobot_bringup/ToolVectorActual` | `Ros1Dobot_bringupToolVectorActual` | 48..48 | x: float64; y: float64; z: float64; rx: float64; ry: float64; rz: float64 |
| `dobot_bringup/AIRequest` | `Ros1Dobot_bringupAIRequest` | 4..4 | index: int32 |
| `dobot_bringup/AIResponse` | `Ros1Dobot_bringupAIResponse` | 4..4 | res: int32 |
| `dobot_bringup/AORequest` | `Ros1Dobot_bringupAORequest` | 8..8 | index: int32; status: int32 |
| `dobot_bringup/AOResponse` | `Ros1Dobot_bringupAOResponse` | 4..4 | res: int32 |
| `dobot_bringup/AOExecuteRequest` | `Ros1Dobot_bringupAOExecuteRequest` | 8..8 | index: int32; value: int32 |
| `dobot_bringup/AOExecuteResponse` | `Ros1Dobot_bringupAOExecuteResponse` | 4..4 | res: int32 |
| `dobot_bringup/AccJRequest` | `Ros1Dobot_bringupAccJRequest` | 4..4 | r: int32 |
| `dobot_bringup/AccJResponse` | `Ros1Dobot_bringupAccJResponse` | 4..4 | res: int32 |
| `dobot_bringup/AccLRequest` | `Ros1Dobot_bringupAccLRequest` | 4..4 | r: int32 |
| `dobot_bringup/AccLResponse` | `Ros1Dobot_bringupAccLResponse` | 4..4 | res: int32 |
| `dobot_bringup/ArcRequest` | `Ros1Dobot_bringupArcRequest` | 100..4260 | x1: float64; y1: float64; z1: float64; a1: float64; b1: float64; c1: float64; x2: float64; y2: float64; z2: float64; a2: float64; b2: float64; c2: float64; paramValue: string sequence<=16 text<=256B |
| `dobot_bringup/ArcResponse` | `Ros1Dobot_bringupArcResponse` | 4..4 | res: int32 |
| `dobot_bringup/ArchRequest` | `Ros1Dobot_bringupArchRequest` | 8..4168 | index: int32; cpValue: string sequence<=16 text<=256B |
| `dobot_bringup/ArchResponse` | `Ros1Dobot_bringupArchResponse` | 4..4 | res: int32 |
| `dobot_bringup/BrakeControlRequest` | `Ros1Dobot_bringupBrakeControlRequest` | 8..8 | axisID: int32; value: int32 |
| `dobot_bringup/BrakeControlResponse` | `Ros1Dobot_bringupBrakeControlResponse` | 4..4 | res: int32 |
| `dobot_bringup/CPRequest` | `Ros1Dobot_bringupCPRequest` | 4..4 | r: int32 |
| `dobot_bringup/CPResponse` | `Ros1Dobot_bringupCPResponse` | 4..4 | res: int32 |
| `dobot_bringup/CircleRequest` | `Ros1Dobot_bringupCircleRequest` | 104..4264 | count: int32; x1: float64; y1: float64; z1: float64; a1: float64; b1: float64; c1: float64; x2: float64; y2: float64; z2: float64; a2: float64; b2: float64; c2: float64; paramValue: string sequence<=16 text<=256B |
| `dobot_bringup/CircleResponse` | `Ros1Dobot_bringupCircleResponse` | 4..4 | res: int32 |
| `dobot_bringup/ClearErrorRequest` | `Ros1Dobot_bringupClearErrorRequest` | 0..0 | (empty original component) |
| `dobot_bringup/ClearErrorResponse` | `Ros1Dobot_bringupClearErrorResponse` | 4..4 | res: int32 |
| `dobot_bringup/ContinueScriptRequest` | `Ros1Dobot_bringupContinueScriptRequest` | 0..0 | (empty original component) |
| `dobot_bringup/ContinueScriptResponse` | `Ros1Dobot_bringupContinueScriptResponse` | 4..4 | res: int32 |
| `dobot_bringup/ContinuesRequest` | `Ros1Dobot_bringupContinuesRequest` | 0..0 | (empty original component) |
| `dobot_bringup/ContinuesResponse` | `Ros1Dobot_bringupContinuesResponse` | 4..4 | res: int32 |
| `dobot_bringup/DIRequest` | `Ros1Dobot_bringupDIRequest` | 4..4 | index: int32 |
| `dobot_bringup/DIResponse` | `Ros1Dobot_bringupDIResponse` | 4..4 | res: int32 |
| `dobot_bringup/DIGroupRequest` | `Ros1Dobot_bringupDIGroupRequest` | 4..68 | args: int32 sequence<=16 |
| `dobot_bringup/DIGroupResponse` | `Ros1Dobot_bringupDIGroupResponse` | 4..4 | res: int32 |
| `dobot_bringup/DORequest` | `Ros1Dobot_bringupDORequest` | 8..8 | index: int32; status: int32 |
| `dobot_bringup/DOResponse` | `Ros1Dobot_bringupDOResponse` | 4..4 | res: int32 |
| `dobot_bringup/DOExecuteRequest` | `Ros1Dobot_bringupDOExecuteRequest` | 8..8 | index: int32; status: int32 |
| `dobot_bringup/DOExecuteResponse` | `Ros1Dobot_bringupDOExecuteResponse` | 4..4 | res: int32 |
| `dobot_bringup/DOGroupRequest` | `Ros1Dobot_bringupDOGroupRequest` | 4..68 | args: int32 sequence<=16 |
| `dobot_bringup/DOGroupResponse` | `Ros1Dobot_bringupDOGroupResponse` | 4..4 | res: int32 |
| `dobot_bringup/DigitalOutputsRequest` | `Ros1Dobot_bringupDigitalOutputsRequest` | 5..5 | index: int32; status: bool |
| `dobot_bringup/DigitalOutputsResponse` | `Ros1Dobot_bringupDigitalOutputsResponse` | 4..4 | res: int32 |
| `dobot_bringup/DisableRobotRequest` | `Ros1Dobot_bringupDisableRobotRequest` | 0..0 | (empty original component) |
| `dobot_bringup/DisableRobotResponse` | `Ros1Dobot_bringupDisableRobotResponse` | 4..4 | res: int32 |
| `dobot_bringup/EmergencyStopRequest` | `Ros1Dobot_bringupEmergencyStopRequest` | 0..0 | (empty original component) |
| `dobot_bringup/EmergencyStopResponse` | `Ros1Dobot_bringupEmergencyStopResponse` | 4..4 | res: int32 |
| `dobot_bringup/EnableRobotRequest` | `Ros1Dobot_bringupEnableRobotRequest` | 4..132 | args: float64 sequence<=16 |
| `dobot_bringup/EnableRobotResponse` | `Ros1Dobot_bringupEnableRobotResponse` | 4..4 | res: int32 |
| `dobot_bringup/GetAngleRequest` | `Ros1Dobot_bringupGetAngleRequest` | 0..0 | (empty original component) |
| `dobot_bringup/GetAngleResponse` | `Ros1Dobot_bringupGetAngleResponse` | 4..4 | res: int32 |
| `dobot_bringup/GetCoilsRequest` | `Ros1Dobot_bringupGetCoilsRequest` | 12..12 | index: int32; addr: int32; count: int32 |
| `dobot_bringup/GetCoilsResponse` | `Ros1Dobot_bringupGetCoilsResponse` | 4..4 | res: int32 |
| `dobot_bringup/GetErrorIDRequest` | `Ros1Dobot_bringupGetErrorIDRequest` | 0..0 | (empty original component) |
| `dobot_bringup/GetErrorIDResponse` | `Ros1Dobot_bringupGetErrorIDResponse` | 8..72 | res: int32; errorID: int32 sequence<=16 |
| `dobot_bringup/GetHoldRegsRequest` | `Ros1Dobot_bringupGetHoldRegsRequest` | 16..4176 | index: int32; addr: int32; count: int32; valtype: string sequence<=16 text<=256B |
| `dobot_bringup/GetHoldRegsResponse` | `Ros1Dobot_bringupGetHoldRegsResponse` | 8..8 | res: int32; index: int32 |
| `dobot_bringup/GetInBitsRequest` | `Ros1Dobot_bringupGetInBitsRequest` | 12..12 | index: int32; addr: int32; count: int32 |
| `dobot_bringup/GetInBitsResponse` | `Ros1Dobot_bringupGetInBitsResponse` | 4..4 | res: int32 |
| `dobot_bringup/GetInRegsRequest` | `Ros1Dobot_bringupGetInRegsRequest` | 16..4176 | index: int32; addr: int32; count: int32; valType: string sequence<=16 text<=256B |
| `dobot_bringup/GetInRegsResponse` | `Ros1Dobot_bringupGetInRegsResponse` | 4..4 | res: int32 |
| `dobot_bringup/GetPathStartPoseRequest` | `Ros1Dobot_bringupGetPathStartPoseRequest` | 4..260 | traceName: string text<=256B |
| `dobot_bringup/GetPathStartPoseResponse` | `Ros1Dobot_bringupGetPathStartPoseResponse` | 4..4 | res: int32 |
| `dobot_bringup/GetPoseRequest` | `Ros1Dobot_bringupGetPoseRequest` | 8..136 | user: int32 sequence<=16; tool: int32 sequence<=16 |
| `dobot_bringup/GetPoseResponse` | `Ros1Dobot_bringupGetPoseResponse` | 4..4 | res: int32 |
| `dobot_bringup/GetSixForceDataRequest` | `Ros1Dobot_bringupGetSixForceDataRequest` | 0..0 | (empty original component) |
| `dobot_bringup/GetSixForceDataResponse` | `Ros1Dobot_bringupGetSixForceDataResponse` | 4..4 | res: int32 |
| `dobot_bringup/GetTerminal485Request` | `Ros1Dobot_bringupGetTerminal485Request` | 0..0 | (empty original component) |
| `dobot_bringup/GetTerminal485Response` | `Ros1Dobot_bringupGetTerminal485Response` | 4..4 | res: int32 |
| `dobot_bringup/GetTraceStartPoseRequest` | `Ros1Dobot_bringupGetTraceStartPoseRequest` | 4..260 | traceName: string text<=256B |
| `dobot_bringup/GetTraceStartPoseResponse` | `Ros1Dobot_bringupGetTraceStartPoseResponse` | 4..4 | res: int32 |
| `dobot_bringup/HandleTrajPointsRequest` | `Ros1Dobot_bringupHandleTrajPointsRequest` | 4..260 | traceName: string text<=256B |
| `dobot_bringup/HandleTrajPointsResponse` | `Ros1Dobot_bringupHandleTrajPointsResponse` | 4..4 | res: int32 |
| `dobot_bringup/InverseSolutionRequest` | `Ros1Dobot_bringupInverseSolutionRequest` | 64..320 | offset1: float64; offset2: float64; offset3: float64; offset4: float64; offset5: float64; offset6: float64; user: int32; tool: int32; isJointNear: int32; JointNear: string text<=256B |
| `dobot_bringup/InverseSolutionResponse` | `Ros1Dobot_bringupInverseSolutionResponse` | 4..4 | res: int32 |
| `dobot_bringup/JointMovJRequest` | `Ros1Dobot_bringupJointMovJRequest` | 52..4212 | j1: float64; j2: float64; j3: float64; j4: float64; j5: float64; j6: float64; paramValue: string sequence<=16 text<=256B |
| `dobot_bringup/JointMovJResponse` | `Ros1Dobot_bringupJointMovJResponse` | 4..4 | res: int32 |
| `dobot_bringup/JumpRequest` | `Ros1Dobot_bringupJumpRequest` | 48..48 | offset1: float64; offset2: float64; offset3: float64; offset4: float64; offset5: float64; offset6: float64 |
| `dobot_bringup/JumpResponse` | `Ros1Dobot_bringupJumpResponse` | 4..4 | res: int32 |
| `dobot_bringup/LimZRequest` | `Ros1Dobot_bringupLimZRequest` | 4..4 | value: int32 |
| `dobot_bringup/LimZResponse` | `Ros1Dobot_bringupLimZResponse` | 4..4 | res: int32 |
| `dobot_bringup/LoadSwitchRequest` | `Ros1Dobot_bringupLoadSwitchRequest` | 4..4 | status: int32 |
| `dobot_bringup/LoadSwitchResponse` | `Ros1Dobot_bringupLoadSwitchResponse` | 4..4 | res: int32 |
| `dobot_bringup/ModbusCloseRequest` | `Ros1Dobot_bringupModbusCloseRequest` | 4..4 | index: int32 |
| `dobot_bringup/ModbusCloseResponse` | `Ros1Dobot_bringupModbusCloseResponse` | 4..4 | res: int32 |
| `dobot_bringup/ModbusCreateRequest` | `Ros1Dobot_bringupModbusCreateRequest` | 16..336 | ip: string text<=256B; port: int32; slave_id: int32; is_rtu: int32 sequence<=16 |
| `dobot_bringup/ModbusCreateResponse` | `Ros1Dobot_bringupModbusCreateResponse` | 8..8 | res: int32; index: int32 |
| `dobot_bringup/MovJRequest` | `Ros1Dobot_bringupMovJRequest` | 52..4212 | x: float64; y: float64; z: float64; a: float64; b: float64; c: float64; paramValue: string sequence<=16 text<=256B |
| `dobot_bringup/MovJResponse` | `Ros1Dobot_bringupMovJResponse` | 4..4 | res: int32 |
| `dobot_bringup/MovJExtRequest` | `Ros1Dobot_bringupMovJExtRequest` | 12..4172 | offset: float64; paramValue: string sequence<=16 text<=256B |
| `dobot_bringup/MovJExtResponse` | `Ros1Dobot_bringupMovJExtResponse` | 4..4 | res: int32 |
| `dobot_bringup/MovJIORequest` | `Ros1Dobot_bringupMovJIORequest` | 52..4212 | x: float64; y: float64; z: float64; rx: float64; ry: float64; rz: float64; paramValue: string sequence<=16 text<=256B |
| `dobot_bringup/MovJIOResponse` | `Ros1Dobot_bringupMovJIOResponse` | 4..4 | res: int32 |
| `dobot_bringup/MovLRequest` | `Ros1Dobot_bringupMovLRequest` | 52..4212 | x: float64; y: float64; z: float64; a: float64; b: float64; c: float64; paramValue: string sequence<=16 text<=256B |
| `dobot_bringup/MovLResponse` | `Ros1Dobot_bringupMovLResponse` | 4..4 | res: int32 |
| `dobot_bringup/MovLIORequest` | `Ros1Dobot_bringupMovLIORequest` | 52..4212 | x: float64; y: float64; z: float64; rx: float64; ry: float64; rz: float64; paramValue: string sequence<=16 text<=256B |
| `dobot_bringup/MovLIOResponse` | `Ros1Dobot_bringupMovLIOResponse` | 4..4 | res: int32 |
| `dobot_bringup/MoveJogRequest` | `Ros1Dobot_bringupMoveJogRequest` | 8..4424 | axisID: string text<=256B; paramValue: string sequence<=16 text<=256B |
| `dobot_bringup/MoveJogResponse` | `Ros1Dobot_bringupMoveJogResponse` | 4..4 | res: int32 |
| `dobot_bringup/PauseScriptRequest` | `Ros1Dobot_bringupPauseScriptRequest` | 0..0 | (empty original component) |
| `dobot_bringup/PauseScriptResponse` | `Ros1Dobot_bringupPauseScriptResponse` | 4..4 | res: int32 |
| `dobot_bringup/PayLoadRequest` | `Ros1Dobot_bringupPayLoadRequest` | 16..16 | weight: float64; inertia: float64 |
| `dobot_bringup/PayLoadResponse` | `Ros1Dobot_bringupPayLoadResponse` | 4..4 | res: int32 |
| `dobot_bringup/PositiveSolutionRequest` | `Ros1Dobot_bringupPositiveSolutionRequest` | 56..56 | offset1: float64; offset2: float64; offset3: float64; offset4: float64; offset5: float64; offset6: float64; user: int32; tool: int32 |
| `dobot_bringup/PositiveSolutionResponse` | `Ros1Dobot_bringupPositiveSolutionResponse` | 4..4 | res: int32 |
| `dobot_bringup/PowerOnRequest` | `Ros1Dobot_bringupPowerOnRequest` | 0..0 | (empty original component) |
| `dobot_bringup/PowerOnResponse` | `Ros1Dobot_bringupPowerOnResponse` | 4..4 | res: int32 |
| `dobot_bringup/RelJointMovJRequest` | `Ros1Dobot_bringupRelJointMovJRequest` | 52..4212 | offset1: float64; offset2: float64; offset3: float64; offset4: float64; offset5: float64; offset6: float64; paramValue: string sequence<=16 text<=256B |
| `dobot_bringup/RelJointMovJResponse` | `Ros1Dobot_bringupRelJointMovJResponse` | 4..4 | res: int32 |
| `dobot_bringup/RelMovJRequest` | `Ros1Dobot_bringupRelMovJRequest` | 48..48 | offset1: float64; offset2: float64; offset3: float64; offset4: float64; offset5: float64; offset6: float64 |
| `dobot_bringup/RelMovJResponse` | `Ros1Dobot_bringupRelMovJResponse` | 4..4 | res: int32 |
| `dobot_bringup/RelMovJToolRequest` | `Ros1Dobot_bringupRelMovJToolRequest` | 56..4216 | x: float64; y: float64; z: float64; rx: float64; ry: float64; rz: float64; tool: int32; paramValue: string sequence<=16 text<=256B |
| `dobot_bringup/RelMovJToolResponse` | `Ros1Dobot_bringupRelMovJToolResponse` | 4..4 | res: int32 |
| `dobot_bringup/RelMovJUserRequest` | `Ros1Dobot_bringupRelMovJUserRequest` | 56..4216 | x: float64; y: float64; z: float64; rx: float64; ry: float64; rz: float64; user: int32; paramValue: string sequence<=16 text<=256B |
| `dobot_bringup/RelMovJUserResponse` | `Ros1Dobot_bringupRelMovJUserResponse` | 4..4 | res: int32 |
| `dobot_bringup/RelMovLRequest` | `Ros1Dobot_bringupRelMovLRequest` | 24..24 | x: float64; y: float64; z: float64 |
| `dobot_bringup/RelMovLResponse` | `Ros1Dobot_bringupRelMovLResponse` | 4..4 | res: int32 |
| `dobot_bringup/RelMovLToolRequest` | `Ros1Dobot_bringupRelMovLToolRequest` | 56..4216 | x: float64; y: float64; z: float64; rx: float64; ry: float64; rz: float64; tool: int32; paramValue: string sequence<=16 text<=256B |
| `dobot_bringup/RelMovLToolResponse` | `Ros1Dobot_bringupRelMovLToolResponse` | 4..4 | res: int32 |
| `dobot_bringup/RelMovLUserRequest` | `Ros1Dobot_bringupRelMovLUserRequest` | 56..4216 | x: float64; y: float64; z: float64; rx: float64; ry: float64; rz: float64; user: int32; paramValue: string sequence<=16 text<=256B |
| `dobot_bringup/RelMovLUserResponse` | `Ros1Dobot_bringupRelMovLUserResponse` | 4..4 | res: int32 |
| `dobot_bringup/ResetRobotRequest` | `Ros1Dobot_bringupResetRobotRequest` | 0..0 | (empty original component) |
| `dobot_bringup/ResetRobotResponse` | `Ros1Dobot_bringupResetRobotResponse` | 4..4 | res: int32 |
| `dobot_bringup/RobotModeRequest` | `Ros1Dobot_bringupRobotModeRequest` | 0..0 | (empty original component) |
| `dobot_bringup/RobotModeResponse` | `Ros1Dobot_bringupRobotModeResponse` | 8..8 | mode: int32; res: int32 |
| `dobot_bringup/RunScriptRequest` | `Ros1Dobot_bringupRunScriptRequest` | 4..260 | projectName: string text<=256B |
| `dobot_bringup/RunScriptResponse` | `Ros1Dobot_bringupRunScriptResponse` | 4..4 | res: int32 |
| `dobot_bringup/ServoJRequest` | `Ros1Dobot_bringupServoJRequest` | 60..444 | offset1: float64; offset2: float64; offset3: float64; offset4: float64; offset5: float64; offset6: float64; t: float64 sequence<=16; lookahead_time: float64 sequence<=16; gain: float64 sequence<=16 |
| `dobot_bringup/ServoJResponse` | `Ros1Dobot_bringupServoJResponse` | 4..4 | res: int32 |
| `dobot_bringup/ServoJParamRequest` | `Ros1Dobot_bringupServoJParamRequest` | 32..32 | trajectory_duration: float64; t: float64; lookahead_time: float64; gain: float64 |
| `dobot_bringup/ServoJParamResponse` | `Ros1Dobot_bringupServoJParamResponse` | 4..4 | res: int32 |
| `dobot_bringup/ServoPRequest` | `Ros1Dobot_bringupServoPRequest` | 48..48 | x: float64; y: float64; z: float64; a: float64; b: float64; c: float64 |
| `dobot_bringup/ServoPResponse` | `Ros1Dobot_bringupServoPResponse` | 4..4 | res: int32 |
| `dobot_bringup/SetArmOrientationRequest` | `Ros1Dobot_bringupSetArmOrientationRequest` | 16..16 | LorR: int32; UorD: int32; ForN: int32; Config6: int32 |
| `dobot_bringup/SetArmOrientationResponse` | `Ros1Dobot_bringupSetArmOrientationResponse` | 4..4 | res: int32 |
| `dobot_bringup/SetCoilsRequest` | `Ros1Dobot_bringupSetCoilsRequest` | 16..272 | index: int32; addr: int32; count: int32; valTab: string text<=256B |
| `dobot_bringup/SetCoilsResponse` | `Ros1Dobot_bringupSetCoilsResponse` | 4..4 | res: int32 |
| `dobot_bringup/SetCollideDragRequest` | `Ros1Dobot_bringupSetCollideDragRequest` | 4..4 | status: int32 |
| `dobot_bringup/SetCollideDragResponse` | `Ros1Dobot_bringupSetCollideDragResponse` | 4..4 | res: int32 |
| `dobot_bringup/SetCollisionLevelRequest` | `Ros1Dobot_bringupSetCollisionLevelRequest` | 4..4 | level: int32 |
| `dobot_bringup/SetCollisionLevelResponse` | `Ros1Dobot_bringupSetCollisionLevelResponse` | 4..4 | res: int32 |
| `dobot_bringup/SetHoldRegsRequest` | `Ros1Dobot_bringupSetHoldRegsRequest` | 20..4436 | index: int32; addr: int32; count: int32; valTab: string text<=256B; valtype: string sequence<=16 text<=256B |
| `dobot_bringup/SetHoldRegsResponse` | `Ros1Dobot_bringupSetHoldRegsResponse` | 4..4 | res: int32 |
| `dobot_bringup/SetObstacleAvoidRequest` | `Ros1Dobot_bringupSetObstacleAvoidRequest` | 4..4 | status: int32 |
| `dobot_bringup/SetObstacleAvoidResponse` | `Ros1Dobot_bringupSetObstacleAvoidResponse` | 4..4 | res: int32 |
| `dobot_bringup/SetPayloadRequest` | `Ros1Dobot_bringupSetPayloadRequest` | 8..8 | load: float64 |
| `dobot_bringup/SetPayloadResponse` | `Ros1Dobot_bringupSetPayloadResponse` | 4..4 | res: int32 |
| `dobot_bringup/SetSafeSkinRequest` | `Ros1Dobot_bringupSetSafeSkinRequest` | 4..4 | status: int32 |
| `dobot_bringup/SetSafeSkinResponse` | `Ros1Dobot_bringupSetSafeSkinResponse` | 4..4 | res: int32 |
| `dobot_bringup/SetTerminal485Request` | `Ros1Dobot_bringupSetTerminal485Request` | 16..272 | baudRate: int32; dataLen: int32; parityBit: string text<=256B; stopBit: int32 |
| `dobot_bringup/SetTerminal485Response` | `Ros1Dobot_bringupSetTerminal485Response` | 4..4 | res: int32 |
| `dobot_bringup/SetTerminalKeysRequest` | `Ros1Dobot_bringupSetTerminalKeysRequest` | 4..4 | status: int32 |
| `dobot_bringup/SetTerminalKeysResponse` | `Ros1Dobot_bringupSetTerminalKeysResponse` | 4..4 | res: int32 |
| `dobot_bringup/SpeedFactorRequest` | `Ros1Dobot_bringupSpeedFactorRequest` | 4..4 | ratio: int32 |
| `dobot_bringup/SpeedFactorResponse` | `Ros1Dobot_bringupSpeedFactorResponse` | 4..4 | res: int32 |
| `dobot_bringup/SpeedJRequest` | `Ros1Dobot_bringupSpeedJRequest` | 4..4 | r: int32 |
| `dobot_bringup/SpeedJResponse` | `Ros1Dobot_bringupSpeedJResponse` | 4..4 | res: int32 |
| `dobot_bringup/SpeedLRequest` | `Ros1Dobot_bringupSpeedLRequest` | 4..4 | r: int32 |
| `dobot_bringup/SpeedLResponse` | `Ros1Dobot_bringupSpeedLResponse` | 4..4 | res: int32 |
| `dobot_bringup/StartDragRequest` | `Ros1Dobot_bringupStartDragRequest` | 0..0 | (empty original component) |
| `dobot_bringup/StartDragResponse` | `Ros1Dobot_bringupStartDragResponse` | 4..4 | res: int32 |
| `dobot_bringup/StartFCTraceRequest` | `Ros1Dobot_bringupStartFCTraceRequest` | 4..260 | trace_name: string text<=256B |
| `dobot_bringup/StartFCTraceResponse` | `Ros1Dobot_bringupStartFCTraceResponse` | 4..4 | res: int32 |
| `dobot_bringup/StartPathRequest` | `Ros1Dobot_bringupStartPathRequest` | 12..268 | trace_name: string text<=256B; const_val: int32; cart: int32 |
| `dobot_bringup/StartPathResponse` | `Ros1Dobot_bringupStartPathResponse` | 4..4 | res: int32 |
| `dobot_bringup/StartTraceRequest` | `Ros1Dobot_bringupStartTraceRequest` | 4..260 | trace_name: string text<=256B |
| `dobot_bringup/StartTraceResponse` | `Ros1Dobot_bringupStartTraceResponse` | 4..4 | res: int32 |
| `dobot_bringup/StopDragRequest` | `Ros1Dobot_bringupStopDragRequest` | 0..0 | (empty original component) |
| `dobot_bringup/StopDragResponse` | `Ros1Dobot_bringupStopDragResponse` | 4..4 | res: int32 |
| `dobot_bringup/StopScriptRequest` | `Ros1Dobot_bringupStopScriptRequest` | 0..0 | (empty original component) |
| `dobot_bringup/StopScriptResponse` | `Ros1Dobot_bringupStopScriptResponse` | 4..4 | res: int32 |
| `dobot_bringup/StopmoveJogRequest` | `Ros1Dobot_bringupStopmoveJogRequest` | 0..0 | (empty original component) |
| `dobot_bringup/StopmoveJogResponse` | `Ros1Dobot_bringupStopmoveJogResponse` | 4..4 | res: int32 |
| `dobot_bringup/SyncRequest` | `Ros1Dobot_bringupSyncRequest` | 0..0 | (empty original component) |
| `dobot_bringup/SyncResponse` | `Ros1Dobot_bringupSyncResponse` | 4..4 | res: int32 |
| `dobot_bringup/SyncAllRequest` | `Ros1Dobot_bringupSyncAllRequest` | 0..0 | (empty original component) |
| `dobot_bringup/SyncAllResponse` | `Ros1Dobot_bringupSyncAllResponse` | 4..4 | res: int32 |
| `dobot_bringup/TCPSpeedRequest` | `Ros1Dobot_bringupTCPSpeedRequest` | 4..4 | vt: int32 |
| `dobot_bringup/TCPSpeedResponse` | `Ros1Dobot_bringupTCPSpeedResponse` | 4..4 | res: int32 |
| `dobot_bringup/TCPSpeedEndRequest` | `Ros1Dobot_bringupTCPSpeedEndRequest` | 0..0 | (empty original component) |
| `dobot_bringup/TCPSpeedEndResponse` | `Ros1Dobot_bringupTCPSpeedEndResponse` | 4..4 | res: int32 |
| `dobot_bringup/TcpDashboardRequest` | `Ros1Dobot_bringupTcpDashboardRequest` | 4..260 | command: string text<=256B |
| `dobot_bringup/TcpDashboardResponse` | `Ros1Dobot_bringupTcpDashboardResponse` | 4..260 | result: string text<=256B |
| `dobot_bringup/TcpRealDataRequest` | `Ros1Dobot_bringupTcpRealDataRequest` | 8..8 | index: uint32; size: uint32 |
| `dobot_bringup/TcpRealDataResponse` | `Ros1Dobot_bringupTcpRealDataResponse` | 4..20 | real_data: uint8 sequence<=16 |
| `dobot_bringup/ToolRequest` | `Ros1Dobot_bringupToolRequest` | 4..4 | index: int32 |
| `dobot_bringup/ToolResponse` | `Ros1Dobot_bringupToolResponse` | 4..4 | res: int32 |
| `dobot_bringup/ToolAIRequest` | `Ros1Dobot_bringupToolAIRequest` | 4..4 | index: int32 |
| `dobot_bringup/ToolAIResponse` | `Ros1Dobot_bringupToolAIResponse` | 4..4 | res: int32 |
| `dobot_bringup/ToolDIRequest` | `Ros1Dobot_bringupToolDIRequest` | 4..4 | index: int32 |
| `dobot_bringup/ToolDIResponse` | `Ros1Dobot_bringupToolDIResponse` | 4..4 | res: int32 |
| `dobot_bringup/ToolDORequest` | `Ros1Dobot_bringupToolDORequest` | 8..8 | index: int32; status: int32 |
| `dobot_bringup/ToolDOResponse` | `Ros1Dobot_bringupToolDOResponse` | 4..4 | res: int32 |
| `dobot_bringup/ToolDOExecuteRequest` | `Ros1Dobot_bringupToolDOExecuteRequest` | 8..8 | index: int32; status: int32 |
| `dobot_bringup/ToolDOExecuteResponse` | `Ros1Dobot_bringupToolDOExecuteResponse` | 4..4 | res: int32 |
| `dobot_bringup/UserRequest` | `Ros1Dobot_bringupUserRequest` | 4..4 | index: int32 |
| `dobot_bringup/UserResponse` | `Ros1Dobot_bringupUserResponse` | 4..4 | res: int32 |
| `dobot_bringup/WaitRequest` | `Ros1Dobot_bringupWaitRequest` | 4..4 | time: int32 |
| `dobot_bringup/WaitResponse` | `Ros1Dobot_bringupWaitResponse` | 4..4 | res: int32 |
| `dobot_bringup/pauseRequest` | `Ros1Dobot_bringupPauseRequest` | 0..0 | (empty original component) |
| `dobot_bringup/pauseResponse` | `Ros1Dobot_bringupPauseResponse` | 4..4 | res: int32 |

Interfaces:

- `dobot_bringup/RobotStatus` (message): message → `Ros1Dobot_bringupRobotStatus`
- `dobot_bringup/ToolVectorActual` (message): message → `Ros1Dobot_bringupToolVectorActual`
- `dobot_bringup/AI` (service): request → `Ros1Dobot_bringupAIRequest`, response → `Ros1Dobot_bringupAIResponse`
- `dobot_bringup/AO` (service): request → `Ros1Dobot_bringupAORequest`, response → `Ros1Dobot_bringupAOResponse`
- `dobot_bringup/AOExecute` (service): request → `Ros1Dobot_bringupAOExecuteRequest`, response → `Ros1Dobot_bringupAOExecuteResponse`
- `dobot_bringup/AccJ` (service): request → `Ros1Dobot_bringupAccJRequest`, response → `Ros1Dobot_bringupAccJResponse`
- `dobot_bringup/AccL` (service): request → `Ros1Dobot_bringupAccLRequest`, response → `Ros1Dobot_bringupAccLResponse`
- `dobot_bringup/Arc` (service): request → `Ros1Dobot_bringupArcRequest`, response → `Ros1Dobot_bringupArcResponse`
- `dobot_bringup/Arch` (service): request → `Ros1Dobot_bringupArchRequest`, response → `Ros1Dobot_bringupArchResponse`
- `dobot_bringup/BrakeControl` (service): request → `Ros1Dobot_bringupBrakeControlRequest`, response → `Ros1Dobot_bringupBrakeControlResponse`
- `dobot_bringup/CP` (service): request → `Ros1Dobot_bringupCPRequest`, response → `Ros1Dobot_bringupCPResponse`
- `dobot_bringup/Circle` (service): request → `Ros1Dobot_bringupCircleRequest`, response → `Ros1Dobot_bringupCircleResponse`
- `dobot_bringup/ClearError` (service): request → `Ros1Dobot_bringupClearErrorRequest`, response → `Ros1Dobot_bringupClearErrorResponse`
- `dobot_bringup/ContinueScript` (service): request → `Ros1Dobot_bringupContinueScriptRequest`, response → `Ros1Dobot_bringupContinueScriptResponse`
- `dobot_bringup/Continues` (service): request → `Ros1Dobot_bringupContinuesRequest`, response → `Ros1Dobot_bringupContinuesResponse`
- `dobot_bringup/DI` (service): request → `Ros1Dobot_bringupDIRequest`, response → `Ros1Dobot_bringupDIResponse`
- `dobot_bringup/DIGroup` (service): request → `Ros1Dobot_bringupDIGroupRequest`, response → `Ros1Dobot_bringupDIGroupResponse`
- `dobot_bringup/DO` (service): request → `Ros1Dobot_bringupDORequest`, response → `Ros1Dobot_bringupDOResponse`
- `dobot_bringup/DOExecute` (service): request → `Ros1Dobot_bringupDOExecuteRequest`, response → `Ros1Dobot_bringupDOExecuteResponse`
- `dobot_bringup/DOGroup` (service): request → `Ros1Dobot_bringupDOGroupRequest`, response → `Ros1Dobot_bringupDOGroupResponse`
- `dobot_bringup/DigitalOutputs` (service): request → `Ros1Dobot_bringupDigitalOutputsRequest`, response → `Ros1Dobot_bringupDigitalOutputsResponse`
- `dobot_bringup/DisableRobot` (service): request → `Ros1Dobot_bringupDisableRobotRequest`, response → `Ros1Dobot_bringupDisableRobotResponse`
- `dobot_bringup/EmergencyStop` (service): request → `Ros1Dobot_bringupEmergencyStopRequest`, response → `Ros1Dobot_bringupEmergencyStopResponse`
- `dobot_bringup/EnableRobot` (service): request → `Ros1Dobot_bringupEnableRobotRequest`, response → `Ros1Dobot_bringupEnableRobotResponse`
- `dobot_bringup/GetAngle` (service): request → `Ros1Dobot_bringupGetAngleRequest`, response → `Ros1Dobot_bringupGetAngleResponse`
- `dobot_bringup/GetCoils` (service): request → `Ros1Dobot_bringupGetCoilsRequest`, response → `Ros1Dobot_bringupGetCoilsResponse`
- `dobot_bringup/GetErrorID` (service): request → `Ros1Dobot_bringupGetErrorIDRequest`, response → `Ros1Dobot_bringupGetErrorIDResponse`
- `dobot_bringup/GetHoldRegs` (service): request → `Ros1Dobot_bringupGetHoldRegsRequest`, response → `Ros1Dobot_bringupGetHoldRegsResponse`
- `dobot_bringup/GetInBits` (service): request → `Ros1Dobot_bringupGetInBitsRequest`, response → `Ros1Dobot_bringupGetInBitsResponse`
- `dobot_bringup/GetInRegs` (service): request → `Ros1Dobot_bringupGetInRegsRequest`, response → `Ros1Dobot_bringupGetInRegsResponse`
- `dobot_bringup/GetPathStartPose` (service): request → `Ros1Dobot_bringupGetPathStartPoseRequest`, response → `Ros1Dobot_bringupGetPathStartPoseResponse`
- `dobot_bringup/GetPose` (service): request → `Ros1Dobot_bringupGetPoseRequest`, response → `Ros1Dobot_bringupGetPoseResponse`
- `dobot_bringup/GetSixForceData` (service): request → `Ros1Dobot_bringupGetSixForceDataRequest`, response → `Ros1Dobot_bringupGetSixForceDataResponse`
- `dobot_bringup/GetTerminal485` (service): request → `Ros1Dobot_bringupGetTerminal485Request`, response → `Ros1Dobot_bringupGetTerminal485Response`
- `dobot_bringup/GetTraceStartPose` (service): request → `Ros1Dobot_bringupGetTraceStartPoseRequest`, response → `Ros1Dobot_bringupGetTraceStartPoseResponse`
- `dobot_bringup/HandleTrajPoints` (service): request → `Ros1Dobot_bringupHandleTrajPointsRequest`, response → `Ros1Dobot_bringupHandleTrajPointsResponse`
- `dobot_bringup/InverseSolution` (service): request → `Ros1Dobot_bringupInverseSolutionRequest`, response → `Ros1Dobot_bringupInverseSolutionResponse`
- `dobot_bringup/JointMovJ` (service): request → `Ros1Dobot_bringupJointMovJRequest`, response → `Ros1Dobot_bringupJointMovJResponse`
- `dobot_bringup/Jump` (service): request → `Ros1Dobot_bringupJumpRequest`, response → `Ros1Dobot_bringupJumpResponse`
- `dobot_bringup/LimZ` (service): request → `Ros1Dobot_bringupLimZRequest`, response → `Ros1Dobot_bringupLimZResponse`
- `dobot_bringup/LoadSwitch` (service): request → `Ros1Dobot_bringupLoadSwitchRequest`, response → `Ros1Dobot_bringupLoadSwitchResponse`
- `dobot_bringup/ModbusClose` (service): request → `Ros1Dobot_bringupModbusCloseRequest`, response → `Ros1Dobot_bringupModbusCloseResponse`
- `dobot_bringup/ModbusCreate` (service): request → `Ros1Dobot_bringupModbusCreateRequest`, response → `Ros1Dobot_bringupModbusCreateResponse`
- `dobot_bringup/MovJ` (service): request → `Ros1Dobot_bringupMovJRequest`, response → `Ros1Dobot_bringupMovJResponse`
- `dobot_bringup/MovJExt` (service): request → `Ros1Dobot_bringupMovJExtRequest`, response → `Ros1Dobot_bringupMovJExtResponse`
- `dobot_bringup/MovJIO` (service): request → `Ros1Dobot_bringupMovJIORequest`, response → `Ros1Dobot_bringupMovJIOResponse`
- `dobot_bringup/MovL` (service): request → `Ros1Dobot_bringupMovLRequest`, response → `Ros1Dobot_bringupMovLResponse`
- `dobot_bringup/MovLIO` (service): request → `Ros1Dobot_bringupMovLIORequest`, response → `Ros1Dobot_bringupMovLIOResponse`
- `dobot_bringup/MoveJog` (service): request → `Ros1Dobot_bringupMoveJogRequest`, response → `Ros1Dobot_bringupMoveJogResponse`
- `dobot_bringup/PauseScript` (service): request → `Ros1Dobot_bringupPauseScriptRequest`, response → `Ros1Dobot_bringupPauseScriptResponse`
- `dobot_bringup/PayLoad` (service): request → `Ros1Dobot_bringupPayLoadRequest`, response → `Ros1Dobot_bringupPayLoadResponse`
- `dobot_bringup/PositiveSolution` (service): request → `Ros1Dobot_bringupPositiveSolutionRequest`, response → `Ros1Dobot_bringupPositiveSolutionResponse`
- `dobot_bringup/PowerOn` (service): request → `Ros1Dobot_bringupPowerOnRequest`, response → `Ros1Dobot_bringupPowerOnResponse`
- `dobot_bringup/RelJointMovJ` (service): request → `Ros1Dobot_bringupRelJointMovJRequest`, response → `Ros1Dobot_bringupRelJointMovJResponse`
- `dobot_bringup/RelMovJ` (service): request → `Ros1Dobot_bringupRelMovJRequest`, response → `Ros1Dobot_bringupRelMovJResponse`
- `dobot_bringup/RelMovJTool` (service): request → `Ros1Dobot_bringupRelMovJToolRequest`, response → `Ros1Dobot_bringupRelMovJToolResponse`
- `dobot_bringup/RelMovJUser` (service): request → `Ros1Dobot_bringupRelMovJUserRequest`, response → `Ros1Dobot_bringupRelMovJUserResponse`
- `dobot_bringup/RelMovL` (service): request → `Ros1Dobot_bringupRelMovLRequest`, response → `Ros1Dobot_bringupRelMovLResponse`
- `dobot_bringup/RelMovLTool` (service): request → `Ros1Dobot_bringupRelMovLToolRequest`, response → `Ros1Dobot_bringupRelMovLToolResponse`
- `dobot_bringup/RelMovLUser` (service): request → `Ros1Dobot_bringupRelMovLUserRequest`, response → `Ros1Dobot_bringupRelMovLUserResponse`
- `dobot_bringup/ResetRobot` (service): request → `Ros1Dobot_bringupResetRobotRequest`, response → `Ros1Dobot_bringupResetRobotResponse`
- `dobot_bringup/RobotMode` (service): request → `Ros1Dobot_bringupRobotModeRequest`, response → `Ros1Dobot_bringupRobotModeResponse`
- `dobot_bringup/RunScript` (service): request → `Ros1Dobot_bringupRunScriptRequest`, response → `Ros1Dobot_bringupRunScriptResponse`
- `dobot_bringup/ServoJ` (service): request → `Ros1Dobot_bringupServoJRequest`, response → `Ros1Dobot_bringupServoJResponse`
- `dobot_bringup/ServoJParam` (service): request → `Ros1Dobot_bringupServoJParamRequest`, response → `Ros1Dobot_bringupServoJParamResponse`
- `dobot_bringup/ServoP` (service): request → `Ros1Dobot_bringupServoPRequest`, response → `Ros1Dobot_bringupServoPResponse`
- `dobot_bringup/SetArmOrientation` (service): request → `Ros1Dobot_bringupSetArmOrientationRequest`, response → `Ros1Dobot_bringupSetArmOrientationResponse`
- `dobot_bringup/SetCoils` (service): request → `Ros1Dobot_bringupSetCoilsRequest`, response → `Ros1Dobot_bringupSetCoilsResponse`
- `dobot_bringup/SetCollideDrag` (service): request → `Ros1Dobot_bringupSetCollideDragRequest`, response → `Ros1Dobot_bringupSetCollideDragResponse`
- `dobot_bringup/SetCollisionLevel` (service): request → `Ros1Dobot_bringupSetCollisionLevelRequest`, response → `Ros1Dobot_bringupSetCollisionLevelResponse`
- `dobot_bringup/SetHoldRegs` (service): request → `Ros1Dobot_bringupSetHoldRegsRequest`, response → `Ros1Dobot_bringupSetHoldRegsResponse`
- `dobot_bringup/SetObstacleAvoid` (service): request → `Ros1Dobot_bringupSetObstacleAvoidRequest`, response → `Ros1Dobot_bringupSetObstacleAvoidResponse`
- `dobot_bringup/SetPayload` (service): request → `Ros1Dobot_bringupSetPayloadRequest`, response → `Ros1Dobot_bringupSetPayloadResponse`
- `dobot_bringup/SetSafeSkin` (service): request → `Ros1Dobot_bringupSetSafeSkinRequest`, response → `Ros1Dobot_bringupSetSafeSkinResponse`
- `dobot_bringup/SetTerminal485` (service): request → `Ros1Dobot_bringupSetTerminal485Request`, response → `Ros1Dobot_bringupSetTerminal485Response`
- `dobot_bringup/SetTerminalKeys` (service): request → `Ros1Dobot_bringupSetTerminalKeysRequest`, response → `Ros1Dobot_bringupSetTerminalKeysResponse`
- `dobot_bringup/SpeedFactor` (service): request → `Ros1Dobot_bringupSpeedFactorRequest`, response → `Ros1Dobot_bringupSpeedFactorResponse`
- `dobot_bringup/SpeedJ` (service): request → `Ros1Dobot_bringupSpeedJRequest`, response → `Ros1Dobot_bringupSpeedJResponse`
- `dobot_bringup/SpeedL` (service): request → `Ros1Dobot_bringupSpeedLRequest`, response → `Ros1Dobot_bringupSpeedLResponse`
- `dobot_bringup/StartDrag` (service): request → `Ros1Dobot_bringupStartDragRequest`, response → `Ros1Dobot_bringupStartDragResponse`
- `dobot_bringup/StartFCTrace` (service): request → `Ros1Dobot_bringupStartFCTraceRequest`, response → `Ros1Dobot_bringupStartFCTraceResponse`
- `dobot_bringup/StartPath` (service): request → `Ros1Dobot_bringupStartPathRequest`, response → `Ros1Dobot_bringupStartPathResponse`
- `dobot_bringup/StartTrace` (service): request → `Ros1Dobot_bringupStartTraceRequest`, response → `Ros1Dobot_bringupStartTraceResponse`
- `dobot_bringup/StopDrag` (service): request → `Ros1Dobot_bringupStopDragRequest`, response → `Ros1Dobot_bringupStopDragResponse`
- `dobot_bringup/StopScript` (service): request → `Ros1Dobot_bringupStopScriptRequest`, response → `Ros1Dobot_bringupStopScriptResponse`
- `dobot_bringup/StopmoveJog` (service): request → `Ros1Dobot_bringupStopmoveJogRequest`, response → `Ros1Dobot_bringupStopmoveJogResponse`
- `dobot_bringup/Sync` (service): request → `Ros1Dobot_bringupSyncRequest`, response → `Ros1Dobot_bringupSyncResponse`
- `dobot_bringup/SyncAll` (service): request → `Ros1Dobot_bringupSyncAllRequest`, response → `Ros1Dobot_bringupSyncAllResponse`
- `dobot_bringup/TCPSpeed` (service): request → `Ros1Dobot_bringupTCPSpeedRequest`, response → `Ros1Dobot_bringupTCPSpeedResponse`
- `dobot_bringup/TCPSpeedEnd` (service): request → `Ros1Dobot_bringupTCPSpeedEndRequest`, response → `Ros1Dobot_bringupTCPSpeedEndResponse`
- `dobot_bringup/TcpDashboard` (service): request → `Ros1Dobot_bringupTcpDashboardRequest`, response → `Ros1Dobot_bringupTcpDashboardResponse`
- `dobot_bringup/TcpRealData` (service): request → `Ros1Dobot_bringupTcpRealDataRequest`, response → `Ros1Dobot_bringupTcpRealDataResponse`
- `dobot_bringup/Tool` (service): request → `Ros1Dobot_bringupToolRequest`, response → `Ros1Dobot_bringupToolResponse`
- `dobot_bringup/ToolAI` (service): request → `Ros1Dobot_bringupToolAIRequest`, response → `Ros1Dobot_bringupToolAIResponse`
- `dobot_bringup/ToolDI` (service): request → `Ros1Dobot_bringupToolDIRequest`, response → `Ros1Dobot_bringupToolDIResponse`
- `dobot_bringup/ToolDO` (service): request → `Ros1Dobot_bringupToolDORequest`, response → `Ros1Dobot_bringupToolDOResponse`
- `dobot_bringup/ToolDOExecute` (service): request → `Ros1Dobot_bringupToolDOExecuteRequest`, response → `Ros1Dobot_bringupToolDOExecuteResponse`
- `dobot_bringup/User` (service): request → `Ros1Dobot_bringupUserRequest`, response → `Ros1Dobot_bringupUserResponse`
- `dobot_bringup/Wait` (service): request → `Ros1Dobot_bringupWaitRequest`, response → `Ros1Dobot_bringupWaitResponse`
- `dobot_bringup/pause` (service): request → `Ros1Dobot_bringupPauseRequest`, response → `Ros1Dobot_bringupPauseResponse`

Immutable upstream sources:

- [https://github.com/Dobot-Arm/TCP-IP-ROS-6AXis @ 0924e785f1827b7125ba4ba2bc3325811ed21c18](https://github.com/https://github.com/Dobot-Arm/TCP-IP-ROS-6AXis/tree/0924e785f1827b7125ba4ba2bc3325811ed21c18)

## ros1_v4

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `dobot_v4_bringup/RobotStatus` | `Ros1Dobot_v4_bringupRobotStatus` | 2..2 | is_enable: bool; is_connected: bool |
| `dobot_v4_bringup/ToolVectorActual` | `Ros1Dobot_v4_bringupToolVectorActual` | 48..48 | x: float64; y: float64; z: float64; rx: float64; ry: float64; rz: float64 |
| `dobot_v4_bringup/AIRequest` | `Ros1Dobot_v4_bringupAIRequest` | 4..4 | index: int32 |
| `dobot_v4_bringup/AIResponse` | `Ros1Dobot_v4_bringupAIResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/AORequest` | `Ros1Dobot_v4_bringupAORequest` | 8..8 | index: int32; value: int32 |
| `dobot_v4_bringup/AOResponse` | `Ros1Dobot_v4_bringupAOResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/AOInstantRequest` | `Ros1Dobot_v4_bringupAOInstantRequest` | 8..8 | index: int32; value: int32 |
| `dobot_v4_bringup/AOInstantResponse` | `Ros1Dobot_v4_bringupAOInstantResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/AccJRequest` | `Ros1Dobot_v4_bringupAccJRequest` | 4..4 | r: int32 |
| `dobot_v4_bringup/AccJResponse` | `Ros1Dobot_v4_bringupAccJResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/AccLRequest` | `Ros1Dobot_v4_bringupAccLRequest` | 4..4 | r: int32 |
| `dobot_v4_bringup/AccLResponse` | `Ros1Dobot_v4_bringupAccLResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/ArcRequest` | `Ros1Dobot_v4_bringupArcRequest` | 101..4261 | mode: bool; a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; a2: float64; b2: float64; c2: float64; d2: float64; e2: float64; f2: float64; paramValue: string sequence<=16 text<=256B |
| `dobot_v4_bringup/ArcResponse` | `Ros1Dobot_v4_bringupArcResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/BrakeControlRequest` | `Ros1Dobot_v4_bringupBrakeControlRequest` | 8..8 | axisID: int32; value: int32 |
| `dobot_v4_bringup/BrakeControlResponse` | `Ros1Dobot_v4_bringupBrakeControlResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/CPRequest` | `Ros1Dobot_v4_bringupCPRequest` | 4..4 | r: int32 |
| `dobot_v4_bringup/CPResponse` | `Ros1Dobot_v4_bringupCPResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/CalcToolRequest` | `Ros1Dobot_v4_bringupCalcToolRequest` | 12..268 | index: int32; matrix: int32; offset: string text<=256B |
| `dobot_v4_bringup/CalcToolResponse` | `Ros1Dobot_v4_bringupCalcToolResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/CalcUserRequest` | `Ros1Dobot_v4_bringupCalcUserRequest` | 12..268 | index: int32; matrix: int32; offset: string text<=256B |
| `dobot_v4_bringup/CalcUserResponse` | `Ros1Dobot_v4_bringupCalcUserResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/CircleRequest` | `Ros1Dobot_v4_bringupCircleRequest` | 105..4265 | mode: bool; a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; a2: float64; b2: float64; c2: float64; d2: float64; e2: float64; f2: float64; count: int32; paramValue: string sequence<=16 text<=256B |
| `dobot_v4_bringup/CircleResponse` | `Ros1Dobot_v4_bringupCircleResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/ClearErrorRequest` | `Ros1Dobot_v4_bringupClearErrorRequest` | 0..0 | (empty original component) |
| `dobot_v4_bringup/ClearErrorResponse` | `Ros1Dobot_v4_bringupClearErrorResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/ContinueRequest` | `Ros1Dobot_v4_bringupContinueRequest` | 0..0 | (empty original component) |
| `dobot_v4_bringup/ContinueResponse` | `Ros1Dobot_v4_bringupContinueResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/DIRequest` | `Ros1Dobot_v4_bringupDIRequest` | 4..4 | index: int32 |
| `dobot_v4_bringup/DIResponse` | `Ros1Dobot_v4_bringupDIResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/DIGroupRequest` | `Ros1Dobot_v4_bringupDIGroupRequest` | 4..68 | args: int32 sequence<=16 |
| `dobot_v4_bringup/DIGroupResponse` | `Ros1Dobot_v4_bringupDIGroupResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/DORequest` | `Ros1Dobot_v4_bringupDORequest` | 12..12 | index: int32; status: int32; time: int32 |
| `dobot_v4_bringup/DOResponse` | `Ros1Dobot_v4_bringupDOResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/DOGroupRequest` | `Ros1Dobot_v4_bringupDOGroupRequest` | 4..68 | args: int32 sequence<=16 |
| `dobot_v4_bringup/DOGroupResponse` | `Ros1Dobot_v4_bringupDOGroupResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/DOInstantRequest` | `Ros1Dobot_v4_bringupDOInstantRequest` | 8..8 | index: int32; status: int32 |
| `dobot_v4_bringup/DOInstantResponse` | `Ros1Dobot_v4_bringupDOInstantResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/DisableRobotRequest` | `Ros1Dobot_v4_bringupDisableRobotRequest` | 0..0 | (empty original component) |
| `dobot_v4_bringup/DisableRobotResponse` | `Ros1Dobot_v4_bringupDisableRobotResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/DragSensivityRequest` | `Ros1Dobot_v4_bringupDragSensivityRequest` | 8..8 | index: int32; value: int32 |
| `dobot_v4_bringup/DragSensivityResponse` | `Ros1Dobot_v4_bringupDragSensivityResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/EmergencyStopRequest` | `Ros1Dobot_v4_bringupEmergencyStopRequest` | 4..4 | value: int32 |
| `dobot_v4_bringup/EmergencyStopResponse` | `Ros1Dobot_v4_bringupEmergencyStopResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/EnableRobotRequest` | `Ros1Dobot_v4_bringupEnableRobotRequest` | 0..0 | (empty original component) |
| `dobot_v4_bringup/EnableRobotResponse` | `Ros1Dobot_v4_bringupEnableRobotResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/EnableSafeSkinRequest` | `Ros1Dobot_v4_bringupEnableSafeSkinRequest` | 4..4 | status: int32 |
| `dobot_v4_bringup/EnableSafeSkinResponse` | `Ros1Dobot_v4_bringupEnableSafeSkinResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/GetAORequest` | `Ros1Dobot_v4_bringupGetAORequest` | 4..4 | index: int32 |
| `dobot_v4_bringup/GetAOResponse` | `Ros1Dobot_v4_bringupGetAOResponse` | 8..264 | res: int32; robot_return: string text<=256B |
| `dobot_v4_bringup/GetAngleRequest` | `Ros1Dobot_v4_bringupGetAngleRequest` | 0..0 | (empty original component) |
| `dobot_v4_bringup/GetAngleResponse` | `Ros1Dobot_v4_bringupGetAngleResponse` | 8..264 | res: int32; robot_return: string text<=256B |
| `dobot_v4_bringup/GetCoilsRequest` | `Ros1Dobot_v4_bringupGetCoilsRequest` | 12..12 | index: int32; addr: int32; count: int32 |
| `dobot_v4_bringup/GetCoilsResponse` | `Ros1Dobot_v4_bringupGetCoilsResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/GetCurrentCommandIdRequest` | `Ros1Dobot_v4_bringupGetCurrentCommandIdRequest` | 0..0 | (empty original component) |
| `dobot_v4_bringup/GetCurrentCommandIdResponse` | `Ros1Dobot_v4_bringupGetCurrentCommandIdResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/GetDORequest` | `Ros1Dobot_v4_bringupGetDORequest` | 4..4 | index: int32 |
| `dobot_v4_bringup/GetDOResponse` | `Ros1Dobot_v4_bringupGetDOResponse` | 8..264 | res: int32; robot_return: string text<=256B |
| `dobot_v4_bringup/GetDOGroupRequest` | `Ros1Dobot_v4_bringupGetDOGroupRequest` | 4..68 | index_group: int32 sequence<=16 |
| `dobot_v4_bringup/GetDOGroupResponse` | `Ros1Dobot_v4_bringupGetDOGroupResponse` | 8..264 | res: int32; robot_return: string text<=256B |
| `dobot_v4_bringup/GetErrorIDRequest` | `Ros1Dobot_v4_bringupGetErrorIDRequest` | 0..0 | (empty original component) |
| `dobot_v4_bringup/GetErrorIDResponse` | `Ros1Dobot_v4_bringupGetErrorIDResponse` | 8..72 | error_id: int32 sequence<=16; res: int32 |
| `dobot_v4_bringup/GetHoldRegsRequest` | `Ros1Dobot_v4_bringupGetHoldRegsRequest` | 16..272 | index: int32; addr: int32; count: int32; valType: string text<=256B |
| `dobot_v4_bringup/GetHoldRegsResponse` | `Ros1Dobot_v4_bringupGetHoldRegsResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/GetInBitsRequest` | `Ros1Dobot_v4_bringupGetInBitsRequest` | 12..12 | index: int32; addr: int32; count: int32 |
| `dobot_v4_bringup/GetInBitsResponse` | `Ros1Dobot_v4_bringupGetInBitsResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/GetInRegsRequest` | `Ros1Dobot_v4_bringupGetInRegsRequest` | 16..272 | index: int32; addr: int32; count: int32; valType: string text<=256B |
| `dobot_v4_bringup/GetInRegsResponse` | `Ros1Dobot_v4_bringupGetInRegsResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/GetInputBoolRequest` | `Ros1Dobot_v4_bringupGetInputBoolRequest` | 4..4 | address: int32 |
| `dobot_v4_bringup/GetInputBoolResponse` | `Ros1Dobot_v4_bringupGetInputBoolResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/GetInputFloatRequest` | `Ros1Dobot_v4_bringupGetInputFloatRequest` | 4..4 | address: int32 |
| `dobot_v4_bringup/GetInputFloatResponse` | `Ros1Dobot_v4_bringupGetInputFloatResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/GetInputIntRequest` | `Ros1Dobot_v4_bringupGetInputIntRequest` | 4..4 | address: int32 |
| `dobot_v4_bringup/GetInputIntResponse` | `Ros1Dobot_v4_bringupGetInputIntResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/GetOutputBoolRequest` | `Ros1Dobot_v4_bringupGetOutputBoolRequest` | 4..4 | address: int32 |
| `dobot_v4_bringup/GetOutputBoolResponse` | `Ros1Dobot_v4_bringupGetOutputBoolResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/GetOutputFloatRequest` | `Ros1Dobot_v4_bringupGetOutputFloatRequest` | 4..4 | address: int32 |
| `dobot_v4_bringup/GetOutputFloatResponse` | `Ros1Dobot_v4_bringupGetOutputFloatResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/GetOutputIntRequest` | `Ros1Dobot_v4_bringupGetOutputIntRequest` | 4..4 | address: int32 |
| `dobot_v4_bringup/GetOutputIntResponse` | `Ros1Dobot_v4_bringupGetOutputIntResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/GetPoseRequest` | `Ros1Dobot_v4_bringupGetPoseRequest` | 0..0 | (empty original component) |
| `dobot_v4_bringup/GetPoseResponse` | `Ros1Dobot_v4_bringupGetPoseResponse` | 8..264 | res: int32; robot_return: string text<=256B |
| `dobot_v4_bringup/GetStartPoseRequest` | `Ros1Dobot_v4_bringupGetStartPoseRequest` | 4..260 | traceName: string text<=256B |
| `dobot_v4_bringup/GetStartPoseResponse` | `Ros1Dobot_v4_bringupGetStartPoseResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/InverseKinRequest` | `Ros1Dobot_v4_bringupInverseKinRequest` | 64..1088 | X: float64; Y: float64; Z: float64; Rx: float64; Ry: float64; Rz: float64; useJointNear: string text<=256B; jointNear: string text<=256B; user: string text<=256B; tool: string text<=256B |
| `dobot_v4_bringup/InverseKinResponse` | `Ros1Dobot_v4_bringupInverseKinResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/InverseSolutionRequest` | `Ros1Dobot_v4_bringupInverseSolutionRequest` | 4..260 | parameter: string text<=256B |
| `dobot_v4_bringup/InverseSolutionResponse` | `Ros1Dobot_v4_bringupInverseSolutionResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/ModbusCloseRequest` | `Ros1Dobot_v4_bringupModbusCloseRequest` | 4..4 | index: int32 |
| `dobot_v4_bringup/ModbusCloseResponse` | `Ros1Dobot_v4_bringupModbusCloseResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/ModbusCreateRequest` | `Ros1Dobot_v4_bringupModbusCreateRequest` | 16..272 | ip: string text<=256B; port: int32; slave_id: int32; isRTU: int32 |
| `dobot_v4_bringup/ModbusCreateResponse` | `Ros1Dobot_v4_bringupModbusCreateResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/ModbusRTUCreateRequest` | `Ros1Dobot_v4_bringupModbusRTUCreateRequest` | 20..276 | slave_id: int32; baud: int32; parity: string text<=256B; data_bit: int32; stop_bit: int32 |
| `dobot_v4_bringup/ModbusRTUCreateResponse` | `Ros1Dobot_v4_bringupModbusRTUCreateResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/MovJRequest` | `Ros1Dobot_v4_bringupMovJRequest` | 53..4213 | mode: bool; a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; paramValue: string sequence<=16 text<=256B |
| `dobot_v4_bringup/MovJResponse` | `Ros1Dobot_v4_bringupMovJResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/MovJIORequest` | `Ros1Dobot_v4_bringupMovJIORequest` | 57..8377 | mode: bool; a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; MDIS: string sequence<=16 text<=256B; paramValue: string sequence<=16 text<=256B |
| `dobot_v4_bringup/MovJIOResponse` | `Ros1Dobot_v4_bringupMovJIOResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/MovLRequest` | `Ros1Dobot_v4_bringupMovLRequest` | 53..4213 | mode: bool; a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; paramValue: string sequence<=16 text<=256B |
| `dobot_v4_bringup/MovLResponse` | `Ros1Dobot_v4_bringupMovLResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/MovLIORequest` | `Ros1Dobot_v4_bringupMovLIORequest` | 57..8377 | mode: bool; a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; MDIS: string sequence<=16 text<=256B; paramValue: string sequence<=16 text<=256B |
| `dobot_v4_bringup/MovLIOResponse` | `Ros1Dobot_v4_bringupMovLIOResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/MoveJogRequest` | `Ros1Dobot_v4_bringupMoveJogRequest` | 8..4424 | axisID: string text<=256B; paramValue: string sequence<=16 text<=256B |
| `dobot_v4_bringup/MoveJogResponse` | `Ros1Dobot_v4_bringupMoveJogResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/PauseRequest` | `Ros1Dobot_v4_bringupPauseRequest` | 0..0 | (empty original component) |
| `dobot_v4_bringup/PauseResponse` | `Ros1Dobot_v4_bringupPauseResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/PositiveKinRequest` | `Ros1Dobot_v4_bringupPositiveKinRequest` | 56..568 | J1: float64; J2: float64; J3: float64; J4: float64; J5: float64; J6: float64; user: string text<=256B; tool: string text<=256B |
| `dobot_v4_bringup/PositiveKinResponse` | `Ros1Dobot_v4_bringupPositiveKinResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/PowerOnRequest` | `Ros1Dobot_v4_bringupPowerOnRequest` | 0..0 | (empty original component) |
| `dobot_v4_bringup/PowerOnResponse` | `Ros1Dobot_v4_bringupPowerOnResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/RelJointMovJRequest` | `Ros1Dobot_v4_bringupRelJointMovJRequest` | 52..4212 | a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; paramValue: string sequence<=16 text<=256B |
| `dobot_v4_bringup/RelJointMovJResponse` | `Ros1Dobot_v4_bringupRelJointMovJResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/RelMovJToolRequest` | `Ros1Dobot_v4_bringupRelMovJToolRequest` | 52..4212 | a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; paramValue: string sequence<=16 text<=256B |
| `dobot_v4_bringup/RelMovJToolResponse` | `Ros1Dobot_v4_bringupRelMovJToolResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/RelMovJUserRequest` | `Ros1Dobot_v4_bringupRelMovJUserRequest` | 52..4212 | a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; paramValue: string sequence<=16 text<=256B |
| `dobot_v4_bringup/RelMovJUserResponse` | `Ros1Dobot_v4_bringupRelMovJUserResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/RelMovLToolRequest` | `Ros1Dobot_v4_bringupRelMovLToolRequest` | 52..4212 | a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; paramValue: string sequence<=16 text<=256B |
| `dobot_v4_bringup/RelMovLToolResponse` | `Ros1Dobot_v4_bringupRelMovLToolResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/RelMovLUserRequest` | `Ros1Dobot_v4_bringupRelMovLUserRequest` | 52..4212 | a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; paramValue: string sequence<=16 text<=256B |
| `dobot_v4_bringup/RelMovLUserResponse` | `Ros1Dobot_v4_bringupRelMovLUserResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/RobotModeRequest` | `Ros1Dobot_v4_bringupRobotModeRequest` | 0..0 | (empty original component) |
| `dobot_v4_bringup/RobotModeResponse` | `Ros1Dobot_v4_bringupRobotModeResponse` | 8..8 | mode: int32; res: int32 |
| `dobot_v4_bringup/RunScriptRequest` | `Ros1Dobot_v4_bringupRunScriptRequest` | 4..260 | projectName: string text<=256B |
| `dobot_v4_bringup/RunScriptResponse` | `Ros1Dobot_v4_bringupRunScriptResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/ServoJRequest` | `Ros1Dobot_v4_bringupServoJRequest` | 52..4212 | a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; paramValue: string sequence<=16 text<=256B |
| `dobot_v4_bringup/ServoJResponse` | `Ros1Dobot_v4_bringupServoJResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/ServoPRequest` | `Ros1Dobot_v4_bringupServoPRequest` | 52..4212 | a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; paramValue: string sequence<=16 text<=256B |
| `dobot_v4_bringup/ServoPResponse` | `Ros1Dobot_v4_bringupServoPResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/SetBackDistanceRequest` | `Ros1Dobot_v4_bringupSetBackDistanceRequest` | 8..8 | distance: float64 |
| `dobot_v4_bringup/SetBackDistanceResponse` | `Ros1Dobot_v4_bringupSetBackDistanceResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/SetCoilsRequest` | `Ros1Dobot_v4_bringupSetCoilsRequest` | 16..272 | index: int32; addr: int32; count: int32; valTab: string text<=256B |
| `dobot_v4_bringup/SetCoilsResponse` | `Ros1Dobot_v4_bringupSetCoilsResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/SetCollisionLevelRequest` | `Ros1Dobot_v4_bringupSetCollisionLevelRequest` | 4..4 | level: int32 |
| `dobot_v4_bringup/SetCollisionLevelResponse` | `Ros1Dobot_v4_bringupSetCollisionLevelResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/SetHoldRegsRequest` | `Ros1Dobot_v4_bringupSetHoldRegsRequest` | 20..532 | index: int32; addr: int32; count: int32; valTab: string text<=256B; valType: string text<=256B |
| `dobot_v4_bringup/SetHoldRegsResponse` | `Ros1Dobot_v4_bringupSetHoldRegsResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/SetOutputBoolRequest` | `Ros1Dobot_v4_bringupSetOutputBoolRequest` | 8..8 | address: int32; value: int32 |
| `dobot_v4_bringup/SetOutputBoolResponse` | `Ros1Dobot_v4_bringupSetOutputBoolResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/SetOutputFloatRequest` | `Ros1Dobot_v4_bringupSetOutputFloatRequest` | 12..12 | address: int32; value: float64 |
| `dobot_v4_bringup/SetOutputFloatResponse` | `Ros1Dobot_v4_bringupSetOutputFloatResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/SetOutputIntRequest` | `Ros1Dobot_v4_bringupSetOutputIntRequest` | 8..8 | address: int32; value: int32 |
| `dobot_v4_bringup/SetOutputIntResponse` | `Ros1Dobot_v4_bringupSetOutputIntResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/SetPayloadRequest` | `Ros1Dobot_v4_bringupSetPayloadRequest` | 32..32 | load: float64; x: float64; y: float64; z: float64 |
| `dobot_v4_bringup/SetPayloadResponse` | `Ros1Dobot_v4_bringupSetPayloadResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/SetPostCollisionModeRequest` | `Ros1Dobot_v4_bringupSetPostCollisionModeRequest` | 4..4 | mode: int32 |
| `dobot_v4_bringup/SetPostCollisionModeResponse` | `Ros1Dobot_v4_bringupSetPostCollisionModeResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/SetSafeSkinRequest` | `Ros1Dobot_v4_bringupSetSafeSkinRequest` | 8..8 | part: int32; status: int32 |
| `dobot_v4_bringup/SetSafeSkinResponse` | `Ros1Dobot_v4_bringupSetSafeSkinResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/SetSafeWallEnableRequest` | `Ros1Dobot_v4_bringupSetSafeWallEnableRequest` | 8..8 | index: int32; value: int32 |
| `dobot_v4_bringup/SetSafeWallEnableResponse` | `Ros1Dobot_v4_bringupSetSafeWallEnableResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/SetToolRequest` | `Ros1Dobot_v4_bringupSetToolRequest` | 8..264 | index: int32; value: string text<=256B |
| `dobot_v4_bringup/SetToolResponse` | `Ros1Dobot_v4_bringupSetToolResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/SetTool485Request` | `Ros1Dobot_v4_bringupSetTool485Request` | 16..272 | baudrate: int32; parity: string text<=256B; stop: int32; identify: int32 |
| `dobot_v4_bringup/SetTool485Response` | `Ros1Dobot_v4_bringupSetTool485Response` | 4..4 | res: int32 |
| `dobot_v4_bringup/SetToolModeRequest` | `Ros1Dobot_v4_bringupSetToolModeRequest` | 8..8 | mode: int32; type: int32 |
| `dobot_v4_bringup/SetToolModeResponse` | `Ros1Dobot_v4_bringupSetToolModeResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/SetToolPowerRequest` | `Ros1Dobot_v4_bringupSetToolPowerRequest` | 4..4 | status: int32 |
| `dobot_v4_bringup/SetToolPowerResponse` | `Ros1Dobot_v4_bringupSetToolPowerResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/SetUserRequest` | `Ros1Dobot_v4_bringupSetUserRequest` | 8..264 | index: int32; value: string text<=256B |
| `dobot_v4_bringup/SetUserResponse` | `Ros1Dobot_v4_bringupSetUserResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/SpeedFactorRequest` | `Ros1Dobot_v4_bringupSpeedFactorRequest` | 4..4 | ratio: int32 |
| `dobot_v4_bringup/SpeedFactorResponse` | `Ros1Dobot_v4_bringupSpeedFactorResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/StartDragRequest` | `Ros1Dobot_v4_bringupStartDragRequest` | 0..0 | (empty original component) |
| `dobot_v4_bringup/StartDragResponse` | `Ros1Dobot_v4_bringupStartDragResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/StartPathRequest` | `Ros1Dobot_v4_bringupStartPathRequest` | 8..4424 | traceName: string text<=256B; paramValue: string sequence<=16 text<=256B |
| `dobot_v4_bringup/StartPathResponse` | `Ros1Dobot_v4_bringupStartPathResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/StopRequest` | `Ros1Dobot_v4_bringupStopRequest` | 0..0 | (empty original component) |
| `dobot_v4_bringup/StopResponse` | `Ros1Dobot_v4_bringupStopResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/StopDragRequest` | `Ros1Dobot_v4_bringupStopDragRequest` | 0..0 | (empty original component) |
| `dobot_v4_bringup/StopDragResponse` | `Ros1Dobot_v4_bringupStopDragResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/StopMoveJogRequest` | `Ros1Dobot_v4_bringupStopMoveJogRequest` | 0..0 | (empty original component) |
| `dobot_v4_bringup/StopMoveJogResponse` | `Ros1Dobot_v4_bringupStopMoveJogResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/TcpDashboardRequest` | `Ros1Dobot_v4_bringupTcpDashboardRequest` | 4..260 | command: string text<=256B |
| `dobot_v4_bringup/TcpDashboardResponse` | `Ros1Dobot_v4_bringupTcpDashboardResponse` | 4..260 | result: string text<=256B |
| `dobot_v4_bringup/ToolRequest` | `Ros1Dobot_v4_bringupToolRequest` | 4..4 | index: int32 |
| `dobot_v4_bringup/ToolResponse` | `Ros1Dobot_v4_bringupToolResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/ToolAIRequest` | `Ros1Dobot_v4_bringupToolAIRequest` | 4..4 | index: int32 |
| `dobot_v4_bringup/ToolAIResponse` | `Ros1Dobot_v4_bringupToolAIResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/ToolDIRequest` | `Ros1Dobot_v4_bringupToolDIRequest` | 4..4 | index: int32 |
| `dobot_v4_bringup/ToolDIResponse` | `Ros1Dobot_v4_bringupToolDIResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/ToolDORequest` | `Ros1Dobot_v4_bringupToolDORequest` | 8..8 | index: int32; status: int32 |
| `dobot_v4_bringup/ToolDOResponse` | `Ros1Dobot_v4_bringupToolDOResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/ToolDOInstantRequest` | `Ros1Dobot_v4_bringupToolDOInstantRequest` | 8..8 | index: int32; status: int32 |
| `dobot_v4_bringup/ToolDOInstantResponse` | `Ros1Dobot_v4_bringupToolDOInstantResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/UserRequest` | `Ros1Dobot_v4_bringupUserRequest` | 4..4 | index: int32 |
| `dobot_v4_bringup/UserResponse` | `Ros1Dobot_v4_bringupUserResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/VelJRequest` | `Ros1Dobot_v4_bringupVelJRequest` | 4..4 | r: int32 |
| `dobot_v4_bringup/VelJResponse` | `Ros1Dobot_v4_bringupVelJResponse` | 4..4 | res: int32 |
| `dobot_v4_bringup/VelLRequest` | `Ros1Dobot_v4_bringupVelLRequest` | 4..4 | r: int32 |
| `dobot_v4_bringup/VelLResponse` | `Ros1Dobot_v4_bringupVelLResponse` | 4..4 | res: int32 |

Interfaces:

- `dobot_v4_bringup/RobotStatus` (message): message → `Ros1Dobot_v4_bringupRobotStatus`
- `dobot_v4_bringup/ToolVectorActual` (message): message → `Ros1Dobot_v4_bringupToolVectorActual`
- `dobot_v4_bringup/AI` (service): request → `Ros1Dobot_v4_bringupAIRequest`, response → `Ros1Dobot_v4_bringupAIResponse`
- `dobot_v4_bringup/AO` (service): request → `Ros1Dobot_v4_bringupAORequest`, response → `Ros1Dobot_v4_bringupAOResponse`
- `dobot_v4_bringup/AOInstant` (service): request → `Ros1Dobot_v4_bringupAOInstantRequest`, response → `Ros1Dobot_v4_bringupAOInstantResponse`
- `dobot_v4_bringup/AccJ` (service): request → `Ros1Dobot_v4_bringupAccJRequest`, response → `Ros1Dobot_v4_bringupAccJResponse`
- `dobot_v4_bringup/AccL` (service): request → `Ros1Dobot_v4_bringupAccLRequest`, response → `Ros1Dobot_v4_bringupAccLResponse`
- `dobot_v4_bringup/Arc` (service): request → `Ros1Dobot_v4_bringupArcRequest`, response → `Ros1Dobot_v4_bringupArcResponse`
- `dobot_v4_bringup/BrakeControl` (service): request → `Ros1Dobot_v4_bringupBrakeControlRequest`, response → `Ros1Dobot_v4_bringupBrakeControlResponse`
- `dobot_v4_bringup/CP` (service): request → `Ros1Dobot_v4_bringupCPRequest`, response → `Ros1Dobot_v4_bringupCPResponse`
- `dobot_v4_bringup/CalcTool` (service): request → `Ros1Dobot_v4_bringupCalcToolRequest`, response → `Ros1Dobot_v4_bringupCalcToolResponse`
- `dobot_v4_bringup/CalcUser` (service): request → `Ros1Dobot_v4_bringupCalcUserRequest`, response → `Ros1Dobot_v4_bringupCalcUserResponse`
- `dobot_v4_bringup/Circle` (service): request → `Ros1Dobot_v4_bringupCircleRequest`, response → `Ros1Dobot_v4_bringupCircleResponse`
- `dobot_v4_bringup/ClearError` (service): request → `Ros1Dobot_v4_bringupClearErrorRequest`, response → `Ros1Dobot_v4_bringupClearErrorResponse`
- `dobot_v4_bringup/Continue` (service): request → `Ros1Dobot_v4_bringupContinueRequest`, response → `Ros1Dobot_v4_bringupContinueResponse`
- `dobot_v4_bringup/DI` (service): request → `Ros1Dobot_v4_bringupDIRequest`, response → `Ros1Dobot_v4_bringupDIResponse`
- `dobot_v4_bringup/DIGroup` (service): request → `Ros1Dobot_v4_bringupDIGroupRequest`, response → `Ros1Dobot_v4_bringupDIGroupResponse`
- `dobot_v4_bringup/DO` (service): request → `Ros1Dobot_v4_bringupDORequest`, response → `Ros1Dobot_v4_bringupDOResponse`
- `dobot_v4_bringup/DOGroup` (service): request → `Ros1Dobot_v4_bringupDOGroupRequest`, response → `Ros1Dobot_v4_bringupDOGroupResponse`
- `dobot_v4_bringup/DOInstant` (service): request → `Ros1Dobot_v4_bringupDOInstantRequest`, response → `Ros1Dobot_v4_bringupDOInstantResponse`
- `dobot_v4_bringup/DisableRobot` (service): request → `Ros1Dobot_v4_bringupDisableRobotRequest`, response → `Ros1Dobot_v4_bringupDisableRobotResponse`
- `dobot_v4_bringup/DragSensivity` (service): request → `Ros1Dobot_v4_bringupDragSensivityRequest`, response → `Ros1Dobot_v4_bringupDragSensivityResponse`
- `dobot_v4_bringup/EmergencyStop` (service): request → `Ros1Dobot_v4_bringupEmergencyStopRequest`, response → `Ros1Dobot_v4_bringupEmergencyStopResponse`
- `dobot_v4_bringup/EnableRobot` (service): request → `Ros1Dobot_v4_bringupEnableRobotRequest`, response → `Ros1Dobot_v4_bringupEnableRobotResponse`
- `dobot_v4_bringup/EnableSafeSkin` (service): request → `Ros1Dobot_v4_bringupEnableSafeSkinRequest`, response → `Ros1Dobot_v4_bringupEnableSafeSkinResponse`
- `dobot_v4_bringup/GetAO` (service): request → `Ros1Dobot_v4_bringupGetAORequest`, response → `Ros1Dobot_v4_bringupGetAOResponse`
- `dobot_v4_bringup/GetAngle` (service): request → `Ros1Dobot_v4_bringupGetAngleRequest`, response → `Ros1Dobot_v4_bringupGetAngleResponse`
- `dobot_v4_bringup/GetCoils` (service): request → `Ros1Dobot_v4_bringupGetCoilsRequest`, response → `Ros1Dobot_v4_bringupGetCoilsResponse`
- `dobot_v4_bringup/GetCurrentCommandId` (service): request → `Ros1Dobot_v4_bringupGetCurrentCommandIdRequest`, response → `Ros1Dobot_v4_bringupGetCurrentCommandIdResponse`
- `dobot_v4_bringup/GetDO` (service): request → `Ros1Dobot_v4_bringupGetDORequest`, response → `Ros1Dobot_v4_bringupGetDOResponse`
- `dobot_v4_bringup/GetDOGroup` (service): request → `Ros1Dobot_v4_bringupGetDOGroupRequest`, response → `Ros1Dobot_v4_bringupGetDOGroupResponse`
- `dobot_v4_bringup/GetErrorID` (service): request → `Ros1Dobot_v4_bringupGetErrorIDRequest`, response → `Ros1Dobot_v4_bringupGetErrorIDResponse`
- `dobot_v4_bringup/GetHoldRegs` (service): request → `Ros1Dobot_v4_bringupGetHoldRegsRequest`, response → `Ros1Dobot_v4_bringupGetHoldRegsResponse`
- `dobot_v4_bringup/GetInBits` (service): request → `Ros1Dobot_v4_bringupGetInBitsRequest`, response → `Ros1Dobot_v4_bringupGetInBitsResponse`
- `dobot_v4_bringup/GetInRegs` (service): request → `Ros1Dobot_v4_bringupGetInRegsRequest`, response → `Ros1Dobot_v4_bringupGetInRegsResponse`
- `dobot_v4_bringup/GetInputBool` (service): request → `Ros1Dobot_v4_bringupGetInputBoolRequest`, response → `Ros1Dobot_v4_bringupGetInputBoolResponse`
- `dobot_v4_bringup/GetInputFloat` (service): request → `Ros1Dobot_v4_bringupGetInputFloatRequest`, response → `Ros1Dobot_v4_bringupGetInputFloatResponse`
- `dobot_v4_bringup/GetInputInt` (service): request → `Ros1Dobot_v4_bringupGetInputIntRequest`, response → `Ros1Dobot_v4_bringupGetInputIntResponse`
- `dobot_v4_bringup/GetOutputBool` (service): request → `Ros1Dobot_v4_bringupGetOutputBoolRequest`, response → `Ros1Dobot_v4_bringupGetOutputBoolResponse`
- `dobot_v4_bringup/GetOutputFloat` (service): request → `Ros1Dobot_v4_bringupGetOutputFloatRequest`, response → `Ros1Dobot_v4_bringupGetOutputFloatResponse`
- `dobot_v4_bringup/GetOutputInt` (service): request → `Ros1Dobot_v4_bringupGetOutputIntRequest`, response → `Ros1Dobot_v4_bringupGetOutputIntResponse`
- `dobot_v4_bringup/GetPose` (service): request → `Ros1Dobot_v4_bringupGetPoseRequest`, response → `Ros1Dobot_v4_bringupGetPoseResponse`
- `dobot_v4_bringup/GetStartPose` (service): request → `Ros1Dobot_v4_bringupGetStartPoseRequest`, response → `Ros1Dobot_v4_bringupGetStartPoseResponse`
- `dobot_v4_bringup/InverseKin` (service): request → `Ros1Dobot_v4_bringupInverseKinRequest`, response → `Ros1Dobot_v4_bringupInverseKinResponse`
- `dobot_v4_bringup/InverseSolution` (service): request → `Ros1Dobot_v4_bringupInverseSolutionRequest`, response → `Ros1Dobot_v4_bringupInverseSolutionResponse`
- `dobot_v4_bringup/ModbusClose` (service): request → `Ros1Dobot_v4_bringupModbusCloseRequest`, response → `Ros1Dobot_v4_bringupModbusCloseResponse`
- `dobot_v4_bringup/ModbusCreate` (service): request → `Ros1Dobot_v4_bringupModbusCreateRequest`, response → `Ros1Dobot_v4_bringupModbusCreateResponse`
- `dobot_v4_bringup/ModbusRTUCreate` (service): request → `Ros1Dobot_v4_bringupModbusRTUCreateRequest`, response → `Ros1Dobot_v4_bringupModbusRTUCreateResponse`
- `dobot_v4_bringup/MovJ` (service): request → `Ros1Dobot_v4_bringupMovJRequest`, response → `Ros1Dobot_v4_bringupMovJResponse`
- `dobot_v4_bringup/MovJIO` (service): request → `Ros1Dobot_v4_bringupMovJIORequest`, response → `Ros1Dobot_v4_bringupMovJIOResponse`
- `dobot_v4_bringup/MovL` (service): request → `Ros1Dobot_v4_bringupMovLRequest`, response → `Ros1Dobot_v4_bringupMovLResponse`
- `dobot_v4_bringup/MovLIO` (service): request → `Ros1Dobot_v4_bringupMovLIORequest`, response → `Ros1Dobot_v4_bringupMovLIOResponse`
- `dobot_v4_bringup/MoveJog` (service): request → `Ros1Dobot_v4_bringupMoveJogRequest`, response → `Ros1Dobot_v4_bringupMoveJogResponse`
- `dobot_v4_bringup/Pause` (service): request → `Ros1Dobot_v4_bringupPauseRequest`, response → `Ros1Dobot_v4_bringupPauseResponse`
- `dobot_v4_bringup/PositiveKin` (service): request → `Ros1Dobot_v4_bringupPositiveKinRequest`, response → `Ros1Dobot_v4_bringupPositiveKinResponse`
- `dobot_v4_bringup/PowerOn` (service): request → `Ros1Dobot_v4_bringupPowerOnRequest`, response → `Ros1Dobot_v4_bringupPowerOnResponse`
- `dobot_v4_bringup/RelJointMovJ` (service): request → `Ros1Dobot_v4_bringupRelJointMovJRequest`, response → `Ros1Dobot_v4_bringupRelJointMovJResponse`
- `dobot_v4_bringup/RelMovJTool` (service): request → `Ros1Dobot_v4_bringupRelMovJToolRequest`, response → `Ros1Dobot_v4_bringupRelMovJToolResponse`
- `dobot_v4_bringup/RelMovJUser` (service): request → `Ros1Dobot_v4_bringupRelMovJUserRequest`, response → `Ros1Dobot_v4_bringupRelMovJUserResponse`
- `dobot_v4_bringup/RelMovLTool` (service): request → `Ros1Dobot_v4_bringupRelMovLToolRequest`, response → `Ros1Dobot_v4_bringupRelMovLToolResponse`
- `dobot_v4_bringup/RelMovLUser` (service): request → `Ros1Dobot_v4_bringupRelMovLUserRequest`, response → `Ros1Dobot_v4_bringupRelMovLUserResponse`
- `dobot_v4_bringup/RobotMode` (service): request → `Ros1Dobot_v4_bringupRobotModeRequest`, response → `Ros1Dobot_v4_bringupRobotModeResponse`
- `dobot_v4_bringup/RunScript` (service): request → `Ros1Dobot_v4_bringupRunScriptRequest`, response → `Ros1Dobot_v4_bringupRunScriptResponse`
- `dobot_v4_bringup/ServoJ` (service): request → `Ros1Dobot_v4_bringupServoJRequest`, response → `Ros1Dobot_v4_bringupServoJResponse`
- `dobot_v4_bringup/ServoP` (service): request → `Ros1Dobot_v4_bringupServoPRequest`, response → `Ros1Dobot_v4_bringupServoPResponse`
- `dobot_v4_bringup/SetBackDistance` (service): request → `Ros1Dobot_v4_bringupSetBackDistanceRequest`, response → `Ros1Dobot_v4_bringupSetBackDistanceResponse`
- `dobot_v4_bringup/SetCoils` (service): request → `Ros1Dobot_v4_bringupSetCoilsRequest`, response → `Ros1Dobot_v4_bringupSetCoilsResponse`
- `dobot_v4_bringup/SetCollisionLevel` (service): request → `Ros1Dobot_v4_bringupSetCollisionLevelRequest`, response → `Ros1Dobot_v4_bringupSetCollisionLevelResponse`
- `dobot_v4_bringup/SetHoldRegs` (service): request → `Ros1Dobot_v4_bringupSetHoldRegsRequest`, response → `Ros1Dobot_v4_bringupSetHoldRegsResponse`
- `dobot_v4_bringup/SetOutputBool` (service): request → `Ros1Dobot_v4_bringupSetOutputBoolRequest`, response → `Ros1Dobot_v4_bringupSetOutputBoolResponse`
- `dobot_v4_bringup/SetOutputFloat` (service): request → `Ros1Dobot_v4_bringupSetOutputFloatRequest`, response → `Ros1Dobot_v4_bringupSetOutputFloatResponse`
- `dobot_v4_bringup/SetOutputInt` (service): request → `Ros1Dobot_v4_bringupSetOutputIntRequest`, response → `Ros1Dobot_v4_bringupSetOutputIntResponse`
- `dobot_v4_bringup/SetPayload` (service): request → `Ros1Dobot_v4_bringupSetPayloadRequest`, response → `Ros1Dobot_v4_bringupSetPayloadResponse`
- `dobot_v4_bringup/SetPostCollisionMode` (service): request → `Ros1Dobot_v4_bringupSetPostCollisionModeRequest`, response → `Ros1Dobot_v4_bringupSetPostCollisionModeResponse`
- `dobot_v4_bringup/SetSafeSkin` (service): request → `Ros1Dobot_v4_bringupSetSafeSkinRequest`, response → `Ros1Dobot_v4_bringupSetSafeSkinResponse`
- `dobot_v4_bringup/SetSafeWallEnable` (service): request → `Ros1Dobot_v4_bringupSetSafeWallEnableRequest`, response → `Ros1Dobot_v4_bringupSetSafeWallEnableResponse`
- `dobot_v4_bringup/SetTool` (service): request → `Ros1Dobot_v4_bringupSetToolRequest`, response → `Ros1Dobot_v4_bringupSetToolResponse`
- `dobot_v4_bringup/SetTool485` (service): request → `Ros1Dobot_v4_bringupSetTool485Request`, response → `Ros1Dobot_v4_bringupSetTool485Response`
- `dobot_v4_bringup/SetToolMode` (service): request → `Ros1Dobot_v4_bringupSetToolModeRequest`, response → `Ros1Dobot_v4_bringupSetToolModeResponse`
- `dobot_v4_bringup/SetToolPower` (service): request → `Ros1Dobot_v4_bringupSetToolPowerRequest`, response → `Ros1Dobot_v4_bringupSetToolPowerResponse`
- `dobot_v4_bringup/SetUser` (service): request → `Ros1Dobot_v4_bringupSetUserRequest`, response → `Ros1Dobot_v4_bringupSetUserResponse`
- `dobot_v4_bringup/SpeedFactor` (service): request → `Ros1Dobot_v4_bringupSpeedFactorRequest`, response → `Ros1Dobot_v4_bringupSpeedFactorResponse`
- `dobot_v4_bringup/StartDrag` (service): request → `Ros1Dobot_v4_bringupStartDragRequest`, response → `Ros1Dobot_v4_bringupStartDragResponse`
- `dobot_v4_bringup/StartPath` (service): request → `Ros1Dobot_v4_bringupStartPathRequest`, response → `Ros1Dobot_v4_bringupStartPathResponse`
- `dobot_v4_bringup/Stop` (service): request → `Ros1Dobot_v4_bringupStopRequest`, response → `Ros1Dobot_v4_bringupStopResponse`
- `dobot_v4_bringup/StopDrag` (service): request → `Ros1Dobot_v4_bringupStopDragRequest`, response → `Ros1Dobot_v4_bringupStopDragResponse`
- `dobot_v4_bringup/StopMoveJog` (service): request → `Ros1Dobot_v4_bringupStopMoveJogRequest`, response → `Ros1Dobot_v4_bringupStopMoveJogResponse`
- `dobot_v4_bringup/TcpDashboard` (service): request → `Ros1Dobot_v4_bringupTcpDashboardRequest`, response → `Ros1Dobot_v4_bringupTcpDashboardResponse`
- `dobot_v4_bringup/Tool` (service): request → `Ros1Dobot_v4_bringupToolRequest`, response → `Ros1Dobot_v4_bringupToolResponse`
- `dobot_v4_bringup/ToolAI` (service): request → `Ros1Dobot_v4_bringupToolAIRequest`, response → `Ros1Dobot_v4_bringupToolAIResponse`
- `dobot_v4_bringup/ToolDI` (service): request → `Ros1Dobot_v4_bringupToolDIRequest`, response → `Ros1Dobot_v4_bringupToolDIResponse`
- `dobot_v4_bringup/ToolDO` (service): request → `Ros1Dobot_v4_bringupToolDORequest`, response → `Ros1Dobot_v4_bringupToolDOResponse`
- `dobot_v4_bringup/ToolDOInstant` (service): request → `Ros1Dobot_v4_bringupToolDOInstantRequest`, response → `Ros1Dobot_v4_bringupToolDOInstantResponse`
- `dobot_v4_bringup/User` (service): request → `Ros1Dobot_v4_bringupUserRequest`, response → `Ros1Dobot_v4_bringupUserResponse`
- `dobot_v4_bringup/VelJ` (service): request → `Ros1Dobot_v4_bringupVelJRequest`, response → `Ros1Dobot_v4_bringupVelJResponse`
- `dobot_v4_bringup/VelL` (service): request → `Ros1Dobot_v4_bringupVelLRequest`, response → `Ros1Dobot_v4_bringupVelLResponse`

Immutable upstream sources:

- [https://github.com/Dobot-Arm/TCP-IP-ROS-6AXis @ 0924e785f1827b7125ba4ba2bc3325811ed21c18](https://github.com/https://github.com/Dobot-Arm/TCP-IP-ROS-6AXis/tree/0924e785f1827b7125ba4ba2bc3325811ed21c18)

## ros2_v4

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `dobot_msgs_v4/msg/RobotStatus` | `Ros2Dobot_msgs_v4MsgRobotStatus` | 2..2 | is_enable: bool; is_connected: bool |
| `dobot_msgs_v4/msg/ToolVectorActual` | `Ros2Dobot_msgs_v4MsgToolVectorActual` | 48..48 | x: float64; y: float64; z: float64; rx: float64; ry: float64; rz: float64 |
| `dobot_msgs_v4/srv/AI_Request` | `Ros2Dobot_msgs_v4SrvAI_Request` | 4..4 | index: int32 |
| `dobot_msgs_v4/srv/AI_Response` | `Ros2Dobot_msgs_v4SrvAI_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/AO_Request` | `Ros2Dobot_msgs_v4SrvAO_Request` | 8..8 | index: int32; value: int32 |
| `dobot_msgs_v4/srv/AO_Response` | `Ros2Dobot_msgs_v4SrvAO_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/AOInstant_Request` | `Ros2Dobot_msgs_v4SrvAOInstant_Request` | 8..8 | index: int32; value: int32 |
| `dobot_msgs_v4/srv/AOInstant_Response` | `Ros2Dobot_msgs_v4SrvAOInstant_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/AccJ_Request` | `Ros2Dobot_msgs_v4SrvAccJ_Request` | 4..4 | r: int32 |
| `dobot_msgs_v4/srv/AccJ_Response` | `Ros2Dobot_msgs_v4SrvAccJ_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/AccL_Request` | `Ros2Dobot_msgs_v4SrvAccL_Request` | 4..4 | r: int32 |
| `dobot_msgs_v4/srv/AccL_Response` | `Ros2Dobot_msgs_v4SrvAccL_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/Arc_Request` | `Ros2Dobot_msgs_v4SrvArc_Request` | 101..4261 | mode: bool; a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; a2: float64; b2: float64; c2: float64; d2: float64; e2: float64; f2: float64; param_value: string sequence<=16 text<=256B |
| `dobot_msgs_v4/srv/Arc_Response` | `Ros2Dobot_msgs_v4SrvArc_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/BrakeControl_Request` | `Ros2Dobot_msgs_v4SrvBrakeControl_Request` | 8..8 | axis_id: int32; value: int32 |
| `dobot_msgs_v4/srv/BrakeControl_Response` | `Ros2Dobot_msgs_v4SrvBrakeControl_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/CP_Request` | `Ros2Dobot_msgs_v4SrvCP_Request` | 4..4 | r: int32 |
| `dobot_msgs_v4/srv/CP_Response` | `Ros2Dobot_msgs_v4SrvCP_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/CalcTool_Request` | `Ros2Dobot_msgs_v4SrvCalcTool_Request` | 12..268 | index: int32; matrix: int32; offset: string text<=256B |
| `dobot_msgs_v4/srv/CalcTool_Response` | `Ros2Dobot_msgs_v4SrvCalcTool_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/CalcUser_Request` | `Ros2Dobot_msgs_v4SrvCalcUser_Request` | 12..268 | index: int32; matrix: int32; offset: string text<=256B |
| `dobot_msgs_v4/srv/CalcUser_Response` | `Ros2Dobot_msgs_v4SrvCalcUser_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/CheckOddMovC_Request` | `Ros2Dobot_msgs_v4SrvCheckOddMovC_Request` | 148..4308 | point1_j1: float64; point1_j2: float64; point1_j3: float64; point1_j4: float64; point1_j5: float64; point1_j6: float64; point2_j1: float64; point2_j2: float64; point2_j3: float64; point2_j4: float64; point2_j5: float64; point2_j6: float64; point3_j1: float64; point3_j2: float64; point3_j3: float64; point3_j4: float64; point3_j5: float64; point3_j6: float64; param_value: string sequence<=16 text<=256B |
| `dobot_msgs_v4/srv/CheckOddMovC_Response` | `Ros2Dobot_msgs_v4SrvCheckOddMovC_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/CheckOddMovJ_Request` | `Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request` | 100..4260 | point1_j1: float64; point1_j2: float64; point1_j3: float64; point1_j4: float64; point1_j5: float64; point1_j6: float64; point2_j1: float64; point2_j2: float64; point2_j3: float64; point2_j4: float64; point2_j5: float64; point2_j6: float64; param_value: string sequence<=16 text<=256B |
| `dobot_msgs_v4/srv/CheckOddMovJ_Response` | `Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/CheckOddMovL_Request` | `Ros2Dobot_msgs_v4SrvCheckOddMovL_Request` | 100..4260 | point1_j1: float64; point1_j2: float64; point1_j3: float64; point1_j4: float64; point1_j5: float64; point1_j6: float64; point2_j1: float64; point2_j2: float64; point2_j3: float64; point2_j4: float64; point2_j5: float64; point2_j6: float64; param_value: string sequence<=16 text<=256B |
| `dobot_msgs_v4/srv/CheckOddMovL_Response` | `Ros2Dobot_msgs_v4SrvCheckOddMovL_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/Circle_Request` | `Ros2Dobot_msgs_v4SrvCircle_Request` | 105..4265 | mode: bool; a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; a2: float64; b2: float64; c2: float64; d2: float64; e2: float64; f2: float64; count: int32; param_value: string sequence<=16 text<=256B |
| `dobot_msgs_v4/srv/Circle_Response` | `Ros2Dobot_msgs_v4SrvCircle_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/ClearError_Request` | `Ros2Dobot_msgs_v4SrvClearError_Request` | 0..0 | (empty original component) |
| `dobot_msgs_v4/srv/ClearError_Response` | `Ros2Dobot_msgs_v4SrvClearError_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/Continue_Request` | `Ros2Dobot_msgs_v4SrvContinue_Request` | 0..0 | (empty original component) |
| `dobot_msgs_v4/srv/Continue_Response` | `Ros2Dobot_msgs_v4SrvContinue_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/DI_Request` | `Ros2Dobot_msgs_v4SrvDI_Request` | 4..4 | index: int32 |
| `dobot_msgs_v4/srv/DI_Response` | `Ros2Dobot_msgs_v4SrvDI_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/DIGroup_Request` | `Ros2Dobot_msgs_v4SrvDIGroup_Request` | 4..68 | args: int32 sequence<=16 |
| `dobot_msgs_v4/srv/DIGroup_Response` | `Ros2Dobot_msgs_v4SrvDIGroup_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/DIGroupDEC_Request` | `Ros2Dobot_msgs_v4SrvDIGroupDEC_Request` | 8..8 | group: int32; value: int32 |
| `dobot_msgs_v4/srv/DIGroupDEC_Response` | `Ros2Dobot_msgs_v4SrvDIGroupDEC_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/DO_Request` | `Ros2Dobot_msgs_v4SrvDO_Request` | 12..12 | index: int32; status: int32; time: int32 |
| `dobot_msgs_v4/srv/DO_Response` | `Ros2Dobot_msgs_v4SrvDO_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/DOGroup_Request` | `Ros2Dobot_msgs_v4SrvDOGroup_Request` | 4..68 | args: int32 sequence<=16 |
| `dobot_msgs_v4/srv/DOGroup_Response` | `Ros2Dobot_msgs_v4SrvDOGroup_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/DOGroupDEC_Request` | `Ros2Dobot_msgs_v4SrvDOGroupDEC_Request` | 8..8 | group: int32; value: int32 |
| `dobot_msgs_v4/srv/DOGroupDEC_Response` | `Ros2Dobot_msgs_v4SrvDOGroupDEC_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/DOInstant_Request` | `Ros2Dobot_msgs_v4SrvDOInstant_Request` | 8..8 | index: int32; status: int32 |
| `dobot_msgs_v4/srv/DOInstant_Response` | `Ros2Dobot_msgs_v4SrvDOInstant_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/DisableRobot_Request` | `Ros2Dobot_msgs_v4SrvDisableRobot_Request` | 0..0 | (empty original component) |
| `dobot_msgs_v4/srv/DisableRobot_Response` | `Ros2Dobot_msgs_v4SrvDisableRobot_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/DragSensivity_Request` | `Ros2Dobot_msgs_v4SrvDragSensivity_Request` | 8..8 | index: int32; value: int32 |
| `dobot_msgs_v4/srv/DragSensivity_Response` | `Ros2Dobot_msgs_v4SrvDragSensivity_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/EmergencyStop_Request` | `Ros2Dobot_msgs_v4SrvEmergencyStop_Request` | 4..4 | value: int32 |
| `dobot_msgs_v4/srv/EmergencyStop_Response` | `Ros2Dobot_msgs_v4SrvEmergencyStop_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/EnableFTSensor_Request` | `Ros2Dobot_msgs_v4SrvEnableFTSensor_Request` | 4..4 | status: int32 |
| `dobot_msgs_v4/srv/EnableFTSensor_Response` | `Ros2Dobot_msgs_v4SrvEnableFTSensor_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/EnableRobot_Request` | `Ros2Dobot_msgs_v4SrvEnableRobot_Request` | 0..0 | (empty original component) |
| `dobot_msgs_v4/srv/EnableRobot_Response` | `Ros2Dobot_msgs_v4SrvEnableRobot_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/EnableSafeSkin_Request` | `Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request` | 4..4 | status: int32 |
| `dobot_msgs_v4/srv/EnableSafeSkin_Response` | `Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/EndRTOffset_Request` | `Ros2Dobot_msgs_v4SrvEndRTOffset_Request` | 0..0 | (empty original component) |
| `dobot_msgs_v4/srv/EndRTOffset_Response` | `Ros2Dobot_msgs_v4SrvEndRTOffset_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/FCCollisionSwitch_Request` | `Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request` | 4..4 | enable: int32 |
| `dobot_msgs_v4/srv/FCCollisionSwitch_Response` | `Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/FCForceMode_Request` | `Ros2Dobot_msgs_v4SrvFCForceMode_Request` | 60..60 | x: int32; y: int32; z: int32; rx: int32; ry: int32; rz: int32; fx: int32; fy: int32; fz: int32; frx: int32; fry: int32; frz: int32; reference: int32; user: int32; tool: int32 |
| `dobot_msgs_v4/srv/FCForceMode_Response` | `Ros2Dobot_msgs_v4SrvFCForceMode_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/FCOff_Request` | `Ros2Dobot_msgs_v4SrvFCOff_Request` | 0..0 | (empty original component) |
| `dobot_msgs_v4/srv/FCOff_Response` | `Ros2Dobot_msgs_v4SrvFCOff_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/FCSetDamping_Request` | `Ros2Dobot_msgs_v4SrvFCSetDamping_Request` | 24..24 | x: int32; y: int32; z: int32; rx: int32; ry: int32; rz: int32 |
| `dobot_msgs_v4/srv/FCSetDamping_Response` | `Ros2Dobot_msgs_v4SrvFCSetDamping_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/FCSetDeviation_Request` | `Ros2Dobot_msgs_v4SrvFCSetDeviation_Request` | 28..28 | x: int32; y: int32; z: int32; rx: int32; ry: int32; rz: int32; controltype: int32 |
| `dobot_msgs_v4/srv/FCSetDeviation_Response` | `Ros2Dobot_msgs_v4SrvFCSetDeviation_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/FCSetForce_Request` | `Ros2Dobot_msgs_v4SrvFCSetForce_Request` | 24..24 | x: int32; y: int32; z: int32; rx: int32; ry: int32; rz: int32 |
| `dobot_msgs_v4/srv/FCSetForce_Response` | `Ros2Dobot_msgs_v4SrvFCSetForce_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/FCSetForceLimit_Request` | `Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request` | 24..24 | x: int32; y: int32; z: int32; rx: int32; ry: int32; rz: int32 |
| `dobot_msgs_v4/srv/FCSetForceLimit_Response` | `Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/FCSetForceSpeedLimit_Request` | `Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request` | 24..24 | x: int32; y: int32; z: int32; rx: int32; ry: int32; rz: int32 |
| `dobot_msgs_v4/srv/FCSetForceSpeedLimit_Response` | `Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/FCSetMass_Request` | `Ros2Dobot_msgs_v4SrvFCSetMass_Request` | 24..24 | x: int32; y: int32; z: int32; rx: int32; ry: int32; rz: int32 |
| `dobot_msgs_v4/srv/FCSetMass_Response` | `Ros2Dobot_msgs_v4SrvFCSetMass_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/FCSetStiffness_Request` | `Ros2Dobot_msgs_v4SrvFCSetStiffness_Request` | 24..24 | x: int32; y: int32; z: int32; rx: int32; ry: int32; rz: int32 |
| `dobot_msgs_v4/srv/FCSetStiffness_Response` | `Ros2Dobot_msgs_v4SrvFCSetStiffness_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/ForceDriveMode_Request` | `Ros2Dobot_msgs_v4SrvForceDriveMode_Request` | 28..28 | x: int32; y: int32; z: int32; rx: int32; ry: int32; rz: int32; user: int32 |
| `dobot_msgs_v4/srv/ForceDriveMode_Response` | `Ros2Dobot_msgs_v4SrvForceDriveMode_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/ForceDriveSpeed_Request` | `Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request` | 4..4 | speed: int32 |
| `dobot_msgs_v4/srv/ForceDriveSpeed_Response` | `Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/GetAO_Request` | `Ros2Dobot_msgs_v4SrvGetAO_Request` | 4..4 | index: int32 |
| `dobot_msgs_v4/srv/GetAO_Response` | `Ros2Dobot_msgs_v4SrvGetAO_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/GetAngle_Request` | `Ros2Dobot_msgs_v4SrvGetAngle_Request` | 0..0 | (empty original component) |
| `dobot_msgs_v4/srv/GetAngle_Response` | `Ros2Dobot_msgs_v4SrvGetAngle_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/GetCoils_Request` | `Ros2Dobot_msgs_v4SrvGetCoils_Request` | 12..12 | index: int32; addr: int32; count: int32 |
| `dobot_msgs_v4/srv/GetCoils_Response` | `Ros2Dobot_msgs_v4SrvGetCoils_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/GetCurrentCommandId_Request` | `Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request` | 0..0 | (empty original component) |
| `dobot_msgs_v4/srv/GetCurrentCommandId_Response` | `Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/GetDO_Request` | `Ros2Dobot_msgs_v4SrvGetDO_Request` | 4..4 | index: int32 |
| `dobot_msgs_v4/srv/GetDO_Response` | `Ros2Dobot_msgs_v4SrvGetDO_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/GetDOGroup_Request` | `Ros2Dobot_msgs_v4SrvGetDOGroup_Request` | 4..68 | index_group: int32 sequence<=16 |
| `dobot_msgs_v4/srv/GetDOGroup_Response` | `Ros2Dobot_msgs_v4SrvGetDOGroup_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/GetDOGroupDEC_Request` | `Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request` | 8..8 | group: int32; value: int32 |
| `dobot_msgs_v4/srv/GetDOGroupDEC_Response` | `Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/GetError_Request` | `Ros2Dobot_msgs_v4SrvGetError_Request` | 4..260 | language: string text<=256B |
| `dobot_msgs_v4/srv/GetError_Response` | `Ros2Dobot_msgs_v4SrvGetError_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/GetErrorID_Request` | `Ros2Dobot_msgs_v4SrvGetErrorID_Request` | 0..0 | (empty original component) |
| `dobot_msgs_v4/srv/GetErrorID_Response` | `Ros2Dobot_msgs_v4SrvGetErrorID_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/GetForce_Request` | `Ros2Dobot_msgs_v4SrvGetForce_Request` | 4..4 | tool: int32 |
| `dobot_msgs_v4/srv/GetForce_Response` | `Ros2Dobot_msgs_v4SrvGetForce_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/GetHoldRegs_Request` | `Ros2Dobot_msgs_v4SrvGetHoldRegs_Request` | 16..272 | index: int32; addr: int32; count: int32; val_type: string text<=256B |
| `dobot_msgs_v4/srv/GetHoldRegs_Response` | `Ros2Dobot_msgs_v4SrvGetHoldRegs_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/GetInBits_Request` | `Ros2Dobot_msgs_v4SrvGetInBits_Request` | 12..12 | index: int32; addr: int32; count: int32 |
| `dobot_msgs_v4/srv/GetInBits_Response` | `Ros2Dobot_msgs_v4SrvGetInBits_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/GetInRegs_Request` | `Ros2Dobot_msgs_v4SrvGetInRegs_Request` | 16..272 | index: int32; addr: int32; count: int32; val_type: string text<=256B |
| `dobot_msgs_v4/srv/GetInRegs_Response` | `Ros2Dobot_msgs_v4SrvGetInRegs_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/GetInputBool_Request` | `Ros2Dobot_msgs_v4SrvGetInputBool_Request` | 4..4 | address: int32 |
| `dobot_msgs_v4/srv/GetInputBool_Response` | `Ros2Dobot_msgs_v4SrvGetInputBool_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/GetInputFloat_Request` | `Ros2Dobot_msgs_v4SrvGetInputFloat_Request` | 4..4 | address: int32 |
| `dobot_msgs_v4/srv/GetInputFloat_Response` | `Ros2Dobot_msgs_v4SrvGetInputFloat_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/GetInputInt_Request` | `Ros2Dobot_msgs_v4SrvGetInputInt_Request` | 4..4 | address: int32 |
| `dobot_msgs_v4/srv/GetInputInt_Response` | `Ros2Dobot_msgs_v4SrvGetInputInt_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/GetOutputBool_Request` | `Ros2Dobot_msgs_v4SrvGetOutputBool_Request` | 4..4 | address: int32 |
| `dobot_msgs_v4/srv/GetOutputBool_Response` | `Ros2Dobot_msgs_v4SrvGetOutputBool_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/GetOutputFloat_Request` | `Ros2Dobot_msgs_v4SrvGetOutputFloat_Request` | 4..4 | address: int32 |
| `dobot_msgs_v4/srv/GetOutputFloat_Response` | `Ros2Dobot_msgs_v4SrvGetOutputFloat_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/GetOutputInt_Request` | `Ros2Dobot_msgs_v4SrvGetOutputInt_Request` | 4..4 | address: int32 |
| `dobot_msgs_v4/srv/GetOutputInt_Response` | `Ros2Dobot_msgs_v4SrvGetOutputInt_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/GetPose_Request` | `Ros2Dobot_msgs_v4SrvGetPose_Request` | 8..8 | user: int32; tool: int32 |
| `dobot_msgs_v4/srv/GetPose_Response` | `Ros2Dobot_msgs_v4SrvGetPose_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/GetStartPose_Request` | `Ros2Dobot_msgs_v4SrvGetStartPose_Request` | 4..260 | trace_name: string text<=256B |
| `dobot_msgs_v4/srv/GetStartPose_Response` | `Ros2Dobot_msgs_v4SrvGetStartPose_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/GetToolDO_Request` | `Ros2Dobot_msgs_v4SrvGetToolDO_Request` | 4..4 | index: int32 |
| `dobot_msgs_v4/srv/GetToolDO_Response` | `Ros2Dobot_msgs_v4SrvGetToolDO_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/InverseKin_Request` | `Ros2Dobot_msgs_v4SrvInverseKin_Request` | 64..1088 | x: float64; y: float64; z: float64; rx: float64; ry: float64; rz: float64; use_joint_near: string text<=256B; joint_near: string text<=256B; user: string text<=256B; tool: string text<=256B |
| `dobot_msgs_v4/srv/InverseKin_Response` | `Ros2Dobot_msgs_v4SrvInverseKin_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/InverseSolution_Request` | `Ros2Dobot_msgs_v4SrvInverseSolution_Request` | 4..260 | parameter: string text<=256B |
| `dobot_msgs_v4/srv/InverseSolution_Response` | `Ros2Dobot_msgs_v4SrvInverseSolution_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/ModbusClose_Request` | `Ros2Dobot_msgs_v4SrvModbusClose_Request` | 4..4 | index: int32 |
| `dobot_msgs_v4/srv/ModbusClose_Response` | `Ros2Dobot_msgs_v4SrvModbusClose_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/ModbusCreate_Request` | `Ros2Dobot_msgs_v4SrvModbusCreate_Request` | 16..272 | ip: string text<=256B; port: int32; slave_id: int32; is_rtu: int32 |
| `dobot_msgs_v4/srv/ModbusCreate_Response` | `Ros2Dobot_msgs_v4SrvModbusCreate_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/ModbusRTUCreate_Request` | `Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request` | 20..276 | slave_id: int32; baud: int32; parity: string text<=256B; data_bit: int32; stop_bit: int32 |
| `dobot_msgs_v4/srv/ModbusRTUCreate_Response` | `Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/MovJ_Request` | `Ros2Dobot_msgs_v4SrvMovJ_Request` | 53..4213 | mode: bool; a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; param_value: string sequence<=16 text<=256B |
| `dobot_msgs_v4/srv/MovJ_Response` | `Ros2Dobot_msgs_v4SrvMovJ_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/MovJIO_Request` | `Ros2Dobot_msgs_v4SrvMovJIO_Request` | 57..8377 | mode: bool; a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; mdis: string sequence<=16 text<=256B; param_value: string sequence<=16 text<=256B |
| `dobot_msgs_v4/srv/MovJIO_Response` | `Ros2Dobot_msgs_v4SrvMovJIO_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/MovL_Request` | `Ros2Dobot_msgs_v4SrvMovL_Request` | 53..4213 | mode: bool; a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; param_value: string sequence<=16 text<=256B |
| `dobot_msgs_v4/srv/MovL_Response` | `Ros2Dobot_msgs_v4SrvMovL_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/MovLIO_Request` | `Ros2Dobot_msgs_v4SrvMovLIO_Request` | 57..8377 | mode: bool; a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; mdis: string sequence<=16 text<=256B; param_value: string sequence<=16 text<=256B |
| `dobot_msgs_v4/srv/MovLIO_Response` | `Ros2Dobot_msgs_v4SrvMovLIO_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/MoveJog_Request` | `Ros2Dobot_msgs_v4SrvMoveJog_Request` | 8..4424 | axis_id: string text<=256B; param_value: string sequence<=16 text<=256B |
| `dobot_msgs_v4/srv/MoveJog_Response` | `Ros2Dobot_msgs_v4SrvMoveJog_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/Pause_Request` | `Ros2Dobot_msgs_v4SrvPause_Request` | 0..0 | (empty original component) |
| `dobot_msgs_v4/srv/Pause_Response` | `Ros2Dobot_msgs_v4SrvPause_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/PositiveKin_Request` | `Ros2Dobot_msgs_v4SrvPositiveKin_Request` | 56..568 | j1: float64; j2: float64; j3: float64; j4: float64; j5: float64; j6: float64; user: string text<=256B; tool: string text<=256B |
| `dobot_msgs_v4/srv/PositiveKin_Response` | `Ros2Dobot_msgs_v4SrvPositiveKin_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/PowerOn_Request` | `Ros2Dobot_msgs_v4SrvPowerOn_Request` | 0..0 | (empty original component) |
| `dobot_msgs_v4/srv/PowerOn_Response` | `Ros2Dobot_msgs_v4SrvPowerOn_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/RelJointMovJ_Request` | `Ros2Dobot_msgs_v4SrvRelJointMovJ_Request` | 52..4212 | a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; param_value: string sequence<=16 text<=256B |
| `dobot_msgs_v4/srv/RelJointMovJ_Response` | `Ros2Dobot_msgs_v4SrvRelJointMovJ_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/RelMovJTool_Request` | `Ros2Dobot_msgs_v4SrvRelMovJTool_Request` | 52..4212 | a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; param_value: string sequence<=16 text<=256B |
| `dobot_msgs_v4/srv/RelMovJTool_Response` | `Ros2Dobot_msgs_v4SrvRelMovJTool_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/RelMovJUser_Request` | `Ros2Dobot_msgs_v4SrvRelMovJUser_Request` | 52..4212 | a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; param_value: string sequence<=16 text<=256B |
| `dobot_msgs_v4/srv/RelMovJUser_Response` | `Ros2Dobot_msgs_v4SrvRelMovJUser_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/RelMovLTool_Request` | `Ros2Dobot_msgs_v4SrvRelMovLTool_Request` | 52..4212 | a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; param_value: string sequence<=16 text<=256B |
| `dobot_msgs_v4/srv/RelMovLTool_Response` | `Ros2Dobot_msgs_v4SrvRelMovLTool_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/RelMovLUser_Request` | `Ros2Dobot_msgs_v4SrvRelMovLUser_Request` | 52..4212 | a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; param_value: string sequence<=16 text<=256B |
| `dobot_msgs_v4/srv/RelMovLUser_Response` | `Ros2Dobot_msgs_v4SrvRelMovLUser_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/RequestControl_Request` | `Ros2Dobot_msgs_v4SrvRequestControl_Request` | 0..0 | (empty original component) |
| `dobot_msgs_v4/srv/RequestControl_Response` | `Ros2Dobot_msgs_v4SrvRequestControl_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/ResetRobot_Request` | `Ros2Dobot_msgs_v4SrvResetRobot_Request` | 0..0 | (empty original component) |
| `dobot_msgs_v4/srv/ResetRobot_Response` | `Ros2Dobot_msgs_v4SrvResetRobot_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/RobotMode_Request` | `Ros2Dobot_msgs_v4SrvRobotMode_Request` | 0..0 | (empty original component) |
| `dobot_msgs_v4/srv/RobotMode_Response` | `Ros2Dobot_msgs_v4SrvRobotMode_Response` | 8..264 | robot_return: string text<=256B; res: int32 |
| `dobot_msgs_v4/srv/RunScript_Request` | `Ros2Dobot_msgs_v4SrvRunScript_Request` | 4..260 | project_name: string text<=256B |
| `dobot_msgs_v4/srv/RunScript_Response` | `Ros2Dobot_msgs_v4SrvRunScript_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/RunTo_Request` | `Ros2Dobot_msgs_v4SrvRunTo_Request` | 68..68 | a1: float64; b1: float64; c1: float64; d1: float64; e1: float64; f1: float64; move_type: int32; user: int32; tool: int32; a: int32; v: int32 |
| `dobot_msgs_v4/srv/RunTo_Response` | `Ros2Dobot_msgs_v4SrvRunTo_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/ServoJ_Request` | `Ros2Dobot_msgs_v4SrvServoJ_Request` | 52..4212 | a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; param_value: string sequence<=16 text<=256B |
| `dobot_msgs_v4/srv/ServoJ_Response` | `Ros2Dobot_msgs_v4SrvServoJ_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/ServoP_Request` | `Ros2Dobot_msgs_v4SrvServoP_Request` | 52..4212 | a: float64; b: float64; c: float64; d: float64; e: float64; f: float64; param_value: string sequence<=16 text<=256B |
| `dobot_msgs_v4/srv/ServoP_Response` | `Ros2Dobot_msgs_v4SrvServoP_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/SetBackDistance_Request` | `Ros2Dobot_msgs_v4SrvSetBackDistance_Request` | 8..8 | distance: float64 |
| `dobot_msgs_v4/srv/SetBackDistance_Response` | `Ros2Dobot_msgs_v4SrvSetBackDistance_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/SetCoils_Request` | `Ros2Dobot_msgs_v4SrvSetCoils_Request` | 16..272 | index: int32; addr: int32; count: int32; val_tab: string text<=256B |
| `dobot_msgs_v4/srv/SetCoils_Response` | `Ros2Dobot_msgs_v4SrvSetCoils_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/SetCollisionLevel_Request` | `Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request` | 4..4 | level: int32 |
| `dobot_msgs_v4/srv/SetCollisionLevel_Response` | `Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/SetFCCollision_Request` | `Ros2Dobot_msgs_v4SrvSetFCCollision_Request` | 16..16 | force: float64; torque: float64 |
| `dobot_msgs_v4/srv/SetFCCollision_Response` | `Ros2Dobot_msgs_v4SrvSetFCCollision_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/SetHoldRegs_Request` | `Ros2Dobot_msgs_v4SrvSetHoldRegs_Request` | 20..532 | index: int32; addr: int32; count: int32; val_tab: string text<=256B; val_type: string text<=256B |
| `dobot_msgs_v4/srv/SetHoldRegs_Response` | `Ros2Dobot_msgs_v4SrvSetHoldRegs_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/SetOutputBool_Request` | `Ros2Dobot_msgs_v4SrvSetOutputBool_Request` | 8..8 | address: int32; value: int32 |
| `dobot_msgs_v4/srv/SetOutputBool_Response` | `Ros2Dobot_msgs_v4SrvSetOutputBool_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/SetOutputFloat_Request` | `Ros2Dobot_msgs_v4SrvSetOutputFloat_Request` | 12..12 | address: int32; value: float64 |
| `dobot_msgs_v4/srv/SetOutputFloat_Response` | `Ros2Dobot_msgs_v4SrvSetOutputFloat_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/SetOutputInt_Request` | `Ros2Dobot_msgs_v4SrvSetOutputInt_Request` | 8..8 | address: int32; value: int32 |
| `dobot_msgs_v4/srv/SetOutputInt_Response` | `Ros2Dobot_msgs_v4SrvSetOutputInt_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/SetPayload_Request` | `Ros2Dobot_msgs_v4SrvSetPayload_Request` | 32..32 | load: float64; x: float64; y: float64; z: float64 |
| `dobot_msgs_v4/srv/SetPayload_Response` | `Ros2Dobot_msgs_v4SrvSetPayload_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/SetPostCollisionMode_Request` | `Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request` | 4..4 | mode: int32 |
| `dobot_msgs_v4/srv/SetPostCollisionMode_Response` | `Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/SetSafeSkin_Request` | `Ros2Dobot_msgs_v4SrvSetSafeSkin_Request` | 8..8 | part: int32; status: int32 |
| `dobot_msgs_v4/srv/SetSafeSkin_Response` | `Ros2Dobot_msgs_v4SrvSetSafeSkin_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/SetSafeWallEnable_Request` | `Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request` | 8..8 | index: int32; value: int32 |
| `dobot_msgs_v4/srv/SetSafeWallEnable_Response` | `Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/SetTool_Request` | `Ros2Dobot_msgs_v4SrvSetTool_Request` | 8..264 | index: int32; value: string text<=256B |
| `dobot_msgs_v4/srv/SetTool_Response` | `Ros2Dobot_msgs_v4SrvSetTool_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/SetTool485_Request` | `Ros2Dobot_msgs_v4SrvSetTool485_Request` | 16..272 | baudrate: int32; parity: string text<=256B; stop: int32; identify: int32 |
| `dobot_msgs_v4/srv/SetTool485_Response` | `Ros2Dobot_msgs_v4SrvSetTool485_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/SetToolMode_Request` | `Ros2Dobot_msgs_v4SrvSetToolMode_Request` | 8..8 | mode: int32; type: int32 |
| `dobot_msgs_v4/srv/SetToolMode_Response` | `Ros2Dobot_msgs_v4SrvSetToolMode_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/SetToolPower_Request` | `Ros2Dobot_msgs_v4SrvSetToolPower_Request` | 4..4 | status: int32 |
| `dobot_msgs_v4/srv/SetToolPower_Response` | `Ros2Dobot_msgs_v4SrvSetToolPower_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/SetUser_Request` | `Ros2Dobot_msgs_v4SrvSetUser_Request` | 8..264 | index: int32; value: string text<=256B |
| `dobot_msgs_v4/srv/SetUser_Response` | `Ros2Dobot_msgs_v4SrvSetUser_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/SetWorkZoneEnable_Request` | `Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request` | 8..8 | index: int32; value: int32 |
| `dobot_msgs_v4/srv/SetWorkZoneEnable_Response` | `Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/SixForceHome_Request` | `Ros2Dobot_msgs_v4SrvSixForceHome_Request` | 0..0 | (empty original component) |
| `dobot_msgs_v4/srv/SixForceHome_Response` | `Ros2Dobot_msgs_v4SrvSixForceHome_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/SpeedFactor_Request` | `Ros2Dobot_msgs_v4SrvSpeedFactor_Request` | 4..4 | ratio: int32 |
| `dobot_msgs_v4/srv/SpeedFactor_Response` | `Ros2Dobot_msgs_v4SrvSpeedFactor_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/StartDrag_Request` | `Ros2Dobot_msgs_v4SrvStartDrag_Request` | 0..0 | (empty original component) |
| `dobot_msgs_v4/srv/StartDrag_Response` | `Ros2Dobot_msgs_v4SrvStartDrag_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/StartPath_Request` | `Ros2Dobot_msgs_v4SrvStartPath_Request` | 8..4424 | trace_name: string text<=256B; param_value: string sequence<=16 text<=256B |
| `dobot_msgs_v4/srv/StartPath_Response` | `Ros2Dobot_msgs_v4SrvStartPath_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/StartRTOffset_Request` | `Ros2Dobot_msgs_v4SrvStartRTOffset_Request` | 0..0 | (empty original component) |
| `dobot_msgs_v4/srv/StartRTOffset_Response` | `Ros2Dobot_msgs_v4SrvStartRTOffset_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/Stop_Request` | `Ros2Dobot_msgs_v4SrvStop_Request` | 0..0 | (empty original component) |
| `dobot_msgs_v4/srv/Stop_Response` | `Ros2Dobot_msgs_v4SrvStop_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/StopDrag_Request` | `Ros2Dobot_msgs_v4SrvStopDrag_Request` | 0..0 | (empty original component) |
| `dobot_msgs_v4/srv/StopDrag_Response` | `Ros2Dobot_msgs_v4SrvStopDrag_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/StopMoveJog_Request` | `Ros2Dobot_msgs_v4SrvStopMoveJog_Request` | 0..0 | (empty original component) |
| `dobot_msgs_v4/srv/StopMoveJog_Response` | `Ros2Dobot_msgs_v4SrvStopMoveJog_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/TcpDashboard_Request` | `Ros2Dobot_msgs_v4SrvTcpDashboard_Request` | 4..260 | command: string text<=256B |
| `dobot_msgs_v4/srv/TcpDashboard_Response` | `Ros2Dobot_msgs_v4SrvTcpDashboard_Response` | 4..260 | result: string text<=256B |
| `dobot_msgs_v4/srv/Tool_Request` | `Ros2Dobot_msgs_v4SrvTool_Request` | 4..4 | index: int32 |
| `dobot_msgs_v4/srv/Tool_Response` | `Ros2Dobot_msgs_v4SrvTool_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/ToolAI_Request` | `Ros2Dobot_msgs_v4SrvToolAI_Request` | 4..4 | index: int32 |
| `dobot_msgs_v4/srv/ToolAI_Response` | `Ros2Dobot_msgs_v4SrvToolAI_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/ToolDI_Request` | `Ros2Dobot_msgs_v4SrvToolDI_Request` | 4..4 | index: int32 |
| `dobot_msgs_v4/srv/ToolDI_Response` | `Ros2Dobot_msgs_v4SrvToolDI_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/ToolDO_Request` | `Ros2Dobot_msgs_v4SrvToolDO_Request` | 8..8 | index: int32; status: int32 |
| `dobot_msgs_v4/srv/ToolDO_Response` | `Ros2Dobot_msgs_v4SrvToolDO_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/ToolDOInstant_Request` | `Ros2Dobot_msgs_v4SrvToolDOInstant_Request` | 8..8 | index: int32; status: int32 |
| `dobot_msgs_v4/srv/ToolDOInstant_Response` | `Ros2Dobot_msgs_v4SrvToolDOInstant_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/User_Request` | `Ros2Dobot_msgs_v4SrvUser_Request` | 4..4 | index: int32 |
| `dobot_msgs_v4/srv/User_Response` | `Ros2Dobot_msgs_v4SrvUser_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/VelJ_Request` | `Ros2Dobot_msgs_v4SrvVelJ_Request` | 4..4 | r: int32 |
| `dobot_msgs_v4/srv/VelJ_Response` | `Ros2Dobot_msgs_v4SrvVelJ_Response` | 4..4 | res: int32 |
| `dobot_msgs_v4/srv/VelL_Request` | `Ros2Dobot_msgs_v4SrvVelL_Request` | 4..4 | r: int32 |
| `dobot_msgs_v4/srv/VelL_Response` | `Ros2Dobot_msgs_v4SrvVelL_Response` | 4..4 | res: int32 |

Interfaces:

- `dobot_msgs_v4/msg/RobotStatus` (message): message → `Ros2Dobot_msgs_v4MsgRobotStatus`
- `dobot_msgs_v4/msg/ToolVectorActual` (message): message → `Ros2Dobot_msgs_v4MsgToolVectorActual`
- `dobot_msgs_v4/srv/AI` (service): request → `Ros2Dobot_msgs_v4SrvAI_Request`, response → `Ros2Dobot_msgs_v4SrvAI_Response`
- `dobot_msgs_v4/srv/AO` (service): request → `Ros2Dobot_msgs_v4SrvAO_Request`, response → `Ros2Dobot_msgs_v4SrvAO_Response`
- `dobot_msgs_v4/srv/AOInstant` (service): request → `Ros2Dobot_msgs_v4SrvAOInstant_Request`, response → `Ros2Dobot_msgs_v4SrvAOInstant_Response`
- `dobot_msgs_v4/srv/AccJ` (service): request → `Ros2Dobot_msgs_v4SrvAccJ_Request`, response → `Ros2Dobot_msgs_v4SrvAccJ_Response`
- `dobot_msgs_v4/srv/AccL` (service): request → `Ros2Dobot_msgs_v4SrvAccL_Request`, response → `Ros2Dobot_msgs_v4SrvAccL_Response`
- `dobot_msgs_v4/srv/Arc` (service): request → `Ros2Dobot_msgs_v4SrvArc_Request`, response → `Ros2Dobot_msgs_v4SrvArc_Response`
- `dobot_msgs_v4/srv/BrakeControl` (service): request → `Ros2Dobot_msgs_v4SrvBrakeControl_Request`, response → `Ros2Dobot_msgs_v4SrvBrakeControl_Response`
- `dobot_msgs_v4/srv/CP` (service): request → `Ros2Dobot_msgs_v4SrvCP_Request`, response → `Ros2Dobot_msgs_v4SrvCP_Response`
- `dobot_msgs_v4/srv/CalcTool` (service): request → `Ros2Dobot_msgs_v4SrvCalcTool_Request`, response → `Ros2Dobot_msgs_v4SrvCalcTool_Response`
- `dobot_msgs_v4/srv/CalcUser` (service): request → `Ros2Dobot_msgs_v4SrvCalcUser_Request`, response → `Ros2Dobot_msgs_v4SrvCalcUser_Response`
- `dobot_msgs_v4/srv/CheckOddMovC` (service): request → `Ros2Dobot_msgs_v4SrvCheckOddMovC_Request`, response → `Ros2Dobot_msgs_v4SrvCheckOddMovC_Response`
- `dobot_msgs_v4/srv/CheckOddMovJ` (service): request → `Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request`, response → `Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response`
- `dobot_msgs_v4/srv/CheckOddMovL` (service): request → `Ros2Dobot_msgs_v4SrvCheckOddMovL_Request`, response → `Ros2Dobot_msgs_v4SrvCheckOddMovL_Response`
- `dobot_msgs_v4/srv/Circle` (service): request → `Ros2Dobot_msgs_v4SrvCircle_Request`, response → `Ros2Dobot_msgs_v4SrvCircle_Response`
- `dobot_msgs_v4/srv/ClearError` (service): request → `Ros2Dobot_msgs_v4SrvClearError_Request`, response → `Ros2Dobot_msgs_v4SrvClearError_Response`
- `dobot_msgs_v4/srv/Continue` (service): request → `Ros2Dobot_msgs_v4SrvContinue_Request`, response → `Ros2Dobot_msgs_v4SrvContinue_Response`
- `dobot_msgs_v4/srv/DI` (service): request → `Ros2Dobot_msgs_v4SrvDI_Request`, response → `Ros2Dobot_msgs_v4SrvDI_Response`
- `dobot_msgs_v4/srv/DIGroup` (service): request → `Ros2Dobot_msgs_v4SrvDIGroup_Request`, response → `Ros2Dobot_msgs_v4SrvDIGroup_Response`
- `dobot_msgs_v4/srv/DIGroupDEC` (service): request → `Ros2Dobot_msgs_v4SrvDIGroupDEC_Request`, response → `Ros2Dobot_msgs_v4SrvDIGroupDEC_Response`
- `dobot_msgs_v4/srv/DO` (service): request → `Ros2Dobot_msgs_v4SrvDO_Request`, response → `Ros2Dobot_msgs_v4SrvDO_Response`
- `dobot_msgs_v4/srv/DOGroup` (service): request → `Ros2Dobot_msgs_v4SrvDOGroup_Request`, response → `Ros2Dobot_msgs_v4SrvDOGroup_Response`
- `dobot_msgs_v4/srv/DOGroupDEC` (service): request → `Ros2Dobot_msgs_v4SrvDOGroupDEC_Request`, response → `Ros2Dobot_msgs_v4SrvDOGroupDEC_Response`
- `dobot_msgs_v4/srv/DOInstant` (service): request → `Ros2Dobot_msgs_v4SrvDOInstant_Request`, response → `Ros2Dobot_msgs_v4SrvDOInstant_Response`
- `dobot_msgs_v4/srv/DisableRobot` (service): request → `Ros2Dobot_msgs_v4SrvDisableRobot_Request`, response → `Ros2Dobot_msgs_v4SrvDisableRobot_Response`
- `dobot_msgs_v4/srv/DragSensivity` (service): request → `Ros2Dobot_msgs_v4SrvDragSensivity_Request`, response → `Ros2Dobot_msgs_v4SrvDragSensivity_Response`
- `dobot_msgs_v4/srv/EmergencyStop` (service): request → `Ros2Dobot_msgs_v4SrvEmergencyStop_Request`, response → `Ros2Dobot_msgs_v4SrvEmergencyStop_Response`
- `dobot_msgs_v4/srv/EnableFTSensor` (service): request → `Ros2Dobot_msgs_v4SrvEnableFTSensor_Request`, response → `Ros2Dobot_msgs_v4SrvEnableFTSensor_Response`
- `dobot_msgs_v4/srv/EnableRobot` (service): request → `Ros2Dobot_msgs_v4SrvEnableRobot_Request`, response → `Ros2Dobot_msgs_v4SrvEnableRobot_Response`
- `dobot_msgs_v4/srv/EnableSafeSkin` (service): request → `Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request`, response → `Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response`
- `dobot_msgs_v4/srv/EndRTOffset` (service): request → `Ros2Dobot_msgs_v4SrvEndRTOffset_Request`, response → `Ros2Dobot_msgs_v4SrvEndRTOffset_Response`
- `dobot_msgs_v4/srv/FCCollisionSwitch` (service): request → `Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request`, response → `Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response`
- `dobot_msgs_v4/srv/FCForceMode` (service): request → `Ros2Dobot_msgs_v4SrvFCForceMode_Request`, response → `Ros2Dobot_msgs_v4SrvFCForceMode_Response`
- `dobot_msgs_v4/srv/FCOff` (service): request → `Ros2Dobot_msgs_v4SrvFCOff_Request`, response → `Ros2Dobot_msgs_v4SrvFCOff_Response`
- `dobot_msgs_v4/srv/FCSetDamping` (service): request → `Ros2Dobot_msgs_v4SrvFCSetDamping_Request`, response → `Ros2Dobot_msgs_v4SrvFCSetDamping_Response`
- `dobot_msgs_v4/srv/FCSetDeviation` (service): request → `Ros2Dobot_msgs_v4SrvFCSetDeviation_Request`, response → `Ros2Dobot_msgs_v4SrvFCSetDeviation_Response`
- `dobot_msgs_v4/srv/FCSetForce` (service): request → `Ros2Dobot_msgs_v4SrvFCSetForce_Request`, response → `Ros2Dobot_msgs_v4SrvFCSetForce_Response`
- `dobot_msgs_v4/srv/FCSetForceLimit` (service): request → `Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request`, response → `Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response`
- `dobot_msgs_v4/srv/FCSetForceSpeedLimit` (service): request → `Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request`, response → `Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response`
- `dobot_msgs_v4/srv/FCSetMass` (service): request → `Ros2Dobot_msgs_v4SrvFCSetMass_Request`, response → `Ros2Dobot_msgs_v4SrvFCSetMass_Response`
- `dobot_msgs_v4/srv/FCSetStiffness` (service): request → `Ros2Dobot_msgs_v4SrvFCSetStiffness_Request`, response → `Ros2Dobot_msgs_v4SrvFCSetStiffness_Response`
- `dobot_msgs_v4/srv/ForceDriveMode` (service): request → `Ros2Dobot_msgs_v4SrvForceDriveMode_Request`, response → `Ros2Dobot_msgs_v4SrvForceDriveMode_Response`
- `dobot_msgs_v4/srv/ForceDriveSpeed` (service): request → `Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request`, response → `Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response`
- `dobot_msgs_v4/srv/GetAO` (service): request → `Ros2Dobot_msgs_v4SrvGetAO_Request`, response → `Ros2Dobot_msgs_v4SrvGetAO_Response`
- `dobot_msgs_v4/srv/GetAngle` (service): request → `Ros2Dobot_msgs_v4SrvGetAngle_Request`, response → `Ros2Dobot_msgs_v4SrvGetAngle_Response`
- `dobot_msgs_v4/srv/GetCoils` (service): request → `Ros2Dobot_msgs_v4SrvGetCoils_Request`, response → `Ros2Dobot_msgs_v4SrvGetCoils_Response`
- `dobot_msgs_v4/srv/GetCurrentCommandId` (service): request → `Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request`, response → `Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response`
- `dobot_msgs_v4/srv/GetDO` (service): request → `Ros2Dobot_msgs_v4SrvGetDO_Request`, response → `Ros2Dobot_msgs_v4SrvGetDO_Response`
- `dobot_msgs_v4/srv/GetDOGroup` (service): request → `Ros2Dobot_msgs_v4SrvGetDOGroup_Request`, response → `Ros2Dobot_msgs_v4SrvGetDOGroup_Response`
- `dobot_msgs_v4/srv/GetDOGroupDEC` (service): request → `Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request`, response → `Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response`
- `dobot_msgs_v4/srv/GetError` (service): request → `Ros2Dobot_msgs_v4SrvGetError_Request`, response → `Ros2Dobot_msgs_v4SrvGetError_Response`
- `dobot_msgs_v4/srv/GetErrorID` (service): request → `Ros2Dobot_msgs_v4SrvGetErrorID_Request`, response → `Ros2Dobot_msgs_v4SrvGetErrorID_Response`
- `dobot_msgs_v4/srv/GetForce` (service): request → `Ros2Dobot_msgs_v4SrvGetForce_Request`, response → `Ros2Dobot_msgs_v4SrvGetForce_Response`
- `dobot_msgs_v4/srv/GetHoldRegs` (service): request → `Ros2Dobot_msgs_v4SrvGetHoldRegs_Request`, response → `Ros2Dobot_msgs_v4SrvGetHoldRegs_Response`
- `dobot_msgs_v4/srv/GetInBits` (service): request → `Ros2Dobot_msgs_v4SrvGetInBits_Request`, response → `Ros2Dobot_msgs_v4SrvGetInBits_Response`
- `dobot_msgs_v4/srv/GetInRegs` (service): request → `Ros2Dobot_msgs_v4SrvGetInRegs_Request`, response → `Ros2Dobot_msgs_v4SrvGetInRegs_Response`
- `dobot_msgs_v4/srv/GetInputBool` (service): request → `Ros2Dobot_msgs_v4SrvGetInputBool_Request`, response → `Ros2Dobot_msgs_v4SrvGetInputBool_Response`
- `dobot_msgs_v4/srv/GetInputFloat` (service): request → `Ros2Dobot_msgs_v4SrvGetInputFloat_Request`, response → `Ros2Dobot_msgs_v4SrvGetInputFloat_Response`
- `dobot_msgs_v4/srv/GetInputInt` (service): request → `Ros2Dobot_msgs_v4SrvGetInputInt_Request`, response → `Ros2Dobot_msgs_v4SrvGetInputInt_Response`
- `dobot_msgs_v4/srv/GetOutputBool` (service): request → `Ros2Dobot_msgs_v4SrvGetOutputBool_Request`, response → `Ros2Dobot_msgs_v4SrvGetOutputBool_Response`
- `dobot_msgs_v4/srv/GetOutputFloat` (service): request → `Ros2Dobot_msgs_v4SrvGetOutputFloat_Request`, response → `Ros2Dobot_msgs_v4SrvGetOutputFloat_Response`
- `dobot_msgs_v4/srv/GetOutputInt` (service): request → `Ros2Dobot_msgs_v4SrvGetOutputInt_Request`, response → `Ros2Dobot_msgs_v4SrvGetOutputInt_Response`
- `dobot_msgs_v4/srv/GetPose` (service): request → `Ros2Dobot_msgs_v4SrvGetPose_Request`, response → `Ros2Dobot_msgs_v4SrvGetPose_Response`
- `dobot_msgs_v4/srv/GetStartPose` (service): request → `Ros2Dobot_msgs_v4SrvGetStartPose_Request`, response → `Ros2Dobot_msgs_v4SrvGetStartPose_Response`
- `dobot_msgs_v4/srv/GetToolDO` (service): request → `Ros2Dobot_msgs_v4SrvGetToolDO_Request`, response → `Ros2Dobot_msgs_v4SrvGetToolDO_Response`
- `dobot_msgs_v4/srv/InverseKin` (service): request → `Ros2Dobot_msgs_v4SrvInverseKin_Request`, response → `Ros2Dobot_msgs_v4SrvInverseKin_Response`
- `dobot_msgs_v4/srv/InverseSolution` (service): request → `Ros2Dobot_msgs_v4SrvInverseSolution_Request`, response → `Ros2Dobot_msgs_v4SrvInverseSolution_Response`
- `dobot_msgs_v4/srv/ModbusClose` (service): request → `Ros2Dobot_msgs_v4SrvModbusClose_Request`, response → `Ros2Dobot_msgs_v4SrvModbusClose_Response`
- `dobot_msgs_v4/srv/ModbusCreate` (service): request → `Ros2Dobot_msgs_v4SrvModbusCreate_Request`, response → `Ros2Dobot_msgs_v4SrvModbusCreate_Response`
- `dobot_msgs_v4/srv/ModbusRTUCreate` (service): request → `Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request`, response → `Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response`
- `dobot_msgs_v4/srv/MovJ` (service): request → `Ros2Dobot_msgs_v4SrvMovJ_Request`, response → `Ros2Dobot_msgs_v4SrvMovJ_Response`
- `dobot_msgs_v4/srv/MovJIO` (service): request → `Ros2Dobot_msgs_v4SrvMovJIO_Request`, response → `Ros2Dobot_msgs_v4SrvMovJIO_Response`
- `dobot_msgs_v4/srv/MovL` (service): request → `Ros2Dobot_msgs_v4SrvMovL_Request`, response → `Ros2Dobot_msgs_v4SrvMovL_Response`
- `dobot_msgs_v4/srv/MovLIO` (service): request → `Ros2Dobot_msgs_v4SrvMovLIO_Request`, response → `Ros2Dobot_msgs_v4SrvMovLIO_Response`
- `dobot_msgs_v4/srv/MoveJog` (service): request → `Ros2Dobot_msgs_v4SrvMoveJog_Request`, response → `Ros2Dobot_msgs_v4SrvMoveJog_Response`
- `dobot_msgs_v4/srv/Pause` (service): request → `Ros2Dobot_msgs_v4SrvPause_Request`, response → `Ros2Dobot_msgs_v4SrvPause_Response`
- `dobot_msgs_v4/srv/PositiveKin` (service): request → `Ros2Dobot_msgs_v4SrvPositiveKin_Request`, response → `Ros2Dobot_msgs_v4SrvPositiveKin_Response`
- `dobot_msgs_v4/srv/PowerOn` (service): request → `Ros2Dobot_msgs_v4SrvPowerOn_Request`, response → `Ros2Dobot_msgs_v4SrvPowerOn_Response`
- `dobot_msgs_v4/srv/RelJointMovJ` (service): request → `Ros2Dobot_msgs_v4SrvRelJointMovJ_Request`, response → `Ros2Dobot_msgs_v4SrvRelJointMovJ_Response`
- `dobot_msgs_v4/srv/RelMovJTool` (service): request → `Ros2Dobot_msgs_v4SrvRelMovJTool_Request`, response → `Ros2Dobot_msgs_v4SrvRelMovJTool_Response`
- `dobot_msgs_v4/srv/RelMovJUser` (service): request → `Ros2Dobot_msgs_v4SrvRelMovJUser_Request`, response → `Ros2Dobot_msgs_v4SrvRelMovJUser_Response`
- `dobot_msgs_v4/srv/RelMovLTool` (service): request → `Ros2Dobot_msgs_v4SrvRelMovLTool_Request`, response → `Ros2Dobot_msgs_v4SrvRelMovLTool_Response`
- `dobot_msgs_v4/srv/RelMovLUser` (service): request → `Ros2Dobot_msgs_v4SrvRelMovLUser_Request`, response → `Ros2Dobot_msgs_v4SrvRelMovLUser_Response`
- `dobot_msgs_v4/srv/RequestControl` (service): request → `Ros2Dobot_msgs_v4SrvRequestControl_Request`, response → `Ros2Dobot_msgs_v4SrvRequestControl_Response`
- `dobot_msgs_v4/srv/ResetRobot` (service): request → `Ros2Dobot_msgs_v4SrvResetRobot_Request`, response → `Ros2Dobot_msgs_v4SrvResetRobot_Response`
- `dobot_msgs_v4/srv/RobotMode` (service): request → `Ros2Dobot_msgs_v4SrvRobotMode_Request`, response → `Ros2Dobot_msgs_v4SrvRobotMode_Response`
- `dobot_msgs_v4/srv/RunScript` (service): request → `Ros2Dobot_msgs_v4SrvRunScript_Request`, response → `Ros2Dobot_msgs_v4SrvRunScript_Response`
- `dobot_msgs_v4/srv/RunTo` (service): request → `Ros2Dobot_msgs_v4SrvRunTo_Request`, response → `Ros2Dobot_msgs_v4SrvRunTo_Response`
- `dobot_msgs_v4/srv/ServoJ` (service): request → `Ros2Dobot_msgs_v4SrvServoJ_Request`, response → `Ros2Dobot_msgs_v4SrvServoJ_Response`
- `dobot_msgs_v4/srv/ServoP` (service): request → `Ros2Dobot_msgs_v4SrvServoP_Request`, response → `Ros2Dobot_msgs_v4SrvServoP_Response`
- `dobot_msgs_v4/srv/SetBackDistance` (service): request → `Ros2Dobot_msgs_v4SrvSetBackDistance_Request`, response → `Ros2Dobot_msgs_v4SrvSetBackDistance_Response`
- `dobot_msgs_v4/srv/SetCoils` (service): request → `Ros2Dobot_msgs_v4SrvSetCoils_Request`, response → `Ros2Dobot_msgs_v4SrvSetCoils_Response`
- `dobot_msgs_v4/srv/SetCollisionLevel` (service): request → `Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request`, response → `Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response`
- `dobot_msgs_v4/srv/SetFCCollision` (service): request → `Ros2Dobot_msgs_v4SrvSetFCCollision_Request`, response → `Ros2Dobot_msgs_v4SrvSetFCCollision_Response`
- `dobot_msgs_v4/srv/SetHoldRegs` (service): request → `Ros2Dobot_msgs_v4SrvSetHoldRegs_Request`, response → `Ros2Dobot_msgs_v4SrvSetHoldRegs_Response`
- `dobot_msgs_v4/srv/SetOutputBool` (service): request → `Ros2Dobot_msgs_v4SrvSetOutputBool_Request`, response → `Ros2Dobot_msgs_v4SrvSetOutputBool_Response`
- `dobot_msgs_v4/srv/SetOutputFloat` (service): request → `Ros2Dobot_msgs_v4SrvSetOutputFloat_Request`, response → `Ros2Dobot_msgs_v4SrvSetOutputFloat_Response`
- `dobot_msgs_v4/srv/SetOutputInt` (service): request → `Ros2Dobot_msgs_v4SrvSetOutputInt_Request`, response → `Ros2Dobot_msgs_v4SrvSetOutputInt_Response`
- `dobot_msgs_v4/srv/SetPayload` (service): request → `Ros2Dobot_msgs_v4SrvSetPayload_Request`, response → `Ros2Dobot_msgs_v4SrvSetPayload_Response`
- `dobot_msgs_v4/srv/SetPostCollisionMode` (service): request → `Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request`, response → `Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response`
- `dobot_msgs_v4/srv/SetSafeSkin` (service): request → `Ros2Dobot_msgs_v4SrvSetSafeSkin_Request`, response → `Ros2Dobot_msgs_v4SrvSetSafeSkin_Response`
- `dobot_msgs_v4/srv/SetSafeWallEnable` (service): request → `Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request`, response → `Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response`
- `dobot_msgs_v4/srv/SetTool` (service): request → `Ros2Dobot_msgs_v4SrvSetTool_Request`, response → `Ros2Dobot_msgs_v4SrvSetTool_Response`
- `dobot_msgs_v4/srv/SetTool485` (service): request → `Ros2Dobot_msgs_v4SrvSetTool485_Request`, response → `Ros2Dobot_msgs_v4SrvSetTool485_Response`
- `dobot_msgs_v4/srv/SetToolMode` (service): request → `Ros2Dobot_msgs_v4SrvSetToolMode_Request`, response → `Ros2Dobot_msgs_v4SrvSetToolMode_Response`
- `dobot_msgs_v4/srv/SetToolPower` (service): request → `Ros2Dobot_msgs_v4SrvSetToolPower_Request`, response → `Ros2Dobot_msgs_v4SrvSetToolPower_Response`
- `dobot_msgs_v4/srv/SetUser` (service): request → `Ros2Dobot_msgs_v4SrvSetUser_Request`, response → `Ros2Dobot_msgs_v4SrvSetUser_Response`
- `dobot_msgs_v4/srv/SetWorkZoneEnable` (service): request → `Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request`, response → `Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response`
- `dobot_msgs_v4/srv/SixForceHome` (service): request → `Ros2Dobot_msgs_v4SrvSixForceHome_Request`, response → `Ros2Dobot_msgs_v4SrvSixForceHome_Response`
- `dobot_msgs_v4/srv/SpeedFactor` (service): request → `Ros2Dobot_msgs_v4SrvSpeedFactor_Request`, response → `Ros2Dobot_msgs_v4SrvSpeedFactor_Response`
- `dobot_msgs_v4/srv/StartDrag` (service): request → `Ros2Dobot_msgs_v4SrvStartDrag_Request`, response → `Ros2Dobot_msgs_v4SrvStartDrag_Response`
- `dobot_msgs_v4/srv/StartPath` (service): request → `Ros2Dobot_msgs_v4SrvStartPath_Request`, response → `Ros2Dobot_msgs_v4SrvStartPath_Response`
- `dobot_msgs_v4/srv/StartRTOffset` (service): request → `Ros2Dobot_msgs_v4SrvStartRTOffset_Request`, response → `Ros2Dobot_msgs_v4SrvStartRTOffset_Response`
- `dobot_msgs_v4/srv/Stop` (service): request → `Ros2Dobot_msgs_v4SrvStop_Request`, response → `Ros2Dobot_msgs_v4SrvStop_Response`
- `dobot_msgs_v4/srv/StopDrag` (service): request → `Ros2Dobot_msgs_v4SrvStopDrag_Request`, response → `Ros2Dobot_msgs_v4SrvStopDrag_Response`
- `dobot_msgs_v4/srv/StopMoveJog` (service): request → `Ros2Dobot_msgs_v4SrvStopMoveJog_Request`, response → `Ros2Dobot_msgs_v4SrvStopMoveJog_Response`
- `dobot_msgs_v4/srv/TcpDashboard` (service): request → `Ros2Dobot_msgs_v4SrvTcpDashboard_Request`, response → `Ros2Dobot_msgs_v4SrvTcpDashboard_Response`
- `dobot_msgs_v4/srv/Tool` (service): request → `Ros2Dobot_msgs_v4SrvTool_Request`, response → `Ros2Dobot_msgs_v4SrvTool_Response`
- `dobot_msgs_v4/srv/ToolAI` (service): request → `Ros2Dobot_msgs_v4SrvToolAI_Request`, response → `Ros2Dobot_msgs_v4SrvToolAI_Response`
- `dobot_msgs_v4/srv/ToolDI` (service): request → `Ros2Dobot_msgs_v4SrvToolDI_Request`, response → `Ros2Dobot_msgs_v4SrvToolDI_Response`
- `dobot_msgs_v4/srv/ToolDO` (service): request → `Ros2Dobot_msgs_v4SrvToolDO_Request`, response → `Ros2Dobot_msgs_v4SrvToolDO_Response`
- `dobot_msgs_v4/srv/ToolDOInstant` (service): request → `Ros2Dobot_msgs_v4SrvToolDOInstant_Request`, response → `Ros2Dobot_msgs_v4SrvToolDOInstant_Response`
- `dobot_msgs_v4/srv/User` (service): request → `Ros2Dobot_msgs_v4SrvUser_Request`, response → `Ros2Dobot_msgs_v4SrvUser_Response`
- `dobot_msgs_v4/srv/VelJ` (service): request → `Ros2Dobot_msgs_v4SrvVelJ_Request`, response → `Ros2Dobot_msgs_v4SrvVelJ_Response`
- `dobot_msgs_v4/srv/VelL` (service): request → `Ros2Dobot_msgs_v4SrvVelL_Request`, response → `Ros2Dobot_msgs_v4SrvVelL_Response`

Immutable upstream sources:

- [https://github.com/Dobot-Arm/DOBOT_6Axis_ROS2_V4 @ ec201c40d5db63185a3593ec9c39f80fe25aa527](https://github.com/https://github.com/Dobot-Arm/DOBOT_6Axis_ROS2_V4/tree/ec201c40d5db63185a3593ec9c39f80fe25aa527)
