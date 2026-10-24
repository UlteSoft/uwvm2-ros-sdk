--- @file records.lua
--- @brief Complete vendor classes over the shared Lua 5.4 codec.
local wire = require("roswasm.wire")
--- @class Ros2Builtin_interfacesMsgTime
--- @brief Complete builtin_interfaces/msg/Time; exact 8..8 bytes.
--- @field sec int32 Original scalar; quota 0.
--- @field nanosec uint32 Original scalar; quota 0.
--- @class Ros2Geometry_msgsMsgPoint
--- @brief Complete geometry_msgs/msg/Point; exact 24..24 bytes.
--- @field x float64 Original scalar; quota 0.
--- @field y float64 Original scalar; quota 0.
--- @field z float64 Original scalar; quota 0.
--- @class Ros2Geometry_msgsMsgQuaternion
--- @brief Complete geometry_msgs/msg/Quaternion; exact 32..32 bytes.
--- @field x float64 Original scalar; quota 0.
--- @field y float64 Original scalar; quota 0.
--- @field z float64 Original scalar; quota 0.
--- @field w float64 Original scalar; quota 0.
--- @class Ros2Geometry_msgsMsgPose
--- @brief Complete geometry_msgs/msg/Pose; exact 56..56 bytes.
--- @field position geometry_msgs_msg_Point Original scalar; quota 0.
--- @field orientation geometry_msgs_msg_Quaternion Original scalar; quota 0.
--- @class Ros2Geometry_msgsMsgVector3
--- @brief Complete geometry_msgs/msg/Vector3; exact 24..24 bytes.
--- @field x float64 Original scalar; quota 0.
--- @field y float64 Original scalar; quota 0.
--- @field z float64 Original scalar; quota 0.
--- @class Ros2Geometry_msgsMsgTwist
--- @brief Complete geometry_msgs/msg/Twist; exact 48..48 bytes.
--- @field linear geometry_msgs_msg_Vector3 Original scalar; quota 0.
--- @field angular geometry_msgs_msg_Vector3 Original scalar; quota 0.
--- @class Ros2Std_msgsMsgHeader
--- @brief Complete std_msgs/msg/Header; exact 12..140 bytes.
--- @field stamp builtin_interfaces_msg_Time Original scalar; quota 0.
--- @field frame_id string Original scalar; quota 0.
--- @class Ros2Std_msgsMsgString
--- @brief Complete std_msgs/msg/String; exact 4..1028 bytes.
--- @field data string Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgRobotMode
--- @brief Complete urinterfaces/msg/RobotMode; exact 13..141 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field data int8 Original scalar; quota 0.
--- @class Ros2UrinterfacesActionSetMode_Goal
--- @brief Complete urinterfaces/action/SetMode_Goal; exact 15..143 bytes.
--- @field target_robot_mode urinterfaces_msg_RobotMode Original scalar; quota 0.
--- @field stop_program bool Original scalar; quota 0.
--- @field play_program bool Original scalar; quota 0.
--- @class Ros2UrinterfacesActionSetMode_Result
--- @brief Complete urinterfaces/action/SetMode_Result; exact 5..261 bytes.
--- @field success bool Original scalar; quota 0.
--- @field message string Original scalar; quota 0.
--- @class Ros2UrinterfacesActionSetMode_Feedback
--- @brief Complete urinterfaces/action/SetMode_Feedback; exact 2..2 bytes.
--- @field current_robot_mode int8 Original scalar; quota 0.
--- @field current_safety_mode int8 Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgActiveTCP
--- @brief Complete urinterfaces/msg/ActiveTCP; exact 16..400 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field data string Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgAnalog
--- @brief Complete urinterfaces/msg/Analog; exact 6..6 bytes.
--- @field pin uint8 Original scalar; quota 0.
--- @field domain uint8 Original scalar; quota 0.
--- @field value float32 Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgAnalogIO
--- @brief Complete urinterfaces/msg/AnalogIO; exact 8..200 bytes.
--- @field analog_inputs urinterfaces_msg_Analog Original sequence; quota 16.
--- @field analog_outputs urinterfaces_msg_Analog Original sequence; quota 16.
--- @class Ros2UrinterfacesMsgAnalogIOStateStamped
--- @brief Complete urinterfaces/msg/AnalogIOStateStamped; exact 20..340 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field io_state urinterfaces_msg_AnalogIO Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgAnalogStamped
--- @brief Complete urinterfaces/msg/AnalogStamped; exact 18..146 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field data urinterfaces_msg_Analog Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgBoolStamped
--- @brief Complete urinterfaces/msg/BoolStamped; exact 13..141 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field data bool Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgControlCycle
--- @brief Complete urinterfaces/msg/ControlCycle; exact 20..148 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field data uint64 Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgCurrent
--- @brief Complete urinterfaces/msg/Current; exact 16..144 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field data float32 Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgDigital
--- @brief Complete urinterfaces/msg/Digital; exact 2..2 bytes.
--- @field pin uint8 Original scalar; quota 0.
--- @field state bool Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgDigitalIO
--- @brief Complete urinterfaces/msg/DigitalIO; exact 8..136 bytes.
--- @field digital_inputs urinterfaces_msg_Digital Original sequence; quota 32.
--- @field digital_outputs urinterfaces_msg_Digital Original sequence; quota 32.
--- @class Ros2UrinterfacesMsgDigitalIOStateStamped
--- @brief Complete urinterfaces/msg/DigitalIOStateStamped; exact 28..412 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field configurable_io urinterfaces_msg_DigitalIO Original scalar; quota 0.
--- @field standard_io urinterfaces_msg_DigitalIO Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgDigitalStamped
--- @brief Complete urinterfaces/msg/DigitalStamped; exact 14..142 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field data urinterfaces_msg_Digital Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgDoubleMultiArrayStamped
--- @brief Complete urinterfaces/msg/DoubleMultiArrayStamped; exact 16..272 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field data float64 Original sequence; quota 16.
--- @class Ros2UrinterfacesMsgFloat32Stamped
--- @brief Complete urinterfaces/msg/Float32Stamped; exact 16..144 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field data float32 Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgFloat64Stamped
--- @brief Complete urinterfaces/msg/Float64Stamped; exact 20..148 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field data float64 Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgJointMode
--- @brief Complete urinterfaces/msg/JointMode; exact 19..147 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field joint_modes uint8 Original array; quota 6.
--- @field tool_mode uint8 Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgJointTemperature
--- @brief Complete urinterfaces/msg/JointTemperature; exact 36..164 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field data float32 Original array; quota 6.
--- @class Ros2UrinterfacesMsgJointVoltage
--- @brief Complete urinterfaces/msg/JointVoltage; exact 60..188 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field data float64 Original array; quota 6.
--- @class Ros2UrinterfacesMsgJsonStringType
--- @brief Complete urinterfaces/msg/JsonStringType; exact 4..1028 bytes.
--- @field json_string std_msgs_msg_String Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgRuntimeState
--- @brief Complete urinterfaces/msg/RuntimeState; exact 13..141 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field data int8 Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgSafetyStatus
--- @brief Complete urinterfaces/msg/SafetyStatus; exact 13..141 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field data int8 Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgSharedVariablesEditResponse
--- @brief Complete urinterfaces/msg/SharedVariablesEditResponse; exact 5..1029 bytes.
--- @field success bool Original scalar; quota 0.
--- @field result_message std_msgs_msg_String Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgSpeedSliderFraction
--- @brief Complete urinterfaces/msg/SpeedSliderFraction; exact 20..148 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field data float64 Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgTCPState
--- @brief Complete urinterfaces/msg/TCPState; exact 116..244 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field pose geometry_msgs_msg_Pose Original scalar; quota 0.
--- @field speed geometry_msgs_msg_Twist Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgToolOutputMode
--- @brief Complete urinterfaces/msg/ToolOutputMode; exact 15..143 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field output_mode uint8 Original scalar; quota 0.
--- @field output_pin_mode uint8 Original array; quota 2.
--- @class Ros2UrinterfacesMsgVariableUpdate
--- @brief Complete urinterfaces/msg/VariableUpdate; exact 16..1168 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field data urinterfaces_msg_JsonStringType Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgVoltageCurrentStamped
--- @brief Complete urinterfaces/msg/VoltageCurrentStamped; exact 28..156 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field voltage float64 Original scalar; quota 0.
--- @field current float64 Original scalar; quota 0.
--- @class Ros2UrinterfacesMsgWorldModelNames
--- @brief Complete urinterfaces/msg/WorldModelNames; exact 16..16592 bytes.
--- @field header std_msgs_msg_Header Original scalar; quota 0.
--- @field data std_msgs_msg_String Original sequence; quota 16.
--- @class Ros2UrinterfacesSrvSetAnalogOutput_Request
--- @brief Complete urinterfaces/srv/SetAnalogOutput_Request; exact 4..100 bytes.
--- @field data urinterfaces_msg_Analog Original sequence; quota 16.
--- @class Ros2UrinterfacesSrvSetAnalogOutput_Response
--- @brief Complete urinterfaces/srv/SetAnalogOutput_Response; exact 1..1 bytes.
--- @field success bool Original scalar; quota 0.
--- @class Ros2UrinterfacesSrvSetDigitalOutput_Request
--- @brief Complete urinterfaces/srv/SetDigitalOutput_Request; exact 4..36 bytes.
--- @field data urinterfaces_msg_Digital Original sequence; quota 16.
--- @class Ros2UrinterfacesSrvSetDigitalOutput_Response
--- @brief Complete urinterfaces/srv/SetDigitalOutput_Response; exact 1..1 bytes.
--- @field success bool Original scalar; quota 0.
--- @class Ros2UrinterfacesSrvSetSpeedFraction_Request
--- @brief Complete urinterfaces/srv/SetSpeedFraction_Request; exact 4..4 bytes.
--- @field value float32 Original scalar; quota 0.
--- @class Ros2UrinterfacesSrvSetSpeedFraction_Response
--- @brief Complete urinterfaces/srv/SetSpeedFraction_Response; exact 1..1 bytes.
--- @field success bool Original scalar; quota 0.
--- @class Ros2UrinterfacesSrvSharedVariablesEditor_Request
--- @brief Complete urinterfaces/srv/SharedVariablesEditor_Request; exact 4..1028 bytes.
--- @field request urinterfaces_msg_JsonStringType Original scalar; quota 0.
--- @class Ros2UrinterfacesSrvSharedVariablesEditor_Response
--- @brief Complete urinterfaces/srv/SharedVariablesEditor_Response; exact 5..1029 bytes.
--- @field response urinterfaces_msg_SharedVariablesEditResponse Original scalar; quota 0.
--- @class Ros2UrinterfacesSrvVariablesViewer_Request
--- @brief Complete urinterfaces/srv/VariablesViewer_Request; exact 0..0 bytes.
--- @class Ros2UrinterfacesSrvVariablesViewer_Response
--- @brief Complete urinterfaces/srv/VariablesViewer_Response; exact 16..1168 bytes.
--- @field response urinterfaces_msg_VariableUpdate Original scalar; quota 0.
local schemas = {
    {
        ["symbol"] = "Ros2Builtin_interfacesMsgTime",
        ["ros_version"] = 2,
        ["native_type"] = "builtin_interfaces/msg/Time",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "normalized-time",
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
                ["name"] = "nanosec",
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
        ["symbol"] = "Ros2Geometry_msgsMsgPoint",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/Point",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616",
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
        ["symbol"] = "Ros2Geometry_msgsMsgQuaternion",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/Quaternion",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
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
                ["native_default"] = "0.0",
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8,
                ["default"] = 0.0
            },
            {
                ["name"] = "y",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = "0.0",
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8,
                ["default"] = 0.0
            },
            {
                ["name"] = "z",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = "0.0",
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8,
                ["default"] = 0.0
            },
            {
                ["name"] = "w",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = "1.0",
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8,
                ["default"] = 1.0
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros2Geometry_msgsMsgPose",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/Pose",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777",
        ["minimum"] = 56,
        ["maximum"] = 56,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "position",
                ["type"] = "Ros2Geometry_msgsMsgPoint",
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
                ["type"] = "Ros2Geometry_msgsMsgQuaternion",
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
        ["symbol"] = "Ros2Geometry_msgsMsgVector3",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/Vector3",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e",
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
        ["symbol"] = "Ros2Geometry_msgsMsgTwist",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/Twist",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e",
        ["minimum"] = 48,
        ["maximum"] = 48,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "linear",
                ["type"] = "Ros2Geometry_msgsMsgVector3",
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
                ["type"] = "Ros2Geometry_msgsMsgVector3",
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
        ["symbol"] = "Ros2Std_msgsMsgHeader",
        ["ros_version"] = 2,
        ["native_type"] = "std_msgs/msg/Header",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96",
        ["minimum"] = 12,
        ["maximum"] = 140,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "stamp",
                ["type"] = "Ros2Builtin_interfacesMsgTime",
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
        ["symbol"] = "Ros2Std_msgsMsgString",
        ["ros_version"] = 2,
        ["native_type"] = "std_msgs/msg/String",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5",
        ["minimum"] = 4,
        ["maximum"] = 1028,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "data",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 1024,
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
        ["symbol"] = "Ros2UrinterfacesMsgRobotMode",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/RobotMode",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea",
        ["minimum"] = 13,
        ["maximum"] = 141,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "data",
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
        ["symbol"] = "Ros2UrinterfacesActionSetMode_Goal",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/action/SetMode_Goal",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09",
        ["minimum"] = 15,
        ["maximum"] = 143,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "target_robot_mode",
                ["type"] = "Ros2UrinterfacesMsgRobotMode",
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
                ["element_minimum"] = 13
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
                ["native_default"] = "False",
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros2UrinterfacesActionSetMode_Result",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/action/SetMode_Result",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7",
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
        ["symbol"] = "Ros2UrinterfacesActionSetMode_Feedback",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/action/SetMode_Feedback",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537",
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
        ["symbol"] = "Ros2UrinterfacesMsgActiveTCP",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/ActiveTCP",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae",
        ["minimum"] = 16,
        ["maximum"] = 400,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "data",
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
        ["symbol"] = "Ros2UrinterfacesMsgAnalog",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/Analog",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b",
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
                ["name"] = "value",
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
        ["symbol"] = "Ros2UrinterfacesMsgAnalogIO",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/AnalogIO",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c",
        ["minimum"] = 8,
        ["maximum"] = 200,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "analog_inputs",
                ["type"] = "Ros2UrinterfacesMsgAnalog",
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
                ["name"] = "analog_outputs",
                ["type"] = "Ros2UrinterfacesMsgAnalog",
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
        ["symbol"] = "Ros2UrinterfacesMsgAnalogIOStateStamped",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/AnalogIOStateStamped",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89",
        ["minimum"] = 20,
        ["maximum"] = 340,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "io_state",
                ["type"] = "Ros2UrinterfacesMsgAnalogIO",
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
        ["symbol"] = "Ros2UrinterfacesMsgAnalogStamped",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/AnalogStamped",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c",
        ["minimum"] = 18,
        ["maximum"] = 146,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "data",
                ["type"] = "Ros2UrinterfacesMsgAnalog",
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
        ["symbol"] = "Ros2UrinterfacesMsgBoolStamped",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/BoolStamped",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66",
        ["minimum"] = 13,
        ["maximum"] = 141,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "data",
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
        ["symbol"] = "Ros2UrinterfacesMsgControlCycle",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/ControlCycle",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278",
        ["minimum"] = 20,
        ["maximum"] = 148,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "data",
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
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros2UrinterfacesMsgCurrent",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/Current",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df",
        ["minimum"] = 16,
        ["maximum"] = 144,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "data",
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
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros2UrinterfacesMsgDigital",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/Digital",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512",
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
        ["symbol"] = "Ros2UrinterfacesMsgDigitalIO",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/DigitalIO",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a",
        ["minimum"] = 8,
        ["maximum"] = 136,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "digital_inputs",
                ["type"] = "Ros2UrinterfacesMsgDigital",
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
                ["name"] = "digital_outputs",
                ["type"] = "Ros2UrinterfacesMsgDigital",
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
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros2UrinterfacesMsgDigitalIOStateStamped",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/DigitalIOStateStamped",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9",
        ["minimum"] = 28,
        ["maximum"] = 412,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "configurable_io",
                ["type"] = "Ros2UrinterfacesMsgDigitalIO",
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
                ["name"] = "standard_io",
                ["type"] = "Ros2UrinterfacesMsgDigitalIO",
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
        ["symbol"] = "Ros2UrinterfacesMsgDigitalStamped",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/DigitalStamped",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865",
        ["minimum"] = 14,
        ["maximum"] = 142,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "data",
                ["type"] = "Ros2UrinterfacesMsgDigital",
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
                ["element_minimum"] = 2
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros2UrinterfacesMsgDoubleMultiArrayStamped",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/DoubleMultiArrayStamped",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae",
        ["minimum"] = 16,
        ["maximum"] = 272,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "data",
                ["type"] = "float64",
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
                ["element_minimum"] = 8
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros2UrinterfacesMsgFloat32Stamped",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/Float32Stamped",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3",
        ["minimum"] = 16,
        ["maximum"] = 144,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "data",
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
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros2UrinterfacesMsgFloat64Stamped",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/Float64Stamped",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21",
        ["minimum"] = 20,
        ["maximum"] = 148,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "data",
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
        ["symbol"] = "Ros2UrinterfacesMsgJointMode",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/JointMode",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c",
        ["minimum"] = 19,
        ["maximum"] = 147,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "joint_modes",
                ["type"] = "uint8",
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
                ["element_minimum"] = 1
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
            ["JOINT_MODE_RESET"] = 235,
            ["JOINT_MODE_SHUTTING_DOWN"] = 236,
            ["JOINT_MODE_PART_D_CALIBRATION"] = 237,
            ["JOINT_MODE_BACKDRIVE"] = 238,
            ["JOINT_MODE_POWER_OFF"] = 239,
            ["JOINT_MODE_READY_FOR_POWER_OFF"] = 240,
            ["JOINT_MODE_NOT_RESPONDING"] = 245,
            ["JOINT_MODE_MOTOR_INITIALISATION"] = 246,
            ["JOINT_MODE_BOOTING"] = 247,
            ["JOINT_MODE_PART_D_CALIBRATION_ERROR"] = 248,
            ["JOINT_MODE_BOOTLOADER"] = 249,
            ["JOINT_MODE_CALIBRATION"] = 250,
            ["JOINT_MODE_VIOLATION"] = 251,
            ["JOINT_MODE_FAULT"] = 252,
            ["JOINT_MODE_RUNNING"] = 253,
            ["JOINT_MODE_IDLE"] = 255
        }
    },
    {
        ["symbol"] = "Ros2UrinterfacesMsgJointTemperature",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/JointTemperature",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017",
        ["minimum"] = 36,
        ["maximum"] = 164,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "data",
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
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros2UrinterfacesMsgJointVoltage",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/JointVoltage",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61",
        ["minimum"] = 60,
        ["maximum"] = 188,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "data",
                ["type"] = "float64",
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
                ["element_minimum"] = 8
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros2UrinterfacesMsgJsonStringType",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/JsonStringType",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728",
        ["minimum"] = 4,
        ["maximum"] = 1028,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "json_string",
                ["type"] = "Ros2Std_msgsMsgString",
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
        ["symbol"] = "Ros2UrinterfacesMsgRuntimeState",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/RuntimeState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6",
        ["minimum"] = 13,
        ["maximum"] = 141,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "data",
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
            ["PROGRAM_STATE_UNDEFINED"] = -1,
            ["PROGRAM_STATE_STOPPING"] = 0,
            ["PROGRAM_STATE_STOPPED"] = 1,
            ["PROGRAM_STATE_RUNNING"] = 2,
            ["PROGRAM_STATE_PAUSING"] = 3,
            ["PROGRAM_STATE_PAUSED"] = 4,
            ["PROGRAM_STATE_RESUMING"] = 5,
            ["PROGRAM_STATE_RETRACTING"] = 6
        }
    },
    {
        ["symbol"] = "Ros2UrinterfacesMsgSafetyStatus",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/SafetyStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4",
        ["minimum"] = 13,
        ["maximum"] = 141,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "data",
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
            ["SYSTEM_THREE_POSITION_ENABLING_STOP"] = 13,
            ["TP_THREE_POSITION_ENABLING_STOP"] = 14,
            ["IMMI_EMERGENCY_STOP"] = 15,
            ["IMMI_SAFEGUARD_STOP"] = 16,
            ["PROFISAFE_WAITING_FOR_PARAMETERS"] = 17,
            ["PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP"] = 18,
            ["PROFISAFE_SAFEGUARD_STOP"] = 19,
            ["PROFISAFE_EMERGENCY_STOP"] = 20,
            ["SAFETY_API_SAFEGUARD_STOP"] = 22,
            ["IO_PLANE_STOP"] = 23
        }
    },
    {
        ["symbol"] = "Ros2UrinterfacesMsgSharedVariablesEditResponse",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/SharedVariablesEditResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212",
        ["minimum"] = 5,
        ["maximum"] = 1029,
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
                ["name"] = "result_message",
                ["type"] = "Ros2Std_msgsMsgString",
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
        ["symbol"] = "Ros2UrinterfacesMsgSpeedSliderFraction",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/SpeedSliderFraction",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd",
        ["minimum"] = 20,
        ["maximum"] = 148,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "data",
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
        ["symbol"] = "Ros2UrinterfacesMsgTCPState",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/TCPState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92",
        ["minimum"] = 116,
        ["maximum"] = 244,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "pose",
                ["type"] = "Ros2Geometry_msgsMsgPose",
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
            },
            {
                ["name"] = "speed",
                ["type"] = "Ros2Geometry_msgsMsgTwist",
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
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros2UrinterfacesMsgToolOutputMode",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/ToolOutputMode",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660",
        ["minimum"] = 15,
        ["maximum"] = 143,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "output_mode",
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
                ["name"] = "output_pin_mode",
                ["type"] = "uint8",
                ["array"] = "array",
                ["count"] = 2,
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
            ["TOOL_OUTPUT"] = 0,
            ["TOOL_POWER"] = 1,
            ["TOOL_SAFE"] = 2,
            ["OUTPUT_MODE_DISABLED"] = 0,
            ["OUTPUT_MODE_SINKING"] = 1,
            ["OUTPUT_MODE_SOURCING"] = 2,
            ["OUTPUT_MODE_PUSH_PULL"] = 3
        }
    },
    {
        ["symbol"] = "Ros2UrinterfacesMsgVariableUpdate",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/VariableUpdate",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20",
        ["minimum"] = 16,
        ["maximum"] = 1168,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "data",
                ["type"] = "Ros2UrinterfacesMsgJsonStringType",
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
        ["symbol"] = "Ros2UrinterfacesMsgVoltageCurrentStamped",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/VoltageCurrentStamped",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805",
        ["minimum"] = 28,
        ["maximum"] = 156,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "voltage",
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
                ["name"] = "current",
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
        ["symbol"] = "Ros2UrinterfacesMsgWorldModelNames",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/msg/WorldModelNames",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9",
        ["minimum"] = 16,
        ["maximum"] = 16592,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
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
                ["element_minimum"] = 12
            },
            {
                ["name"] = "data",
                ["type"] = "Ros2Std_msgsMsgString",
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
                ["element_minimum"] = 4
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros2UrinterfacesSrvSetAnalogOutput_Request",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/srv/SetAnalogOutput_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d",
        ["minimum"] = 4,
        ["maximum"] = 100,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "data",
                ["type"] = "Ros2UrinterfacesMsgAnalog",
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
        ["symbol"] = "Ros2UrinterfacesSrvSetAnalogOutput_Response",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/srv/SetAnalogOutput_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e",
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
        ["symbol"] = "Ros2UrinterfacesSrvSetDigitalOutput_Request",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/srv/SetDigitalOutput_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47",
        ["minimum"] = 4,
        ["maximum"] = 36,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "data",
                ["type"] = "Ros2UrinterfacesMsgDigital",
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
                ["element_minimum"] = 2
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros2UrinterfacesSrvSetDigitalOutput_Response",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/srv/SetDigitalOutput_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d",
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
        ["symbol"] = "Ros2UrinterfacesSrvSetSpeedFraction_Request",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/srv/SetSpeedFraction_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "value",
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
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros2UrinterfacesSrvSetSpeedFraction_Response",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/srv/SetSpeedFraction_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6",
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
        ["symbol"] = "Ros2UrinterfacesSrvSharedVariablesEditor_Request",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/srv/SharedVariablesEditor_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3",
        ["minimum"] = 4,
        ["maximum"] = 1028,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "request",
                ["type"] = "Ros2UrinterfacesMsgJsonStringType",
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
        ["symbol"] = "Ros2UrinterfacesSrvSharedVariablesEditor_Response",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/srv/SharedVariablesEditor_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea",
        ["minimum"] = 5,
        ["maximum"] = 1029,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "response",
                ["type"] = "Ros2UrinterfacesMsgSharedVariablesEditResponse",
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
                ["element_minimum"] = 5
            }
        },
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros2UrinterfacesSrvVariablesViewer_Request",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/srv/VariablesViewer_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {}
    },
    {
        ["symbol"] = "Ros2UrinterfacesSrvVariablesViewer_Response",
        ["ros_version"] = 2,
        ["native_type"] = "urinterfaces/srv/VariablesViewer_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2",
        ["minimum"] = 16,
        ["maximum"] = 1168,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "response",
                ["type"] = "Ros2UrinterfacesMsgVariableUpdate",
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
            }
        },
        ["constants"] = {}
    }
}
local classes = wire.records(schemas)
return classes
