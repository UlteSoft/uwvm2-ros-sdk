# realman: Complete source API index

Every original field and service/action component is retained below. Native identities require independent binding.

## ros1_develop

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `geometry_msgs/Point` | `Ros1Geometry_msgsPoint` | 24..24 | x: float64; y: float64; z: float64 |
| `geometry_msgs/Quaternion` | `Ros1Geometry_msgsQuaternion` | 32..32 | x: float64; y: float64; z: float64; w: float64 |
| `geometry_msgs/Pose` | `Ros1Geometry_msgsPose` | 56..56 | position: geometry_msgs/Point; orientation: geometry_msgs/Quaternion |
| `rm_msgs/ArmState` | `Ros1Rm_msgsArmState` | 65..161 | joint: float32 sequence<=16; Pose: geometry_msgs/Pose; err: uint16 sequence<=16; dof: uint8 |
| `rm_msgs/Arm_Analog_Output` | `Ros1Rm_msgsArm_Analog_Output` | 5..5 | num: uint8; voltage: float32 |
| `rm_msgs/Arm_Current_State` | `Ros1Rm_msgsArm_Current_State` | 33..129 | joint: float32 sequence<=16; Pose: float32[6]; err: uint16 sequence<=16; dof: uint8 |
| `rm_msgs/Arm_Current_Status` | `Ros1Rm_msgsArm_Current_Status` | 4..260 | arm_current_status: string text<=256B |
| `rm_msgs/Arm_Digital_Output` | `Ros1Rm_msgsArm_Digital_Output` | 2..2 | num: uint8; state: bool |
| `rm_msgs/Arm_IO_State` | `Ros1Rm_msgsArm_IO_State` | 4..4 | Arm_Digital_Input: int8[4] |
| `time` | `Ros1Time` | 8..8 | sec: uint32; nsec: uint32 |
| `std_msgs/Header` | `Ros1Std_msgsHeader` | 16..272 | seq: uint32; stamp: time; frame_id: string text<=256B |
| `rm_msgs/Arm_Joint_Speed_Max` | `Ros1Rm_msgsArm_Joint_Speed_Max` | 24..4568 | header: std_msgs/Header; name: string sequence<=16 text<=256B; max_velocity: float64 sequence<=16 |
| `rm_msgs/Softwarebuildinfo` | `Ros1Rm_msgsSoftwarebuildinfo` | 8..520 | build_time: string text<=256B; version: string text<=256B |
| `rm_msgs/Arm_Softversion_v3` | `Ros1Rm_msgsArm_Softversion_v3` | 28..1820 | product_version: string text<=256B; algorithm_info: string text<=256B; ctrl_info: rm_msgs/Softwarebuildinfo; dynamic_info: string text<=256B; plan_info: rm_msgs/Softwarebuildinfo |
| `rm_msgs/Arm_Softversion_v4` | `Ros1Rm_msgsArm_Softversion_v4` | 36..2340 | product_version: string text<=256B; controller_version: string text<=256B; algorithm_info: string text<=256B; ctrl_info: rm_msgs/Softwarebuildinfo; com_info: rm_msgs/Softwarebuildinfo; program_info: rm_msgs/Softwarebuildinfo |
| `rm_msgs/Arm_Software_Version` | `Ros1Rm_msgsArm_Software_Version` | 48..3120 | product_version: string text<=256B; algorithm_info: string text<=256B; ctrl_info: rm_msgs/Softwarebuildinfo; dynamic_info: string text<=256B; plan_info: rm_msgs/Softwarebuildinfo; controller_version: string text<=256B; com_info: rm_msgs/Softwarebuildinfo; program_info: rm_msgs/Softwarebuildinfo |
| `rm_msgs/Cabinet` | `Ros1Rm_msgsCabinet` | 78..334 | header: std_msgs/Header; pose: geometry_msgs/Pose; label: int16; angle: float32 |
| `rm_msgs/CartePos` | `Ros1Rm_msgsCartePos` | 56..56 | Pose: geometry_msgs/Pose |
| `rm_msgs/CartePosCustom` | `Ros1Rm_msgsCartePosCustom` | 59..59 | Pose: geometry_msgs/Pose; follow: bool; trajectory_mode: uint8; radio: uint8 |
| `rm_msgs/ChangeTool_Name` | `Ros1Rm_msgsChangeTool_Name` | 4..260 | toolname: string text<=256B |
| `rm_msgs/ChangeTool_State` | `Ros1Rm_msgsChangeTool_State` | 1..1 | state: bool |
| `rm_msgs/ChangeWorkFrame_Name` | `Ros1Rm_msgsChangeWorkFrame_Name` | 4..260 | WorkFrame_name: string text<=256B |
| `rm_msgs/ChangeWorkFrame_State` | `Ros1Rm_msgsChangeWorkFrame_State` | 1..1 | state: bool |
| `rm_msgs/Err` | `Ros1Rm_msgsErr` | 4..36 | err: uint16 sequence<=16 |
| `rm_msgs/Flowchartrunstate` | `Ros1Rm_msgsFlowchartrunstate` | 12..524 | run_state: uint8; id: uint8; name: string text<=256B; plan_speed: uint8; step_mode: uint8; modal_id: string text<=256B |
| `rm_msgs/Force_Position_Move_Joint` | `Ros1Rm_msgsForce_Position_Move_Joint` | 10..74 | joint: float32 sequence<=16; sensor: uint8; mode: uint8; dir: uint8; force: int16; dof: uint8 |
| `rm_msgs/Force_Position_Move_Pose` | `Ros1Rm_msgsForce_Position_Move_Pose` | 61..61 | Pose: geometry_msgs/Pose; sensor: uint8; mode: uint8; dir: uint8; force: int16 |
| `rm_msgs/Force_Position_Move_Pose_Custom` | `Ros1Rm_msgsForce_Position_Move_Pose_Custom` | 64..64 | Pose: geometry_msgs/Pose; sensor: uint8; mode: uint8; dir: uint8; force: int16; follow: bool; trajectory_mode: uint8; radio: uint8 |
| `rm_msgs/Force_Position_State` | `Ros1Rm_msgsForce_Position_State` | 11..75 | joint: float32 sequence<=16; force: float32; arm_err: uint16; dof: uint8 |
| `rm_msgs/GetArmState_Command` | `Ros1Rm_msgsGetArmState_Command` | 4..260 | command: string text<=256B |
| `rm_msgs/Get_TCP_Master_List_Param` | `Ros1Rm_msgsGet_TCP_Master_List_Param` | 12..268 | page_num: int32; page_size: int32; vague_search: string text<=256B |
| `rm_msgs/Gettrajectorylist` | `Ros1Rm_msgsGettrajectorylist` | 12..268 | page_num: int32; page_size: int32; vague_search: string text<=256B |
| `rm_msgs/Gripper_Pick` | `Ros1Rm_msgsGripper_Pick` | 4..4 | speed: uint16; force: uint16 |
| `rm_msgs/Gripper_Set` | `Ros1Rm_msgsGripper_Set` | 2..2 | position: uint16 |
| `rm_msgs/Hand_Angle` | `Ros1Rm_msgsHand_Angle` | 13..13 | hand_angle: int16[6]; block: bool |
| `rm_msgs/Hand_Force` | `Ros1Rm_msgsHand_Force` | 2..2 | hand_force: uint16 |
| `rm_msgs/Hand_Posture` | `Ros1Rm_msgsHand_Posture` | 3..3 | posture_num: uint16; block: bool |
| `rm_msgs/Hand_Seq` | `Ros1Rm_msgsHand_Seq` | 3..3 | seq_num: uint16; block: bool |
| `rm_msgs/Hand_Speed` | `Ros1Rm_msgsHand_Speed` | 2..2 | hand_speed: uint16 |
| `rm_msgs/Hand_Status` | `Ros1Rm_msgsHand_Status` | 50..50 | hand_angle: uint16[6]; hand_pos: uint16[6]; hand_state: uint16[6]; hand_force: uint16[6]; hand_err: uint16 |
| `rm_msgs/IO_Update` | `Ros1Rm_msgsIO_Update` | 1..1 | type: uint8 |
| `rm_msgs/JointPos` | `Ros1Rm_msgsJointPos` | 8..72 | joint: float32 sequence<=16; expand: float32 |
| `rm_msgs/JointPosCustom` | `Ros1Rm_msgsJointPosCustom` | 11..75 | joint: float32 sequence<=16; expand: float32; follow: bool; trajectory_mode: uint8; radio: uint8 |
| `rm_msgs/Joint_Current` | `Ros1Rm_msgsJoint_Current` | 4..68 | joint_current: float32 sequence<=16 |
| `rm_msgs/Joint_En_Flag` | `Ros1Rm_msgsJoint_En_Flag` | 4..20 | joint_en_flag: bool sequence<=16 |
| `rm_msgs/Joint_Enable` | `Ros1Rm_msgsJoint_Enable` | 2..2 | joint_num: uint8; state: bool |
| `rm_msgs/Joint_Error_Code` | `Ros1Rm_msgsJoint_Error_Code` | 4..36 | joint_error: uint16 sequence<=16 |
| `rm_msgs/Joint_Max_Speed` | `Ros1Rm_msgsJoint_Max_Speed` | 5..5 | joint_num: uint8; joint_max_speed: float32 |
| `rm_msgs/Joint_PoseEuler` | `Ros1Rm_msgsJoint_PoseEuler` | 24..24 | euler: float32[3]; position: float32[3] |
| `rm_msgs/Joint_Speed` | `Ros1Rm_msgsJoint_Speed` | 4..68 | joint_speed: float32 sequence<=16 |
| `rm_msgs/Joint_Step` | `Ros1Rm_msgsJoint_Step` | 9..9 | joint_num: uint8; step_angle: float32; speed: float32 |
| `rm_msgs/Joint_Teach` | `Ros1Rm_msgsJoint_Teach` | 8..264 | teach_joint: int16; direction: string text<=256B; v: int16 |
| `rm_msgs/Joint_Temperature` | `Ros1Rm_msgsJoint_Temperature` | 4..68 | joint_temperature: float32 sequence<=16 |
| `rm_msgs/Joint_Voltage` | `Ros1Rm_msgsJoint_Voltage` | 4..68 | joint_voltage: float32 sequence<=16 |
| `rm_msgs/Jointversion` | `Ros1Rm_msgsJointversion` | 28..1820 | joint_version: string[7] text<=256B |
| `rm_msgs/LiftState` | `Ros1Rm_msgsLiftState` | 7..7 | height: int16; current: int16; err_flag: uint16; mode: int8 |
| `rm_msgs/Lift_Height` | `Ros1Rm_msgsLift_Height` | 4..4 | height: uint16; speed: uint16 |
| `rm_msgs/Lift_In_Position` | `Ros1Rm_msgsLift_In_Position` | 7..263 | device: uint8; state: string text<=256B; trajectory_connect: uint8; trajectory_state: bool |
| `rm_msgs/Lift_Speed` | `Ros1Rm_msgsLift_Speed` | 2..2 | speed: int16 |
| `rm_msgs/Manual_Set_Force_Pose` | `Ros1Rm_msgsManual_Set_Force_Pose` | 8..392 | pose: string text<=256B; joint: int64 sequence<=16 |
| `rm_msgs/Mastername` | `Ros1Rm_msgsMastername` | 4..260 | master_name: string text<=256B |
| `rm_msgs/Modbusreaddata` | `Ros1Rm_msgsModbusreaddata` | 4..68 | read_data: int32 sequence<=16 |
| `rm_msgs/Modbustcpmasterinfo` | `Ros1Rm_msgsModbustcpmasterinfo` | 12..524 | master_name: string text<=256B; ip: string text<=256B; port: int32 |
| `rm_msgs/Modbustcpmasterlist` | `Ros1Rm_msgsModbustcpmasterlist` | 4..8388 | master_list: rm_msgs/Modbustcpmasterinfo sequence<=16 |
| `rm_msgs/MoveC` | `Ros1Rm_msgsMoveC` | 119..119 | Mid_Pose: geometry_msgs/Pose; End_Pose: geometry_msgs/Pose; speed: float32; loop: uint16; trajectory_connect: uint8 |
| `rm_msgs/MoveJ` | `Ros1Rm_msgsMoveJ` | 9..73 | joint: float32 sequence<=16; speed: float32; trajectory_connect: uint8 |
| `rm_msgs/MoveJ_P` | `Ros1Rm_msgsMoveJ_P` | 61..61 | Pose: geometry_msgs/Pose; speed: float32; trajectory_connect: uint8 |
| `rm_msgs/MoveL` | `Ros1Rm_msgsMoveL` | 61..61 | Pose: geometry_msgs/Pose; speed: float32; trajectory_connect: uint8 |
| `rm_msgs/Moveloffset` | `Ros1Rm_msgsMoveloffset` | 67..67 | offset: geometry_msgs/Pose; speed: int32; r: int32; trajectory_connect: bool; frame_type: bool; block: bool |
| `rm_msgs/Ort_Teach` | `Ros1Rm_msgsOrt_Teach` | 10..522 | teach_type: string text<=256B; direction: string text<=256B; v: int16 |
| `rm_msgs/Plan_State` | `Ros1Rm_msgsPlan_State` | 1..1 | state: bool |
| `rm_msgs/Pos_Teach` | `Ros1Rm_msgsPos_Teach` | 10..522 | teach_type: string text<=256B; direction: string text<=256B; v: int16 |
| `rm_msgs/Programrunstate` | `Ros1Rm_msgsProgramrunstate` | 36..164 | run_state: int32; id: int32; edit_id: int32; plan_num: int32; total_loop: int32; step_mode: int32; plan_speed: int32; loop_num: int32 sequence<=16; loop_cont: int32 sequence<=16 |
| `rm_msgs/RS485_Mode` | `Ros1Rm_msgsRS485_Mode` | 10..10 | controller_RS485_mode: uint8; tool_RS485_mode: uint8; baudrate: uint32; modbus_timeout: uint32 |
| `rm_msgs/RS485params` | `Ros1Rm_msgsRS485params` | 8..8 | mode: int32; baudrate: int32 |
| `rm_msgs/Read_ModbusRTU` | `Ros1Rm_msgsRead_ModbusRTU` | 16..16 | address: int32; device: int32; num: int32; type: int32 |
| `rm_msgs/Read_Register` | `Ros1Rm_msgsRead_Register` | 13..13 | port: uint8; address: uint32; num: uint32; device: uint32 |
| `rm_msgs/Read_TCPandRTU` | `Ros1Rm_msgsRead_TCPandRTU` | 28..540 | address: int32; num: int32; ip: string text<=256B; port: int32; master_name: string text<=256B; device: int32; type: int32 |
| `rm_msgs/Register_Data` | `Ros1Rm_msgsRegister_Data` | 5..37 | state: bool; data: uint16 sequence<=16 |
| `rm_msgs/Rm_Plus_Base` | `Ros1Rm_msgsRm_Plus_Base` | 61..1597 | manu: string text<=256B; type: int8; hv: string text<=256B; sv: string text<=256B; bv: string text<=256B; id: int32; dof: int8; check: int8; bee: int8; force: bool; touch: bool; touch_num: int8; touch_sw: int8; hand: int8; pos_up: int32 sequence<=16; pos_low: int32 sequence<=16; angle_up: int32 sequence<=16; angle_low: int32 sequence<=16; speed_up: int32 sequence<=16; speed_low: int32 sequence<=16; force_up: int32 sequence<=16; force_low: int32 sequence<=16 |
| `rm_msgs/Rm_Plus_State` | `Ros1Rm_msgsRm_Plus_State` | 60..892 | sys_state: int32; sys_err: int32; dof_state: int32 sequence<=16; dof_err: int32 sequence<=16; pos: int32 sequence<=16; speed: int32 sequence<=16; angle: int32 sequence<=16; current: int32 sequence<=16; normal_force: int32 sequence<=16; tangential_force: int32 sequence<=16; tangential_force_dir: int32 sequence<=16; tsa: uint32 sequence<=16; tma: uint32 sequence<=16; touch_data: int32 sequence<=16; force: int32 sequence<=16 |
| `rm_msgs/Servo_GetAngle` | `Ros1Rm_msgsServo_GetAngle` | 2..2 | servo_id: uint16 |
| `rm_msgs/Servo_Move` | `Ros1Rm_msgsServo_Move` | 4..4 | servo_id: uint16; angle: uint16 |
| `rm_msgs/Set_Force_Position` | `Ros1Rm_msgsSet_Force_Position` | 5..5 | sensor: uint8; mode: uint8; direction: uint8; N: int16 |
| `rm_msgs/Set_Modbus_Mode` | `Ros1Rm_msgsSet_Modbus_Mode` | 16..272 | port: uint32; baudrate: uint32; timeout: uint32; ip: string text<=256B |
| `rm_msgs/Set_Realtime_Push` | `Ros1Rm_msgsSet_Realtime_Push` | 20..276 | cycle: uint16; port: uint16; force_coordinate: uint16; ip: string text<=256B; aloha_state_enable: bool; arm_current_status_enable: bool; expand_state_enable: bool; hand_enable: bool; joint_acc_enable: bool; joint_speed_enable: bool; lift_state_enable: bool; tail_end_enable: bool; rm_plus_base_enable: bool; rm_plus_state_enable: bool |
| `rm_msgs/Six_Force` | `Ros1Rm_msgsSix_Force` | 24..24 | force_Fx: float32; force_Fy: float32; force_Fz: float32; force_Mx: float32; force_My: float32; force_Mz: float32 |
| `rm_msgs/Socket_Command` | `Ros1Rm_msgsSocket_Command` | 2..2 | command: uint16 |
| `rm_msgs/Start_Multi_Drag_Teach` | `Ros1Rm_msgsStart_Multi_Drag_Teach` | 32..32 | free_axes: int32[6]; frame: int32; singular_wall: int32 |
| `rm_msgs/Stop` | `Ros1Rm_msgsStop` | 1..1 | state: bool |
| `rm_msgs/Stop_Teach` | `Ros1Rm_msgsStop_Teach` | 4..260 | command: string text<=256B |
| `rm_msgs/Tool_Analog_Output` | `Ros1Rm_msgsTool_Analog_Output` | 4..4 | voltage: float32 |
| `rm_msgs/Tool_Digital_Output` | `Ros1Rm_msgsTool_Digital_Output` | 2..2 | num: uint8; state: bool |
| `rm_msgs/Tool_IO_State` | `Ros1Rm_msgsTool_IO_State` | 4..4 | Tool_IO_Mode: int8[2]; Tool_IO_State: int8[2] |
| `rm_msgs/Trajectoryinfo` | `Ros1Rm_msgsTrajectoryinfo` | 12..524 | name: string text<=256B; create_time: string text<=256B; point_num: int32 |
| `rm_msgs/Trajectorylist` | `Ros1Rm_msgsTrajectorylist` | 20..8660 | page_num: int32; page_size: int32; total_size: int32; vague_search: string text<=256B; tra_list: rm_msgs/Trajectoryinfo sequence<=16 |
| `rm_msgs/Turtle_Driver` | `Ros1Rm_msgsTurtle_Driver` | 20..532 | message_type: string text<=256B; robot_mac_address: string text<=256B; vx: float32; vy: float32; vtheta: float32 |
| `rm_msgs/UpdateTCPmasterparam` | `Ros1Rm_msgsUpdateTCPmasterparam` | 16..784 | master_name: string text<=256B; new_name: string text<=256B; ip: string text<=256B; port: int32 |
| `rm_msgs/Write_ModbusRTU` | `Ros1Rm_msgsWrite_ModbusRTU` | 16..80 | address: int32; data: int32 sequence<=16; type: int32; device: int32 |
| `rm_msgs/Write_Register` | `Ros1Rm_msgsWrite_Register` | 17..49 | port: uint8; address: uint32; num: uint32; data: uint16 sequence<=16; device: uint32 |
| `rm_msgs/Write_TCPandRTU` | `Ros1Rm_msgsWrite_TCPandRTU` | 28..604 | address: int32; data: int32 sequence<=16; ip: string text<=256B; port: int32; master_name: string text<=256B; type: int32; device: int32 |

