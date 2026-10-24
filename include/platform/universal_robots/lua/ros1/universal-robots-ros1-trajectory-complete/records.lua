--- @file records.lua
--- @brief Complete vendor classes over the shared Lua 5.4 codec.
local wire = require("roswasm.wire")
--- @class Ros1Time
--- @brief Complete time; exact 8..8 bytes.
--- @field sec uint32 Original scalar; quota 0.
--- @field nsec uint32 Original scalar; quota 0.
--- @class Ros1Std_msgsHeader
--- @brief Complete std_msgs/Header; exact 16..144 bytes.
--- @field seq uint32 Original scalar; quota 0.
--- @field stamp time Original scalar; quota 0.
--- @field frame_id string Original scalar; quota 0.
--- @class Ros1Duration
--- @brief Complete duration; exact 8..8 bytes.
--- @field sec int32 Original scalar; quota 0.
--- @field nsec int32 Original scalar; quota 0.
--- @class Ros1Trajectory_msgsJointTrajectoryPoint
--- @brief Complete trajectory_msgs/JointTrajectoryPoint; exact 24..216 bytes.
--- @field positions float64 Original sequence; quota 6.
--- @field velocities float64 Original sequence; quota 6.
--- @field accelerations float64 Original sequence; quota 6.
--- @field effort float64 Original sequence; quota 6.
--- @field time_from_start duration Original scalar; quota 0.
--- @class Ros1Trajectory_msgsJointTrajectory
--- @brief Complete trajectory_msgs/JointTrajectory; exact 24..5168 bytes.
--- @field header std_msgs_Header Original scalar; quota 0.
--- @field joint_names string Original sequence; quota 6.
--- @field points trajectory_msgs_JointTrajectoryPoint Original sequence; quota 16.
--- @class Ros1Control_msgsJointTolerance
--- @brief Complete control_msgs/JointTolerance; exact 28..156 bytes.
--- @field name string Original scalar; quota 0.
--- @field position float64 Original scalar; quota 0.
--- @field velocity float64 Original scalar; quota 0.
--- @field acceleration float64 Original scalar; quota 0.
--- @class Ros1Control_msgsFollowJointTrajectoryGoal
--- @brief Complete control_msgs/FollowJointTrajectoryGoal; exact 40..7056 bytes.
--- @field trajectory trajectory_msgs_JointTrajectory Original scalar; quota 0.
--- @field path_tolerance control_msgs_JointTolerance Original sequence; quota 6.
--- @field goal_tolerance control_msgs_JointTolerance Original sequence; quota 6.
--- @field goal_time_tolerance duration Original scalar; quota 0.
--- @class Ros1Control_msgsFollowJointTrajectoryResult
--- @brief Complete control_msgs/FollowJointTrajectoryResult; exact 8..4104 bytes.
--- @field error_code int32 Original scalar; quota 0.
--- @field error_string string Original scalar; quota 0.
--- @class Ros1Control_msgsFollowJointTrajectoryFeedback
--- @brief Complete control_msgs/FollowJointTrajectoryFeedback; exact 92..2356 bytes.
--- @field header std_msgs_Header Original scalar; quota 0.
--- @field joint_names string Original sequence; quota 6.
--- @field desired trajectory_msgs_JointTrajectoryPoint Original scalar; quota 0.
--- @field actual trajectory_msgs_JointTrajectoryPoint Original scalar; quota 0.
--- @field error trajectory_msgs_JointTrajectoryPoint Original scalar; quota 0.
--- @class Ros1Geometry_msgsPoint
--- @brief Complete geometry_msgs/Point; exact 24..24 bytes.
--- @field x float64 Original scalar; quota 0.
--- @field y float64 Original scalar; quota 0.
--- @field z float64 Original scalar; quota 0.
--- @class Ros1Geometry_msgsQuaternion
--- @brief Complete geometry_msgs/Quaternion; exact 32..32 bytes.
--- @field x float64 Original scalar; quota 0.
--- @field y float64 Original scalar; quota 0.
--- @field z float64 Original scalar; quota 0.
--- @field w float64 Original scalar; quota 0.
--- @class Ros1Geometry_msgsPose
--- @brief Complete geometry_msgs/Pose; exact 56..56 bytes.
--- @field position geometry_msgs_Point Original scalar; quota 0.
--- @field orientation geometry_msgs_Quaternion Original scalar; quota 0.
--- @class Ros1Geometry_msgsPoseStamped
--- @brief Complete geometry_msgs/PoseStamped; exact 72..200 bytes.
--- @field header std_msgs_Header Original scalar; quota 0.
--- @field pose geometry_msgs_Pose Original scalar; quota 0.
--- @class Ros1Geometry_msgsVector3
--- @brief Complete geometry_msgs/Vector3; exact 24..24 bytes.
--- @field x float64 Original scalar; quota 0.
--- @field y float64 Original scalar; quota 0.
--- @field z float64 Original scalar; quota 0.
--- @class Ros1Geometry_msgsTwist
--- @brief Complete geometry_msgs/Twist; exact 48..48 bytes.
--- @field linear geometry_msgs_Vector3 Original scalar; quota 0.
--- @field angular geometry_msgs_Vector3 Original scalar; quota 0.
--- @class Ros1Geometry_msgsWrench
--- @brief Complete geometry_msgs/Wrench; exact 48..48 bytes.
--- @field force geometry_msgs_Vector3 Original scalar; quota 0.
--- @field torque geometry_msgs_Vector3 Original scalar; quota 0.
--- @class Ros1Sensor_msgsJointState
--- @brief Complete sensor_msgs/JointState; exact 32..1864 bytes.
--- @field header std_msgs_Header Original scalar; quota 0.
--- @field name string Original sequence; quota 6.
--- @field position float64 Original sequence; quota 6.
--- @field velocity float64 Original sequence; quota 6.
--- @field effort float64 Original sequence; quota 6.
--- @class Ros1Ur_dashboard_msgsAddToLogRequest
--- @brief Complete ur_dashboard_msgs/AddToLogRequest; exact 4..260 bytes.
--- @field message string Original scalar; quota 0.
--- @class Ros1Ur_dashboard_msgsAddToLogResponse
--- @brief Complete ur_dashboard_msgs/AddToLogResponse; exact 5..261 bytes.
--- @field answer string Original scalar; quota 0.
--- @field success bool Original scalar; quota 0.
--- @class Ros1Ur_dashboard_msgsGetLoadedProgramRequest
--- @brief Complete ur_dashboard_msgs/GetLoadedProgramRequest; exact 0..0 bytes.
--- @class Ros1Ur_dashboard_msgsGetLoadedProgramResponse
--- @brief Complete ur_dashboard_msgs/GetLoadedProgramResponse; exact 9..521 bytes.
--- @field answer string Original scalar; quota 0.
--- @field program_name string Original scalar; quota 0.
--- @field success bool Original scalar; quota 0.
--- @class Ros1Ur_dashboard_msgsGetProgramStateRequest
--- @brief Complete ur_dashboard_msgs/GetProgramStateRequest; exact 0..0 bytes.
--- @class Ros1Ur_dashboard_msgsProgramState
--- @brief Complete ur_dashboard_msgs/ProgramState; exact 4..260 bytes.
--- @field state string Original scalar; quota 0.
--- @class Ros1Ur_dashboard_msgsGetProgramStateResponse
--- @brief Complete ur_dashboard_msgs/GetProgramStateResponse; exact 13..781 bytes.
--- @field state ur_dashboard_msgs_ProgramState Original scalar; quota 0.
--- @field program_name string Original scalar; quota 0.
--- @field answer string Original scalar; quota 0.
--- @field success bool Original scalar; quota 0.
--- @class Ros1Ur_dashboard_msgsGetRobotModeRequest
--- @brief Complete ur_dashboard_msgs/GetRobotModeRequest; exact 0..0 bytes.
--- @class Ros1Ur_dashboard_msgsRobotMode
--- @brief Complete ur_dashboard_msgs/RobotMode; exact 1..1 bytes.
--- @field mode int8 Original scalar; quota 0.
--- @class Ros1Ur_dashboard_msgsGetRobotModeResponse
--- @brief Complete ur_dashboard_msgs/GetRobotModeResponse; exact 6..262 bytes.
--- @field robot_mode ur_dashboard_msgs_RobotMode Original scalar; quota 0.
--- @field answer string Original scalar; quota 0.
--- @field success bool Original scalar; quota 0.
--- @class Ros1Ur_dashboard_msgsGetSafetyModeRequest
--- @brief Complete ur_dashboard_msgs/GetSafetyModeRequest; exact 0..0 bytes.
--- @class Ros1Ur_dashboard_msgsSafetyMode
--- @brief Complete ur_dashboard_msgs/SafetyMode; exact 1..1 bytes.
--- @field mode uint8 Original scalar; quota 0.
--- @class Ros1Ur_dashboard_msgsGetSafetyModeResponse
--- @brief Complete ur_dashboard_msgs/GetSafetyModeResponse; exact 6..262 bytes.
--- @field safety_mode ur_dashboard_msgs_SafetyMode Original scalar; quota 0.
--- @field answer string Original scalar; quota 0.
--- @field success bool Original scalar; quota 0.
--- @class Ros1Ur_dashboard_msgsIsInRemoteControlRequest
--- @brief Complete ur_dashboard_msgs/IsInRemoteControlRequest; exact 0..0 bytes.
--- @class Ros1Ur_dashboard_msgsIsInRemoteControlResponse
--- @brief Complete ur_dashboard_msgs/IsInRemoteControlResponse; exact 6..262 bytes.
--- @field answer string Original scalar; quota 0.
--- @field in_remote_control bool Original scalar; quota 0.
--- @field success bool Original scalar; quota 0.
--- @class Ros1Ur_dashboard_msgsIsProgramRunningRequest
--- @brief Complete ur_dashboard_msgs/IsProgramRunningRequest; exact 0..0 bytes.
--- @class Ros1Ur_dashboard_msgsIsProgramRunningResponse
--- @brief Complete ur_dashboard_msgs/IsProgramRunningResponse; exact 6..262 bytes.
--- @field answer string Original scalar; quota 0.
--- @field program_running bool Original scalar; quota 0.
--- @field success bool Original scalar; quota 0.
--- @class Ros1Ur_dashboard_msgsIsProgramSavedRequest
--- @brief Complete ur_dashboard_msgs/IsProgramSavedRequest; exact 0..0 bytes.
--- @class Ros1Ur_dashboard_msgsIsProgramSavedResponse
--- @brief Complete ur_dashboard_msgs/IsProgramSavedResponse; exact 10..522 bytes.
--- @field answer string Original scalar; quota 0.
--- @field program_name string Original scalar; quota 0.
--- @field program_saved bool Original scalar; quota 0.
--- @field success bool Original scalar; quota 0.
--- @class Ros1Ur_dashboard_msgsLoadRequest
--- @brief Complete ur_dashboard_msgs/LoadRequest; exact 4..260 bytes.
--- @field filename string Original scalar; quota 0.
--- @class Ros1Ur_dashboard_msgsLoadResponse
--- @brief Complete ur_dashboard_msgs/LoadResponse; exact 5..261 bytes.
--- @field answer string Original scalar; quota 0.
--- @field success bool Original scalar; quota 0.
--- @class Ros1Ur_dashboard_msgsPopupRequest
--- @brief Complete ur_dashboard_msgs/PopupRequest; exact 4..260 bytes.
--- @field message string Original scalar; quota 0.
--- @class Ros1Ur_dashboard_msgsPopupResponse
--- @brief Complete ur_dashboard_msgs/PopupResponse; exact 5..261 bytes.
--- @field answer string Original scalar; quota 0.
--- @field success bool Original scalar; quota 0.
--- @class Ros1Ur_dashboard_msgsRawRequestRequest
--- @brief Complete ur_dashboard_msgs/RawRequestRequest; exact 4..260 bytes.
--- @field query string Original scalar; quota 0.
--- @class Ros1Ur_dashboard_msgsRawRequestResponse
--- @brief Complete ur_dashboard_msgs/RawRequestResponse; exact 4..260 bytes.
--- @field answer string Original scalar; quota 0.
--- @class Ros1Ur_dashboard_msgsSetModeGoal
--- @brief Complete ur_dashboard_msgs/SetModeGoal; exact 3..3 bytes.
--- @field target_robot_mode ur_dashboard_msgs_RobotMode Original scalar; quota 0.
--- @field stop_program bool Original scalar; quota 0.
--- @field play_program bool Original scalar; quota 0.
--- @class Ros1Ur_dashboard_msgsSetModeResult
--- @brief Complete ur_dashboard_msgs/SetModeResult; exact 5..261 bytes.
--- @field success bool Original scalar; quota 0.
--- @field message string Original scalar; quota 0.
--- @class Ros1Ur_dashboard_msgsSetModeFeedback
--- @brief Complete ur_dashboard_msgs/SetModeFeedback; exact 2..2 bytes.
--- @field current_robot_mode int8 Original scalar; quota 0.
--- @field current_safety_mode int8 Original scalar; quota 0.
--- @class Ros1Ur_msgsAnalog
--- @brief Complete ur_msgs/Analog; exact 6..6 bytes.
--- @field pin uint8 Original scalar; quota 0.
--- @field domain uint8 Original scalar; quota 0.
--- @field state float32 Original scalar; quota 0.
--- @class Ros1Ur_msgsDigital
--- @brief Complete ur_msgs/Digital; exact 2..2 bytes.
--- @field pin uint8 Original scalar; quota 0.
--- @field state bool Original scalar; quota 0.
--- @class Ros1Ur_msgsGetRobotSoftwareVersionRequest
--- @brief Complete ur_msgs/GetRobotSoftwareVersionRequest; exact 0..0 bytes.
--- @class Ros1Ur_msgsGetRobotSoftwareVersionResponse
--- @brief Complete ur_msgs/GetRobotSoftwareVersionResponse; exact 16..16 bytes.
--- @field major uint32 Original scalar; quota 0.
--- @field minor uint32 Original scalar; quota 0.
--- @field bugfix uint32 Original scalar; quota 0.
--- @field build uint32 Original scalar; quota 0.
--- @class Ros1Ur_msgsIOStates
--- @brief Complete ur_msgs/IOStates; exact 20..404 bytes.
--- @field digital_in_states ur_msgs_Digital Original sequence; quota 32.
--- @field digital_out_states ur_msgs_Digital Original sequence; quota 32.
--- @field flag_states ur_msgs_Digital Original sequence; quota 32.
--- @field analog_in_states ur_msgs_Analog Original sequence; quota 16.
--- @field analog_out_states ur_msgs_Analog Original sequence; quota 16.
--- @class Ros1Ur_msgsMasterboardDataMsg
--- @brief Complete ur_msgs/MasterboardDataMsg; exact 62..62 bytes.
--- @field digital_input_bits uint32 Original scalar; quota 0.
--- @field digital_output_bits uint32 Original scalar; quota 0.
--- @field analog_input_range0 int8 Original scalar; quota 0.
--- @field analog_input_range1 int8 Original scalar; quota 0.
--- @field analog_input0 float64 Original scalar; quota 0.
--- @field analog_input1 float64 Original scalar; quota 0.
--- @field analog_output_domain0 int8 Original scalar; quota 0.
--- @field analog_output_domain1 int8 Original scalar; quota 0.
--- @field analog_output0 float64 Original scalar; quota 0.
--- @field analog_output1 float64 Original scalar; quota 0.
--- @field masterboard_temperature float32 Original scalar; quota 0.
--- @field robot_voltage_48V float32 Original scalar; quota 0.
--- @field robot_current float32 Original scalar; quota 0.
--- @field master_io_current float32 Original scalar; quota 0.
--- @field master_safety_state uint8 Original scalar; quota 0.
--- @field master_onoff_state uint8 Original scalar; quota 0.
--- @class Ros1Ur_msgsRobotModeDataMsg
--- @brief Complete ur_msgs/RobotModeDataMsg; exact 15..15 bytes.
--- @field timestamp uint64 Original scalar; quota 0.
--- @field is_robot_connected bool Original scalar; quota 0.
--- @field is_real_robot_enabled bool Original scalar; quota 0.
--- @field is_power_on_robot bool Original scalar; quota 0.
--- @field is_emergency_stopped bool Original scalar; quota 0.
--- @field is_protective_stopped bool Original scalar; quota 0.
--- @field is_program_running bool Original scalar; quota 0.
--- @field is_program_paused bool Original scalar; quota 0.
--- @class Ros1Ur_msgsRobotStateRTMsg
--- @brief Complete ur_msgs/RobotStateRTMsg; exact 96..768 bytes.
--- @field time float64 Original scalar; quota 0.
--- @field q_target float64 Original sequence; quota 6.
--- @field qd_target float64 Original sequence; quota 6.
--- @field qdd_target float64 Original sequence; quota 6.
--- @field i_target float64 Original sequence; quota 6.
--- @field m_target float64 Original sequence; quota 6.
--- @field q_actual float64 Original sequence; quota 6.
--- @field qd_actual float64 Original sequence; quota 6.
--- @field i_actual float64 Original sequence; quota 6.
--- @field tool_acc_values float64 Original sequence; quota 6.
--- @field tcp_force float64 Original sequence; quota 6.
--- @field tool_vector float64 Original sequence; quota 6.
--- @field tcp_speed float64 Original sequence; quota 6.
--- @field digital_input_bits float64 Original scalar; quota 0.
--- @field motor_temperatures float64 Original sequence; quota 6.
--- @field controller_timer float64 Original scalar; quota 0.
--- @field test_value float64 Original scalar; quota 0.
--- @field robot_mode float64 Original scalar; quota 0.
--- @field joint_modes float64 Original sequence; quota 6.
--- @class Ros1Ur_msgsSetAnalogOutputRequest
--- @brief Complete ur_msgs/SetAnalogOutputRequest; exact 6..6 bytes.
--- @field data ur_msgs_Analog Original scalar; quota 0.
--- @class Ros1Ur_msgsSetAnalogOutputResponse
--- @brief Complete ur_msgs/SetAnalogOutputResponse; exact 1..1 bytes.
--- @field success bool Original scalar; quota 0.
--- @class Ros1Ur_msgsSetForceModeRequest
--- @brief Complete ur_msgs/SetForceModeRequest; exact 207..335 bytes.
--- @field task_frame geometry_msgs_PoseStamped Original scalar; quota 0.
--- @field selection_vector_x bool Original scalar; quota 0.
--- @field selection_vector_y bool Original scalar; quota 0.
--- @field selection_vector_z bool Original scalar; quota 0.
--- @field selection_vector_rx bool Original scalar; quota 0.
--- @field selection_vector_ry bool Original scalar; quota 0.
--- @field selection_vector_rz bool Original scalar; quota 0.
--- @field wrench geometry_msgs_Wrench Original scalar; quota 0.
--- @field type uint8 Original scalar; quota 0.
--- @field speed_limits geometry_msgs_Twist Original scalar; quota 0.
--- @field deviation_limits float32 Original array; quota 6.
--- @field damping_factor float32 Original scalar; quota 0.
--- @field gain_scaling float32 Original scalar; quota 0.
--- @class Ros1Ur_msgsSetForceModeResponse
--- @brief Complete ur_msgs/SetForceModeResponse; exact 1..1 bytes.
--- @field success bool Original scalar; quota 0.
--- @class Ros1Ur_msgsSetIORequest
--- @brief Complete ur_msgs/SetIORequest; exact 6..6 bytes.
--- @field fun int8 Original scalar; quota 0.
--- @field pin int8 Original scalar; quota 0.
--- @field state float32 Original scalar; quota 0.
--- @class Ros1Ur_msgsSetIOResponse
--- @brief Complete ur_msgs/SetIOResponse; exact 1..1 bytes.
--- @field success bool Original scalar; quota 0.
--- @class Ros1Ur_msgsSetPayloadRequest
--- @brief Complete ur_msgs/SetPayloadRequest; exact 28..28 bytes.
--- @field mass float32 Original scalar; quota 0.
--- @field center_of_gravity geometry_msgs_Vector3 Original scalar; quota 0.
--- @class Ros1Ur_msgsSetPayloadResponse
--- @brief Complete ur_msgs/SetPayloadResponse; exact 1..1 bytes.
--- @field success bool Original scalar; quota 0.
--- @class Ros1Ur_msgsSetSpeedSliderFractionRequest
--- @brief Complete ur_msgs/SetSpeedSliderFractionRequest; exact 8..8 bytes.
--- @field speed_slider_fraction float64 Original scalar; quota 0.
--- @class Ros1Ur_msgsSetSpeedSliderFractionResponse
--- @brief Complete ur_msgs/SetSpeedSliderFractionResponse; exact 1..1 bytes.
--- @field success bool Original scalar; quota 0.
--- @class Ros1Ur_msgsToolDataMsg
--- @brief Complete ur_msgs/ToolDataMsg; exact 32..32 bytes.
--- @field analog_input_range2 int8 Original scalar; quota 0.
--- @field analog_input_range3 int8 Original scalar; quota 0.
--- @field analog_input2 float64 Original scalar; quota 0.
--- @field analog_input3 float64 Original scalar; quota 0.
--- @field tool_voltage_48v float32 Original scalar; quota 0.
--- @field tool_output_voltage uint8 Original scalar; quota 0.
--- @field tool_current float32 Original scalar; quota 0.
--- @field tool_temperature float32 Original scalar; quota 0.
--- @field tool_mode uint8 Original scalar; quota 0.
local schemas = {
    {
        ["symbol"] = "Ros1Time",
        ["ros_version"] = 1,
        ["native_type"] = "time",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "normalized-time",
        ["fields"] = {
            {
                ["name"] = "sec",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "nsec",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Std_msgsHeader",
        ["ros_version"] = 1,
        ["native_type"] = "std_msgs/Header",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435",
        ["minimum"] = 16,
        ["maximum"] = 144,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "seq",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "stamp",
                ["type"] = "Ros1Time",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "frame_id",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 128,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Duration",
        ["ros_version"] = 1,
        ["native_type"] = "duration",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "normalized-duration",
        ["fields"] = {
            {
                ["name"] = "sec",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "nsec",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Trajectory_msgsJointTrajectoryPoint",
        ["ros_version"] = 1,
        ["native_type"] = "trajectory_msgs/JointTrajectoryPoint",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5fbdf1845c522d88461d06d5dfae1f35cef5d7f00a87e405c0d458c8e1a9e64d",
        ["minimum"] = 24,
        ["maximum"] = 216,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "positions",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "velocities",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "accelerations",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "effort",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "time_from_start",
                ["type"] = "Ros1Duration",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Trajectory_msgsJointTrajectory",
        ["ros_version"] = 1,
        ["native_type"] = "trajectory_msgs/JointTrajectory",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_522dc1a8799adc4be16ce5a35a19a217de1095f018af0a7eb57eb6114c69adda",
        ["minimum"] = 24,
        ["maximum"] = 5168,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros1Std_msgsHeader",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 16
            },
            {
                ["name"] = "joint_names",
                ["type"] = "string",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "points",
                ["type"] = "Ros1Trajectory_msgsJointTrajectoryPoint",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 24
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Control_msgsJointTolerance",
        ["ros_version"] = 1,
        ["native_type"] = "control_msgs/JointTolerance",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_dfb80a25d10bc883359720da419af0baa78217e72619922a762a5a96a06d0738",
        ["minimum"] = 28,
        ["maximum"] = 156,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 128,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "position",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "velocity",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "acceleration",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Control_msgsFollowJointTrajectoryGoal",
        ["ros_version"] = 1,
        ["native_type"] = "control_msgs/FollowJointTrajectoryGoal",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bcbae7a4976e04bd115e5916808d63bd18da9eade34d35aab26439c1971b6c78",
        ["minimum"] = 40,
        ["maximum"] = 7056,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "trajectory",
                ["type"] = "Ros1Trajectory_msgsJointTrajectory",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 24
            },
            {
                ["name"] = "path_tolerance",
                ["type"] = "Ros1Control_msgsJointTolerance",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 28
            },
            {
                ["name"] = "goal_tolerance",
                ["type"] = "Ros1Control_msgsJointTolerance",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 28
            },
            {
                ["name"] = "goal_time_tolerance",
                ["type"] = "Ros1Duration",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Control_msgsFollowJointTrajectoryResult",
        ["ros_version"] = 1,
        ["native_type"] = "control_msgs/FollowJointTrajectoryResult",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281",
        ["minimum"] = 8,
        ["maximum"] = 4104,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "error_code",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "error_string",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 4096,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            }
        },
        ["constants"] = {
            ["SUCCESSFUL"] = 0,
            ["INVALID_GOAL"] = -1,
            ["INVALID_JOINTS"] = -2,
            ["OLD_HEADER_TIMESTAMP"] = -3,
            ["PATH_TOLERANCE_VIOLATED"] = -4,
            ["GOAL_TOLERANCE_VIOLATED"] = -5
        }
    },
    {
        ["symbol"] = "Ros1Control_msgsFollowJointTrajectoryFeedback",
        ["ros_version"] = 1,
        ["native_type"] = "control_msgs/FollowJointTrajectoryFeedback",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_fbb2813fa8fe3e2b4a0c7e968fb5ef037df0af707b9439e8615bc3d447db6913",
        ["minimum"] = 92,
        ["maximum"] = 2356,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros1Std_msgsHeader",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 16
            },
            {
                ["name"] = "joint_names",
                ["type"] = "string",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "desired",
                ["type"] = "Ros1Trajectory_msgsJointTrajectoryPoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 24
            },
            {
                ["name"] = "actual",
                ["type"] = "Ros1Trajectory_msgsJointTrajectoryPoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 24
            },
            {
                ["name"] = "error",
                ["type"] = "Ros1Trajectory_msgsJointTrajectoryPoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 24
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Geometry_msgsPoint",
        ["ros_version"] = 1,
        ["native_type"] = "geometry_msgs/Point",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b",
        ["minimum"] = 24,
        ["maximum"] = 24,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "x",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "y",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "z",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Geometry_msgsQuaternion",
        ["ros_version"] = 1,
        ["native_type"] = "geometry_msgs/Quaternion",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934",
        ["minimum"] = 32,
        ["maximum"] = 32,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "x",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "y",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "z",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "w",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Geometry_msgsPose",
        ["ros_version"] = 1,
        ["native_type"] = "geometry_msgs/Pose",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471",
        ["minimum"] = 56,
        ["maximum"] = 56,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "position",
                ["type"] = "Ros1Geometry_msgsPoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 24
            },
            {
                ["name"] = "orientation",
                ["type"] = "Ros1Geometry_msgsQuaternion",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 32
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Geometry_msgsPoseStamped",
        ["ros_version"] = 1,
        ["native_type"] = "geometry_msgs/PoseStamped",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95",
        ["minimum"] = 72,
        ["maximum"] = 200,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros1Std_msgsHeader",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 16
            },
            {
                ["name"] = "pose",
                ["type"] = "Ros1Geometry_msgsPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 56
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Geometry_msgsVector3",
        ["ros_version"] = 1,
        ["native_type"] = "geometry_msgs/Vector3",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc",
        ["minimum"] = 24,
        ["maximum"] = 24,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "x",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "y",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "z",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Geometry_msgsTwist",
        ["ros_version"] = 1,
        ["native_type"] = "geometry_msgs/Twist",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921",
        ["minimum"] = 48,
        ["maximum"] = 48,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "linear",
                ["type"] = "Ros1Geometry_msgsVector3",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 24
            },
            {
                ["name"] = "angular",
                ["type"] = "Ros1Geometry_msgsVector3",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 24
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Geometry_msgsWrench",
        ["ros_version"] = 1,
        ["native_type"] = "geometry_msgs/Wrench",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3",
        ["minimum"] = 48,
        ["maximum"] = 48,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "force",
                ["type"] = "Ros1Geometry_msgsVector3",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 24
            },
            {
                ["name"] = "torque",
                ["type"] = "Ros1Geometry_msgsVector3",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 24
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Sensor_msgsJointState",
        ["ros_version"] = 1,
        ["native_type"] = "sensor_msgs/JointState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ee28116009ad317c6a8db950f43d6a712b328b93740460dc70f97a632c3b5e0f",
        ["minimum"] = 32,
        ["maximum"] = 1864,
        ["semantics"] = "joint-state-optional-equal-length-arrays",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros1Std_msgsHeader",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 16
            },
            {
                ["name"] = "name",
                ["type"] = "string",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "position",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "velocity",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "effort",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsAddToLogRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/AddToLogRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4",
        ["minimum"] = 4,
        ["maximum"] = 260,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "message",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsAddToLogResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/AddToLogResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c",
        ["minimum"] = 5,
        ["maximum"] = 261,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "answer",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "success",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsGetLoadedProgramRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/GetLoadedProgramRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsGetLoadedProgramResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/GetLoadedProgramResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a",
        ["minimum"] = 9,
        ["maximum"] = 521,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "answer",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "program_name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "success",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsGetProgramStateRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/GetProgramStateRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsProgramState",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/ProgramState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e",
        ["minimum"] = 4,
        ["maximum"] = 260,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "state",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            }
        },
        ["constants"] = {
            ["STOPPED"] = "STOPPED",
            ["PLAYING"] = "PLAYING",
            ["PAUSED"] = "PAUSED"
        }
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsGetProgramStateResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/GetProgramStateResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed",
        ["minimum"] = 13,
        ["maximum"] = 781,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "state",
                ["type"] = "Ros1Ur_dashboard_msgsProgramState",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "program_name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "answer",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "success",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsGetRobotModeRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/GetRobotModeRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsRobotMode",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/RobotMode",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "mode",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {
            ["NO_CONTROLLER"] = -1,
            ["DISCONNECTED"] = 0,
            ["CONFIRM_SAFETY"] = 1,
            ["BOOTING"] = 2,
            ["POWER_OFF"] = 3,
            ["POWER_ON"] = 4,
            ["IDLE"] = 5,
            ["BACKDRIVE"] = 6,
            ["RUNNING"] = 7,
            ["UPDATING_FIRMWARE"] = 8
        }
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsGetRobotModeResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/GetRobotModeResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f",
        ["minimum"] = 6,
        ["maximum"] = 262,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "robot_mode",
                ["type"] = "Ros1Ur_dashboard_msgsRobotMode",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "answer",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "success",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsGetSafetyModeRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/GetSafetyModeRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsSafetyMode",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/SafetyMode",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "mode",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {
            ["NORMAL"] = 1,
            ["REDUCED"] = 2,
            ["PROTECTIVE_STOP"] = 3,
            ["RECOVERY"] = 4,
            ["SAFEGUARD_STOP"] = 5,
            ["SYSTEM_EMERGENCY_STOP"] = 6,
            ["ROBOT_EMERGENCY_STOP"] = 7,
            ["VIOLATION"] = 8,
            ["FAULT"] = 9,
            ["VALIDATE_JOINT_ID"] = 10,
            ["UNDEFINED_SAFETY_MODE"] = 11,
            ["AUTOMATIC_MODE_SAFEGUARD_STOP"] = 12,
            ["SYSTEM_THREE_POSITION_ENABLING_STOP"] = 13
        }
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsGetSafetyModeResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/GetSafetyModeResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15",
        ["minimum"] = 6,
        ["maximum"] = 262,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "safety_mode",
                ["type"] = "Ros1Ur_dashboard_msgsSafetyMode",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "answer",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "success",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsIsInRemoteControlRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/IsInRemoteControlRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsIsInRemoteControlResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/IsInRemoteControlResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a",
        ["minimum"] = 6,
        ["maximum"] = 262,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "answer",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "in_remote_control",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "success",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsIsProgramRunningRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/IsProgramRunningRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsIsProgramRunningResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/IsProgramRunningResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac",
        ["minimum"] = 6,
        ["maximum"] = 262,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "answer",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "program_running",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "success",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsIsProgramSavedRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/IsProgramSavedRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsIsProgramSavedResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/IsProgramSavedResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52",
        ["minimum"] = 10,
        ["maximum"] = 522,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "answer",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "program_name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "program_saved",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "success",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsLoadRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/LoadRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd",
        ["minimum"] = 4,
        ["maximum"] = 260,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "filename",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsLoadResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/LoadResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02",
        ["minimum"] = 5,
        ["maximum"] = 261,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "answer",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "success",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsPopupRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/PopupRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d",
        ["minimum"] = 4,
        ["maximum"] = 260,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "message",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsPopupResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/PopupResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14",
        ["minimum"] = 5,
        ["maximum"] = 261,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "answer",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "success",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsRawRequestRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/RawRequestRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4",
        ["minimum"] = 4,
        ["maximum"] = 260,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "query",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsRawRequestResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/RawRequestResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80",
        ["minimum"] = 4,
        ["maximum"] = 260,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "answer",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsSetModeGoal",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/SetModeGoal",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "target_robot_mode",
                ["type"] = "Ros1Ur_dashboard_msgsRobotMode",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "stop_program",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "play_program",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsSetModeResult",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/SetModeResult",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114",
        ["minimum"] = 5,
        ["maximum"] = 261,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "success",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "message",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_dashboard_msgsSetModeFeedback",
        ["ros_version"] = 1,
        ["native_type"] = "ur_dashboard_msgs/SetModeFeedback",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "current_robot_mode",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "current_safety_mode",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_msgsAnalog",
        ["ros_version"] = 1,
        ["native_type"] = "ur_msgs/Analog",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7",
        ["minimum"] = 6,
        ["maximum"] = 6,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pin",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "domain",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "state",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            }
        },
        ["constants"] = {
            ["CURRENT"] = 0,
            ["VOLTAGE"] = 1
        }
    },
    {
        ["symbol"] = "Ros1Ur_msgsDigital",
        ["ros_version"] = 1,
        ["native_type"] = "ur_msgs/Digital",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pin",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "state",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_msgsGetRobotSoftwareVersionRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ur_msgs/GetRobotSoftwareVersionRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_msgsGetRobotSoftwareVersionResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ur_msgs/GetRobotSoftwareVersionResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64",
        ["minimum"] = 16,
        ["maximum"] = 16,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "major",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "minor",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "bugfix",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "build",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_msgsIOStates",
        ["ros_version"] = 1,
        ["native_type"] = "ur_msgs/IOStates",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033",
        ["minimum"] = 20,
        ["maximum"] = 404,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "digital_in_states",
                ["type"] = "Ros1Ur_msgsDigital",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 2
            },
            {
                ["name"] = "digital_out_states",
                ["type"] = "Ros1Ur_msgsDigital",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 2
            },
            {
                ["name"] = "flag_states",
                ["type"] = "Ros1Ur_msgsDigital",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 2
            },
            {
                ["name"] = "analog_in_states",
                ["type"] = "Ros1Ur_msgsAnalog",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 6
            },
            {
                ["name"] = "analog_out_states",
                ["type"] = "Ros1Ur_msgsAnalog",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 6
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_msgsMasterboardDataMsg",
        ["ros_version"] = 1,
        ["native_type"] = "ur_msgs/MasterboardDataMsg",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f",
        ["minimum"] = 62,
        ["maximum"] = 62,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "digital_input_bits",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "digital_output_bits",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "analog_input_range0",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "analog_input_range1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "analog_input0",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "analog_input1",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "analog_output_domain0",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "analog_output_domain1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "analog_output0",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "analog_output1",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "masterboard_temperature",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "robot_voltage_48V",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "robot_current",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "master_io_current",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "master_safety_state",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "master_onoff_state",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_msgsRobotModeDataMsg",
        ["ros_version"] = 1,
        ["native_type"] = "ur_msgs/RobotModeDataMsg",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231",
        ["minimum"] = 15,
        ["maximum"] = 15,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "timestamp",
                ["type"] = "uint64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "is_robot_connected",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "is_real_robot_enabled",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "is_power_on_robot",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "is_emergency_stopped",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "is_protective_stopped",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "is_program_running",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "is_program_paused",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_msgsRobotStateRTMsg",
        ["ros_version"] = 1,
        ["native_type"] = "ur_msgs/RobotStateRTMsg",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7",
        ["minimum"] = 96,
        ["maximum"] = 768,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "time",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "q_target",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "qd_target",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "qdd_target",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "i_target",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "m_target",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "q_actual",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "qd_actual",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "i_actual",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "tool_acc_values",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "tcp_force",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "tool_vector",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "tcp_speed",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "digital_input_bits",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "motor_temperatures",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "controller_timer",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "test_value",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "robot_mode",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "joint_modes",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_msgsSetAnalogOutputRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ur_msgs/SetAnalogOutputRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789",
        ["minimum"] = 6,
        ["maximum"] = 6,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "data",
                ["type"] = "Ros1Ur_msgsAnalog",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 6
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_msgsSetAnalogOutputResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ur_msgs/SetAnalogOutputResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "success",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_msgsSetForceModeRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ur_msgs/SetForceModeRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b",
        ["minimum"] = 207,
        ["maximum"] = 335,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "task_frame",
                ["type"] = "Ros1Geometry_msgsPoseStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 72
            },
            {
                ["name"] = "selection_vector_x",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "selection_vector_y",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "selection_vector_z",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "selection_vector_rx",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "selection_vector_ry",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "selection_vector_rz",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "wrench",
                ["type"] = "Ros1Geometry_msgsWrench",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 48
            },
            {
                ["name"] = "type",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "speed_limits",
                ["type"] = "Ros1Geometry_msgsTwist",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 48
            },
            {
                ["name"] = "deviation_limits",
                ["type"] = "float32",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "damping_factor",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "gain_scaling",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            }
        },
        ["constants"] = {
            ["TCP_TO_ORIGIN"] = 1,
            ["NO_TRANSFORM"] = 2,
            ["TCP_VELOCITY_TO_X_Y"] = 3
        }
    },
    {
        ["symbol"] = "Ros1Ur_msgsSetForceModeResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ur_msgs/SetForceModeResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "success",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_msgsSetIORequest",
        ["ros_version"] = 1,
        ["native_type"] = "ur_msgs/SetIORequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872",
        ["minimum"] = 6,
        ["maximum"] = 6,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "fun",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "pin",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "state",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            }
        },
        ["constants"] = {
            ["PIN_AOUT0"] = 0,
            ["PIN_AOUT1"] = 1,
            ["PIN_DOUT0"] = 0,
            ["PIN_DOUT1"] = 1,
            ["PIN_DOUT2"] = 2,
            ["PIN_DOUT3"] = 3,
            ["PIN_DOUT4"] = 4,
            ["PIN_DOUT5"] = 5,
            ["PIN_DOUT6"] = 6,
            ["PIN_DOUT7"] = 7,
            ["PIN_CONF_OUT0"] = 8,
            ["PIN_CONF_OUT1"] = 9,
            ["PIN_CONF_OUT2"] = 10,
            ["PIN_CONF_OUT3"] = 11,
            ["PIN_CONF_OUT4"] = 12,
            ["PIN_CONF_OUT5"] = 13,
            ["PIN_CONF_OUT6"] = 14,
            ["PIN_CONF_OUT7"] = 15,
            ["PIN_TOOL_DOUT0"] = 16,
            ["PIN_TOOL_DOUT1"] = 17,
            ["FUN_SET_DIGITAL_OUT"] = 1,
            ["FUN_SET_FLAG"] = 2,
            ["FUN_SET_ANALOG_OUT"] = 3,
            ["FUN_SET_TOOL_VOLTAGE"] = 4,
            ["STATE_OFF"] = 0,
            ["STATE_ON"] = 1,
            ["STATE_TOOL_VOLTAGE_0V"] = 0,
            ["STATE_TOOL_VOLTAGE_12V"] = 12,
            ["STATE_TOOL_VOLTAGE_24V"] = 24
        }
    },
    {
        ["symbol"] = "Ros1Ur_msgsSetIOResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ur_msgs/SetIOResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "success",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_msgsSetPayloadRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ur_msgs/SetPayloadRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3",
        ["minimum"] = 28,
        ["maximum"] = 28,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "mass",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "center_of_gravity",
                ["type"] = "Ros1Geometry_msgsVector3",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 24
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_msgsSetPayloadResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ur_msgs/SetPayloadResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "success",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_msgsSetSpeedSliderFractionRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ur_msgs/SetSpeedSliderFractionRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "speed_slider_fraction",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_msgsSetSpeedSliderFractionResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ur_msgs/SetSpeedSliderFractionResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "success",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros1Ur_msgsToolDataMsg",
        ["ros_version"] = 1,
        ["native_type"] = "ur_msgs/ToolDataMsg",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390",
        ["minimum"] = 32,
        ["maximum"] = 32,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "analog_input_range2",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "analog_input_range3",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "analog_input2",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "analog_input3",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "tool_voltage_48v",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "tool_output_voltage",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            },
            {
                ["name"] = "tool_current",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "tool_temperature",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "tool_mode",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1
            }
        },
        ["constants"] = {
            ["ANALOG_INPUT_RANGE_CURRENT"] = 0,
            ["ANALOG_INPUT_RANGE_VOLTAGE"] = 1,
            ["TOOL_BOOTLOADER_MODE"] = 249,
            ["TOOL_RUNNING_MODE"] = 253,
            ["TOOL_IDLE_MODE"] = 255
        }
    }
}
local classes = wire.records(schemas)
return classes