Interfaces:

- `geometry_msgs/Point` (message): message → `Ros1Geometry_msgsPoint`
- `geometry_msgs/Pose` (message): message → `Ros1Geometry_msgsPose`
- `geometry_msgs/Quaternion` (message): message → `Ros1Geometry_msgsQuaternion`
- `rm_msgs/ArmState` (message): message → `Ros1Rm_msgsArmState`
- `rm_msgs/Arm_Analog_Output` (message): message → `Ros1Rm_msgsArm_Analog_Output`
- `rm_msgs/Arm_Current_State` (message): message → `Ros1Rm_msgsArm_Current_State`
- `rm_msgs/Arm_Current_Status` (message): message → `Ros1Rm_msgsArm_Current_Status`
- `rm_msgs/Arm_Digital_Output` (message): message → `Ros1Rm_msgsArm_Digital_Output`
- `rm_msgs/Arm_IO_State` (message): message → `Ros1Rm_msgsArm_IO_State`
- `rm_msgs/Arm_Joint_Speed_Max` (message): message → `Ros1Rm_msgsArm_Joint_Speed_Max`
- `rm_msgs/Arm_Softversion_v3` (message): message → `Ros1Rm_msgsArm_Softversion_v3`
- `rm_msgs/Arm_Softversion_v4` (message): message → `Ros1Rm_msgsArm_Softversion_v4`
- `rm_msgs/Arm_Software_Version` (message): message → `Ros1Rm_msgsArm_Software_Version`
- `rm_msgs/Cabinet` (message): message → `Ros1Rm_msgsCabinet`
- `rm_msgs/CartePos` (message): message → `Ros1Rm_msgsCartePos`
- `rm_msgs/CartePosCustom` (message): message → `Ros1Rm_msgsCartePosCustom`
- `rm_msgs/ChangeTool_Name` (message): message → `Ros1Rm_msgsChangeTool_Name`
- `rm_msgs/ChangeTool_State` (message): message → `Ros1Rm_msgsChangeTool_State`
- `rm_msgs/ChangeWorkFrame_Name` (message): message → `Ros1Rm_msgsChangeWorkFrame_Name`
- `rm_msgs/ChangeWorkFrame_State` (message): message → `Ros1Rm_msgsChangeWorkFrame_State`
- `rm_msgs/Err` (message): message → `Ros1Rm_msgsErr`
- `rm_msgs/Flowchartrunstate` (message): message → `Ros1Rm_msgsFlowchartrunstate`
- `rm_msgs/Force_Position_Move_Joint` (message): message → `Ros1Rm_msgsForce_Position_Move_Joint`
- `rm_msgs/Force_Position_Move_Pose` (message): message → `Ros1Rm_msgsForce_Position_Move_Pose`
- `rm_msgs/Force_Position_Move_Pose_Custom` (message): message → `Ros1Rm_msgsForce_Position_Move_Pose_Custom`
- `rm_msgs/Force_Position_State` (message): message → `Ros1Rm_msgsForce_Position_State`
- `rm_msgs/GetArmState_Command` (message): message → `Ros1Rm_msgsGetArmState_Command`
- `rm_msgs/Get_TCP_Master_List_Param` (message): message → `Ros1Rm_msgsGet_TCP_Master_List_Param`
- `rm_msgs/Gettrajectorylist` (message): message → `Ros1Rm_msgsGettrajectorylist`
- `rm_msgs/Gripper_Pick` (message): message → `Ros1Rm_msgsGripper_Pick`
- `rm_msgs/Gripper_Set` (message): message → `Ros1Rm_msgsGripper_Set`
- `rm_msgs/Hand_Angle` (message): message → `Ros1Rm_msgsHand_Angle`
- `rm_msgs/Hand_Force` (message): message → `Ros1Rm_msgsHand_Force`
- `rm_msgs/Hand_Posture` (message): message → `Ros1Rm_msgsHand_Posture`
- `rm_msgs/Hand_Seq` (message): message → `Ros1Rm_msgsHand_Seq`
- `rm_msgs/Hand_Speed` (message): message → `Ros1Rm_msgsHand_Speed`
- `rm_msgs/Hand_Status` (message): message → `Ros1Rm_msgsHand_Status`
- `rm_msgs/IO_Update` (message): message → `Ros1Rm_msgsIO_Update`
- `rm_msgs/JointPos` (message): message → `Ros1Rm_msgsJointPos`
- `rm_msgs/JointPosCustom` (message): message → `Ros1Rm_msgsJointPosCustom`
- `rm_msgs/Joint_Current` (message): message → `Ros1Rm_msgsJoint_Current`
- `rm_msgs/Joint_En_Flag` (message): message → `Ros1Rm_msgsJoint_En_Flag`
- `rm_msgs/Joint_Enable` (message): message → `Ros1Rm_msgsJoint_Enable`
- `rm_msgs/Joint_Error_Code` (message): message → `Ros1Rm_msgsJoint_Error_Code`
- `rm_msgs/Joint_Max_Speed` (message): message → `Ros1Rm_msgsJoint_Max_Speed`
- `rm_msgs/Joint_PoseEuler` (message): message → `Ros1Rm_msgsJoint_PoseEuler`
- `rm_msgs/Joint_Speed` (message): message → `Ros1Rm_msgsJoint_Speed`
- `rm_msgs/Joint_Step` (message): message → `Ros1Rm_msgsJoint_Step`
- `rm_msgs/Joint_Teach` (message): message → `Ros1Rm_msgsJoint_Teach`
- `rm_msgs/Joint_Temperature` (message): message → `Ros1Rm_msgsJoint_Temperature`
- `rm_msgs/Joint_Voltage` (message): message → `Ros1Rm_msgsJoint_Voltage`
- `rm_msgs/Jointversion` (message): message → `Ros1Rm_msgsJointversion`
- `rm_msgs/LiftState` (message): message → `Ros1Rm_msgsLiftState`
- `rm_msgs/Lift_Height` (message): message → `Ros1Rm_msgsLift_Height`
- `rm_msgs/Lift_In_Position` (message): message → `Ros1Rm_msgsLift_In_Position`
- `rm_msgs/Lift_Speed` (message): message → `Ros1Rm_msgsLift_Speed`
- `rm_msgs/Manual_Set_Force_Pose` (message): message → `Ros1Rm_msgsManual_Set_Force_Pose`
- `rm_msgs/Mastername` (message): message → `Ros1Rm_msgsMastername`
- `rm_msgs/Modbusreaddata` (message): message → `Ros1Rm_msgsModbusreaddata`
- `rm_msgs/Modbustcpmasterinfo` (message): message → `Ros1Rm_msgsModbustcpmasterinfo`
- `rm_msgs/Modbustcpmasterlist` (message): message → `Ros1Rm_msgsModbustcpmasterlist`
- `rm_msgs/MoveC` (message): message → `Ros1Rm_msgsMoveC`
- `rm_msgs/MoveJ` (message): message → `Ros1Rm_msgsMoveJ`
- `rm_msgs/MoveJ_P` (message): message → `Ros1Rm_msgsMoveJ_P`
- `rm_msgs/MoveL` (message): message → `Ros1Rm_msgsMoveL`
- `rm_msgs/Moveloffset` (message): message → `Ros1Rm_msgsMoveloffset`
- `rm_msgs/Ort_Teach` (message): message → `Ros1Rm_msgsOrt_Teach`
- `rm_msgs/Plan_State` (message): message → `Ros1Rm_msgsPlan_State`
- `rm_msgs/Pos_Teach` (message): message → `Ros1Rm_msgsPos_Teach`
- `rm_msgs/Programrunstate` (message): message → `Ros1Rm_msgsProgramrunstate`
- `rm_msgs/RS485_Mode` (message): message → `Ros1Rm_msgsRS485_Mode`
- `rm_msgs/RS485params` (message): message → `Ros1Rm_msgsRS485params`
- `rm_msgs/Read_ModbusRTU` (message): message → `Ros1Rm_msgsRead_ModbusRTU`
- `rm_msgs/Read_Register` (message): message → `Ros1Rm_msgsRead_Register`
- `rm_msgs/Read_TCPandRTU` (message): message → `Ros1Rm_msgsRead_TCPandRTU`
- `rm_msgs/Register_Data` (message): message → `Ros1Rm_msgsRegister_Data`
- `rm_msgs/Rm_Plus_Base` (message): message → `Ros1Rm_msgsRm_Plus_Base`
- `rm_msgs/Rm_Plus_State` (message): message → `Ros1Rm_msgsRm_Plus_State`
- `rm_msgs/Servo_GetAngle` (message): message → `Ros1Rm_msgsServo_GetAngle`
- `rm_msgs/Servo_Move` (message): message → `Ros1Rm_msgsServo_Move`
- `rm_msgs/Set_Force_Position` (message): message → `Ros1Rm_msgsSet_Force_Position`
- `rm_msgs/Set_Modbus_Mode` (message): message → `Ros1Rm_msgsSet_Modbus_Mode`
- `rm_msgs/Set_Realtime_Push` (message): message → `Ros1Rm_msgsSet_Realtime_Push`
- `rm_msgs/Six_Force` (message): message → `Ros1Rm_msgsSix_Force`
- `rm_msgs/Socket_Command` (message): message → `Ros1Rm_msgsSocket_Command`
- `rm_msgs/Softwarebuildinfo` (message): message → `Ros1Rm_msgsSoftwarebuildinfo`
- `rm_msgs/Start_Multi_Drag_Teach` (message): message → `Ros1Rm_msgsStart_Multi_Drag_Teach`
- `rm_msgs/Stop` (message): message → `Ros1Rm_msgsStop`
- `rm_msgs/Stop_Teach` (message): message → `Ros1Rm_msgsStop_Teach`
- `rm_msgs/Tool_Analog_Output` (message): message → `Ros1Rm_msgsTool_Analog_Output`
- `rm_msgs/Tool_Digital_Output` (message): message → `Ros1Rm_msgsTool_Digital_Output`
- `rm_msgs/Tool_IO_State` (message): message → `Ros1Rm_msgsTool_IO_State`
- `rm_msgs/Trajectoryinfo` (message): message → `Ros1Rm_msgsTrajectoryinfo`
- `rm_msgs/Trajectorylist` (message): message → `Ros1Rm_msgsTrajectorylist`
- `rm_msgs/Turtle_Driver` (message): message → `Ros1Rm_msgsTurtle_Driver`
- `rm_msgs/UpdateTCPmasterparam` (message): message → `Ros1Rm_msgsUpdateTCPmasterparam`
- `rm_msgs/Write_ModbusRTU` (message): message → `Ros1Rm_msgsWrite_ModbusRTU`
- `rm_msgs/Write_Register` (message): message → `Ros1Rm_msgsWrite_Register`
- `rm_msgs/Write_TCPandRTU` (message): message → `Ros1Rm_msgsWrite_TCPandRTU`
- `std_msgs/Header` (message): message → `Ros1Std_msgsHeader`

Immutable upstream sources:

- [RealManRobot/rm_robot @ a7e6d446cdced8bbb9778a5be4d8a14317ba585e](https://github.com/RealManRobot/rm_robot/tree/a7e6d446cdced8bbb9778a5be4d8a14317ba585e)
- [ros/common_msgs @ 092bc230c8153dd4cfee0c84c9796cc7e6b09fdb](https://github.com/ros/common_msgs/tree/092bc230c8153dd4cfee0c84c9796cc7e6b09fdb)
- [ros/std_msgs @ 34198520757d1aab358118a0ef294fe2609fde33](https://github.com/ros/std_msgs/tree/34198520757d1aab358118a0ef294fe2609fde33)

## ros1_main

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `geometry_msgs/Point` | `Ros1Geometry_msgsPoint` | 24..24 | x: float64; y: float64; z: float64 |
| `geometry_msgs/Quaternion` | `Ros1Geometry_msgsQuaternion` | 32..32 | x: float64; y: float64; z: float64; w: float64 |
| `geometry_msgs/Pose` | `Ros1Geometry_msgsPose` | 56..56 | position: geometry_msgs/Point; orientation: geometry_msgs/Quaternion |
| `rm_msgs/ArmState` | `Ros1Rm_msgsArmState` | 65..161 | joint: float32 sequence<=16; Pose: geometry_msgs/Pose; err: uint16 sequence<=16; dof: uint8 |
| `rm_msgs/Arm_Analog_Output` | `Ros1Rm_msgsArm_Analog_Output` | 5..5 | num: uint8; voltage: float32 |
| `rm_msgs/Arm_Current_State` | `Ros1Rm_msgsArm_Current_State` | 33..129 | joint: float32 sequence<=16; Pose: float32[6]; err: uint16 sequence<=16; dof: uint8 |
| `rm_msgs/Arm_Current_Status` | `Ros1Rm_msgsArm_Current_Status` | 4..260 | arm_current_status: string text<=256B |
| `rm_msgs/Arm_Digital_Output` | `Ros1Rm_msgsArm_Digital_Output` | 2..2 | num: uint8; state: bool |
| `rm_msgs/Arm_IO_State` | `Ros1Rm_msgsArm_IO_State` | 4..4 | Arm_Digital_Input: int8[4] |
| `time` | `Ros1Time` | 8..8 | sec: uint32; nsec: uint32 |
| `std_msgs/Header` | `Ros1Std_msgsHeader` | 16..272 | seq: uint32; stamp: time; frame_id: string text<=256B |
| `rm_msgs/Arm_Joint_Speed_Max` | `Ros1Rm_msgsArm_Joint_Speed_Max` | 24..4568 | header: std_msgs/Header; name: string sequence<=16 text<=256B; max_velocity: float64 sequence<=16 |
| `rm_msgs/Softwarebuildinfo` | `Ros1Rm_msgsSoftwarebuildinfo` | 8..520 | build_time: string text<=256B; version: string text<=256B |
| `rm_msgs/Arm_Softversion_v3` | `Ros1Rm_msgsArm_Softversion_v3` | 28..1820 | product_version: string text<=256B; algorithm_info: string text<=256B; ctrl_info: rm_msgs/Softwarebuildinfo; dynamic_info: string text<=256B; plan_info: rm_msgs/Softwarebuildinfo |
| `rm_msgs/Arm_Softversion_v4` | `Ros1Rm_msgsArm_Softversion_v4` | 36..2340 | product_version: string text<=256B; controller_version: string text<=256B; algorithm_info: string text<=256B; ctrl_info: rm_msgs/Softwarebuildinfo; com_info: rm_msgs/Softwarebuildinfo; program_info: rm_msgs/Softwarebuildinfo |
| `rm_msgs/Arm_Software_Version` | `Ros1Rm_msgsArm_Software_Version` | 48..3120 | product_version: string text<=256B; algorithm_info: string text<=256B; ctrl_info: rm_msgs/Softwarebuildinfo; dynamic_info: string text<=256B; plan_info: rm_msgs/Softwarebuildinfo; controller_version: string text<=256B; com_info: rm_msgs/Softwarebuildinfo; program_info: rm_msgs/Softwarebuildinfo |
| `rm_msgs/Cabinet` | `Ros1Rm_msgsCabinet` | 78..334 | header: std_msgs/Header; pose: geometry_msgs/Pose; label: int16; angle: float32 |
| `rm_msgs/CartePos` | `Ros1Rm_msgsCartePos` | 56..56 | Pose: geometry_msgs/Pose |
| `rm_msgs/CartePosCustom` | `Ros1Rm_msgsCartePosCustom` | 59..59 | Pose: geometry_msgs/Pose; follow: bool; trajectory_mode: uint8; radio: uint8 |
| `rm_msgs/ChangeTool_Name` | `Ros1Rm_msgsChangeTool_Name` | 4..260 | toolname: string text<=256B |
| `rm_msgs/ChangeTool_State` | `Ros1Rm_msgsChangeTool_State` | 1..1 | state: bool |
| `rm_msgs/ChangeWorkFrame_Name` | `Ros1Rm_msgsChangeWorkFrame_Name` | 4..260 | WorkFrame_name: string text<=256B |
| `rm_msgs/ChangeWorkFrame_State` | `Ros1Rm_msgsChangeWorkFrame_State` | 1..1 | state: bool |
| `rm_msgs/Err` | `Ros1Rm_msgsErr` | 4..36 | err: uint16 sequence<=16 |
| `rm_msgs/ExpandState` | `Ros1Rm_msgsExpandState` | 12..12 | get_state: bool; pos: int16; err_flag: int16; en_flag: uint16; current: uint16; mode: int8; joint_id: uint16 |
| `rm_msgs/Expand_In_Position` | `Ros1Rm_msgsExpand_In_Position` | 7..263 | device: uint8; state: string text<=256B; trajectory_connect: uint8; trajectory_state: bool |
| `rm_msgs/Expand_Position` | `Ros1Rm_msgsExpand_Position` | 4..4 | pos: int16; speed: int16 |
| `rm_msgs/Expand_Speed` | `Ros1Rm_msgsExpand_Speed` | 2..2 | speed: int16 |
| `rm_msgs/Flowchartrunstate` | `Ros1Rm_msgsFlowchartrunstate` | 12..524 | run_state: uint8; id: uint8; name: string text<=256B; plan_speed: uint8; step_mode: uint8; modal_id: string text<=256B |
| `rm_msgs/Force_Position_Move_Joint` | `Ros1Rm_msgsForce_Position_Move_Joint` | 10..74 | joint: float32 sequence<=16; sensor: uint8; mode: uint8; dir: uint8; force: int16; dof: uint8 |
| `rm_msgs/Force_Position_Move_Pose` | `Ros1Rm_msgsForce_Position_Move_Pose` | 61..61 | Pose: geometry_msgs/Pose; sensor: uint8; mode: uint8; dir: uint8; force: int16 |
| `rm_msgs/Force_Position_Move_Pose_Custom` | `Ros1Rm_msgsForce_Position_Move_Pose_Custom` | 64..64 | Pose: geometry_msgs/Pose; sensor: uint8; mode: uint8; dir: uint8; force: int16; follow: bool; trajectory_mode: uint8; radio: uint8 |
| `rm_msgs/Force_Position_State` | `Ros1Rm_msgsForce_Position_State` | 11..75 | joint: float32 sequence<=16; force: float32; arm_err: uint16; dof: uint8 |
| `rm_msgs/GetArmState_Command` | `Ros1Rm_msgsGetArmState_Command` | 4..260 | command: string text<=256B |
| `rm_msgs/Get_TCP_Master_List_Param` | `Ros1Rm_msgsGet_TCP_Master_List_Param` | 12..268 | page_num: int32; page_size: int32; vague_search: string text<=256B |
| `rm_msgs/Gettrajectorylist` | `Ros1Rm_msgsGettrajectorylist` | 12..268 | page_num: int32; page_size: int32; vague_search: string text<=256B |
| `rm_msgs/Gripper_Pick` | `Ros1Rm_msgsGripper_Pick` | 4..4 | speed: uint16; force: uint16 |
| `rm_msgs/Gripper_Set` | `Ros1Rm_msgsGripper_Set` | 2..2 | position: uint16 |
| `rm_msgs/Hand_Angle` | `Ros1Rm_msgsHand_Angle` | 13..13 | hand_angle: int16[6]; block: bool |
| `rm_msgs/Hand_Force` | `Ros1Rm_msgsHand_Force` | 2..2 | hand_force: uint16 |
| `rm_msgs/Hand_Posture` | `Ros1Rm_msgsHand_Posture` | 3..3 | posture_num: uint16; block: bool |
| `rm_msgs/Hand_Seq` | `Ros1Rm_msgsHand_Seq` | 3..3 | seq_num: uint16; block: bool |
| `rm_msgs/Hand_Speed` | `Ros1Rm_msgsHand_Speed` | 2..2 | hand_speed: uint16 |
| `rm_msgs/Hand_Status` | `Ros1Rm_msgsHand_Status` | 50..50 | hand_angle: uint16[6]; hand_pos: uint16[6]; hand_state: uint16[6]; hand_force: uint16[6]; hand_err: uint16 |
| `rm_msgs/IO_Update` | `Ros1Rm_msgsIO_Update` | 1..1 | type: uint8 |
| `rm_msgs/JointPos` | `Ros1Rm_msgsJointPos` | 8..72 | joint: float32 sequence<=16; expand: float32 |
| `rm_msgs/JointPosCustom` | `Ros1Rm_msgsJointPosCustom` | 11..75 | joint: float32 sequence<=16; expand: float32; follow: bool; trajectory_mode: uint8; radio: uint8 |
| `rm_msgs/Joint_Current` | `Ros1Rm_msgsJoint_Current` | 4..68 | joint_current: float32 sequence<=16 |
| `rm_msgs/Joint_En_Flag` | `Ros1Rm_msgsJoint_En_Flag` | 4..20 | joint_en_flag: bool sequence<=16 |
| `rm_msgs/Joint_Enable` | `Ros1Rm_msgsJoint_Enable` | 2..2 | joint_num: uint8; state: bool |
| `rm_msgs/Joint_Error_Code` | `Ros1Rm_msgsJoint_Error_Code` | 4..36 | joint_error: uint16 sequence<=16 |
| `rm_msgs/Joint_Max_Speed` | `Ros1Rm_msgsJoint_Max_Speed` | 5..5 | joint_num: uint8; joint_max_speed: float32 |
| `rm_msgs/Joint_PoseEuler` | `Ros1Rm_msgsJoint_PoseEuler` | 24..24 | euler: float32[3]; position: float32[3] |
| `rm_msgs/Joint_Speed` | `Ros1Rm_msgsJoint_Speed` | 4..68 | joint_speed: float32 sequence<=16 |
| `rm_msgs/Joint_Step` | `Ros1Rm_msgsJoint_Step` | 9..9 | joint_num: uint8; step_angle: float32; speed: float32 |
| `rm_msgs/Joint_Teach` | `Ros1Rm_msgsJoint_Teach` | 8..264 | teach_joint: int16; direction: string text<=256B; v: int16 |
| `rm_msgs/Joint_Temperature` | `Ros1Rm_msgsJoint_Temperature` | 4..68 | joint_temperature: float32 sequence<=16 |
| `rm_msgs/Joint_Voltage` | `Ros1Rm_msgsJoint_Voltage` | 4..68 | joint_voltage: float32 sequence<=16 |
| `rm_msgs/Jointversion` | `Ros1Rm_msgsJointversion` | 28..1820 | joint_version: string[7] text<=256B |
| `rm_msgs/LiftState` | `Ros1Rm_msgsLiftState` | 7..7 | height: int16; current: int16; err_flag: uint16; mode: int8 |
| `rm_msgs/Lift_Height` | `Ros1Rm_msgsLift_Height` | 4..4 | height: uint16; speed: uint16 |
| `rm_msgs/Lift_In_Position` | `Ros1Rm_msgsLift_In_Position` | 7..263 | device: uint8; state: string text<=256B; trajectory_connect: uint8; trajectory_state: bool |
| `rm_msgs/Lift_Speed` | `Ros1Rm_msgsLift_Speed` | 2..2 | speed: int16 |
| `rm_msgs/Manual_Set_Force_Pose` | `Ros1Rm_msgsManual_Set_Force_Pose` | 8..392 | pose: string text<=256B; joint: int64 sequence<=16 |
| `rm_msgs/Mastername` | `Ros1Rm_msgsMastername` | 4..260 | master_name: string text<=256B |
| `rm_msgs/Modbusreaddata` | `Ros1Rm_msgsModbusreaddata` | 4..68 | read_data: int32 sequence<=16 |
| `rm_msgs/Modbustcpmasterinfo` | `Ros1Rm_msgsModbustcpmasterinfo` | 12..524 | master_name: string text<=256B; ip: string text<=256B; port: int32 |
| `rm_msgs/Modbustcpmasterlist` | `Ros1Rm_msgsModbustcpmasterlist` | 4..8388 | master_list: rm_msgs/Modbustcpmasterinfo sequence<=16 |
| `rm_msgs/MoveC` | `Ros1Rm_msgsMoveC` | 119..119 | Mid_Pose: geometry_msgs/Pose; End_Pose: geometry_msgs/Pose; speed: float32; loop: uint16; trajectory_connect: uint8 |
| `rm_msgs/MoveJ` | `Ros1Rm_msgsMoveJ` | 9..73 | joint: float32 sequence<=16; speed: float32; trajectory_connect: uint8 |
| `rm_msgs/MoveJ_P` | `Ros1Rm_msgsMoveJ_P` | 61..61 | Pose: geometry_msgs/Pose; speed: float32; trajectory_connect: uint8 |
| `rm_msgs/MoveL` | `Ros1Rm_msgsMoveL` | 61..61 | Pose: geometry_msgs/Pose; speed: float32; trajectory_connect: uint8 |
| `rm_msgs/Moveloffset` | `Ros1Rm_msgsMoveloffset` | 67..67 | offset: geometry_msgs/Pose; speed: int32; r: int32; trajectory_connect: bool; frame_type: bool; block: bool |
| `rm_msgs/Ort_Teach` | `Ros1Rm_msgsOrt_Teach` | 10..522 | teach_type: string text<=256B; direction: string text<=256B; v: int16 |
| `rm_msgs/Plan_State` | `Ros1Rm_msgsPlan_State` | 1..1 | state: bool |
| `rm_msgs/Pos_Teach` | `Ros1Rm_msgsPos_Teach` | 10..522 | teach_type: string text<=256B; direction: string text<=256B; v: int16 |
| `rm_msgs/Programrunstate` | `Ros1Rm_msgsProgramrunstate` | 36..164 | run_state: int32; id: int32; edit_id: int32; plan_num: int32; total_loop: int32; step_mode: int32; plan_speed: int32; loop_num: int32 sequence<=16; loop_cont: int32 sequence<=16 |
| `rm_msgs/RS485_Mode` | `Ros1Rm_msgsRS485_Mode` | 10..10 | controller_RS485_mode: uint8; tool_RS485_mode: uint8; baudrate: uint32; modbus_timeout: uint32 |
| `rm_msgs/RS485params` | `Ros1Rm_msgsRS485params` | 8..8 | mode: int32; baudrate: int32 |
| `rm_msgs/Read_ModbusRTU` | `Ros1Rm_msgsRead_ModbusRTU` | 16..16 | address: int32; device: int32; num: int32; type: int32 |
| `rm_msgs/Read_Register` | `Ros1Rm_msgsRead_Register` | 13..13 | port: uint8; address: uint32; num: uint32; device: uint32 |
| `rm_msgs/Read_TCPandRTU` | `Ros1Rm_msgsRead_TCPandRTU` | 28..540 | address: int32; num: int32; ip: string text<=256B; port: int32; master_name: string text<=256B; device: int32; type: int32 |
| `rm_msgs/Register_Data` | `Ros1Rm_msgsRegister_Data` | 5..37 | state: bool; data: uint16 sequence<=16 |
| `rm_msgs/Rm_Plus_Base` | `Ros1Rm_msgsRm_Plus_Base` | 61..1597 | manu: string text<=256B; type: int8; hv: string text<=256B; sv: string text<=256B; bv: string text<=256B; id: int32; dof: int8; check: int8; bee: int8; force: bool; touch: bool; touch_num: int8; touch_sw: int8; hand: int8; pos_up: int32 sequence<=16; pos_low: int32 sequence<=16; angle_up: int32 sequence<=16; angle_low: int32 sequence<=16; speed_up: int32 sequence<=16; speed_low: int32 sequence<=16; force_up: int32 sequence<=16; force_low: int32 sequence<=16 |
| `rm_msgs/Rm_Plus_State` | `Ros1Rm_msgsRm_Plus_State` | 60..892 | sys_state: int32; sys_err: int32; dof_state: int32 sequence<=16; dof_err: int32 sequence<=16; pos: int32 sequence<=16; speed: int32 sequence<=16; angle: int32 sequence<=16; current: int32 sequence<=16; normal_force: int32 sequence<=16; tangential_force: int32 sequence<=16; tangential_force_dir: int32 sequence<=16; tsa: uint32 sequence<=16; tma: uint32 sequence<=16; touch_data: int32 sequence<=16; force: int32 sequence<=16 |
| `rm_msgs/Servo_GetAngle` | `Ros1Rm_msgsServo_GetAngle` | 2..2 | servo_id: uint16 |
| `rm_msgs/Servo_Move` | `Ros1Rm_msgsServo_Move` | 4..4 | servo_id: uint16; angle: uint16 |
| `rm_msgs/Set_Force_Position` | `Ros1Rm_msgsSet_Force_Position` | 5..5 | sensor: uint8; mode: uint8; direction: uint8; N: int16 |
| `rm_msgs/Set_Modbus_Mode` | `Ros1Rm_msgsSet_Modbus_Mode` | 16..272 | port: uint32; baudrate: uint32; timeout: uint32; ip: string text<=256B |
| `rm_msgs/Set_Realtime_Push` | `Ros1Rm_msgsSet_Realtime_Push` | 20..276 | cycle: uint16; port: uint16; force_coordinate: uint16; ip: string text<=256B; aloha_state_enable: bool; arm_current_status_enable: bool; expand_state_enable: bool; hand_enable: bool; joint_acc_enable: bool; joint_speed_enable: bool; lift_state_enable: bool; tail_end_enable: bool; rm_plus_base_enable: bool; rm_plus_state_enable: bool |
| `rm_msgs/Six_Force` | `Ros1Rm_msgsSix_Force` | 24..24 | force_Fx: float32; force_Fy: float32; force_Fz: float32; force_Mx: float32; force_My: float32; force_Mz: float32 |
| `rm_msgs/Socket_Command` | `Ros1Rm_msgsSocket_Command` | 2..2 | command: uint16 |
| `rm_msgs/Start_Multi_Drag_Teach` | `Ros1Rm_msgsStart_Multi_Drag_Teach` | 32..32 | free_axes: int32[6]; frame: int32; singular_wall: int32 |
| `rm_msgs/Stop` | `Ros1Rm_msgsStop` | 1..1 | state: bool |
| `rm_msgs/Stop_Teach` | `Ros1Rm_msgsStop_Teach` | 4..260 | command: string text<=256B |
| `rm_msgs/Tool_Analog_Output` | `Ros1Rm_msgsTool_Analog_Output` | 4..4 | voltage: float32 |
| `rm_msgs/Tool_Digital_Output` | `Ros1Rm_msgsTool_Digital_Output` | 2..2 | num: uint8; state: bool |
| `rm_msgs/Tool_IO_State` | `Ros1Rm_msgsTool_IO_State` | 4..4 | Tool_IO_Mode: int8[2]; Tool_IO_State: int8[2] |
| `rm_msgs/Trajectoryinfo` | `Ros1Rm_msgsTrajectoryinfo` | 12..524 | name: string text<=256B; create_time: string text<=256B; point_num: int32 |
| `rm_msgs/Trajectorylist` | `Ros1Rm_msgsTrajectorylist` | 20..8660 | page_num: int32; page_size: int32; total_size: int32; vague_search: string text<=256B; tra_list: rm_msgs/Trajectoryinfo sequence<=16 |
| `rm_msgs/Turtle_Driver` | `Ros1Rm_msgsTurtle_Driver` | 20..532 | message_type: string text<=256B; robot_mac_address: string text<=256B; vx: float32; vy: float32; vtheta: float32 |
| `rm_msgs/UpdateTCPmasterparam` | `Ros1Rm_msgsUpdateTCPmasterparam` | 16..784 | master_name: string text<=256B; new_name: string text<=256B; ip: string text<=256B; port: int32 |
| `rm_msgs/Write_ModbusRTU` | `Ros1Rm_msgsWrite_ModbusRTU` | 16..80 | address: int32; data: int32 sequence<=16; type: int32; device: int32 |
| `rm_msgs/Write_Register` | `Ros1Rm_msgsWrite_Register` | 17..49 | port: uint8; address: uint32; num: uint32; data: uint16 sequence<=16; device: uint32 |
| `rm_msgs/Write_TCPandRTU` | `Ros1Rm_msgsWrite_TCPandRTU` | 28..604 | address: int32; data: int32 sequence<=16; ip: string text<=256B; port: int32; master_name: string text<=256B; type: int32; device: int32 |

Interfaces:

- `geometry_msgs/Point` (message): message → `Ros1Geometry_msgsPoint`
- `geometry_msgs/Pose` (message): message → `Ros1Geometry_msgsPose`
- `geometry_msgs/Quaternion` (message): message → `Ros1Geometry_msgsQuaternion`
- `rm_msgs/ArmState` (message): message → `Ros1Rm_msgsArmState`
- `rm_msgs/Arm_Analog_Output` (message): message → `Ros1Rm_msgsArm_Analog_Output`
- `rm_msgs/Arm_Current_State` (message): message → `Ros1Rm_msgsArm_Current_State`
- `rm_msgs/Arm_Current_Status` (message): message → `Ros1Rm_msgsArm_Current_Status`
- `rm_msgs/Arm_Digital_Output` (message): message → `Ros1Rm_msgsArm_Digital_Output`
- `rm_msgs/Arm_IO_State` (message): message → `Ros1Rm_msgsArm_IO_State`
- `rm_msgs/Arm_Joint_Speed_Max` (message): message → `Ros1Rm_msgsArm_Joint_Speed_Max`
- `rm_msgs/Arm_Softversion_v3` (message): message → `Ros1Rm_msgsArm_Softversion_v3`
- `rm_msgs/Arm_Softversion_v4` (message): message → `Ros1Rm_msgsArm_Softversion_v4`
- `rm_msgs/Arm_Software_Version` (message): message → `Ros1Rm_msgsArm_Software_Version`
- `rm_msgs/Cabinet` (message): message → `Ros1Rm_msgsCabinet`
- `rm_msgs/CartePos` (message): message → `Ros1Rm_msgsCartePos`
- `rm_msgs/CartePosCustom` (message): message → `Ros1Rm_msgsCartePosCustom`
- `rm_msgs/ChangeTool_Name` (message): message → `Ros1Rm_msgsChangeTool_Name`
- `rm_msgs/ChangeTool_State` (message): message → `Ros1Rm_msgsChangeTool_State`
- `rm_msgs/ChangeWorkFrame_Name` (message): message → `Ros1Rm_msgsChangeWorkFrame_Name`
- `rm_msgs/ChangeWorkFrame_State` (message): message → `Ros1Rm_msgsChangeWorkFrame_State`
- `rm_msgs/Err` (message): message → `Ros1Rm_msgsErr`
- `rm_msgs/ExpandState` (message): message → `Ros1Rm_msgsExpandState`
- `rm_msgs/Expand_In_Position` (message): message → `Ros1Rm_msgsExpand_In_Position`
- `rm_msgs/Expand_Position` (message): message → `Ros1Rm_msgsExpand_Position`
- `rm_msgs/Expand_Speed` (message): message → `Ros1Rm_msgsExpand_Speed`
- `rm_msgs/Flowchartrunstate` (message): message → `Ros1Rm_msgsFlowchartrunstate`
- `rm_msgs/Force_Position_Move_Joint` (message): message → `Ros1Rm_msgsForce_Position_Move_Joint`
- `rm_msgs/Force_Position_Move_Pose` (message): message → `Ros1Rm_msgsForce_Position_Move_Pose`
- `rm_msgs/Force_Position_Move_Pose_Custom` (message): message → `Ros1Rm_msgsForce_Position_Move_Pose_Custom`
- `rm_msgs/Force_Position_State` (message): message → `Ros1Rm_msgsForce_Position_State`
- `rm_msgs/GetArmState_Command` (message): message → `Ros1Rm_msgsGetArmState_Command`
- `rm_msgs/Get_TCP_Master_List_Param` (message): message → `Ros1Rm_msgsGet_TCP_Master_List_Param`
- `rm_msgs/Gettrajectorylist` (message): message → `Ros1Rm_msgsGettrajectorylist`
- `rm_msgs/Gripper_Pick` (message): message → `Ros1Rm_msgsGripper_Pick`
- `rm_msgs/Gripper_Set` (message): message → `Ros1Rm_msgsGripper_Set`
- `rm_msgs/Hand_Angle` (message): message → `Ros1Rm_msgsHand_Angle`
- `rm_msgs/Hand_Force` (message): message → `Ros1Rm_msgsHand_Force`
- `rm_msgs/Hand_Posture` (message): message → `Ros1Rm_msgsHand_Posture`
- `rm_msgs/Hand_Seq` (message): message → `Ros1Rm_msgsHand_Seq`
- `rm_msgs/Hand_Speed` (message): message → `Ros1Rm_msgsHand_Speed`
- `rm_msgs/Hand_Status` (message): message → `Ros1Rm_msgsHand_Status`
- `rm_msgs/IO_Update` (message): message → `Ros1Rm_msgsIO_Update`
- `rm_msgs/JointPos` (message): message → `Ros1Rm_msgsJointPos`
- `rm_msgs/JointPosCustom` (message): message → `Ros1Rm_msgsJointPosCustom`
- `rm_msgs/Joint_Current` (message): message → `Ros1Rm_msgsJoint_Current`
- `rm_msgs/Joint_En_Flag` (message): message → `Ros1Rm_msgsJoint_En_Flag`
- `rm_msgs/Joint_Enable` (message): message → `Ros1Rm_msgsJoint_Enable`
- `rm_msgs/Joint_Error_Code` (message): message → `Ros1Rm_msgsJoint_Error_Code`
- `rm_msgs/Joint_Max_Speed` (message): message → `Ros1Rm_msgsJoint_Max_Speed`
- `rm_msgs/Joint_PoseEuler` (message): message → `Ros1Rm_msgsJoint_PoseEuler`
- `rm_msgs/Joint_Speed` (message): message → `Ros1Rm_msgsJoint_Speed`
- `rm_msgs/Joint_Step` (message): message → `Ros1Rm_msgsJoint_Step`
- `rm_msgs/Joint_Teach` (message): message → `Ros1Rm_msgsJoint_Teach`
- `rm_msgs/Joint_Temperature` (message): message → `Ros1Rm_msgsJoint_Temperature`
- `rm_msgs/Joint_Voltage` (message): message → `Ros1Rm_msgsJoint_Voltage`
- `rm_msgs/Jointversion` (message): message → `Ros1Rm_msgsJointversion`
- `rm_msgs/LiftState` (message): message → `Ros1Rm_msgsLiftState`
- `rm_msgs/Lift_Height` (message): message → `Ros1Rm_msgsLift_Height`
- `rm_msgs/Lift_In_Position` (message): message → `Ros1Rm_msgsLift_In_Position`
- `rm_msgs/Lift_Speed` (message): message → `Ros1Rm_msgsLift_Speed`
- `rm_msgs/Manual_Set_Force_Pose` (message): message → `Ros1Rm_msgsManual_Set_Force_Pose`
- `rm_msgs/Mastername` (message): message → `Ros1Rm_msgsMastername`
- `rm_msgs/Modbusreaddata` (message): message → `Ros1Rm_msgsModbusreaddata`
- `rm_msgs/Modbustcpmasterinfo` (message): message → `Ros1Rm_msgsModbustcpmasterinfo`
- `rm_msgs/Modbustcpmasterlist` (message): message → `Ros1Rm_msgsModbustcpmasterlist`
- `rm_msgs/MoveC` (message): message → `Ros1Rm_msgsMoveC`
- `rm_msgs/MoveJ` (message): message → `Ros1Rm_msgsMoveJ`
- `rm_msgs/MoveJ_P` (message): message → `Ros1Rm_msgsMoveJ_P`
- `rm_msgs/MoveL` (message): message → `Ros1Rm_msgsMoveL`
- `rm_msgs/Moveloffset` (message): message → `Ros1Rm_msgsMoveloffset`
- `rm_msgs/Ort_Teach` (message): message → `Ros1Rm_msgsOrt_Teach`
- `rm_msgs/Plan_State` (message): message → `Ros1Rm_msgsPlan_State`
- `rm_msgs/Pos_Teach` (message): message → `Ros1Rm_msgsPos_Teach`
- `rm_msgs/Programrunstate` (message): message → `Ros1Rm_msgsProgramrunstate`
- `rm_msgs/RS485_Mode` (message): message → `Ros1Rm_msgsRS485_Mode`
- `rm_msgs/RS485params` (message): message → `Ros1Rm_msgsRS485params`
- `rm_msgs/Read_ModbusRTU` (message): message → `Ros1Rm_msgsRead_ModbusRTU`
- `rm_msgs/Read_Register` (message): message → `Ros1Rm_msgsRead_Register`
- `rm_msgs/Read_TCPandRTU` (message): message → `Ros1Rm_msgsRead_TCPandRTU`
- `rm_msgs/Register_Data` (message): message → `Ros1Rm_msgsRegister_Data`
- `rm_msgs/Rm_Plus_Base` (message): message → `Ros1Rm_msgsRm_Plus_Base`
- `rm_msgs/Rm_Plus_State` (message): message → `Ros1Rm_msgsRm_Plus_State`
- `rm_msgs/Servo_GetAngle` (message): message → `Ros1Rm_msgsServo_GetAngle`
- `rm_msgs/Servo_Move` (message): message → `Ros1Rm_msgsServo_Move`
- `rm_msgs/Set_Force_Position` (message): message → `Ros1Rm_msgsSet_Force_Position`
- `rm_msgs/Set_Modbus_Mode` (message): message → `Ros1Rm_msgsSet_Modbus_Mode`
- `rm_msgs/Set_Realtime_Push` (message): message → `Ros1Rm_msgsSet_Realtime_Push`
- `rm_msgs/Six_Force` (message): message → `Ros1Rm_msgsSix_Force`
- `rm_msgs/Socket_Command` (message): message → `Ros1Rm_msgsSocket_Command`
- `rm_msgs/Softwarebuildinfo` (message): message → `Ros1Rm_msgsSoftwarebuildinfo`
- `rm_msgs/Start_Multi_Drag_Teach` (message): message → `Ros1Rm_msgsStart_Multi_Drag_Teach`
- `rm_msgs/Stop` (message): message → `Ros1Rm_msgsStop`
- `rm_msgs/Stop_Teach` (message): message → `Ros1Rm_msgsStop_Teach`
- `rm_msgs/Tool_Analog_Output` (message): message → `Ros1Rm_msgsTool_Analog_Output`
- `rm_msgs/Tool_Digital_Output` (message): message → `Ros1Rm_msgsTool_Digital_Output`
- `rm_msgs/Tool_IO_State` (message): message → `Ros1Rm_msgsTool_IO_State`
- `rm_msgs/Trajectoryinfo` (message): message → `Ros1Rm_msgsTrajectoryinfo`
- `rm_msgs/Trajectorylist` (message): message → `Ros1Rm_msgsTrajectorylist`
- `rm_msgs/Turtle_Driver` (message): message → `Ros1Rm_msgsTurtle_Driver`
- `rm_msgs/UpdateTCPmasterparam` (message): message → `Ros1Rm_msgsUpdateTCPmasterparam`
- `rm_msgs/Write_ModbusRTU` (message): message → `Ros1Rm_msgsWrite_ModbusRTU`
- `rm_msgs/Write_Register` (message): message → `Ros1Rm_msgsWrite_Register`
- `rm_msgs/Write_TCPandRTU` (message): message → `Ros1Rm_msgsWrite_TCPandRTU`
- `std_msgs/Header` (message): message → `Ros1Std_msgsHeader`

Immutable upstream sources:

- [RealManRobot/rm_robot @ 3d7063025786c4c5ed2db2ebc09f68d89d589539](https://github.com/RealManRobot/rm_robot/tree/3d7063025786c4c5ed2db2ebc09f68d89d589539)
- [ros/common_msgs @ 092bc230c8153dd4cfee0c84c9796cc7e6b09fdb](https://github.com/ros/common_msgs/tree/092bc230c8153dd4cfee0c84c9796cc7e6b09fdb)
- [ros/std_msgs @ 34198520757d1aab358118a0ef294fe2609fde33](https://github.com/ros/std_msgs/tree/34198520757d1aab358118a0ef294fe2609fde33)

## ros2_foxy

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `geometry_msgs/msg/Point` | `Ros2Geometry_msgsMsgPoint` | 24..24 | x: float64; y: float64; z: float64 |
| `geometry_msgs/msg/Quaternion` | `Ros2Geometry_msgsMsgQuaternion` | 32..32 | x: float64; y: float64; z: float64; w: float64 |
| `geometry_msgs/msg/Pose` | `Ros2Geometry_msgsMsgPose` | 56..56 | position: geometry_msgs/msg/Point; orientation: geometry_msgs/msg/Quaternion |
| `rm_ros_interfaces/msg/Alohastate` | `Ros2Rm_ros_interfacesMsgAlohastate` | 4..4 | io1_state: int16; io2_state: int16 |
| `rm_ros_interfaces/msg/Armcurrentstatus` | `Ros2Rm_ros_interfacesMsgArmcurrentstatus` | 2..2 | arm_current_status: uint16 |
| `rm_ros_interfaces/msg/Armoriginalstate` | `Ros2Rm_ros_interfacesMsgArmoriginalstate` | 32..96 | joint: float32 sequence<=16; pose: float32[6]; err: uint16; err_len: uint8; dof: uint8 |
| `rm_ros_interfaces/msg/Softwarebuildinfo` | `Ros2Rm_ros_interfacesMsgSoftwarebuildinfo` | 8..520 | build_time: string text<=256B; version: string text<=256B |
| `rm_ros_interfaces/msg/Armsoftversion` | `Ros2Rm_ros_interfacesMsgArmsoftversion` | 69..4421 | product_version: string text<=256B; controller_version: string text<=256B; algorithm_info: string text<=256B; ctrl_info: rm_ros_interfaces/msg/Softwarebuildinfo; dynamic_info: string text<=256B; plan_info: rm_ros_interfaces/msg/Softwarebuildinfo; com_info: rm_ros_interfaces/msg/Softwarebuildinfo; program_info: rm_ros_interfaces/msg/Softwarebuildinfo; state: bool; planversion: string text<=256B; ctrlversion: string text<=256B; kernal1: string text<=256B; kernal2: string text<=256B; productversion: string text<=256B |
| `rm_ros_interfaces/msg/Armsoftversionv3` | `Ros2Rm_ros_interfacesMsgArmsoftversionv3` | 32..2080 | product_version: string text<=256B; controller_version: string text<=256B; algorithm_info: string text<=256B; ctrl_info: rm_ros_interfaces/msg/Softwarebuildinfo; dynamic_info: string text<=256B; plan_info: rm_ros_interfaces/msg/Softwarebuildinfo |
| `rm_ros_interfaces/msg/Armsoftversionv4` | `Ros2Rm_ros_interfacesMsgArmsoftversionv4` | 36..2340 | product_version: string text<=256B; controller_version: string text<=256B; algorithm_info: string text<=256B; ctrl_info: rm_ros_interfaces/msg/Softwarebuildinfo; com_info: rm_ros_interfaces/msg/Softwarebuildinfo; program_info: rm_ros_interfaces/msg/Softwarebuildinfo |
| `rm_ros_interfaces/msg/Armstate` | `Ros2Rm_ros_interfacesMsgArmstate` | 64..128 | joint: float32 sequence<=16; pose: geometry_msgs/msg/Pose; err: uint16; err_len: uint8; dof: uint8 |
| `rm_ros_interfaces/msg/Cartepos` | `Ros2Rm_ros_interfacesMsgCartepos` | 57..57 | pose: geometry_msgs/msg/Pose; follow: bool |
| `rm_ros_interfaces/msg/Carteposcustom` | `Ros2Rm_ros_interfacesMsgCarteposcustom` | 59..59 | pose: geometry_msgs/msg/Pose; follow: bool; trajectory_mode: uint8; radio: uint8 |
| `rm_ros_interfaces/msg/Expandpos` | `Ros2Rm_ros_interfacesMsgExpandpos` | 7..7 | pos: int32; speed: uint16; block: bool |
| `rm_ros_interfaces/msg/Expandstate` | `Ros2Rm_ros_interfacesMsgExpandstate` | 12..12 | pos: int32; current: int32; err_flag: uint16; mode: int16 |
| `rm_ros_interfaces/msg/Flowchartrunstate` | `Ros2Rm_ros_interfacesMsgFlowchartrunstate` | 13..525 | run_state: uint8; id: uint8; name: string text<=256B; plan_speed: uint8; step_mode: uint8; modal_id: string text<=256B; state: bool |
| `rm_ros_interfaces/msg/Force_Position_State` | `Ros2Rm_ros_interfacesMsgForce_Position_State` | 30..30 | joint: float32[6]; force: float32; arm_err: uint16 |
| `rm_ros_interfaces/msg/Forcepositionmove` | `Ros2Rm_ros_interfacesMsgForcepositionmove` | 121..185 | pose: geometry_msgs/msg/Pose; joint: float32 sequence<=16; flag: uint8; sensor: uint8; mode: uint8; control_mode: uint8[6]; follow: bool; desired_force: float32[6]; limit_vel: float32[6]; trajectory_mode: uint8; radio: uint16 |
| `rm_ros_interfaces/msg/Forcepositionmovejoint` | `Ros2Rm_ros_interfacesMsgForcepositionmovejoint` | 14..78 | joint: float32 sequence<=16; sensor: uint8; mode: uint8; dir: int16; force: float32; follow: bool; dof: uint8 |
| `rm_ros_interfaces/msg/Forcepositionmovepose` | `Ros2Rm_ros_interfacesMsgForcepositionmovepose` | 62..62 | pose: geometry_msgs/msg/Pose; sensor: uint8; mode: uint8; dir: uint8; force: int16; follow: bool |
| `rm_ros_interfaces/msg/GetArmState_Command` | `Ros2Rm_ros_interfacesMsgGetArmState_Command` | 4..260 | command: string text<=256B |
| `rm_ros_interfaces/msg/Getallframe` | `Ros2Rm_ros_interfacesMsgGetallframe` | 40..2600 | frame_name: string[10] text<=256B |
| `rm_ros_interfaces/msg/Getmodbustcpmasterlist` | `Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist` | 12..268 | page_num: int32; page_size: int32; vague_search: string text<=256B |
| `rm_ros_interfaces/msg/Gettrajectorylist` | `Ros2Rm_ros_interfacesMsgGettrajectorylist` | 12..268 | page_num: int32; page_size: int32; vague_search: string text<=256B |
| `rm_ros_interfaces/msg/Gripperpick` | `Ros2Rm_ros_interfacesMsgGripperpick` | 7..7 | speed: uint16; force: uint16; block: bool; timeout: uint16 |
| `rm_ros_interfaces/msg/Gripperset` | `Ros2Rm_ros_interfacesMsgGripperset` | 5..5 | position: uint16; block: bool; timeout: uint16 |
| `rm_ros_interfaces/msg/Handangle` | `Ros2Rm_ros_interfacesMsgHandangle` | 13..13 | hand_angle: int16[6]; block: bool |
| `rm_ros_interfaces/msg/Handforce` | `Ros2Rm_ros_interfacesMsgHandforce` | 2..2 | hand_force: uint16 |
| `rm_ros_interfaces/msg/Handposture` | `Ros2Rm_ros_interfacesMsgHandposture` | 5..5 | posture_num: uint16; block: bool; timeout: uint16 |
| `rm_ros_interfaces/msg/Handseq` | `Ros2Rm_ros_interfacesMsgHandseq` | 5..5 | seq_num: uint16; block: bool; timeout: uint16 |
| `rm_ros_interfaces/msg/Handspeed` | `Ros2Rm_ros_interfacesMsgHandspeed` | 2..2 | hand_speed: uint16 |
| `rm_ros_interfaces/msg/Handstatus` | `Ros2Rm_ros_interfacesMsgHandstatus` | 50..50 | hand_angle: uint16[6]; hand_pos: uint16[6]; hand_state: uint16[6]; hand_force: uint16[6]; hand_err: uint16 |
| `rm_ros_interfaces/msg/Jointcurrent` | `Ros2Rm_ros_interfacesMsgJointcurrent` | 4..68 | joint_current: float32 sequence<=16 |
| `rm_ros_interfaces/msg/Jointenflag` | `Ros2Rm_ros_interfacesMsgJointenflag` | 4..20 | joint_en_flag: bool sequence<=16 |
| `rm_ros_interfaces/msg/Jointerrclear` | `Ros2Rm_ros_interfacesMsgJointerrclear` | 1..1 | joint_num: uint8 |
| `rm_ros_interfaces/msg/Jointerrorcode` | `Ros2Rm_ros_interfacesMsgJointerrorcode` | 5..37 | joint_error: uint16 sequence<=16; dof: uint8 |
| `rm_ros_interfaces/msg/Jointpos` | `Ros2Rm_ros_interfacesMsgJointpos` | 10..74 | joint: float32 sequence<=16; follow: bool; expand: float32; dof: uint8 |
| `rm_ros_interfaces/msg/Jointposcustom` | `Ros2Rm_ros_interfacesMsgJointposcustom` | 12..76 | joint: float32 sequence<=16; follow: bool; expand: float32; dof: uint8; trajectory_mode: uint8; radio: uint8 |
| `rm_ros_interfaces/msg/Jointposeeuler` | `Ros2Rm_ros_interfacesMsgJointposeeuler` | 24..24 | euler: float32[3]; position: float32[3] |
| `rm_ros_interfaces/msg/Jointspeed` | `Ros2Rm_ros_interfacesMsgJointspeed` | 4..68 | joint_speed: float32 sequence<=16 |
| `rm_ros_interfaces/msg/Jointteach` | `Ros2Rm_ros_interfacesMsgJointteach` | 3..3 | num: uint8; direction: uint8; speed: uint8 |
| `rm_ros_interfaces/msg/Jointtemperature` | `Ros2Rm_ros_interfacesMsgJointtemperature` | 4..68 | joint_temperature: float32 sequence<=16 |
| `rm_ros_interfaces/msg/Jointversion` | `Ros2Rm_ros_interfacesMsgJointversion` | 5..4165 | joint_version: string sequence<=16 text<=256B; state: bool |
| `rm_ros_interfaces/msg/Jointvoltage` | `Ros2Rm_ros_interfacesMsgJointvoltage` | 4..68 | joint_voltage: float32 sequence<=16 |
| `rm_ros_interfaces/msg/Liftheight` | `Ros2Rm_ros_interfacesMsgLiftheight` | 5..5 | height: uint16; speed: uint16; block: bool |
| `rm_ros_interfaces/msg/Liftspeed` | `Ros2Rm_ros_interfacesMsgLiftspeed` | 2..2 | speed: int16 |
| `rm_ros_interfaces/msg/Liftstate` | `Ros2Rm_ros_interfacesMsgLiftstate` | 8..8 | height: int16; current: int16; err_flag: uint16; mode: int16 |
| `rm_ros_interfaces/msg/Mastername` | `Ros2Rm_ros_interfacesMsgMastername` | 4..260 | master_name: string text<=256B |
| `rm_ros_interfaces/msg/Modbusreaddata` | `Ros2Rm_ros_interfacesMsgModbusreaddata` | 5..69 | read_data: int32 sequence<=16; state: bool |
| `rm_ros_interfaces/msg/Modbusrtureadparams` | `Ros2Rm_ros_interfacesMsgModbusrtureadparams` | 16..16 | address: int32; device: int32; type: int32; num: int32 |
| `rm_ros_interfaces/msg/Modbusrtuwriteparams` | `Ros2Rm_ros_interfacesMsgModbusrtuwriteparams` | 20..84 | address: int32; device: int32; type: int32; num: int32; data: int32 sequence<=16 |
| `rm_ros_interfaces/msg/Modbustcpmasterinfo` | `Ros2Rm_ros_interfacesMsgModbustcpmasterinfo` | 13..525 | master_name: string text<=256B; ip: string text<=256B; port: int32; state: bool |
| `rm_ros_interfaces/msg/Modbustcpmasterlist` | `Ros2Rm_ros_interfacesMsgModbustcpmasterlist` | 12..8668 | page_num: uint8; page_size: uint8; total_size: uint8; vague_search: string text<=256B; master_list: rm_ros_interfaces/msg/Modbustcpmasterinfo sequence<=16; state: bool |
| `rm_ros_interfaces/msg/Modbustcpmasterupdata` | `Ros2Rm_ros_interfacesMsgModbustcpmasterupdata` | 16..784 | master_name: string text<=256B; new_master_name: string text<=256B; ip: string text<=256B; port: int32 |
| `rm_ros_interfaces/msg/Modbustcpreadparams` | `Ros2Rm_ros_interfacesMsgModbustcpreadparams` | 20..532 | address: int32; master_name: string text<=256B; ip: string text<=256B; port: int32; num: int32 |
| `rm_ros_interfaces/msg/Modbustcpwriteparams` | `Ros2Rm_ros_interfacesMsgModbustcpwriteparams` | 24..600 | address: int32; master_name: string text<=256B; ip: string text<=256B; port: int32; num: int32; data: int32 sequence<=16 |
| `rm_ros_interfaces/msg/Movec` | `Ros2Rm_ros_interfacesMsgMovec` | 116..116 | pose_mid: geometry_msgs/msg/Pose; pose_end: geometry_msgs/msg/Pose; speed: uint8; trajectory_connect: uint8; block: bool; loop: uint8 |
| `rm_ros_interfaces/msg/Movej` | `Ros2Rm_ros_interfacesMsgMovej` | 8..72 | joint: float32 sequence<=16; speed: uint8; block: bool; trajectory_connect: uint8; dof: uint8 |
| `rm_ros_interfaces/msg/Movejp` | `Ros2Rm_ros_interfacesMsgMovejp` | 59..59 | pose: geometry_msgs/msg/Pose; speed: uint8; trajectory_connect: uint8; block: bool |
| `rm_ros_interfaces/msg/Movel` | `Ros2Rm_ros_interfacesMsgMovel` | 59..59 | pose: geometry_msgs/msg/Pose; speed: uint8; trajectory_connect: uint8; block: bool |
| `rm_ros_interfaces/msg/Moveloffset` | `Ros2Rm_ros_interfacesMsgMoveloffset` | 67..67 | pose: geometry_msgs/msg/Pose; speed: int32; r: int32; trajectory_connect: bool; frame_type: bool; block: bool |
| `rm_ros_interfaces/msg/Ortteach` | `Ros2Rm_ros_interfacesMsgOrtteach` | 3..3 | type: uint8; direction: uint8; speed: uint8 |
| `rm_ros_interfaces/msg/Posteach` | `Ros2Rm_ros_interfacesMsgPosteach` | 3..3 | type: uint8; direction: uint8; speed: uint8 |
| `rm_ros_interfaces/msg/Programrunstate` | `Ros2Rm_ros_interfacesMsgProgramrunstate` | 37..165 | run_state: int32; id: int32; edit_id: int32; plan_num: int32; total_loop: int32; step_mode: int32; plan_speed: int32; loop_num: int32 sequence<=16; loop_cont: int32 sequence<=16; state: bool |
| `rm_ros_interfaces/msg/RS485params` | `Ros2Rm_ros_interfacesMsgRS485params` | 9..9 | mode: int32; baudrate: int32; state: bool |
| `rm_ros_interfaces/msg/Rmerr` | `Ros2Rm_ros_interfacesMsgRmerr` | 5..69 | err_len: uint8; err: int32 sequence<=16 |
| `rm_ros_interfaces/msg/Rmplusbase` | `Ros2Rm_ros_interfacesMsgRmplusbase` | 413..1437 | manu: string text<=256B; type: int8; hv: string text<=256B; sv: string text<=256B; bv: string text<=256B; id: int32; dof: int8; check: int8; bee: int8; force: bool; touch: bool; touch_num: int8; touch_sw: int8; hand: int8; pos_up: int32[12]; pos_low: int32[12]; angle_up: int32[12]; angle_low: int32[12]; speed_up: int32[12]; speed_low: int32[12]; force_up: int32[12]; force_low: int32[12] |
| `rm_ros_interfaces/msg/Rmplusstate` | `Ros2Rm_ros_interfacesMsgRmplusstate` | 724..724 | sys_state: int32; dof_state: int32[12]; dof_err: int32[12]; pos: int32[12]; speed: int32[12]; angle: int32[12]; current: int32[12]; normal_force: int32[18]; tangential_force: int32[18]; tangential_force_dir: int32[18]; tsa: uint32[12]; tma: uint32[12]; touch_data: int32[18]; force: int32[12] |
| `rm_ros_interfaces/msg/Rmversion` | `Ros2Rm_ros_interfacesMsgRmversion` | 4..260 | version: string text<=256B |
| `rm_ros_interfaces/msg/RobotInfo` | `Ros2Rm_ros_interfacesMsgRobotInfo` | 5..5 | arm_dof: uint8; arm_model: uint8; force_type: uint8; robot_controller_version: uint8; state: bool |
| `rm_ros_interfaces/msg/Sendproject` | `Ros2Rm_ros_interfacesMsgSendproject` | 32..288 | project_path: string text<=256B; project_path_len: int32; plan_speed: int32; only_save: int32; save_id: int32; step_flag: int32; auto_start: int32; project_type: int32 |
| `rm_ros_interfaces/msg/Setforceposition` | `Ros2Rm_ros_interfacesMsgSetforceposition` | 5..5 | sensor: uint8; mode: uint8; direction: uint8; n: int16 |
| `rm_ros_interfaces/msg/Setrealtimepush` | `Ros2Rm_ros_interfacesMsgSetrealtimepush` | 18..274 | cycle: uint16; port: uint16; force_coordinate: uint16; ip: string text<=256B; aloha_state_enable: bool; arm_current_status_enable: bool; expand_state_enable: bool; hand_enable: bool; joint_speed_enable: bool; lift_state_enable: bool; plus_base_enable: bool; plus_state_enable: bool |
| `rm_ros_interfaces/msg/Sixforce` | `Ros2Rm_ros_interfacesMsgSixforce` | 24..24 | force_fx: float32; force_fy: float32; force_fz: float32; force_mx: float32; force_my: float32; force_mz: float32 |
| `rm_ros_interfaces/msg/Stop` | `Ros2Rm_ros_interfacesMsgStop` | 1..1 | state: bool |
| `rm_ros_interfaces/msg/Toolsoftwareversionv4` | `Ros2Rm_ros_interfacesMsgToolsoftwareversionv4` | 5..261 | tool_version: string text<=256B; state: bool |
| `rm_ros_interfaces/msg/Trajectoryinfo` | `Ros2Rm_ros_interfacesMsgTrajectoryinfo` | 13..525 | name: string text<=256B; create_time: string text<=256B; point_num: int32; state: bool |
| `rm_ros_interfaces/msg/Trajectorylist` | `Ros2Rm_ros_interfacesMsgTrajectorylist` | 21..8677 | page_num: int32; page_size: int32; total_size: int32; vague_search: string text<=256B; tra_list: rm_ros_interfaces/msg/Trajectoryinfo sequence<=16; state: bool |
| `rm_ros_interfaces/msg/Udpexpandstate` | `Ros2Rm_ros_interfacesMsgUdpexpandstate` | 14..14 | pos: int32; current: int32; err_flag: uint16; en_flag: bool; joint_id: uint8; mode: int16 |
| `rm_ros_interfaces/msg/Udpliftstate` | `Ros2Rm_ros_interfacesMsgUdpliftstate` | 13..13 | height: int32; pos: float32; current: int16; en_flag: bool; err_flag: uint16 |

Interfaces:

- `geometry_msgs/msg/Point` (message): message → `Ros2Geometry_msgsMsgPoint`
- `geometry_msgs/msg/Pose` (message): message → `Ros2Geometry_msgsMsgPose`
- `geometry_msgs/msg/Quaternion` (message): message → `Ros2Geometry_msgsMsgQuaternion`
- `rm_ros_interfaces/msg/Alohastate` (message): message → `Ros2Rm_ros_interfacesMsgAlohastate`
- `rm_ros_interfaces/msg/Armcurrentstatus` (message): message → `Ros2Rm_ros_interfacesMsgArmcurrentstatus`
- `rm_ros_interfaces/msg/Armoriginalstate` (message): message → `Ros2Rm_ros_interfacesMsgArmoriginalstate`
- `rm_ros_interfaces/msg/Armsoftversion` (message): message → `Ros2Rm_ros_interfacesMsgArmsoftversion`
- `rm_ros_interfaces/msg/Armsoftversionv3` (message): message → `Ros2Rm_ros_interfacesMsgArmsoftversionv3`
- `rm_ros_interfaces/msg/Armsoftversionv4` (message): message → `Ros2Rm_ros_interfacesMsgArmsoftversionv4`
- `rm_ros_interfaces/msg/Armstate` (message): message → `Ros2Rm_ros_interfacesMsgArmstate`
- `rm_ros_interfaces/msg/Cartepos` (message): message → `Ros2Rm_ros_interfacesMsgCartepos`
- `rm_ros_interfaces/msg/Carteposcustom` (message): message → `Ros2Rm_ros_interfacesMsgCarteposcustom`
- `rm_ros_interfaces/msg/Expandpos` (message): message → `Ros2Rm_ros_interfacesMsgExpandpos`
- `rm_ros_interfaces/msg/Expandstate` (message): message → `Ros2Rm_ros_interfacesMsgExpandstate`
- `rm_ros_interfaces/msg/Flowchartrunstate` (message): message → `Ros2Rm_ros_interfacesMsgFlowchartrunstate`
- `rm_ros_interfaces/msg/Force_Position_State` (message): message → `Ros2Rm_ros_interfacesMsgForce_Position_State`
- `rm_ros_interfaces/msg/Forcepositionmove` (message): message → `Ros2Rm_ros_interfacesMsgForcepositionmove`
- `rm_ros_interfaces/msg/Forcepositionmovejoint` (message): message → `Ros2Rm_ros_interfacesMsgForcepositionmovejoint`
- `rm_ros_interfaces/msg/Forcepositionmovepose` (message): message → `Ros2Rm_ros_interfacesMsgForcepositionmovepose`
- `rm_ros_interfaces/msg/GetArmState_Command` (message): message → `Ros2Rm_ros_interfacesMsgGetArmState_Command`
- `rm_ros_interfaces/msg/Getallframe` (message): message → `Ros2Rm_ros_interfacesMsgGetallframe`
- `rm_ros_interfaces/msg/Getmodbustcpmasterlist` (message): message → `Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist`
- `rm_ros_interfaces/msg/Gettrajectorylist` (message): message → `Ros2Rm_ros_interfacesMsgGettrajectorylist`
- `rm_ros_interfaces/msg/Gripperpick` (message): message → `Ros2Rm_ros_interfacesMsgGripperpick`
- `rm_ros_interfaces/msg/Gripperset` (message): message → `Ros2Rm_ros_interfacesMsgGripperset`
- `rm_ros_interfaces/msg/Handangle` (message): message → `Ros2Rm_ros_interfacesMsgHandangle`
- `rm_ros_interfaces/msg/Handforce` (message): message → `Ros2Rm_ros_interfacesMsgHandforce`
- `rm_ros_interfaces/msg/Handposture` (message): message → `Ros2Rm_ros_interfacesMsgHandposture`
- `rm_ros_interfaces/msg/Handseq` (message): message → `Ros2Rm_ros_interfacesMsgHandseq`
- `rm_ros_interfaces/msg/Handspeed` (message): message → `Ros2Rm_ros_interfacesMsgHandspeed`
- `rm_ros_interfaces/msg/Handstatus` (message): message → `Ros2Rm_ros_interfacesMsgHandstatus`
- `rm_ros_interfaces/msg/Jointcurrent` (message): message → `Ros2Rm_ros_interfacesMsgJointcurrent`
- `rm_ros_interfaces/msg/Jointenflag` (message): message → `Ros2Rm_ros_interfacesMsgJointenflag`
- `rm_ros_interfaces/msg/Jointerrclear` (message): message → `Ros2Rm_ros_interfacesMsgJointerrclear`
- `rm_ros_interfaces/msg/Jointerrorcode` (message): message → `Ros2Rm_ros_interfacesMsgJointerrorcode`
- `rm_ros_interfaces/msg/Jointpos` (message): message → `Ros2Rm_ros_interfacesMsgJointpos`
- `rm_ros_interfaces/msg/Jointposcustom` (message): message → `Ros2Rm_ros_interfacesMsgJointposcustom`
- `rm_ros_interfaces/msg/Jointposeeuler` (message): message → `Ros2Rm_ros_interfacesMsgJointposeeuler`
- `rm_ros_interfaces/msg/Jointspeed` (message): message → `Ros2Rm_ros_interfacesMsgJointspeed`
- `rm_ros_interfaces/msg/Jointteach` (message): message → `Ros2Rm_ros_interfacesMsgJointteach`
- `rm_ros_interfaces/msg/Jointtemperature` (message): message → `Ros2Rm_ros_interfacesMsgJointtemperature`
- `rm_ros_interfaces/msg/Jointversion` (message): message → `Ros2Rm_ros_interfacesMsgJointversion`
- `rm_ros_interfaces/msg/Jointvoltage` (message): message → `Ros2Rm_ros_interfacesMsgJointvoltage`
- `rm_ros_interfaces/msg/Liftheight` (message): message → `Ros2Rm_ros_interfacesMsgLiftheight`
- `rm_ros_interfaces/msg/Liftspeed` (message): message → `Ros2Rm_ros_interfacesMsgLiftspeed`
- `rm_ros_interfaces/msg/Liftstate` (message): message → `Ros2Rm_ros_interfacesMsgLiftstate`
- `rm_ros_interfaces/msg/Mastername` (message): message → `Ros2Rm_ros_interfacesMsgMastername`
- `rm_ros_interfaces/msg/Modbusreaddata` (message): message → `Ros2Rm_ros_interfacesMsgModbusreaddata`
- `rm_ros_interfaces/msg/Modbusrtureadparams` (message): message → `Ros2Rm_ros_interfacesMsgModbusrtureadparams`
- `rm_ros_interfaces/msg/Modbusrtuwriteparams` (message): message → `Ros2Rm_ros_interfacesMsgModbusrtuwriteparams`
- `rm_ros_interfaces/msg/Modbustcpmasterinfo` (message): message → `Ros2Rm_ros_interfacesMsgModbustcpmasterinfo`
- `rm_ros_interfaces/msg/Modbustcpmasterlist` (message): message → `Ros2Rm_ros_interfacesMsgModbustcpmasterlist`
- `rm_ros_interfaces/msg/Modbustcpmasterupdata` (message): message → `Ros2Rm_ros_interfacesMsgModbustcpmasterupdata`
- `rm_ros_interfaces/msg/Modbustcpreadparams` (message): message → `Ros2Rm_ros_interfacesMsgModbustcpreadparams`
- `rm_ros_interfaces/msg/Modbustcpwriteparams` (message): message → `Ros2Rm_ros_interfacesMsgModbustcpwriteparams`
- `rm_ros_interfaces/msg/Movec` (message): message → `Ros2Rm_ros_interfacesMsgMovec`
- `rm_ros_interfaces/msg/Movej` (message): message → `Ros2Rm_ros_interfacesMsgMovej`
- `rm_ros_interfaces/msg/Movejp` (message): message → `Ros2Rm_ros_interfacesMsgMovejp`
- `rm_ros_interfaces/msg/Movel` (message): message → `Ros2Rm_ros_interfacesMsgMovel`
- `rm_ros_interfaces/msg/Moveloffset` (message): message → `Ros2Rm_ros_interfacesMsgMoveloffset`
- `rm_ros_interfaces/msg/Ortteach` (message): message → `Ros2Rm_ros_interfacesMsgOrtteach`
- `rm_ros_interfaces/msg/Posteach` (message): message → `Ros2Rm_ros_interfacesMsgPosteach`
- `rm_ros_interfaces/msg/Programrunstate` (message): message → `Ros2Rm_ros_interfacesMsgProgramrunstate`
- `rm_ros_interfaces/msg/RS485params` (message): message → `Ros2Rm_ros_interfacesMsgRS485params`
- `rm_ros_interfaces/msg/Rmerr` (message): message → `Ros2Rm_ros_interfacesMsgRmerr`
- `rm_ros_interfaces/msg/Rmplusbase` (message): message → `Ros2Rm_ros_interfacesMsgRmplusbase`
- `rm_ros_interfaces/msg/Rmplusstate` (message): message → `Ros2Rm_ros_interfacesMsgRmplusstate`
- `rm_ros_interfaces/msg/Rmversion` (message): message → `Ros2Rm_ros_interfacesMsgRmversion`
- `rm_ros_interfaces/msg/RobotInfo` (message): message → `Ros2Rm_ros_interfacesMsgRobotInfo`
- `rm_ros_interfaces/msg/Sendproject` (message): message → `Ros2Rm_ros_interfacesMsgSendproject`
- `rm_ros_interfaces/msg/Setforceposition` (message): message → `Ros2Rm_ros_interfacesMsgSetforceposition`
- `rm_ros_interfaces/msg/Setrealtimepush` (message): message → `Ros2Rm_ros_interfacesMsgSetrealtimepush`
- `rm_ros_interfaces/msg/Sixforce` (message): message → `Ros2Rm_ros_interfacesMsgSixforce`
- `rm_ros_interfaces/msg/Softwarebuildinfo` (message): message → `Ros2Rm_ros_interfacesMsgSoftwarebuildinfo`
- `rm_ros_interfaces/msg/Stop` (message): message → `Ros2Rm_ros_interfacesMsgStop`
- `rm_ros_interfaces/msg/Toolsoftwareversionv4` (message): message → `Ros2Rm_ros_interfacesMsgToolsoftwareversionv4`
- `rm_ros_interfaces/msg/Trajectoryinfo` (message): message → `Ros2Rm_ros_interfacesMsgTrajectoryinfo`
- `rm_ros_interfaces/msg/Trajectorylist` (message): message → `Ros2Rm_ros_interfacesMsgTrajectorylist`
- `rm_ros_interfaces/msg/Udpexpandstate` (message): message → `Ros2Rm_ros_interfacesMsgUdpexpandstate`
- `rm_ros_interfaces/msg/Udpliftstate` (message): message → `Ros2Rm_ros_interfacesMsgUdpliftstate`

Immutable upstream sources:

- [RealManRobot/ros2_rm_robot @ 68119369176d77c9d0c07bdba5193e71095d8d3a](https://github.com/RealManRobot/ros2_rm_robot/tree/68119369176d77c9d0c07bdba5193e71095d8d3a)
- [ros2/common_interfaces @ 6356bc82f3a034f5d2c61c6760df0007a6cadfb0](https://github.com/ros2/common_interfaces/tree/6356bc82f3a034f5d2c61c6760df0007a6cadfb0)

## ros2_humble

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `geometry_msgs/msg/Point` | `Ros2Geometry_msgsMsgPoint` | 24..24 | x: float64; y: float64; z: float64 |
| `geometry_msgs/msg/Quaternion` | `Ros2Geometry_msgsMsgQuaternion` | 32..32 | x: float64; y: float64; z: float64; w: float64 |
| `geometry_msgs/msg/Pose` | `Ros2Geometry_msgsMsgPose` | 56..56 | position: geometry_msgs/msg/Point; orientation: geometry_msgs/msg/Quaternion |
| `rm_ros_interfaces/msg/Alohastate` | `Ros2Rm_ros_interfacesMsgAlohastate` | 4..4 | io1_state: int16; io2_state: int16 |
| `rm_ros_interfaces/msg/Armcurrentstatus` | `Ros2Rm_ros_interfacesMsgArmcurrentstatus` | 2..2 | arm_current_status: uint16 |
| `rm_ros_interfaces/msg/Armoriginalstate` | `Ros2Rm_ros_interfacesMsgArmoriginalstate` | 32..96 | joint: float32 sequence<=16; pose: float32[6]; err: uint16; err_len: uint8; dof: uint8 |
| `rm_ros_interfaces/msg/Softwarebuildinfo` | `Ros2Rm_ros_interfacesMsgSoftwarebuildinfo` | 8..520 | build_time: string text<=256B; version: string text<=256B |
| `rm_ros_interfaces/msg/Armsoftversion` | `Ros2Rm_ros_interfacesMsgArmsoftversion` | 69..4421 | product_version: string text<=256B; controller_version: string text<=256B; algorithm_info: string text<=256B; ctrl_info: rm_ros_interfaces/msg/Softwarebuildinfo; dynamic_info: string text<=256B; plan_info: rm_ros_interfaces/msg/Softwarebuildinfo; com_info: rm_ros_interfaces/msg/Softwarebuildinfo; program_info: rm_ros_interfaces/msg/Softwarebuildinfo; state: bool; planversion: string text<=256B; ctrlversion: string text<=256B; kernal1: string text<=256B; kernal2: string text<=256B; productversion: string text<=256B |
| `rm_ros_interfaces/msg/Armsoftversionv3` | `Ros2Rm_ros_interfacesMsgArmsoftversionv3` | 32..2080 | product_version: string text<=256B; controller_version: string text<=256B; algorithm_info: string text<=256B; ctrl_info: rm_ros_interfaces/msg/Softwarebuildinfo; dynamic_info: string text<=256B; plan_info: rm_ros_interfaces/msg/Softwarebuildinfo |
| `rm_ros_interfaces/msg/Armsoftversionv4` | `Ros2Rm_ros_interfacesMsgArmsoftversionv4` | 36..2340 | product_version: string text<=256B; controller_version: string text<=256B; algorithm_info: string text<=256B; ctrl_info: rm_ros_interfaces/msg/Softwarebuildinfo; com_info: rm_ros_interfaces/msg/Softwarebuildinfo; program_info: rm_ros_interfaces/msg/Softwarebuildinfo |
| `rm_ros_interfaces/msg/Armstate` | `Ros2Rm_ros_interfacesMsgArmstate` | 64..128 | joint: float32 sequence<=16; pose: geometry_msgs/msg/Pose; err: uint16; err_len: uint8; dof: uint8 |
| `rm_ros_interfaces/msg/Cartepos` | `Ros2Rm_ros_interfacesMsgCartepos` | 57..57 | pose: geometry_msgs/msg/Pose; follow: bool |
| `rm_ros_interfaces/msg/Carteposcustom` | `Ros2Rm_ros_interfacesMsgCarteposcustom` | 59..59 | pose: geometry_msgs/msg/Pose; follow: bool; trajectory_mode: uint8; radio: uint8 |
| `rm_ros_interfaces/msg/Expandpos` | `Ros2Rm_ros_interfacesMsgExpandpos` | 7..7 | pos: int32; speed: uint16; block: bool |
| `rm_ros_interfaces/msg/Expandstate` | `Ros2Rm_ros_interfacesMsgExpandstate` | 12..12 | pos: int32; current: int32; err_flag: uint16; mode: int16 |
| `rm_ros_interfaces/msg/Flowchartrunstate` | `Ros2Rm_ros_interfacesMsgFlowchartrunstate` | 13..525 | run_state: uint8; id: uint8; name: string text<=256B; plan_speed: uint8; step_mode: uint8; modal_id: string text<=256B; state: bool |
| `rm_ros_interfaces/msg/Force_Position_State` | `Ros2Rm_ros_interfacesMsgForce_Position_State` | 30..30 | joint: float32[6]; force: float32; arm_err: uint16 |
| `rm_ros_interfaces/msg/Forcepositionmove` | `Ros2Rm_ros_interfacesMsgForcepositionmove` | 121..185 | pose: geometry_msgs/msg/Pose; joint: float32 sequence<=16; flag: uint8; sensor: uint8; mode: uint8; control_mode: uint8[6]; follow: bool; desired_force: float32[6]; limit_vel: float32[6]; trajectory_mode: uint8; radio: uint16 |
| `rm_ros_interfaces/msg/Forcepositionmovejoint` | `Ros2Rm_ros_interfacesMsgForcepositionmovejoint` | 14..78 | joint: float32 sequence<=16; sensor: uint8; mode: uint8; dir: int16; force: float32; follow: bool; dof: uint8 |
| `rm_ros_interfaces/msg/Forcepositionmovepose` | `Ros2Rm_ros_interfacesMsgForcepositionmovepose` | 62..62 | pose: geometry_msgs/msg/Pose; sensor: uint8; mode: uint8; dir: uint8; force: int16; follow: bool |
| `rm_ros_interfaces/msg/GetArmState_Command` | `Ros2Rm_ros_interfacesMsgGetArmState_Command` | 4..260 | command: string text<=256B |
| `rm_ros_interfaces/msg/Getallframe` | `Ros2Rm_ros_interfacesMsgGetallframe` | 40..2600 | frame_name: string[10] text<=256B |
| `rm_ros_interfaces/msg/Getmodbustcpmasterlist` | `Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist` | 12..268 | page_num: int32; page_size: int32; vague_search: string text<=256B |
| `rm_ros_interfaces/msg/Gettrajectorylist` | `Ros2Rm_ros_interfacesMsgGettrajectorylist` | 12..268 | page_num: int32; page_size: int32; vague_search: string text<=256B |
| `rm_ros_interfaces/msg/Gripperpick` | `Ros2Rm_ros_interfacesMsgGripperpick` | 7..7 | speed: uint16; force: uint16; block: bool; timeout: uint16 |
| `rm_ros_interfaces/msg/Gripperset` | `Ros2Rm_ros_interfacesMsgGripperset` | 5..5 | position: uint16; block: bool; timeout: uint16 |
| `rm_ros_interfaces/msg/Handangle` | `Ros2Rm_ros_interfacesMsgHandangle` | 13..13 | hand_angle: int16[6]; block: bool |
| `rm_ros_interfaces/msg/Handforce` | `Ros2Rm_ros_interfacesMsgHandforce` | 2..2 | hand_force: uint16 |
| `rm_ros_interfaces/msg/Handposture` | `Ros2Rm_ros_interfacesMsgHandposture` | 5..5 | posture_num: uint16; block: bool; timeout: uint16 |
| `rm_ros_interfaces/msg/Handseq` | `Ros2Rm_ros_interfacesMsgHandseq` | 5..5 | seq_num: uint16; block: bool; timeout: uint16 |
| `rm_ros_interfaces/msg/Handspeed` | `Ros2Rm_ros_interfacesMsgHandspeed` | 2..2 | hand_speed: uint16 |
| `rm_ros_interfaces/msg/Handstatus` | `Ros2Rm_ros_interfacesMsgHandstatus` | 50..50 | hand_angle: uint16[6]; hand_pos: uint16[6]; hand_state: uint16[6]; hand_force: uint16[6]; hand_err: uint16 |
| `rm_ros_interfaces/msg/Jointcurrent` | `Ros2Rm_ros_interfacesMsgJointcurrent` | 4..68 | joint_current: float32 sequence<=16 |
| `rm_ros_interfaces/msg/Jointenflag` | `Ros2Rm_ros_interfacesMsgJointenflag` | 4..20 | joint_en_flag: bool sequence<=16 |
| `rm_ros_interfaces/msg/Jointerrclear` | `Ros2Rm_ros_interfacesMsgJointerrclear` | 1..1 | joint_num: uint8 |
| `rm_ros_interfaces/msg/Jointerrorcode` | `Ros2Rm_ros_interfacesMsgJointerrorcode` | 5..37 | joint_error: uint16 sequence<=16; dof: uint8 |
| `rm_ros_interfaces/msg/Jointpos` | `Ros2Rm_ros_interfacesMsgJointpos` | 10..74 | joint: float32 sequence<=16; follow: bool; expand: float32; dof: uint8 |
| `rm_ros_interfaces/msg/Jointposcustom` | `Ros2Rm_ros_interfacesMsgJointposcustom` | 12..76 | joint: float32 sequence<=16; follow: bool; expand: float32; dof: uint8; trajectory_mode: uint8; radio: uint8 |
| `rm_ros_interfaces/msg/Jointposeeuler` | `Ros2Rm_ros_interfacesMsgJointposeeuler` | 24..24 | euler: float32[3]; position: float32[3] |
| `rm_ros_interfaces/msg/Jointspeed` | `Ros2Rm_ros_interfacesMsgJointspeed` | 4..68 | joint_speed: float32 sequence<=16 |
| `rm_ros_interfaces/msg/Jointteach` | `Ros2Rm_ros_interfacesMsgJointteach` | 3..3 | num: uint8; direction: uint8; speed: uint8 |
| `rm_ros_interfaces/msg/Jointtemperature` | `Ros2Rm_ros_interfacesMsgJointtemperature` | 4..68 | joint_temperature: float32 sequence<=16 |
| `rm_ros_interfaces/msg/Jointversion` | `Ros2Rm_ros_interfacesMsgJointversion` | 5..4165 | joint_version: string sequence<=16 text<=256B; state: bool |
| `rm_ros_interfaces/msg/Jointvoltage` | `Ros2Rm_ros_interfacesMsgJointvoltage` | 4..68 | joint_voltage: float32 sequence<=16 |
| `rm_ros_interfaces/msg/Liftheight` | `Ros2Rm_ros_interfacesMsgLiftheight` | 5..5 | height: uint16; speed: uint16; block: bool |
| `rm_ros_interfaces/msg/Liftspeed` | `Ros2Rm_ros_interfacesMsgLiftspeed` | 2..2 | speed: int16 |
| `rm_ros_interfaces/msg/Liftstate` | `Ros2Rm_ros_interfacesMsgLiftstate` | 8..8 | height: int16; current: int16; err_flag: uint16; mode: int16 |
| `rm_ros_interfaces/msg/Mastername` | `Ros2Rm_ros_interfacesMsgMastername` | 4..260 | master_name: string text<=256B |
| `rm_ros_interfaces/msg/Modbusreaddata` | `Ros2Rm_ros_interfacesMsgModbusreaddata` | 5..69 | read_data: int32 sequence<=16; state: bool |
| `rm_ros_interfaces/msg/Modbusrtureadparams` | `Ros2Rm_ros_interfacesMsgModbusrtureadparams` | 16..16 | address: int32; device: int32; type: int32; num: int32 |
| `rm_ros_interfaces/msg/Modbusrtuwriteparams` | `Ros2Rm_ros_interfacesMsgModbusrtuwriteparams` | 20..84 | address: int32; device: int32; type: int32; num: int32; data: int32 sequence<=16 |
| `rm_ros_interfaces/msg/Modbustcpmasterinfo` | `Ros2Rm_ros_interfacesMsgModbustcpmasterinfo` | 13..525 | master_name: string text<=256B; ip: string text<=256B; port: int32; state: bool |
| `rm_ros_interfaces/msg/Modbustcpmasterlist` | `Ros2Rm_ros_interfacesMsgModbustcpmasterlist` | 12..8668 | page_num: uint8; page_size: uint8; total_size: uint8; vague_search: string text<=256B; master_list: rm_ros_interfaces/msg/Modbustcpmasterinfo sequence<=16; state: bool |
| `rm_ros_interfaces/msg/Modbustcpmasterupdata` | `Ros2Rm_ros_interfacesMsgModbustcpmasterupdata` | 16..784 | master_name: string text<=256B; new_master_name: string text<=256B; ip: string text<=256B; port: int32 |
| `rm_ros_interfaces/msg/Modbustcpreadparams` | `Ros2Rm_ros_interfacesMsgModbustcpreadparams` | 20..532 | address: int32; master_name: string text<=256B; ip: string text<=256B; port: int32; num: int32 |
| `rm_ros_interfaces/msg/Modbustcpwriteparams` | `Ros2Rm_ros_interfacesMsgModbustcpwriteparams` | 24..600 | address: int32; master_name: string text<=256B; ip: string text<=256B; port: int32; num: int32; data: int32 sequence<=16 |
| `rm_ros_interfaces/msg/Movec` | `Ros2Rm_ros_interfacesMsgMovec` | 116..116 | pose_mid: geometry_msgs/msg/Pose; pose_end: geometry_msgs/msg/Pose; speed: uint8; trajectory_connect: uint8; block: bool; loop: uint8 |
| `rm_ros_interfaces/msg/Movej` | `Ros2Rm_ros_interfacesMsgMovej` | 8..72 | joint: float32 sequence<=16; speed: uint8; block: bool; trajectory_connect: uint8; dof: uint8 |
| `rm_ros_interfaces/msg/Movejp` | `Ros2Rm_ros_interfacesMsgMovejp` | 59..59 | pose: geometry_msgs/msg/Pose; speed: uint8; trajectory_connect: uint8; block: bool |
| `rm_ros_interfaces/msg/Movel` | `Ros2Rm_ros_interfacesMsgMovel` | 59..59 | pose: geometry_msgs/msg/Pose; speed: uint8; trajectory_connect: uint8; block: bool |
| `rm_ros_interfaces/msg/Moveloffset` | `Ros2Rm_ros_interfacesMsgMoveloffset` | 67..67 | pose: geometry_msgs/msg/Pose; speed: int32; r: int32; trajectory_connect: bool; frame_type: bool; block: bool |
| `rm_ros_interfaces/msg/Ortteach` | `Ros2Rm_ros_interfacesMsgOrtteach` | 3..3 | type: uint8; direction: uint8; speed: uint8 |
| `rm_ros_interfaces/msg/Posteach` | `Ros2Rm_ros_interfacesMsgPosteach` | 3..3 | type: uint8; direction: uint8; speed: uint8 |
| `rm_ros_interfaces/msg/Programrunstate` | `Ros2Rm_ros_interfacesMsgProgramrunstate` | 37..165 | run_state: int32; id: int32; edit_id: int32; plan_num: int32; total_loop: int32; step_mode: int32; plan_speed: int32; loop_num: int32 sequence<=16; loop_cont: int32 sequence<=16; state: bool |
| `rm_ros_interfaces/msg/RS485params` | `Ros2Rm_ros_interfacesMsgRS485params` | 9..9 | mode: int32; baudrate: int32; state: bool |
| `rm_ros_interfaces/msg/Rmerr` | `Ros2Rm_ros_interfacesMsgRmerr` | 5..69 | err_len: uint8; err: int32 sequence<=16 |
| `rm_ros_interfaces/msg/Rmplusbase` | `Ros2Rm_ros_interfacesMsgRmplusbase` | 413..1437 | manu: string text<=256B; type: int8; hv: string text<=256B; sv: string text<=256B; bv: string text<=256B; id: int32; dof: int8; check: int8; bee: int8; force: bool; touch: bool; touch_num: int8; touch_sw: int8; hand: int8; pos_up: int32[12]; pos_low: int32[12]; angle_up: int32[12]; angle_low: int32[12]; speed_up: int32[12]; speed_low: int32[12]; force_up: int32[12]; force_low: int32[12] |
| `rm_ros_interfaces/msg/Rmplusstate` | `Ros2Rm_ros_interfacesMsgRmplusstate` | 724..724 | sys_state: int32; dof_state: int32[12]; dof_err: int32[12]; pos: int32[12]; speed: int32[12]; angle: int32[12]; current: int32[12]; normal_force: int32[18]; tangential_force: int32[18]; tangential_force_dir: int32[18]; tsa: uint32[12]; tma: uint32[12]; touch_data: int32[18]; force: int32[12] |
| `rm_ros_interfaces/msg/Rmversion` | `Ros2Rm_ros_interfacesMsgRmversion` | 4..260 | version: string text<=256B |
| `rm_ros_interfaces/msg/RobotInfo` | `Ros2Rm_ros_interfacesMsgRobotInfo` | 5..5 | arm_dof: uint8; arm_model: uint8; force_type: uint8; robot_controller_version: uint8; state: bool |
| `rm_ros_interfaces/msg/Sendproject` | `Ros2Rm_ros_interfacesMsgSendproject` | 32..288 | project_path: string text<=256B; project_path_len: int32; plan_speed: int32; only_save: int32; save_id: int32; step_flag: int32; auto_start: int32; project_type: int32 |
| `rm_ros_interfaces/msg/Setforceposition` | `Ros2Rm_ros_interfacesMsgSetforceposition` | 5..5 | sensor: uint8; mode: uint8; direction: uint8; n: int16 |
| `rm_ros_interfaces/msg/Setrealtimepush` | `Ros2Rm_ros_interfacesMsgSetrealtimepush` | 18..274 | cycle: uint16; port: uint16; force_coordinate: uint16; ip: string text<=256B; aloha_state_enable: bool; arm_current_status_enable: bool; expand_state_enable: bool; hand_enable: bool; joint_speed_enable: bool; lift_state_enable: bool; plus_base_enable: bool; plus_state_enable: bool |
| `rm_ros_interfaces/msg/Sixforce` | `Ros2Rm_ros_interfacesMsgSixforce` | 24..24 | force_fx: float32; force_fy: float32; force_fz: float32; force_mx: float32; force_my: float32; force_mz: float32 |
| `rm_ros_interfaces/msg/Stop` | `Ros2Rm_ros_interfacesMsgStop` | 1..1 | state: bool |
| `rm_ros_interfaces/msg/Toolsoftwareversionv4` | `Ros2Rm_ros_interfacesMsgToolsoftwareversionv4` | 5..261 | tool_version: string text<=256B; state: bool |
| `rm_ros_interfaces/msg/Trajectoryinfo` | `Ros2Rm_ros_interfacesMsgTrajectoryinfo` | 13..525 | name: string text<=256B; create_time: string text<=256B; point_num: int32; state: bool |
| `rm_ros_interfaces/msg/Trajectorylist` | `Ros2Rm_ros_interfacesMsgTrajectorylist` | 21..8677 | page_num: int32; page_size: int32; total_size: int32; vague_search: string text<=256B; tra_list: rm_ros_interfaces/msg/Trajectoryinfo sequence<=16; state: bool |
| `rm_ros_interfaces/msg/Udpexpandstate` | `Ros2Rm_ros_interfacesMsgUdpexpandstate` | 14..14 | pos: int32; current: int32; err_flag: uint16; en_flag: bool; joint_id: uint8; mode: int16 |
| `rm_ros_interfaces/msg/Udpliftstate` | `Ros2Rm_ros_interfacesMsgUdpliftstate` | 13..13 | height: int32; pos: float32; current: int16; en_flag: bool; err_flag: uint16 |

Interfaces:

- `geometry_msgs/msg/Point` (message): message → `Ros2Geometry_msgsMsgPoint`
- `geometry_msgs/msg/Pose` (message): message → `Ros2Geometry_msgsMsgPose`
- `geometry_msgs/msg/Quaternion` (message): message → `Ros2Geometry_msgsMsgQuaternion`
- `rm_ros_interfaces/msg/Alohastate` (message): message → `Ros2Rm_ros_interfacesMsgAlohastate`
- `rm_ros_interfaces/msg/Armcurrentstatus` (message): message → `Ros2Rm_ros_interfacesMsgArmcurrentstatus`
- `rm_ros_interfaces/msg/Armoriginalstate` (message): message → `Ros2Rm_ros_interfacesMsgArmoriginalstate`
- `rm_ros_interfaces/msg/Armsoftversion` (message): message → `Ros2Rm_ros_interfacesMsgArmsoftversion`
- `rm_ros_interfaces/msg/Armsoftversionv3` (message): message → `Ros2Rm_ros_interfacesMsgArmsoftversionv3`
- `rm_ros_interfaces/msg/Armsoftversionv4` (message): message → `Ros2Rm_ros_interfacesMsgArmsoftversionv4`
- `rm_ros_interfaces/msg/Armstate` (message): message → `Ros2Rm_ros_interfacesMsgArmstate`
- `rm_ros_interfaces/msg/Cartepos` (message): message → `Ros2Rm_ros_interfacesMsgCartepos`
- `rm_ros_interfaces/msg/Carteposcustom` (message): message → `Ros2Rm_ros_interfacesMsgCarteposcustom`
- `rm_ros_interfaces/msg/Expandpos` (message): message → `Ros2Rm_ros_interfacesMsgExpandpos`
- `rm_ros_interfaces/msg/Expandstate` (message): message → `Ros2Rm_ros_interfacesMsgExpandstate`
- `rm_ros_interfaces/msg/Flowchartrunstate` (message): message → `Ros2Rm_ros_interfacesMsgFlowchartrunstate`
- `rm_ros_interfaces/msg/Force_Position_State` (message): message → `Ros2Rm_ros_interfacesMsgForce_Position_State`
- `rm_ros_interfaces/msg/Forcepositionmove` (message): message → `Ros2Rm_ros_interfacesMsgForcepositionmove`
- `rm_ros_interfaces/msg/Forcepositionmovejoint` (message): message → `Ros2Rm_ros_interfacesMsgForcepositionmovejoint`
- `rm_ros_interfaces/msg/Forcepositionmovepose` (message): message → `Ros2Rm_ros_interfacesMsgForcepositionmovepose`
- `rm_ros_interfaces/msg/GetArmState_Command` (message): message → `Ros2Rm_ros_interfacesMsgGetArmState_Command`
- `rm_ros_interfaces/msg/Getallframe` (message): message → `Ros2Rm_ros_interfacesMsgGetallframe`
- `rm_ros_interfaces/msg/Getmodbustcpmasterlist` (message): message → `Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist`
- `rm_ros_interfaces/msg/Gettrajectorylist` (message): message → `Ros2Rm_ros_interfacesMsgGettrajectorylist`
- `rm_ros_interfaces/msg/Gripperpick` (message): message → `Ros2Rm_ros_interfacesMsgGripperpick`
- `rm_ros_interfaces/msg/Gripperset` (message): message → `Ros2Rm_ros_interfacesMsgGripperset`
- `rm_ros_interfaces/msg/Handangle` (message): message → `Ros2Rm_ros_interfacesMsgHandangle`
- `rm_ros_interfaces/msg/Handforce` (message): message → `Ros2Rm_ros_interfacesMsgHandforce`
- `rm_ros_interfaces/msg/Handposture` (message): message → `Ros2Rm_ros_interfacesMsgHandposture`
- `rm_ros_interfaces/msg/Handseq` (message): message → `Ros2Rm_ros_interfacesMsgHandseq`
- `rm_ros_interfaces/msg/Handspeed` (message): message → `Ros2Rm_ros_interfacesMsgHandspeed`
- `rm_ros_interfaces/msg/Handstatus` (message): message → `Ros2Rm_ros_interfacesMsgHandstatus`
- `rm_ros_interfaces/msg/Jointcurrent` (message): message → `Ros2Rm_ros_interfacesMsgJointcurrent`
- `rm_ros_interfaces/msg/Jointenflag` (message): message → `Ros2Rm_ros_interfacesMsgJointenflag`
- `rm_ros_interfaces/msg/Jointerrclear` (message): message → `Ros2Rm_ros_interfacesMsgJointerrclear`
- `rm_ros_interfaces/msg/Jointerrorcode` (message): message → `Ros2Rm_ros_interfacesMsgJointerrorcode`
- `rm_ros_interfaces/msg/Jointpos` (message): message → `Ros2Rm_ros_interfacesMsgJointpos`
- `rm_ros_interfaces/msg/Jointposcustom` (message): message → `Ros2Rm_ros_interfacesMsgJointposcustom`
- `rm_ros_interfaces/msg/Jointposeeuler` (message): message → `Ros2Rm_ros_interfacesMsgJointposeeuler`
- `rm_ros_interfaces/msg/Jointspeed` (message): message → `Ros2Rm_ros_interfacesMsgJointspeed`
- `rm_ros_interfaces/msg/Jointteach` (message): message → `Ros2Rm_ros_interfacesMsgJointteach`
- `rm_ros_interfaces/msg/Jointtemperature` (message): message → `Ros2Rm_ros_interfacesMsgJointtemperature`
- `rm_ros_interfaces/msg/Jointversion` (message): message → `Ros2Rm_ros_interfacesMsgJointversion`
- `rm_ros_interfaces/msg/Jointvoltage` (message): message → `Ros2Rm_ros_interfacesMsgJointvoltage`
- `rm_ros_interfaces/msg/Liftheight` (message): message → `Ros2Rm_ros_interfacesMsgLiftheight`
- `rm_ros_interfaces/msg/Liftspeed` (message): message → `Ros2Rm_ros_interfacesMsgLiftspeed`
- `rm_ros_interfaces/msg/Liftstate` (message): message → `Ros2Rm_ros_interfacesMsgLiftstate`
- `rm_ros_interfaces/msg/Mastername` (message): message → `Ros2Rm_ros_interfacesMsgMastername`
- `rm_ros_interfaces/msg/Modbusreaddata` (message): message → `Ros2Rm_ros_interfacesMsgModbusreaddata`
- `rm_ros_interfaces/msg/Modbusrtureadparams` (message): message → `Ros2Rm_ros_interfacesMsgModbusrtureadparams`
- `rm_ros_interfaces/msg/Modbusrtuwriteparams` (message): message → `Ros2Rm_ros_interfacesMsgModbusrtuwriteparams`
- `rm_ros_interfaces/msg/Modbustcpmasterinfo` (message): message → `Ros2Rm_ros_interfacesMsgModbustcpmasterinfo`
- `rm_ros_interfaces/msg/Modbustcpmasterlist` (message): message → `Ros2Rm_ros_interfacesMsgModbustcpmasterlist`
- `rm_ros_interfaces/msg/Modbustcpmasterupdata` (message): message → `Ros2Rm_ros_interfacesMsgModbustcpmasterupdata`
- `rm_ros_interfaces/msg/Modbustcpreadparams` (message): message → `Ros2Rm_ros_interfacesMsgModbustcpreadparams`
- `rm_ros_interfaces/msg/Modbustcpwriteparams` (message): message → `Ros2Rm_ros_interfacesMsgModbustcpwriteparams`
- `rm_ros_interfaces/msg/Movec` (message): message → `Ros2Rm_ros_interfacesMsgMovec`
- `rm_ros_interfaces/msg/Movej` (message): message → `Ros2Rm_ros_interfacesMsgMovej`
- `rm_ros_interfaces/msg/Movejp` (message): message → `Ros2Rm_ros_interfacesMsgMovejp`
- `rm_ros_interfaces/msg/Movel` (message): message → `Ros2Rm_ros_interfacesMsgMovel`
- `rm_ros_interfaces/msg/Moveloffset` (message): message → `Ros2Rm_ros_interfacesMsgMoveloffset`
- `rm_ros_interfaces/msg/Ortteach` (message): message → `Ros2Rm_ros_interfacesMsgOrtteach`
- `rm_ros_interfaces/msg/Posteach` (message): message → `Ros2Rm_ros_interfacesMsgPosteach`
- `rm_ros_interfaces/msg/Programrunstate` (message): message → `Ros2Rm_ros_interfacesMsgProgramrunstate`
- `rm_ros_interfaces/msg/RS485params` (message): message → `Ros2Rm_ros_interfacesMsgRS485params`
- `rm_ros_interfaces/msg/Rmerr` (message): message → `Ros2Rm_ros_interfacesMsgRmerr`
- `rm_ros_interfaces/msg/Rmplusbase` (message): message → `Ros2Rm_ros_interfacesMsgRmplusbase`
- `rm_ros_interfaces/msg/Rmplusstate` (message): message → `Ros2Rm_ros_interfacesMsgRmplusstate`
- `rm_ros_interfaces/msg/Rmversion` (message): message → `Ros2Rm_ros_interfacesMsgRmversion`
- `rm_ros_interfaces/msg/RobotInfo` (message): message → `Ros2Rm_ros_interfacesMsgRobotInfo`
- `rm_ros_interfaces/msg/Sendproject` (message): message → `Ros2Rm_ros_interfacesMsgSendproject`
- `rm_ros_interfaces/msg/Setforceposition` (message): message → `Ros2Rm_ros_interfacesMsgSetforceposition`
- `rm_ros_interfaces/msg/Setrealtimepush` (message): message → `Ros2Rm_ros_interfacesMsgSetrealtimepush`
- `rm_ros_interfaces/msg/Sixforce` (message): message → `Ros2Rm_ros_interfacesMsgSixforce`
- `rm_ros_interfaces/msg/Softwarebuildinfo` (message): message → `Ros2Rm_ros_interfacesMsgSoftwarebuildinfo`
- `rm_ros_interfaces/msg/Stop` (message): message → `Ros2Rm_ros_interfacesMsgStop`
- `rm_ros_interfaces/msg/Toolsoftwareversionv4` (message): message → `Ros2Rm_ros_interfacesMsgToolsoftwareversionv4`
- `rm_ros_interfaces/msg/Trajectoryinfo` (message): message → `Ros2Rm_ros_interfacesMsgTrajectoryinfo`
- `rm_ros_interfaces/msg/Trajectorylist` (message): message → `Ros2Rm_ros_interfacesMsgTrajectorylist`
- `rm_ros_interfaces/msg/Udpexpandstate` (message): message → `Ros2Rm_ros_interfacesMsgUdpexpandstate`
- `rm_ros_interfaces/msg/Udpliftstate` (message): message → `Ros2Rm_ros_interfacesMsgUdpliftstate`

Immutable upstream sources:

- [RealManRobot/ros2_rm_robot @ 61db3c367e8f5743ee68cee52c5574ec1ac645ca](https://github.com/RealManRobot/ros2_rm_robot/tree/61db3c367e8f5743ee68cee52c5574ec1ac645ca)
- [ros2/common_interfaces @ 08434490d3e4abd37ccc5462cdde69b88853b5b8](https://github.com/ros2/common_interfaces/tree/08434490d3e4abd37ccc5462cdde69b88853b5b8)

## ros2_jazzy

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `geometry_msgs/msg/Point` | `Ros2Geometry_msgsMsgPoint` | 24..24 | x: float64; y: float64; z: float64 |
| `geometry_msgs/msg/Quaternion` | `Ros2Geometry_msgsMsgQuaternion` | 32..32 | x: float64; y: float64; z: float64; w: float64 |
| `geometry_msgs/msg/Pose` | `Ros2Geometry_msgsMsgPose` | 56..56 | position: geometry_msgs/msg/Point; orientation: geometry_msgs/msg/Quaternion |
| `rm_ros_interfaces/msg/Alohastate` | `Ros2Rm_ros_interfacesMsgAlohastate` | 4..4 | io1_state: int16; io2_state: int16 |
| `rm_ros_interfaces/msg/Armcurrentstatus` | `Ros2Rm_ros_interfacesMsgArmcurrentstatus` | 2..2 | arm_current_status: uint16 |
| `rm_ros_interfaces/msg/Armoriginalstate` | `Ros2Rm_ros_interfacesMsgArmoriginalstate` | 32..96 | joint: float32 sequence<=16; pose: float32[6]; err: uint16; err_len: uint8; dof: uint8 |
| `rm_ros_interfaces/msg/Softwarebuildinfo` | `Ros2Rm_ros_interfacesMsgSoftwarebuildinfo` | 8..520 | build_time: string text<=256B; version: string text<=256B |
| `rm_ros_interfaces/msg/Armsoftversion` | `Ros2Rm_ros_interfacesMsgArmsoftversion` | 69..4421 | product_version: string text<=256B; controller_version: string text<=256B; algorithm_info: string text<=256B; ctrl_info: rm_ros_interfaces/msg/Softwarebuildinfo; dynamic_info: string text<=256B; plan_info: rm_ros_interfaces/msg/Softwarebuildinfo; com_info: rm_ros_interfaces/msg/Softwarebuildinfo; program_info: rm_ros_interfaces/msg/Softwarebuildinfo; state: bool; planversion: string text<=256B; ctrlversion: string text<=256B; kernal1: string text<=256B; kernal2: string text<=256B; productversion: string text<=256B |
| `rm_ros_interfaces/msg/Armsoftversionv3` | `Ros2Rm_ros_interfacesMsgArmsoftversionv3` | 32..2080 | product_version: string text<=256B; controller_version: string text<=256B; algorithm_info: string text<=256B; ctrl_info: rm_ros_interfaces/msg/Softwarebuildinfo; dynamic_info: string text<=256B; plan_info: rm_ros_interfaces/msg/Softwarebuildinfo |
| `rm_ros_interfaces/msg/Armsoftversionv4` | `Ros2Rm_ros_interfacesMsgArmsoftversionv4` | 36..2340 | product_version: string text<=256B; controller_version: string text<=256B; algorithm_info: string text<=256B; ctrl_info: rm_ros_interfaces/msg/Softwarebuildinfo; com_info: rm_ros_interfaces/msg/Softwarebuildinfo; program_info: rm_ros_interfaces/msg/Softwarebuildinfo |
| `rm_ros_interfaces/msg/Armstate` | `Ros2Rm_ros_interfacesMsgArmstate` | 64..128 | joint: float32 sequence<=16; pose: geometry_msgs/msg/Pose; err: uint16; err_len: uint8; dof: uint8 |
| `rm_ros_interfaces/msg/Cartepos` | `Ros2Rm_ros_interfacesMsgCartepos` | 57..57 | pose: geometry_msgs/msg/Pose; follow: bool |
| `rm_ros_interfaces/msg/Carteposcustom` | `Ros2Rm_ros_interfacesMsgCarteposcustom` | 59..59 | pose: geometry_msgs/msg/Pose; follow: bool; trajectory_mode: uint8; radio: uint8 |
| `rm_ros_interfaces/msg/Expandpos` | `Ros2Rm_ros_interfacesMsgExpandpos` | 7..7 | pos: int32; speed: uint16; block: bool |
| `rm_ros_interfaces/msg/Expandstate` | `Ros2Rm_ros_interfacesMsgExpandstate` | 12..12 | pos: int32; current: int32; err_flag: uint16; mode: int16 |
| `rm_ros_interfaces/msg/Flowchartrunstate` | `Ros2Rm_ros_interfacesMsgFlowchartrunstate` | 13..525 | run_state: uint8; id: uint8; name: string text<=256B; plan_speed: uint8; step_mode: uint8; modal_id: string text<=256B; state: bool |
| `rm_ros_interfaces/msg/Force_Position_State` | `Ros2Rm_ros_interfacesMsgForce_Position_State` | 30..30 | joint: float32[6]; force: float32; arm_err: uint16 |
| `rm_ros_interfaces/msg/Forcepositionmove` | `Ros2Rm_ros_interfacesMsgForcepositionmove` | 121..185 | pose: geometry_msgs/msg/Pose; joint: float32 sequence<=16; flag: uint8; sensor: uint8; mode: uint8; control_mode: uint8[6]; follow: bool; desired_force: float32[6]; limit_vel: float32[6]; trajectory_mode: uint8; radio: uint16 |
| `rm_ros_interfaces/msg/Forcepositionmovejoint` | `Ros2Rm_ros_interfacesMsgForcepositionmovejoint` | 14..78 | joint: float32 sequence<=16; sensor: uint8; mode: uint8; dir: int16; force: float32; follow: bool; dof: uint8 |
| `rm_ros_interfaces/msg/Forcepositionmovepose` | `Ros2Rm_ros_interfacesMsgForcepositionmovepose` | 62..62 | pose: geometry_msgs/msg/Pose; sensor: uint8; mode: uint8; dir: uint8; force: int16; follow: bool |
| `rm_ros_interfaces/msg/GetArmState_Command` | `Ros2Rm_ros_interfacesMsgGetArmState_Command` | 4..260 | command: string text<=256B |
| `rm_ros_interfaces/msg/Getallframe` | `Ros2Rm_ros_interfacesMsgGetallframe` | 40..2600 | frame_name: string[10] text<=256B |
| `rm_ros_interfaces/msg/Getmodbustcpmasterlist` | `Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist` | 12..268 | page_num: int32; page_size: int32; vague_search: string text<=256B |
| `rm_ros_interfaces/msg/Gettrajectorylist` | `Ros2Rm_ros_interfacesMsgGettrajectorylist` | 12..268 | page_num: int32; page_size: int32; vague_search: string text<=256B |
| `rm_ros_interfaces/msg/Gripperpick` | `Ros2Rm_ros_interfacesMsgGripperpick` | 7..7 | speed: uint16; force: uint16; block: bool; timeout: uint16 |
| `rm_ros_interfaces/msg/Gripperset` | `Ros2Rm_ros_interfacesMsgGripperset` | 5..5 | position: uint16; block: bool; timeout: uint16 |
| `rm_ros_interfaces/msg/Handangle` | `Ros2Rm_ros_interfacesMsgHandangle` | 13..13 | hand_angle: int16[6]; block: bool |
| `rm_ros_interfaces/msg/Handforce` | `Ros2Rm_ros_interfacesMsgHandforce` | 2..2 | hand_force: uint16 |
| `rm_ros_interfaces/msg/Handposture` | `Ros2Rm_ros_interfacesMsgHandposture` | 5..5 | posture_num: uint16; block: bool; timeout: uint16 |
| `rm_ros_interfaces/msg/Handseq` | `Ros2Rm_ros_interfacesMsgHandseq` | 5..5 | seq_num: uint16; block: bool; timeout: uint16 |
| `rm_ros_interfaces/msg/Handspeed` | `Ros2Rm_ros_interfacesMsgHandspeed` | 2..2 | hand_speed: uint16 |
| `rm_ros_interfaces/msg/Handstatus` | `Ros2Rm_ros_interfacesMsgHandstatus` | 50..50 | hand_angle: uint16[6]; hand_pos: uint16[6]; hand_state: uint16[6]; hand_force: uint16[6]; hand_err: uint16 |
| `rm_ros_interfaces/msg/Jointcurrent` | `Ros2Rm_ros_interfacesMsgJointcurrent` | 4..68 | joint_current: float32 sequence<=16 |
| `rm_ros_interfaces/msg/Jointenflag` | `Ros2Rm_ros_interfacesMsgJointenflag` | 4..20 | joint_en_flag: bool sequence<=16 |
| `rm_ros_interfaces/msg/Jointerrclear` | `Ros2Rm_ros_interfacesMsgJointerrclear` | 1..1 | joint_num: uint8 |
| `rm_ros_interfaces/msg/Jointerrorcode` | `Ros2Rm_ros_interfacesMsgJointerrorcode` | 5..37 | joint_error: uint16 sequence<=16; dof: uint8 |
| `rm_ros_interfaces/msg/Jointpos` | `Ros2Rm_ros_interfacesMsgJointpos` | 10..74 | joint: float32 sequence<=16; follow: bool; expand: float32; dof: uint8 |
| `rm_ros_interfaces/msg/Jointposcustom` | `Ros2Rm_ros_interfacesMsgJointposcustom` | 12..76 | joint: float32 sequence<=16; follow: bool; expand: float32; dof: uint8; trajectory_mode: uint8; radio: uint8 |
| `rm_ros_interfaces/msg/Jointposeeuler` | `Ros2Rm_ros_interfacesMsgJointposeeuler` | 24..24 | euler: float32[3]; position: float32[3] |
| `rm_ros_interfaces/msg/Jointspeed` | `Ros2Rm_ros_interfacesMsgJointspeed` | 4..68 | joint_speed: float32 sequence<=16 |
| `rm_ros_interfaces/msg/Jointteach` | `Ros2Rm_ros_interfacesMsgJointteach` | 3..3 | num: uint8; direction: uint8; speed: uint8 |
| `rm_ros_interfaces/msg/Jointtemperature` | `Ros2Rm_ros_interfacesMsgJointtemperature` | 4..68 | joint_temperature: float32 sequence<=16 |
| `rm_ros_interfaces/msg/Jointversion` | `Ros2Rm_ros_interfacesMsgJointversion` | 5..4165 | joint_version: string sequence<=16 text<=256B; state: bool |
| `rm_ros_interfaces/msg/Jointvoltage` | `Ros2Rm_ros_interfacesMsgJointvoltage` | 4..68 | joint_voltage: float32 sequence<=16 |
| `rm_ros_interfaces/msg/Liftheight` | `Ros2Rm_ros_interfacesMsgLiftheight` | 5..5 | height: uint16; speed: uint16; block: bool |
| `rm_ros_interfaces/msg/Liftspeed` | `Ros2Rm_ros_interfacesMsgLiftspeed` | 2..2 | speed: int16 |
| `rm_ros_interfaces/msg/Liftstate` | `Ros2Rm_ros_interfacesMsgLiftstate` | 8..8 | height: int16; current: int16; err_flag: uint16; mode: int16 |
| `rm_ros_interfaces/msg/Mastername` | `Ros2Rm_ros_interfacesMsgMastername` | 4..260 | master_name: string text<=256B |
| `rm_ros_interfaces/msg/Modbusreaddata` | `Ros2Rm_ros_interfacesMsgModbusreaddata` | 5..69 | read_data: int32 sequence<=16; state: bool |
| `rm_ros_interfaces/msg/Modbusrtureadparams` | `Ros2Rm_ros_interfacesMsgModbusrtureadparams` | 16..16 | address: int32; device: int32; type: int32; num: int32 |
| `rm_ros_interfaces/msg/Modbusrtuwriteparams` | `Ros2Rm_ros_interfacesMsgModbusrtuwriteparams` | 20..84 | address: int32; device: int32; type: int32; num: int32; data: int32 sequence<=16 |
| `rm_ros_interfaces/msg/Modbustcpmasterinfo` | `Ros2Rm_ros_interfacesMsgModbustcpmasterinfo` | 13..525 | master_name: string text<=256B; ip: string text<=256B; port: int32; state: bool |
| `rm_ros_interfaces/msg/Modbustcpmasterlist` | `Ros2Rm_ros_interfacesMsgModbustcpmasterlist` | 12..8668 | page_num: uint8; page_size: uint8; total_size: uint8; vague_search: string text<=256B; master_list: rm_ros_interfaces/msg/Modbustcpmasterinfo sequence<=16; state: bool |
| `rm_ros_interfaces/msg/Modbustcpmasterupdata` | `Ros2Rm_ros_interfacesMsgModbustcpmasterupdata` | 16..784 | master_name: string text<=256B; new_master_name: string text<=256B; ip: string text<=256B; port: int32 |
| `rm_ros_interfaces/msg/Modbustcpreadparams` | `Ros2Rm_ros_interfacesMsgModbustcpreadparams` | 20..532 | address: int32; master_name: string text<=256B; ip: string text<=256B; port: int32; num: int32 |
| `rm_ros_interfaces/msg/Modbustcpwriteparams` | `Ros2Rm_ros_interfacesMsgModbustcpwriteparams` | 24..600 | address: int32; master_name: string text<=256B; ip: string text<=256B; port: int32; num: int32; data: int32 sequence<=16 |
| `rm_ros_interfaces/msg/Movec` | `Ros2Rm_ros_interfacesMsgMovec` | 116..116 | pose_mid: geometry_msgs/msg/Pose; pose_end: geometry_msgs/msg/Pose; speed: uint8; trajectory_connect: uint8; block: bool; loop: uint8 |
| `rm_ros_interfaces/msg/Movej` | `Ros2Rm_ros_interfacesMsgMovej` | 8..72 | joint: float32 sequence<=16; speed: uint8; block: bool; trajectory_connect: uint8; dof: uint8 |
| `rm_ros_interfaces/msg/Movejp` | `Ros2Rm_ros_interfacesMsgMovejp` | 59..59 | pose: geometry_msgs/msg/Pose; speed: uint8; trajectory_connect: uint8; block: bool |
| `rm_ros_interfaces/msg/Movel` | `Ros2Rm_ros_interfacesMsgMovel` | 59..59 | pose: geometry_msgs/msg/Pose; speed: uint8; trajectory_connect: uint8; block: bool |
| `rm_ros_interfaces/msg/Moveloffset` | `Ros2Rm_ros_interfacesMsgMoveloffset` | 67..67 | pose: geometry_msgs/msg/Pose; speed: int32; r: int32; trajectory_connect: bool; frame_type: bool; block: bool |
| `rm_ros_interfaces/msg/Ortteach` | `Ros2Rm_ros_interfacesMsgOrtteach` | 3..3 | type: uint8; direction: uint8; speed: uint8 |
| `rm_ros_interfaces/msg/Posteach` | `Ros2Rm_ros_interfacesMsgPosteach` | 3..3 | type: uint8; direction: uint8; speed: uint8 |
| `rm_ros_interfaces/msg/Programrunstate` | `Ros2Rm_ros_interfacesMsgProgramrunstate` | 37..165 | run_state: int32; id: int32; edit_id: int32; plan_num: int32; total_loop: int32; step_mode: int32; plan_speed: int32; loop_num: int32 sequence<=16; loop_cont: int32 sequence<=16; state: bool |
| `rm_ros_interfaces/msg/RS485params` | `Ros2Rm_ros_interfacesMsgRS485params` | 9..9 | mode: int32; baudrate: int32; state: bool |
| `rm_ros_interfaces/msg/Rmerr` | `Ros2Rm_ros_interfacesMsgRmerr` | 5..69 | err_len: uint8; err: int32 sequence<=16 |
| `rm_ros_interfaces/msg/Rmplusbase` | `Ros2Rm_ros_interfacesMsgRmplusbase` | 413..1437 | manu: string text<=256B; type: int8; hv: string text<=256B; sv: string text<=256B; bv: string text<=256B; id: int32; dof: int8; check: int8; bee: int8; force: bool; touch: bool; touch_num: int8; touch_sw: int8; hand: int8; pos_up: int32[12]; pos_low: int32[12]; angle_up: int32[12]; angle_low: int32[12]; speed_up: int32[12]; speed_low: int32[12]; force_up: int32[12]; force_low: int32[12] |
| `rm_ros_interfaces/msg/Rmplusstate` | `Ros2Rm_ros_interfacesMsgRmplusstate` | 724..724 | sys_state: int32; dof_state: int32[12]; dof_err: int32[12]; pos: int32[12]; speed: int32[12]; angle: int32[12]; current: int32[12]; normal_force: int32[18]; tangential_force: int32[18]; tangential_force_dir: int32[18]; tsa: uint32[12]; tma: uint32[12]; touch_data: int32[18]; force: int32[12] |
| `rm_ros_interfaces/msg/Rmversion` | `Ros2Rm_ros_interfacesMsgRmversion` | 4..260 | version: string text<=256B |
| `rm_ros_interfaces/msg/RobotInfo` | `Ros2Rm_ros_interfacesMsgRobotInfo` | 5..5 | arm_dof: uint8; arm_model: uint8; force_type: uint8; robot_controller_version: uint8; state: bool |
| `rm_ros_interfaces/msg/Sendproject` | `Ros2Rm_ros_interfacesMsgSendproject` | 32..288 | project_path: string text<=256B; project_path_len: int32; plan_speed: int32; only_save: int32; save_id: int32; step_flag: int32; auto_start: int32; project_type: int32 |
| `rm_ros_interfaces/msg/Setforceposition` | `Ros2Rm_ros_interfacesMsgSetforceposition` | 5..5 | sensor: uint8; mode: uint8; direction: uint8; n: int16 |
| `rm_ros_interfaces/msg/Setrealtimepush` | `Ros2Rm_ros_interfacesMsgSetrealtimepush` | 18..274 | cycle: uint16; port: uint16; force_coordinate: uint16; ip: string text<=256B; aloha_state_enable: bool; arm_current_status_enable: bool; expand_state_enable: bool; hand_enable: bool; joint_speed_enable: bool; lift_state_enable: bool; plus_base_enable: bool; plus_state_enable: bool |
| `rm_ros_interfaces/msg/Sixforce` | `Ros2Rm_ros_interfacesMsgSixforce` | 24..24 | force_fx: float32; force_fy: float32; force_fz: float32; force_mx: float32; force_my: float32; force_mz: float32 |
| `rm_ros_interfaces/msg/Stop` | `Ros2Rm_ros_interfacesMsgStop` | 1..1 | state: bool |
| `rm_ros_interfaces/msg/Toolsoftwareversionv4` | `Ros2Rm_ros_interfacesMsgToolsoftwareversionv4` | 5..261 | tool_version: string text<=256B; state: bool |
| `rm_ros_interfaces/msg/Trajectoryinfo` | `Ros2Rm_ros_interfacesMsgTrajectoryinfo` | 13..525 | name: string text<=256B; create_time: string text<=256B; point_num: int32; state: bool |
| `rm_ros_interfaces/msg/Trajectorylist` | `Ros2Rm_ros_interfacesMsgTrajectorylist` | 21..8677 | page_num: int32; page_size: int32; total_size: int32; vague_search: string text<=256B; tra_list: rm_ros_interfaces/msg/Trajectoryinfo sequence<=16; state: bool |
| `rm_ros_interfaces/msg/Udpexpandstate` | `Ros2Rm_ros_interfacesMsgUdpexpandstate` | 14..14 | pos: int32; current: int32; err_flag: uint16; en_flag: bool; joint_id: uint8; mode: int16 |
| `rm_ros_interfaces/msg/Udpliftstate` | `Ros2Rm_ros_interfacesMsgUdpliftstate` | 13..13 | height: int32; pos: float32; current: int16; en_flag: bool; err_flag: uint16 |

Interfaces:

- `geometry_msgs/msg/Point` (message): message → `Ros2Geometry_msgsMsgPoint`
- `geometry_msgs/msg/Pose` (message): message → `Ros2Geometry_msgsMsgPose`
- `geometry_msgs/msg/Quaternion` (message): message → `Ros2Geometry_msgsMsgQuaternion`
- `rm_ros_interfaces/msg/Alohastate` (message): message → `Ros2Rm_ros_interfacesMsgAlohastate`
- `rm_ros_interfaces/msg/Armcurrentstatus` (message): message → `Ros2Rm_ros_interfacesMsgArmcurrentstatus`
- `rm_ros_interfaces/msg/Armoriginalstate` (message): message → `Ros2Rm_ros_interfacesMsgArmoriginalstate`
- `rm_ros_interfaces/msg/Armsoftversion` (message): message → `Ros2Rm_ros_interfacesMsgArmsoftversion`
- `rm_ros_interfaces/msg/Armsoftversionv3` (message): message → `Ros2Rm_ros_interfacesMsgArmsoftversionv3`
- `rm_ros_interfaces/msg/Armsoftversionv4` (message): message → `Ros2Rm_ros_interfacesMsgArmsoftversionv4`
- `rm_ros_interfaces/msg/Armstate` (message): message → `Ros2Rm_ros_interfacesMsgArmstate`
- `rm_ros_interfaces/msg/Cartepos` (message): message → `Ros2Rm_ros_interfacesMsgCartepos`
- `rm_ros_interfaces/msg/Carteposcustom` (message): message → `Ros2Rm_ros_interfacesMsgCarteposcustom`
- `rm_ros_interfaces/msg/Expandpos` (message): message → `Ros2Rm_ros_interfacesMsgExpandpos`
- `rm_ros_interfaces/msg/Expandstate` (message): message → `Ros2Rm_ros_interfacesMsgExpandstate`
- `rm_ros_interfaces/msg/Flowchartrunstate` (message): message → `Ros2Rm_ros_interfacesMsgFlowchartrunstate`
- `rm_ros_interfaces/msg/Force_Position_State` (message): message → `Ros2Rm_ros_interfacesMsgForce_Position_State`
- `rm_ros_interfaces/msg/Forcepositionmove` (message): message → `Ros2Rm_ros_interfacesMsgForcepositionmove`
- `rm_ros_interfaces/msg/Forcepositionmovejoint` (message): message → `Ros2Rm_ros_interfacesMsgForcepositionmovejoint`
- `rm_ros_interfaces/msg/Forcepositionmovepose` (message): message → `Ros2Rm_ros_interfacesMsgForcepositionmovepose`
- `rm_ros_interfaces/msg/GetArmState_Command` (message): message → `Ros2Rm_ros_interfacesMsgGetArmState_Command`
- `rm_ros_interfaces/msg/Getallframe` (message): message → `Ros2Rm_ros_interfacesMsgGetallframe`
- `rm_ros_interfaces/msg/Getmodbustcpmasterlist` (message): message → `Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist`
- `rm_ros_interfaces/msg/Gettrajectorylist` (message): message → `Ros2Rm_ros_interfacesMsgGettrajectorylist`
- `rm_ros_interfaces/msg/Gripperpick` (message): message → `Ros2Rm_ros_interfacesMsgGripperpick`
- `rm_ros_interfaces/msg/Gripperset` (message): message → `Ros2Rm_ros_interfacesMsgGripperset`
- `rm_ros_interfaces/msg/Handangle` (message): message → `Ros2Rm_ros_interfacesMsgHandangle`
- `rm_ros_interfaces/msg/Handforce` (message): message → `Ros2Rm_ros_interfacesMsgHandforce`
- `rm_ros_interfaces/msg/Handposture` (message): message → `Ros2Rm_ros_interfacesMsgHandposture`
- `rm_ros_interfaces/msg/Handseq` (message): message → `Ros2Rm_ros_interfacesMsgHandseq`
- `rm_ros_interfaces/msg/Handspeed` (message): message → `Ros2Rm_ros_interfacesMsgHandspeed`
- `rm_ros_interfaces/msg/Handstatus` (message): message → `Ros2Rm_ros_interfacesMsgHandstatus`
- `rm_ros_interfaces/msg/Jointcurrent` (message): message → `Ros2Rm_ros_interfacesMsgJointcurrent`
- `rm_ros_interfaces/msg/Jointenflag` (message): message → `Ros2Rm_ros_interfacesMsgJointenflag`
- `rm_ros_interfaces/msg/Jointerrclear` (message): message → `Ros2Rm_ros_interfacesMsgJointerrclear`
- `rm_ros_interfaces/msg/Jointerrorcode` (message): message → `Ros2Rm_ros_interfacesMsgJointerrorcode`
- `rm_ros_interfaces/msg/Jointpos` (message): message → `Ros2Rm_ros_interfacesMsgJointpos`
- `rm_ros_interfaces/msg/Jointposcustom` (message): message → `Ros2Rm_ros_interfacesMsgJointposcustom`
- `rm_ros_interfaces/msg/Jointposeeuler` (message): message → `Ros2Rm_ros_interfacesMsgJointposeeuler`
- `rm_ros_interfaces/msg/Jointspeed` (message): message → `Ros2Rm_ros_interfacesMsgJointspeed`
- `rm_ros_interfaces/msg/Jointteach` (message): message → `Ros2Rm_ros_interfacesMsgJointteach`
- `rm_ros_interfaces/msg/Jointtemperature` (message): message → `Ros2Rm_ros_interfacesMsgJointtemperature`
- `rm_ros_interfaces/msg/Jointversion` (message): message → `Ros2Rm_ros_interfacesMsgJointversion`
- `rm_ros_interfaces/msg/Jointvoltage` (message): message → `Ros2Rm_ros_interfacesMsgJointvoltage`
- `rm_ros_interfaces/msg/Liftheight` (message): message → `Ros2Rm_ros_interfacesMsgLiftheight`
- `rm_ros_interfaces/msg/Liftspeed` (message): message → `Ros2Rm_ros_interfacesMsgLiftspeed`
- `rm_ros_interfaces/msg/Liftstate` (message): message → `Ros2Rm_ros_interfacesMsgLiftstate`
- `rm_ros_interfaces/msg/Mastername` (message): message → `Ros2Rm_ros_interfacesMsgMastername`
- `rm_ros_interfaces/msg/Modbusreaddata` (message): message → `Ros2Rm_ros_interfacesMsgModbusreaddata`
- `rm_ros_interfaces/msg/Modbusrtureadparams` (message): message → `Ros2Rm_ros_interfacesMsgModbusrtureadparams`
- `rm_ros_interfaces/msg/Modbusrtuwriteparams` (message): message → `Ros2Rm_ros_interfacesMsgModbusrtuwriteparams`
- `rm_ros_interfaces/msg/Modbustcpmasterinfo` (message): message → `Ros2Rm_ros_interfacesMsgModbustcpmasterinfo`
- `rm_ros_interfaces/msg/Modbustcpmasterlist` (message): message → `Ros2Rm_ros_interfacesMsgModbustcpmasterlist`
- `rm_ros_interfaces/msg/Modbustcpmasterupdata` (message): message → `Ros2Rm_ros_interfacesMsgModbustcpmasterupdata`
- `rm_ros_interfaces/msg/Modbustcpreadparams` (message): message → `Ros2Rm_ros_interfacesMsgModbustcpreadparams`
- `rm_ros_interfaces/msg/Modbustcpwriteparams` (message): message → `Ros2Rm_ros_interfacesMsgModbustcpwriteparams`
- `rm_ros_interfaces/msg/Movec` (message): message → `Ros2Rm_ros_interfacesMsgMovec`
- `rm_ros_interfaces/msg/Movej` (message): message → `Ros2Rm_ros_interfacesMsgMovej`
- `rm_ros_interfaces/msg/Movejp` (message): message → `Ros2Rm_ros_interfacesMsgMovejp`
- `rm_ros_interfaces/msg/Movel` (message): message → `Ros2Rm_ros_interfacesMsgMovel`
- `rm_ros_interfaces/msg/Moveloffset` (message): message → `Ros2Rm_ros_interfacesMsgMoveloffset`
- `rm_ros_interfaces/msg/Ortteach` (message): message → `Ros2Rm_ros_interfacesMsgOrtteach`
- `rm_ros_interfaces/msg/Posteach` (message): message → `Ros2Rm_ros_interfacesMsgPosteach`
- `rm_ros_interfaces/msg/Programrunstate` (message): message → `Ros2Rm_ros_interfacesMsgProgramrunstate`
- `rm_ros_interfaces/msg/RS485params` (message): message → `Ros2Rm_ros_interfacesMsgRS485params`
- `rm_ros_interfaces/msg/Rmerr` (message): message → `Ros2Rm_ros_interfacesMsgRmerr`
- `rm_ros_interfaces/msg/Rmplusbase` (message): message → `Ros2Rm_ros_interfacesMsgRmplusbase`
- `rm_ros_interfaces/msg/Rmplusstate` (message): message → `Ros2Rm_ros_interfacesMsgRmplusstate`
- `rm_ros_interfaces/msg/Rmversion` (message): message → `Ros2Rm_ros_interfacesMsgRmversion`
- `rm_ros_interfaces/msg/RobotInfo` (message): message → `Ros2Rm_ros_interfacesMsgRobotInfo`
- `rm_ros_interfaces/msg/Sendproject` (message): message → `Ros2Rm_ros_interfacesMsgSendproject`
- `rm_ros_interfaces/msg/Setforceposition` (message): message → `Ros2Rm_ros_interfacesMsgSetforceposition`
- `rm_ros_interfaces/msg/Setrealtimepush` (message): message → `Ros2Rm_ros_interfacesMsgSetrealtimepush`
- `rm_ros_interfaces/msg/Sixforce` (message): message → `Ros2Rm_ros_interfacesMsgSixforce`
- `rm_ros_interfaces/msg/Softwarebuildinfo` (message): message → `Ros2Rm_ros_interfacesMsgSoftwarebuildinfo`
- `rm_ros_interfaces/msg/Stop` (message): message → `Ros2Rm_ros_interfacesMsgStop`
- `rm_ros_interfaces/msg/Toolsoftwareversionv4` (message): message → `Ros2Rm_ros_interfacesMsgToolsoftwareversionv4`
- `rm_ros_interfaces/msg/Trajectoryinfo` (message): message → `Ros2Rm_ros_interfacesMsgTrajectoryinfo`
- `rm_ros_interfaces/msg/Trajectorylist` (message): message → `Ros2Rm_ros_interfacesMsgTrajectorylist`
- `rm_ros_interfaces/msg/Udpexpandstate` (message): message → `Ros2Rm_ros_interfacesMsgUdpexpandstate`
- `rm_ros_interfaces/msg/Udpliftstate` (message): message → `Ros2Rm_ros_interfacesMsgUdpliftstate`

Immutable upstream sources:

- [RealManRobot/ros2_rm_robot @ 5fc226e93358e73c165b2af54b583389f813049e](https://github.com/RealManRobot/ros2_rm_robot/tree/5fc226e93358e73c165b2af54b583389f813049e)
- [ros2/common_interfaces @ a941f14bb318d8d904505ed935ccbb97f24a70a4](https://github.com/ros2/common_interfaces/tree/a941f14bb318d8d904505ed935ccbb97f24a70a4)
