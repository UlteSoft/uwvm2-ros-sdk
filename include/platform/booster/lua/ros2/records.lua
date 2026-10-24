--- @brief Complete source-derived canonical Lua value classes.
--- @details Synchronous local values only; Lua5.4 with signed64-bit integers.
--- @see roswasm/wire.lua
local wire = require("roswasm.wire")
local schemas = {
    {
        ["symbol"] = "Ros2Booster_interfaceMsgBoosterApiReqMsg",
        ["ros_version"] = 2,
        ["native_type"] = "booster_interface/msg/BoosterApiReqMsg",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e2f9b66467bcb40a8194c744694f314e7fca56061f1cf3121eed565f724edd40",
        ["minimum"] = 12,
        ["maximum"] = 4108,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "api_id",
                ["type"] = "int64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "body",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 4096,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Booster_interfaceMsgBoosterApiRespMsg",
        ["ros_version"] = 2,
        ["native_type"] = "booster_interface/msg/BoosterApiRespMsg",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_21ce208a51f60843eecb72edbc408e926353b1a6f178424c0b691ac237fed11f",
        ["minimum"] = 12,
        ["maximum"] = 4108,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "status",
                ["type"] = "int64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "body",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 4096,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Booster_interfaceMsgButtonEventMsg",
        ["ros_version"] = 2,
        ["native_type"] = "booster_interface/msg/ButtonEventMsg",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b61682fd9c35bd54c52000224411f4373b8620e16587b31d8a683076e0d14fe4",
        ["minimum"] = 5,
        ["maximum"] = 5,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "event",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "button",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {
            ["PRESS_DOWN"] = 0,
            ["PRESS_UP"] = 1,
            ["SINGLE_CLICK"] = 0,
            ["DOUBLE_CLICK"] = 1,
            ["TRIPLE_CLICK"] = 0,
            ["LONG_PRESS_START"] = 1,
            ["LONG_PRESS_HOLD"] = 0,
            ["LONG_PRESS_END"] = 1,
        },
    },
    {
        ["symbol"] = "Ros2Booster_interfaceMsgFallDownState",
        ["ros_version"] = 2,
        ["native_type"] = "booster_interface/msg/FallDownState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8bf168ccefac72eda6070704c70e12e62776d29ad3db908095cc01220f4b533f",
        ["minimum"] = 5,
        ["maximum"] = 5,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "fall_down_state",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "is_recovery_available",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {
            ["IS_READY"] = 0,
            ["IS_FALLING"] = 1,
            ["HAS_FALLEN"] = 2,
            ["IS_GETTING_UP"] = 3,
        },
    },
    {
        ["symbol"] = "Ros2Booster_interfaceMsgHandParam",
        ["ros_version"] = 2,
        ["native_type"] = "booster_interface/msg/HandParam",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3b91722e751e7c00c773335bb42af34850190ecc26a029e8792c49d912def158",
        ["minimum"] = 16,
        ["maximum"] = 16,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "angle",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "force",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "seq",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Booster_interfaceMsgHandCommand",
        ["ros_version"] = 2,
        ["native_type"] = "booster_interface/msg/HandCommand",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_06f3d6c0e9bef1da409330038aadbfacfe60b02e099f2ae0c4dcb92a632b20a0",
        ["minimum"] = 16,
        ["maximum"] = 528,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "hand_param",
                ["type"] = "Ros2Booster_interfaceMsgHandParam",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
            },
            {
                ["name"] = "force_mode",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "hand_index",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "hand_type",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Booster_interfaceMsgHandDdsMsg",
        ["ros_version"] = 2,
        ["native_type"] = "booster_interface/msg/HandDdsMsg",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_55af9d6f272a72e75e86e1a6164d235aca5f2ce99c2529749c0d5e33d6091397",
        ["minimum"] = 4,
        ["maximum"] = 1060,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "hands_vec",
                ["type"] = "Ros2Booster_interfaceMsgHandCommand",
                ["array"] = "sequence",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Booster_interfaceMsgImuState",
        ["ros_version"] = 2,
        ["native_type"] = "booster_interface/msg/ImuState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_838ee8d4b93b0c3673e0b535fd3905913e94be24d6d21a01504dedaaaaa81092",
        ["minimum"] = 36,
        ["maximum"] = 36,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "rpy",
                ["type"] = "float32",
                ["array"] = "array",
                ["count"] = 3,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "gyro",
                ["type"] = "float32",
                ["array"] = "array",
                ["count"] = 3,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "acc",
                ["type"] = "float32",
                ["array"] = "array",
                ["count"] = 3,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Booster_interfaceMsgMotorCmd",
        ["ros_version"] = 2,
        ["native_type"] = "booster_interface/msg/MotorCmd",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_69d814e13595d53dcf44f2a5ccb19df0f8f2be0908c310c3b60cec33bcf27392",
        ["minimum"] = 25,
        ["maximum"] = 25,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "mode",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "q",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "dq",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "tau",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "kp",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "kd",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "weight",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Booster_interfaceMsgLowCmd",
        ["ros_version"] = 2,
        ["native_type"] = "booster_interface/msg/LowCmd",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_845726a14e61d211b493041f4dda56e1556b76b9d30337a2ee5f6319a3d1e870",
        ["minimum"] = 5,
        ["maximum"] = 730,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "cmd_type",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "motor_cmd",
                ["type"] = "Ros2Booster_interfaceMsgMotorCmd",
                ["array"] = "sequence",
                ["count"] = 29,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 25,
            },
        },
        ["constants"] = {
            ["CMD_TYPE_PARALLEL"] = 0,
            ["CMD_TYPE_SERIAL"] = 1,
        },
    },
    {
        ["symbol"] = "Ros2Booster_interfaceMsgMotorState",
        ["ros_version"] = 2,
        ["native_type"] = "booster_interface/msg/MotorState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6b19c0e8865e796fff5a498cff731ba268fa92ea2944e6c2c5869009b3aa066b",
        ["minimum"] = 30,
        ["maximum"] = 30,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "mode",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "q",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "dq",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ddq",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "tau_est",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "temperature",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "lost",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "reserve",
                ["type"] = "uint32",
                ["array"] = "array",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Booster_interfaceMsgLowState",
        ["ros_version"] = 2,
        ["native_type"] = "booster_interface/msg/LowState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_811db19cab7b790ed48506bca3e3ef512c1a661dc3ac99cbce6234efb6de631f",
        ["minimum"] = 44,
        ["maximum"] = 1784,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "imu_state",
                ["type"] = "Ros2Booster_interfaceMsgImuState",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 36,
            },
            {
                ["name"] = "motor_state_parallel",
                ["type"] = "Ros2Booster_interfaceMsgMotorState",
                ["array"] = "sequence",
                ["count"] = 29,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 30,
            },
            {
                ["name"] = "motor_state_serial",
                ["type"] = "Ros2Booster_interfaceMsgMotorState",
                ["array"] = "sequence",
                ["count"] = 29,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 30,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Booster_interfaceMsgOdometer",
        ["ros_version"] = 2,
        ["native_type"] = "booster_interface/msg/Odometer",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4fea33e3e2ae186dbeaf49c6068019b702e742266541087a5d280b9ce42c671a",
        ["minimum"] = 12,
        ["maximum"] = 12,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "theta",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Booster_interfaceMsgRawBytesMsg",
        ["ros_version"] = 2,
        ["native_type"] = "booster_interface/msg/RawBytesMsg",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_557e8e79f206c9cc8b820ed7c2ad8cc01e9b01327197b745709993d958b4578c",
        ["minimum"] = 4,
        ["maximum"] = 2052,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "msg",
                ["type"] = "uint8",
                ["array"] = "sequence",
                ["count"] = 2048,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
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
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "nanosec",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
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
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "frame_id",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 128,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Booster_interfaceMsgRawBytesStamped",
        ["ros_version"] = 2,
        ["native_type"] = "booster_interface/msg/RawBytesStamped",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_27cddd472b2d8c41c39effb87a8a53261aff309500dbb68df6ebd69a19c7720e",
        ["minimum"] = 16,
        ["maximum"] = 2192,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
            {
                ["name"] = "msg",
                ["type"] = "uint8",
                ["array"] = "sequence",
                ["count"] = 2048,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Booster_interfaceMsgRemoteControllerState",
        ["ros_version"] = 2,
        ["native_type"] = "booster_interface/msg/RemoteControllerState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f8a21705728862632c27b71d98c044a12bf1f9f9e0c1729fec27afe2c60c48a7",
        ["minimum"] = 42,
        ["maximum"] = 42,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "event",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "lx",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ly",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "rx",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ry",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "a",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "b",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "x",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "y",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "lb",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "rb",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "lt",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "rt",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "ls",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "rs",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "back",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "start",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "hat_c",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "hat_u",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "hat_d",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "hat_l",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "hat_r",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "hat_lu",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "hat_ld",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "hat_ru",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "hat_rd",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "hat_pos",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Booster_interfaceSrvAgentService_Request",
        ["ros_version"] = 2,
        ["native_type"] = "booster_interface/srv/AgentService_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d8b972ee6c7f82ee948c03b22354d1073f120ad2616a9e833b578348775404e8",
        ["minimum"] = 4,
        ["maximum"] = 4100,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "body",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 4096,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Booster_interfaceSrvAgentService_Response",
        ["ros_version"] = 2,
        ["native_type"] = "booster_interface/srv/AgentService_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_86aecf9ee8652016b5c74e30d2dd4100e8b547542a81a98e7795942b47b87520",
        ["minimum"] = 4,
        ["maximum"] = 4100,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "body",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 4096,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Booster_interfaceSrvRpcService_Request",
        ["ros_version"] = 2,
        ["native_type"] = "booster_interface/srv/RpcService_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cc8eb67d80bdf131f1878a1be998d68560e235ffef6a539876410dfcd6c00150",
        ["minimum"] = 12,
        ["maximum"] = 4108,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "msg",
                ["type"] = "Ros2Booster_interfaceMsgBoosterApiReqMsg",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Booster_interfaceSrvRpcService_Response",
        ["ros_version"] = 2,
        ["native_type"] = "booster_interface/srv/RpcService_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7aeb7b45542f9f594e1f61be2f715abcde54b1e55efdde15100b0c553ae96322",
        ["minimum"] = 12,
        ["maximum"] = 4108,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "msg",
                ["type"] = "Ros2Booster_interfaceMsgBoosterApiRespMsg",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Uwvm_booster_sdk_bridgeMsgImuState",
        ["ros_version"] = 2,
        ["native_type"] = "uwvm_booster_sdk_bridge/msg/ImuState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_858ad4a47d2409da6b4e2513178d7d3b0d4568d6ce488729de0b9a220a100f04",
        ["minimum"] = 36,
        ["maximum"] = 36,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "rpy",
                ["type"] = "float32",
                ["array"] = "array",
                ["count"] = 3,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "gyro",
                ["type"] = "float32",
                ["array"] = "array",
                ["count"] = 3,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "acc",
                ["type"] = "float32",
                ["array"] = "array",
                ["count"] = 3,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd",
        ["ros_version"] = 2,
        ["native_type"] = "uwvm_booster_sdk_bridge/msg/MotorCmd",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_66fec912031dfbd29b8e4e747dcdc2dc465506bd003323bc929929bf6a9d31a4",
        ["minimum"] = 25,
        ["maximum"] = 25,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "mode",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "q",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "dq",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "tau",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "kp",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "kd",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "weight",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Uwvm_booster_sdk_bridgeMsgMotorState",
        ["ros_version"] = 2,
        ["native_type"] = "uwvm_booster_sdk_bridge/msg/MotorState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_958168dc1e32d50827f255080117a82421d7fb6ae4ad6a05763ce2d3173a30af",
        ["minimum"] = 30,
        ["maximum"] = 30,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "mode",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "q",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "dq",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ddq",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "tau_est",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "temperature",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "lost",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "reserve",
                ["type"] = "uint32",
                ["array"] = "array",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Uwvm_booster_sdk_bridgeMsgLowCmd",
        ["ros_version"] = 2,
        ["native_type"] = "uwvm_booster_sdk_bridge/msg/LowCmd",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3324a161b056f9282ffa8dce3254a1456b75f6eae5f4a067e844e125e94cba3a",
        ["minimum"] = 8,
        ["maximum"] = 733,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "cmd_type",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "motor_cmd",
                ["type"] = "Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd",
                ["array"] = "sequence",
                ["count"] = 29,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 25,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Uwvm_booster_sdk_bridgeMsgLowState",
        ["ros_version"] = 2,
        ["native_type"] = "uwvm_booster_sdk_bridge/msg/LowState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ca4bcb79077b0e026cf45a389981622ff9c80570ee813ff5633c605fe5021a58",
        ["minimum"] = 44,
        ["maximum"] = 1784,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "imu_state",
                ["type"] = "Ros2Uwvm_booster_sdk_bridgeMsgImuState",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 36,
            },
            {
                ["name"] = "motor_state_parallel",
                ["type"] = "Ros2Uwvm_booster_sdk_bridgeMsgMotorState",
                ["array"] = "sequence",
                ["count"] = 29,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 30,
            },
            {
                ["name"] = "motor_state_serial",
                ["type"] = "Ros2Uwvm_booster_sdk_bridgeMsgMotorState",
                ["array"] = "sequence",
                ["count"] = 29,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 30,
            },
        },
        ["constants"] = {},
    },
}
local classes, by_name = wire.records(schemas)

--- @class Ros2Booster_interfaceMsgBoosterApiReqMsg
--- @brief Complete ROS2 booster_interface/msg/BoosterApiReqMsg value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field api_id integer Exact int64 range -9223372036854775808..9223372036854775807.
--- @field body string Strict UTF-8 without NUL; length0..4096 bytes.
--- @brief Ros2Booster_interfaceMsgBoosterApiReqMsg.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgBoosterApiReqMsg.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Booster_interfaceMsgBoosterApiReqMsg.NATIVE_TYPE: Exact normalized native type name
--- booster_interface/msg/BoosterApiReqMsg.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgBoosterApiReqMsg.encode
--- @field NATIVE_TYPE string Exact normalized native type name booster_interface/msg/BoosterApiReqMsg.
--- @brief Ros2Booster_interfaceMsgBoosterApiReqMsg.NATIVE_IDENTITY: Exact supplied native identity; nil means
--- absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgBoosterApiReqMsg.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Booster_interfaceMsgBoosterApiReqMsg.CODEC_IDENTITY: Finite canonical schema identity; does not
--- replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgBoosterApiReqMsg.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Booster_interfaceMsgBoosterApiReqMsg.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgBoosterApiReqMsg.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Booster_interfaceMsgBoosterApiReqMsg.MAX_WIRE_BYTES: Inclusive complete maximum 4108 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgBoosterApiReqMsg.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4108 bytes.
--- @brief Construct Ros2Booster_interfaceMsgBoosterApiReqMsg with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Booster_interfaceMsgBoosterApiReqMsg value New mutable complete value; no ROS resource.
--- @see Ros2Booster_interfaceMsgBoosterApiReqMsg.encode
--- @field new fun(values?: table): Ros2Booster_interfaceMsgBoosterApiReqMsg
--- @brief Encode a complete Ros2Booster_interfaceMsgBoosterApiReqMsg value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Booster_interfaceMsgBoosterApiReqMsg [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..4108 bytes.
--- @see Ros2Booster_interfaceMsgBoosterApiReqMsg.decode
--- @field encode fun(value: Ros2Booster_interfaceMsgBoosterApiReqMsg): string
--- @brief Decode exactly one complete Ros2Booster_interfaceMsgBoosterApiReqMsg canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Booster_interfaceMsgBoosterApiReqMsg value New complete value; failures raise Lua errors.
--- @see Ros2Booster_interfaceMsgBoosterApiReqMsg.encode
--- @field decode fun(bytes: string): Ros2Booster_interfaceMsgBoosterApiReqMsg
local Ros2Booster_interfaceMsgBoosterApiReqMsg = classes["Ros2Booster_interfaceMsgBoosterApiReqMsg"]

--- @class Ros2Booster_interfaceMsgBoosterApiRespMsg
--- @brief Complete ROS2 booster_interface/msg/BoosterApiRespMsg value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field status integer Exact int64 range -9223372036854775808..9223372036854775807.
--- @field body string Strict UTF-8 without NUL; length0..4096 bytes.
--- @brief Ros2Booster_interfaceMsgBoosterApiRespMsg.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgBoosterApiRespMsg.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Booster_interfaceMsgBoosterApiRespMsg.NATIVE_TYPE: Exact normalized native type name
--- booster_interface/msg/BoosterApiRespMsg.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgBoosterApiRespMsg.encode
--- @field NATIVE_TYPE string Exact normalized native type name booster_interface/msg/BoosterApiRespMsg.
--- @brief Ros2Booster_interfaceMsgBoosterApiRespMsg.NATIVE_IDENTITY: Exact supplied native identity; nil means
--- absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgBoosterApiRespMsg.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Booster_interfaceMsgBoosterApiRespMsg.CODEC_IDENTITY: Finite canonical schema identity; does not
--- replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgBoosterApiRespMsg.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Booster_interfaceMsgBoosterApiRespMsg.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgBoosterApiRespMsg.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Booster_interfaceMsgBoosterApiRespMsg.MAX_WIRE_BYTES: Inclusive complete maximum 4108 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgBoosterApiRespMsg.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4108 bytes.
--- @brief Construct Ros2Booster_interfaceMsgBoosterApiRespMsg with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Booster_interfaceMsgBoosterApiRespMsg value New mutable complete value; no ROS resource.
--- @see Ros2Booster_interfaceMsgBoosterApiRespMsg.encode
--- @field new fun(values?: table): Ros2Booster_interfaceMsgBoosterApiRespMsg
--- @brief Encode a complete Ros2Booster_interfaceMsgBoosterApiRespMsg value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Booster_interfaceMsgBoosterApiRespMsg [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..4108 bytes.
--- @see Ros2Booster_interfaceMsgBoosterApiRespMsg.decode
--- @field encode fun(value: Ros2Booster_interfaceMsgBoosterApiRespMsg): string
--- @brief Decode exactly one complete Ros2Booster_interfaceMsgBoosterApiRespMsg canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Booster_interfaceMsgBoosterApiRespMsg value New complete value; failures raise Lua errors.
--- @see Ros2Booster_interfaceMsgBoosterApiRespMsg.encode
--- @field decode fun(bytes: string): Ros2Booster_interfaceMsgBoosterApiRespMsg
local Ros2Booster_interfaceMsgBoosterApiRespMsg = classes["Ros2Booster_interfaceMsgBoosterApiRespMsg"]

--- @class Ros2Booster_interfaceMsgButtonEventMsg
--- @brief Complete ROS2 booster_interface/msg/ButtonEventMsg value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field event integer Exact int8 range -128..127.
--- @field button integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Booster_interfaceMsgButtonEventMsg.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgButtonEventMsg.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Booster_interfaceMsgButtonEventMsg.NATIVE_TYPE: Exact normalized native type name
--- booster_interface/msg/ButtonEventMsg.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgButtonEventMsg.encode
--- @field NATIVE_TYPE string Exact normalized native type name booster_interface/msg/ButtonEventMsg.
--- @brief Ros2Booster_interfaceMsgButtonEventMsg.NATIVE_IDENTITY: Exact supplied native identity; nil means
--- absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgButtonEventMsg.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Booster_interfaceMsgButtonEventMsg.CODEC_IDENTITY: Finite canonical schema identity; does not
--- replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgButtonEventMsg.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Booster_interfaceMsgButtonEventMsg.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgButtonEventMsg.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Booster_interfaceMsgButtonEventMsg.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgButtonEventMsg.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Native class constant Ros2Booster_interfaceMsgButtonEventMsg.PRESS_DOWN.
--- @details Original int8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Booster_interfaceMsgButtonEventMsg.new
--- @field PRESS_DOWN integer
--- @brief Native class constant Ros2Booster_interfaceMsgButtonEventMsg.PRESS_UP.
--- @details Original int8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Booster_interfaceMsgButtonEventMsg.new
--- @field PRESS_UP integer
--- @brief Native class constant Ros2Booster_interfaceMsgButtonEventMsg.SINGLE_CLICK.
--- @details Original int8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Booster_interfaceMsgButtonEventMsg.new
--- @field SINGLE_CLICK integer
--- @brief Native class constant Ros2Booster_interfaceMsgButtonEventMsg.DOUBLE_CLICK.
--- @details Original int8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Booster_interfaceMsgButtonEventMsg.new
--- @field DOUBLE_CLICK integer
--- @brief Native class constant Ros2Booster_interfaceMsgButtonEventMsg.TRIPLE_CLICK.
--- @details Original int8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Booster_interfaceMsgButtonEventMsg.new
--- @field TRIPLE_CLICK integer
--- @brief Native class constant Ros2Booster_interfaceMsgButtonEventMsg.LONG_PRESS_START.
--- @details Original int8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Booster_interfaceMsgButtonEventMsg.new
--- @field LONG_PRESS_START integer
--- @brief Native class constant Ros2Booster_interfaceMsgButtonEventMsg.LONG_PRESS_HOLD.
--- @details Original int8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Booster_interfaceMsgButtonEventMsg.new
--- @field LONG_PRESS_HOLD integer
--- @brief Native class constant Ros2Booster_interfaceMsgButtonEventMsg.LONG_PRESS_END.
--- @details Original int8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Booster_interfaceMsgButtonEventMsg.new
--- @field LONG_PRESS_END integer
--- @brief Construct Ros2Booster_interfaceMsgButtonEventMsg with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Booster_interfaceMsgButtonEventMsg value New mutable complete value; no ROS resource.
--- @see Ros2Booster_interfaceMsgButtonEventMsg.encode
--- @field new fun(values?: table): Ros2Booster_interfaceMsgButtonEventMsg
--- @brief Encode a complete Ros2Booster_interfaceMsgButtonEventMsg value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Booster_interfaceMsgButtonEventMsg [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros2Booster_interfaceMsgButtonEventMsg.decode
--- @field encode fun(value: Ros2Booster_interfaceMsgButtonEventMsg): string
--- @brief Decode exactly one complete Ros2Booster_interfaceMsgButtonEventMsg canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Booster_interfaceMsgButtonEventMsg value New complete value; failures raise Lua errors.
--- @see Ros2Booster_interfaceMsgButtonEventMsg.encode
--- @field decode fun(bytes: string): Ros2Booster_interfaceMsgButtonEventMsg
local Ros2Booster_interfaceMsgButtonEventMsg = classes["Ros2Booster_interfaceMsgButtonEventMsg"]

--- @class Ros2Booster_interfaceMsgFallDownState
--- @brief Complete ROS2 booster_interface/msg/FallDownState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field fall_down_state integer Exact uint32 range 0..4294967295.
--- @field is_recovery_available boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Booster_interfaceMsgFallDownState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgFallDownState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Booster_interfaceMsgFallDownState.NATIVE_TYPE: Exact normalized native type name
--- booster_interface/msg/FallDownState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgFallDownState.encode
--- @field NATIVE_TYPE string Exact normalized native type name booster_interface/msg/FallDownState.
--- @brief Ros2Booster_interfaceMsgFallDownState.NATIVE_IDENTITY: Exact supplied native identity; nil means
--- absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgFallDownState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Booster_interfaceMsgFallDownState.CODEC_IDENTITY: Finite canonical schema identity; does not
--- replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgFallDownState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Booster_interfaceMsgFallDownState.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgFallDownState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Booster_interfaceMsgFallDownState.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgFallDownState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Native class constant Ros2Booster_interfaceMsgFallDownState.IS_READY.
--- @details Original uint32 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Booster_interfaceMsgFallDownState.new
--- @field IS_READY integer
--- @brief Native class constant Ros2Booster_interfaceMsgFallDownState.IS_FALLING.
--- @details Original uint32 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Booster_interfaceMsgFallDownState.new
--- @field IS_FALLING integer
--- @brief Native class constant Ros2Booster_interfaceMsgFallDownState.HAS_FALLEN.
--- @details Original uint32 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Booster_interfaceMsgFallDownState.new
--- @field HAS_FALLEN integer
--- @brief Native class constant Ros2Booster_interfaceMsgFallDownState.IS_GETTING_UP.
--- @details Original uint32 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Booster_interfaceMsgFallDownState.new
--- @field IS_GETTING_UP integer
--- @brief Construct Ros2Booster_interfaceMsgFallDownState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Booster_interfaceMsgFallDownState value New mutable complete value; no ROS resource.
--- @see Ros2Booster_interfaceMsgFallDownState.encode
--- @field new fun(values?: table): Ros2Booster_interfaceMsgFallDownState
--- @brief Encode a complete Ros2Booster_interfaceMsgFallDownState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Booster_interfaceMsgFallDownState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros2Booster_interfaceMsgFallDownState.decode
--- @field encode fun(value: Ros2Booster_interfaceMsgFallDownState): string
--- @brief Decode exactly one complete Ros2Booster_interfaceMsgFallDownState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Booster_interfaceMsgFallDownState value New complete value; failures raise Lua errors.
--- @see Ros2Booster_interfaceMsgFallDownState.encode
--- @field decode fun(bytes: string): Ros2Booster_interfaceMsgFallDownState
local Ros2Booster_interfaceMsgFallDownState = classes["Ros2Booster_interfaceMsgFallDownState"]

--- @class Ros2Booster_interfaceMsgHandParam
--- @brief Complete ROS2 booster_interface/msg/HandParam value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field angle integer Exact int32 range -2147483648..2147483647.
--- @field force integer Exact int32 range -2147483648..2147483647.
--- @field speed integer Exact int32 range -2147483648..2147483647.
--- @field seq integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Booster_interfaceMsgHandParam.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgHandParam.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Booster_interfaceMsgHandParam.NATIVE_TYPE: Exact normalized native type name
--- booster_interface/msg/HandParam.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgHandParam.encode
--- @field NATIVE_TYPE string Exact normalized native type name booster_interface/msg/HandParam.
--- @brief Ros2Booster_interfaceMsgHandParam.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--- not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgHandParam.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Booster_interfaceMsgHandParam.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--- native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgHandParam.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Booster_interfaceMsgHandParam.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgHandParam.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Booster_interfaceMsgHandParam.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgHandParam.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros2Booster_interfaceMsgHandParam with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Booster_interfaceMsgHandParam value New mutable complete value; no ROS resource.
--- @see Ros2Booster_interfaceMsgHandParam.encode
--- @field new fun(values?: table): Ros2Booster_interfaceMsgHandParam
--- @brief Encode a complete Ros2Booster_interfaceMsgHandParam value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Booster_interfaceMsgHandParam [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros2Booster_interfaceMsgHandParam.decode
--- @field encode fun(value: Ros2Booster_interfaceMsgHandParam): string
--- @brief Decode exactly one complete Ros2Booster_interfaceMsgHandParam canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Booster_interfaceMsgHandParam value New complete value; failures raise Lua errors.
--- @see Ros2Booster_interfaceMsgHandParam.encode
--- @field decode fun(bytes: string): Ros2Booster_interfaceMsgHandParam
local Ros2Booster_interfaceMsgHandParam = classes["Ros2Booster_interfaceMsgHandParam"]

--- @class Ros2Booster_interfaceMsgHandCommand
--- @brief Complete ROS2 booster_interface/msg/HandCommand value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field hand_param table[] Complete nested booster_interface/msg/HandParam value; no native fields are
--- projected away. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field force_mode integer Exact int32 range -2147483648..2147483647.
--- @field hand_index integer Exact int32 range -2147483648..2147483647.
--- @field hand_type integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Booster_interfaceMsgHandCommand.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgHandCommand.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Booster_interfaceMsgHandCommand.NATIVE_TYPE: Exact normalized native type name
--- booster_interface/msg/HandCommand.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgHandCommand.encode
--- @field NATIVE_TYPE string Exact normalized native type name booster_interface/msg/HandCommand.
--- @brief Ros2Booster_interfaceMsgHandCommand.NATIVE_IDENTITY: Exact supplied native identity; nil means
--- absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgHandCommand.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Booster_interfaceMsgHandCommand.CODEC_IDENTITY: Finite canonical schema identity; does not
--- replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgHandCommand.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Booster_interfaceMsgHandCommand.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgHandCommand.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Booster_interfaceMsgHandCommand.MAX_WIRE_BYTES: Inclusive complete maximum 528 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgHandCommand.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 528 bytes.
--- @brief Construct Ros2Booster_interfaceMsgHandCommand with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Booster_interfaceMsgHandCommand value New mutable complete value; no ROS resource.
--- @see Ros2Booster_interfaceMsgHandCommand.encode
--- @field new fun(values?: table): Ros2Booster_interfaceMsgHandCommand
--- @brief Encode a complete Ros2Booster_interfaceMsgHandCommand value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Booster_interfaceMsgHandCommand [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..528 bytes.
--- @see Ros2Booster_interfaceMsgHandCommand.decode
--- @field encode fun(value: Ros2Booster_interfaceMsgHandCommand): string
--- @brief Decode exactly one complete Ros2Booster_interfaceMsgHandCommand canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Booster_interfaceMsgHandCommand value New complete value; failures raise Lua errors.
--- @see Ros2Booster_interfaceMsgHandCommand.encode
--- @field decode fun(bytes: string): Ros2Booster_interfaceMsgHandCommand
local Ros2Booster_interfaceMsgHandCommand = classes["Ros2Booster_interfaceMsgHandCommand"]

--- @class Ros2Booster_interfaceMsgHandDdsMsg
--- @brief Complete ROS2 booster_interface/msg/HandDdsMsg value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field hands_vec table[] Complete nested booster_interface/msg/HandCommand value; no native fields are
--- projected away. At most 2 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Booster_interfaceMsgHandDdsMsg.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgHandDdsMsg.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Booster_interfaceMsgHandDdsMsg.NATIVE_TYPE: Exact normalized native type name
--- booster_interface/msg/HandDdsMsg.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgHandDdsMsg.encode
--- @field NATIVE_TYPE string Exact normalized native type name booster_interface/msg/HandDdsMsg.
--- @brief Ros2Booster_interfaceMsgHandDdsMsg.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--- not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgHandDdsMsg.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Booster_interfaceMsgHandDdsMsg.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--- native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgHandDdsMsg.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Booster_interfaceMsgHandDdsMsg.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgHandDdsMsg.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Booster_interfaceMsgHandDdsMsg.MAX_WIRE_BYTES: Inclusive complete maximum 1060 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgHandDdsMsg.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1060 bytes.
--- @brief Construct Ros2Booster_interfaceMsgHandDdsMsg with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Booster_interfaceMsgHandDdsMsg value New mutable complete value; no ROS resource.
--- @see Ros2Booster_interfaceMsgHandDdsMsg.encode
--- @field new fun(values?: table): Ros2Booster_interfaceMsgHandDdsMsg
--- @brief Encode a complete Ros2Booster_interfaceMsgHandDdsMsg value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Booster_interfaceMsgHandDdsMsg [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..1060 bytes.
--- @see Ros2Booster_interfaceMsgHandDdsMsg.decode
--- @field encode fun(value: Ros2Booster_interfaceMsgHandDdsMsg): string
--- @brief Decode exactly one complete Ros2Booster_interfaceMsgHandDdsMsg canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Booster_interfaceMsgHandDdsMsg value New complete value; failures raise Lua errors.
--- @see Ros2Booster_interfaceMsgHandDdsMsg.encode
--- @field decode fun(bytes: string): Ros2Booster_interfaceMsgHandDdsMsg
local Ros2Booster_interfaceMsgHandDdsMsg = classes["Ros2Booster_interfaceMsgHandDdsMsg"]

--- @class Ros2Booster_interfaceMsgImuState
--- @brief Complete ROS2 booster_interface/msg/ImuState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field rpy number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 3 contiguous
--- elements; holes and extra array keys are rejected.
--- @field gyro number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 3 contiguous
--- elements; holes and extra array keys are rejected.
--- @field acc number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 3 contiguous
--- elements; holes and extra array keys are rejected.
--- @brief Ros2Booster_interfaceMsgImuState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgImuState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Booster_interfaceMsgImuState.NATIVE_TYPE: Exact normalized native type name
--- booster_interface/msg/ImuState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgImuState.encode
--- @field NATIVE_TYPE string Exact normalized native type name booster_interface/msg/ImuState.
--- @brief Ros2Booster_interfaceMsgImuState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--- not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgImuState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Booster_interfaceMsgImuState.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--- native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgImuState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Booster_interfaceMsgImuState.MIN_WIRE_BYTES: Inclusive complete minimum 36 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgImuState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 36 bytes.
--- @brief Ros2Booster_interfaceMsgImuState.MAX_WIRE_BYTES: Inclusive complete maximum 36 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgImuState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 36 bytes.
--- @brief Construct Ros2Booster_interfaceMsgImuState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Booster_interfaceMsgImuState value New mutable complete value; no ROS resource.
--- @see Ros2Booster_interfaceMsgImuState.encode
--- @field new fun(values?: table): Ros2Booster_interfaceMsgImuState
--- @brief Encode a complete Ros2Booster_interfaceMsgImuState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Booster_interfaceMsgImuState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 36..36 bytes.
--- @see Ros2Booster_interfaceMsgImuState.decode
--- @field encode fun(value: Ros2Booster_interfaceMsgImuState): string
--- @brief Decode exactly one complete Ros2Booster_interfaceMsgImuState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Booster_interfaceMsgImuState value New complete value; failures raise Lua errors.
--- @see Ros2Booster_interfaceMsgImuState.encode
--- @field decode fun(bytes: string): Ros2Booster_interfaceMsgImuState
local Ros2Booster_interfaceMsgImuState = classes["Ros2Booster_interfaceMsgImuState"]

--- @class Ros2Booster_interfaceMsgMotorCmd
--- @brief Complete ROS2 booster_interface/msg/MotorCmd value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field mode integer Exact int8 range -128..127.
--- @field q number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field dq number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field tau number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field kp number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field kd number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field weight number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Booster_interfaceMsgMotorCmd.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgMotorCmd.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Booster_interfaceMsgMotorCmd.NATIVE_TYPE: Exact normalized native type name
--- booster_interface/msg/MotorCmd.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgMotorCmd.encode
--- @field NATIVE_TYPE string Exact normalized native type name booster_interface/msg/MotorCmd.
--- @brief Ros2Booster_interfaceMsgMotorCmd.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--- not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgMotorCmd.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Booster_interfaceMsgMotorCmd.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--- native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgMotorCmd.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Booster_interfaceMsgMotorCmd.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgMotorCmd.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros2Booster_interfaceMsgMotorCmd.MAX_WIRE_BYTES: Inclusive complete maximum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgMotorCmd.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 25 bytes.
--- @brief Construct Ros2Booster_interfaceMsgMotorCmd with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Booster_interfaceMsgMotorCmd value New mutable complete value; no ROS resource.
--- @see Ros2Booster_interfaceMsgMotorCmd.encode
--- @field new fun(values?: table): Ros2Booster_interfaceMsgMotorCmd
--- @brief Encode a complete Ros2Booster_interfaceMsgMotorCmd value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Booster_interfaceMsgMotorCmd [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..25 bytes.
--- @see Ros2Booster_interfaceMsgMotorCmd.decode
--- @field encode fun(value: Ros2Booster_interfaceMsgMotorCmd): string
--- @brief Decode exactly one complete Ros2Booster_interfaceMsgMotorCmd canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Booster_interfaceMsgMotorCmd value New complete value; failures raise Lua errors.
--- @see Ros2Booster_interfaceMsgMotorCmd.encode
--- @field decode fun(bytes: string): Ros2Booster_interfaceMsgMotorCmd
local Ros2Booster_interfaceMsgMotorCmd = classes["Ros2Booster_interfaceMsgMotorCmd"]

--- @class Ros2Booster_interfaceMsgLowCmd
--- @brief Complete ROS2 booster_interface/msg/LowCmd value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field cmd_type integer Exact int8 range -128..127.
--- @field motor_cmd table[] Complete nested booster_interface/msg/MotorCmd value; no native fields are
--- projected away. At most 29 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Booster_interfaceMsgLowCmd.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgLowCmd.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Booster_interfaceMsgLowCmd.NATIVE_TYPE: Exact normalized native type name booster_interface/msg/LowCmd.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgLowCmd.encode
--- @field NATIVE_TYPE string Exact normalized native type name booster_interface/msg/LowCmd.
--- @brief Ros2Booster_interfaceMsgLowCmd.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--- inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgLowCmd.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Booster_interfaceMsgLowCmd.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--- native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgLowCmd.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Booster_interfaceMsgLowCmd.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgLowCmd.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Booster_interfaceMsgLowCmd.MAX_WIRE_BYTES: Inclusive complete maximum 730 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgLowCmd.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 730 bytes.
--- @brief Native class constant Ros2Booster_interfaceMsgLowCmd.CMD_TYPE_PARALLEL.
--- @details Original int8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Booster_interfaceMsgLowCmd.new
--- @field CMD_TYPE_PARALLEL integer
--- @brief Native class constant Ros2Booster_interfaceMsgLowCmd.CMD_TYPE_SERIAL.
--- @details Original int8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Booster_interfaceMsgLowCmd.new
--- @field CMD_TYPE_SERIAL integer
--- @brief Construct Ros2Booster_interfaceMsgLowCmd with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Booster_interfaceMsgLowCmd value New mutable complete value; no ROS resource.
--- @see Ros2Booster_interfaceMsgLowCmd.encode
--- @field new fun(values?: table): Ros2Booster_interfaceMsgLowCmd
--- @brief Encode a complete Ros2Booster_interfaceMsgLowCmd value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Booster_interfaceMsgLowCmd [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..730 bytes.
--- @see Ros2Booster_interfaceMsgLowCmd.decode
--- @field encode fun(value: Ros2Booster_interfaceMsgLowCmd): string
--- @brief Decode exactly one complete Ros2Booster_interfaceMsgLowCmd canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Booster_interfaceMsgLowCmd value New complete value; failures raise Lua errors.
--- @see Ros2Booster_interfaceMsgLowCmd.encode
--- @field decode fun(bytes: string): Ros2Booster_interfaceMsgLowCmd
local Ros2Booster_interfaceMsgLowCmd = classes["Ros2Booster_interfaceMsgLowCmd"]

--- @class Ros2Booster_interfaceMsgMotorState
--- @brief Complete ROS2 booster_interface/msg/MotorState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field mode integer Exact int8 range -128..127.
--- @field q number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field dq number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ddq number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field tau_est number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field temperature integer Exact int8 range -128..127.
--- @field lost integer Exact uint32 range 0..4294967295.
--- @field reserve integer[] Exact uint32 range 0..4294967295. Exactly 2 contiguous elements; holes and extra
--- array keys are rejected.
--- @brief Ros2Booster_interfaceMsgMotorState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgMotorState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Booster_interfaceMsgMotorState.NATIVE_TYPE: Exact normalized native type name
--- booster_interface/msg/MotorState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgMotorState.encode
--- @field NATIVE_TYPE string Exact normalized native type name booster_interface/msg/MotorState.
--- @brief Ros2Booster_interfaceMsgMotorState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--- not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgMotorState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Booster_interfaceMsgMotorState.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--- native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgMotorState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Booster_interfaceMsgMotorState.MIN_WIRE_BYTES: Inclusive complete minimum 30 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgMotorState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 30 bytes.
--- @brief Ros2Booster_interfaceMsgMotorState.MAX_WIRE_BYTES: Inclusive complete maximum 30 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgMotorState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 30 bytes.
--- @brief Construct Ros2Booster_interfaceMsgMotorState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Booster_interfaceMsgMotorState value New mutable complete value; no ROS resource.
--- @see Ros2Booster_interfaceMsgMotorState.encode
--- @field new fun(values?: table): Ros2Booster_interfaceMsgMotorState
--- @brief Encode a complete Ros2Booster_interfaceMsgMotorState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Booster_interfaceMsgMotorState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 30..30 bytes.
--- @see Ros2Booster_interfaceMsgMotorState.decode
--- @field encode fun(value: Ros2Booster_interfaceMsgMotorState): string
--- @brief Decode exactly one complete Ros2Booster_interfaceMsgMotorState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Booster_interfaceMsgMotorState value New complete value; failures raise Lua errors.
--- @see Ros2Booster_interfaceMsgMotorState.encode
--- @field decode fun(bytes: string): Ros2Booster_interfaceMsgMotorState
local Ros2Booster_interfaceMsgMotorState = classes["Ros2Booster_interfaceMsgMotorState"]

--- @class Ros2Booster_interfaceMsgLowState
--- @brief Complete ROS2 booster_interface/msg/LowState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field imu_state table Complete nested booster_interface/msg/ImuState value; no native fields are projected away.
--- @field motor_state_parallel table[] Complete nested booster_interface/msg/MotorState value; no native fields
--- are projected away. At most 29 contiguous elements; holes and extra array keys are rejected.
--- @field motor_state_serial table[] Complete nested booster_interface/msg/MotorState value; no native fields
--- are projected away. At most 29 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Booster_interfaceMsgLowState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgLowState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Booster_interfaceMsgLowState.NATIVE_TYPE: Exact normalized native type name
--- booster_interface/msg/LowState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgLowState.encode
--- @field NATIVE_TYPE string Exact normalized native type name booster_interface/msg/LowState.
--- @brief Ros2Booster_interfaceMsgLowState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--- not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgLowState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Booster_interfaceMsgLowState.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--- native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgLowState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Booster_interfaceMsgLowState.MIN_WIRE_BYTES: Inclusive complete minimum 44 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgLowState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 44 bytes.
--- @brief Ros2Booster_interfaceMsgLowState.MAX_WIRE_BYTES: Inclusive complete maximum 1784 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgLowState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1784 bytes.
--- @brief Construct Ros2Booster_interfaceMsgLowState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Booster_interfaceMsgLowState value New mutable complete value; no ROS resource.
--- @see Ros2Booster_interfaceMsgLowState.encode
--- @field new fun(values?: table): Ros2Booster_interfaceMsgLowState
--- @brief Encode a complete Ros2Booster_interfaceMsgLowState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Booster_interfaceMsgLowState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 44..1784 bytes.
--- @see Ros2Booster_interfaceMsgLowState.decode
--- @field encode fun(value: Ros2Booster_interfaceMsgLowState): string
--- @brief Decode exactly one complete Ros2Booster_interfaceMsgLowState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Booster_interfaceMsgLowState value New complete value; failures raise Lua errors.
--- @see Ros2Booster_interfaceMsgLowState.encode
--- @field decode fun(bytes: string): Ros2Booster_interfaceMsgLowState
local Ros2Booster_interfaceMsgLowState = classes["Ros2Booster_interfaceMsgLowState"]

--- @class Ros2Booster_interfaceMsgOdometer
--- @brief Complete ROS2 booster_interface/msg/Odometer value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field theta number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Booster_interfaceMsgOdometer.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgOdometer.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Booster_interfaceMsgOdometer.NATIVE_TYPE: Exact normalized native type name
--- booster_interface/msg/Odometer.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgOdometer.encode
--- @field NATIVE_TYPE string Exact normalized native type name booster_interface/msg/Odometer.
--- @brief Ros2Booster_interfaceMsgOdometer.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--- not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgOdometer.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Booster_interfaceMsgOdometer.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--- native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgOdometer.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Booster_interfaceMsgOdometer.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgOdometer.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Booster_interfaceMsgOdometer.MAX_WIRE_BYTES: Inclusive complete maximum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgOdometer.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 12 bytes.
--- @brief Construct Ros2Booster_interfaceMsgOdometer with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Booster_interfaceMsgOdometer value New mutable complete value; no ROS resource.
--- @see Ros2Booster_interfaceMsgOdometer.encode
--- @field new fun(values?: table): Ros2Booster_interfaceMsgOdometer
--- @brief Encode a complete Ros2Booster_interfaceMsgOdometer value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Booster_interfaceMsgOdometer [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..12 bytes.
--- @see Ros2Booster_interfaceMsgOdometer.decode
--- @field encode fun(value: Ros2Booster_interfaceMsgOdometer): string
--- @brief Decode exactly one complete Ros2Booster_interfaceMsgOdometer canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Booster_interfaceMsgOdometer value New complete value; failures raise Lua errors.
--- @see Ros2Booster_interfaceMsgOdometer.encode
--- @field decode fun(bytes: string): Ros2Booster_interfaceMsgOdometer
local Ros2Booster_interfaceMsgOdometer = classes["Ros2Booster_interfaceMsgOdometer"]

--- @class Ros2Booster_interfaceMsgRawBytesMsg
--- @brief Complete ROS2 booster_interface/msg/RawBytesMsg value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field msg integer[] Exact uint8 range 0..255. At most 2048 contiguous elements; holes and extra array keys
--- are rejected.
--- @brief Ros2Booster_interfaceMsgRawBytesMsg.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgRawBytesMsg.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Booster_interfaceMsgRawBytesMsg.NATIVE_TYPE: Exact normalized native type name
--- booster_interface/msg/RawBytesMsg.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgRawBytesMsg.encode
--- @field NATIVE_TYPE string Exact normalized native type name booster_interface/msg/RawBytesMsg.
--- @brief Ros2Booster_interfaceMsgRawBytesMsg.NATIVE_IDENTITY: Exact supplied native identity; nil means
--- absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgRawBytesMsg.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Booster_interfaceMsgRawBytesMsg.CODEC_IDENTITY: Finite canonical schema identity; does not
--- replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgRawBytesMsg.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Booster_interfaceMsgRawBytesMsg.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgRawBytesMsg.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Booster_interfaceMsgRawBytesMsg.MAX_WIRE_BYTES: Inclusive complete maximum 2052 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgRawBytesMsg.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2052 bytes.
--- @brief Construct Ros2Booster_interfaceMsgRawBytesMsg with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Booster_interfaceMsgRawBytesMsg value New mutable complete value; no ROS resource.
--- @see Ros2Booster_interfaceMsgRawBytesMsg.encode
--- @field new fun(values?: table): Ros2Booster_interfaceMsgRawBytesMsg
--- @brief Encode a complete Ros2Booster_interfaceMsgRawBytesMsg value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Booster_interfaceMsgRawBytesMsg [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..2052 bytes.
--- @see Ros2Booster_interfaceMsgRawBytesMsg.decode
--- @field encode fun(value: Ros2Booster_interfaceMsgRawBytesMsg): string
--- @brief Decode exactly one complete Ros2Booster_interfaceMsgRawBytesMsg canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Booster_interfaceMsgRawBytesMsg value New complete value; failures raise Lua errors.
--- @see Ros2Booster_interfaceMsgRawBytesMsg.encode
--- @field decode fun(bytes: string): Ros2Booster_interfaceMsgRawBytesMsg
local Ros2Booster_interfaceMsgRawBytesMsg = classes["Ros2Booster_interfaceMsgRawBytesMsg"]

--- @class Ros2Builtin_interfacesMsgTime
--- @brief Complete ROS2 builtin_interfaces/msg/Time value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field sec integer Exact int32 range -2147483648..2147483647. Whole seconds; signedness/range follow the
--- native scalar above.
--- @field nanosec integer Exact uint32 range 0..4294967295. Normalized fractional nanoseconds, inclusive0..999999999.
--- @brief Ros2Builtin_interfacesMsgTime.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Builtin_interfacesMsgTime.NATIVE_TYPE: Exact normalized native type name builtin_interfaces/msg/Time.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field NATIVE_TYPE string Exact normalized native type name builtin_interfaces/msg/Time.
--- @brief Ros2Builtin_interfacesMsgTime.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--- inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Builtin_interfacesMsgTime.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--- native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Builtin_interfacesMsgTime.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Builtin_interfacesMsgTime.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Builtin_interfacesMsgTime with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Builtin_interfacesMsgTime value New mutable complete value; no ROS resource.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field new fun(values?: table): Ros2Builtin_interfacesMsgTime
--- @brief Encode a complete Ros2Builtin_interfacesMsgTime value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Builtin_interfacesMsgTime [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Builtin_interfacesMsgTime.decode
--- @field encode fun(value: Ros2Builtin_interfacesMsgTime): string
--- @brief Decode exactly one complete Ros2Builtin_interfacesMsgTime canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Builtin_interfacesMsgTime value New complete value; failures raise Lua errors.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field decode fun(bytes: string): Ros2Builtin_interfacesMsgTime
local Ros2Builtin_interfacesMsgTime = classes["Ros2Builtin_interfacesMsgTime"]

--- @class Ros2Std_msgsMsgHeader
--- @brief Complete ROS2 std_msgs/msg/Header value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field stamp table Complete nested builtin_interfaces/msg/Time value; no native fields are projected away.
--- @field frame_id string Strict UTF-8 without NUL; length0..128 bytes.
--- @brief Ros2Std_msgsMsgHeader.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Std_msgsMsgHeader.NATIVE_TYPE: Exact normalized native type name std_msgs/msg/Header.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field NATIVE_TYPE string Exact normalized native type name std_msgs/msg/Header.
--- @brief Ros2Std_msgsMsgHeader.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--- compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Std_msgsMsgHeader.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--- agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Std_msgsMsgHeader.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Std_msgsMsgHeader.MAX_WIRE_BYTES: Inclusive complete maximum 140 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 140 bytes.
--- @brief Construct Ros2Std_msgsMsgHeader with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Std_msgsMsgHeader value New mutable complete value; no ROS resource.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field new fun(values?: table): Ros2Std_msgsMsgHeader
--- @brief Encode a complete Ros2Std_msgsMsgHeader value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Std_msgsMsgHeader [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..140 bytes.
--- @see Ros2Std_msgsMsgHeader.decode
--- @field encode fun(value: Ros2Std_msgsMsgHeader): string
--- @brief Decode exactly one complete Ros2Std_msgsMsgHeader canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Std_msgsMsgHeader value New complete value; failures raise Lua errors.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field decode fun(bytes: string): Ros2Std_msgsMsgHeader
local Ros2Std_msgsMsgHeader = classes["Ros2Std_msgsMsgHeader"]

--- @class Ros2Booster_interfaceMsgRawBytesStamped
--- @brief Complete ROS2 booster_interface/msg/RawBytesStamped value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field msg integer[] Exact uint8 range 0..255. At most 2048 contiguous elements; holes and extra array keys
--- are rejected.
--- @brief Ros2Booster_interfaceMsgRawBytesStamped.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgRawBytesStamped.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Booster_interfaceMsgRawBytesStamped.NATIVE_TYPE: Exact normalized native type name
--- booster_interface/msg/RawBytesStamped.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgRawBytesStamped.encode
--- @field NATIVE_TYPE string Exact normalized native type name booster_interface/msg/RawBytesStamped.
--- @brief Ros2Booster_interfaceMsgRawBytesStamped.NATIVE_IDENTITY: Exact supplied native identity; nil means
--- absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgRawBytesStamped.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Booster_interfaceMsgRawBytesStamped.CODEC_IDENTITY: Finite canonical schema identity; does not
--- replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgRawBytesStamped.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Booster_interfaceMsgRawBytesStamped.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgRawBytesStamped.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Booster_interfaceMsgRawBytesStamped.MAX_WIRE_BYTES: Inclusive complete maximum 2192 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgRawBytesStamped.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2192 bytes.
--- @brief Construct Ros2Booster_interfaceMsgRawBytesStamped with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Booster_interfaceMsgRawBytesStamped value New mutable complete value; no ROS resource.
--- @see Ros2Booster_interfaceMsgRawBytesStamped.encode
--- @field new fun(values?: table): Ros2Booster_interfaceMsgRawBytesStamped
--- @brief Encode a complete Ros2Booster_interfaceMsgRawBytesStamped value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Booster_interfaceMsgRawBytesStamped [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..2192 bytes.
--- @see Ros2Booster_interfaceMsgRawBytesStamped.decode
--- @field encode fun(value: Ros2Booster_interfaceMsgRawBytesStamped): string
--- @brief Decode exactly one complete Ros2Booster_interfaceMsgRawBytesStamped canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Booster_interfaceMsgRawBytesStamped value New complete value; failures raise Lua errors.
--- @see Ros2Booster_interfaceMsgRawBytesStamped.encode
--- @field decode fun(bytes: string): Ros2Booster_interfaceMsgRawBytesStamped
local Ros2Booster_interfaceMsgRawBytesStamped = classes["Ros2Booster_interfaceMsgRawBytesStamped"]

--- @class Ros2Booster_interfaceMsgRemoteControllerState
--- @brief Complete ROS2 booster_interface/msg/RemoteControllerState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field event integer Exact uint32 range 0..4294967295.
--- @field lx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ly number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ry number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field a boolean Exact boolean; encoded as one byte0/1.
--- @field b boolean Exact boolean; encoded as one byte0/1.
--- @field x boolean Exact boolean; encoded as one byte0/1.
--- @field y boolean Exact boolean; encoded as one byte0/1.
--- @field lb boolean Exact boolean; encoded as one byte0/1.
--- @field rb boolean Exact boolean; encoded as one byte0/1.
--- @field lt boolean Exact boolean; encoded as one byte0/1.
--- @field rt boolean Exact boolean; encoded as one byte0/1.
--- @field ls boolean Exact boolean; encoded as one byte0/1.
--- @field rs boolean Exact boolean; encoded as one byte0/1.
--- @field back boolean Exact boolean; encoded as one byte0/1.
--- @field start boolean Exact boolean; encoded as one byte0/1.
--- @field hat_c boolean Exact boolean; encoded as one byte0/1.
--- @field hat_u boolean Exact boolean; encoded as one byte0/1.
--- @field hat_d boolean Exact boolean; encoded as one byte0/1.
--- @field hat_l boolean Exact boolean; encoded as one byte0/1.
--- @field hat_r boolean Exact boolean; encoded as one byte0/1.
--- @field hat_lu boolean Exact boolean; encoded as one byte0/1.
--- @field hat_ld boolean Exact boolean; encoded as one byte0/1.
--- @field hat_ru boolean Exact boolean; encoded as one byte0/1.
--- @field hat_rd boolean Exact boolean; encoded as one byte0/1.
--- @field hat_pos integer Exact uint8 range 0..255.
--- @brief Ros2Booster_interfaceMsgRemoteControllerState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgRemoteControllerState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Booster_interfaceMsgRemoteControllerState.NATIVE_TYPE: Exact normalized native type name
--- booster_interface/msg/RemoteControllerState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgRemoteControllerState.encode
--- @field NATIVE_TYPE string Exact normalized native type name booster_interface/msg/RemoteControllerState.
--- @brief Ros2Booster_interfaceMsgRemoteControllerState.NATIVE_IDENTITY: Exact supplied native identity; nil
--- means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgRemoteControllerState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Booster_interfaceMsgRemoteControllerState.CODEC_IDENTITY: Finite canonical schema identity; does
--- not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgRemoteControllerState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Booster_interfaceMsgRemoteControllerState.MIN_WIRE_BYTES: Inclusive complete minimum 42 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgRemoteControllerState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 42 bytes.
--- @brief Ros2Booster_interfaceMsgRemoteControllerState.MAX_WIRE_BYTES: Inclusive complete maximum 42 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceMsgRemoteControllerState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 42 bytes.
--- @brief Construct Ros2Booster_interfaceMsgRemoteControllerState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Booster_interfaceMsgRemoteControllerState value New mutable complete value; no ROS resource.
--- @see Ros2Booster_interfaceMsgRemoteControllerState.encode
--- @field new fun(values?: table): Ros2Booster_interfaceMsgRemoteControllerState
--- @brief Encode a complete Ros2Booster_interfaceMsgRemoteControllerState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Booster_interfaceMsgRemoteControllerState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 42..42 bytes.
--- @see Ros2Booster_interfaceMsgRemoteControllerState.decode
--- @field encode fun(value: Ros2Booster_interfaceMsgRemoteControllerState): string
--- @brief Decode exactly one complete Ros2Booster_interfaceMsgRemoteControllerState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Booster_interfaceMsgRemoteControllerState value New complete value; failures raise Lua errors.
--- @see Ros2Booster_interfaceMsgRemoteControllerState.encode
--- @field decode fun(bytes: string): Ros2Booster_interfaceMsgRemoteControllerState
local Ros2Booster_interfaceMsgRemoteControllerState = classes["Ros2Booster_interfaceMsgRemoteControllerState"]

--- @class Ros2Booster_interfaceSrvAgentService_Request
--- @brief Complete ROS2 booster_interface/srv/AgentService_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field body string Strict UTF-8 without NUL; length0..4096 bytes.
--- @brief Ros2Booster_interfaceSrvAgentService_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvAgentService_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Booster_interfaceSrvAgentService_Request.NATIVE_TYPE: Exact normalized native type name
--- booster_interface/srv/AgentService_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvAgentService_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name booster_interface/srv/AgentService_Request.
--- @brief Ros2Booster_interfaceSrvAgentService_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--- means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvAgentService_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Booster_interfaceSrvAgentService_Request.CODEC_IDENTITY: Finite canonical schema identity; does
--- not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvAgentService_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Booster_interfaceSrvAgentService_Request.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvAgentService_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Booster_interfaceSrvAgentService_Request.MAX_WIRE_BYTES: Inclusive complete maximum 4100 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvAgentService_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4100 bytes.
--- @brief Construct Ros2Booster_interfaceSrvAgentService_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Booster_interfaceSrvAgentService_Request value New mutable complete value; no ROS resource.
--- @see Ros2Booster_interfaceSrvAgentService_Request.encode
--- @field new fun(values?: table): Ros2Booster_interfaceSrvAgentService_Request
--- @brief Encode a complete Ros2Booster_interfaceSrvAgentService_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Booster_interfaceSrvAgentService_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4100 bytes.
--- @see Ros2Booster_interfaceSrvAgentService_Request.decode
--- @field encode fun(value: Ros2Booster_interfaceSrvAgentService_Request): string
--- @brief Decode exactly one complete Ros2Booster_interfaceSrvAgentService_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Booster_interfaceSrvAgentService_Request value New complete value; failures raise Lua errors.
--- @see Ros2Booster_interfaceSrvAgentService_Request.encode
--- @field decode fun(bytes: string): Ros2Booster_interfaceSrvAgentService_Request
local Ros2Booster_interfaceSrvAgentService_Request = classes["Ros2Booster_interfaceSrvAgentService_Request"]

--- @class Ros2Booster_interfaceSrvAgentService_Response
--- @brief Complete ROS2 booster_interface/srv/AgentService_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field body string Strict UTF-8 without NUL; length0..4096 bytes.
--- @brief Ros2Booster_interfaceSrvAgentService_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvAgentService_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Booster_interfaceSrvAgentService_Response.NATIVE_TYPE: Exact normalized native type name
--- booster_interface/srv/AgentService_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvAgentService_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name booster_interface/srv/AgentService_Response.
--- @brief Ros2Booster_interfaceSrvAgentService_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--- means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvAgentService_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Booster_interfaceSrvAgentService_Response.CODEC_IDENTITY: Finite canonical schema identity; does
--- not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvAgentService_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Booster_interfaceSrvAgentService_Response.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvAgentService_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Booster_interfaceSrvAgentService_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4100 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvAgentService_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4100 bytes.
--- @brief Construct Ros2Booster_interfaceSrvAgentService_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Booster_interfaceSrvAgentService_Response value New mutable complete value; no ROS resource.
--- @see Ros2Booster_interfaceSrvAgentService_Response.encode
--- @field new fun(values?: table): Ros2Booster_interfaceSrvAgentService_Response
--- @brief Encode a complete Ros2Booster_interfaceSrvAgentService_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Booster_interfaceSrvAgentService_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4100 bytes.
--- @see Ros2Booster_interfaceSrvAgentService_Response.decode
--- @field encode fun(value: Ros2Booster_interfaceSrvAgentService_Response): string
--- @brief Decode exactly one complete Ros2Booster_interfaceSrvAgentService_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Booster_interfaceSrvAgentService_Response value New complete value; failures raise Lua errors.
--- @see Ros2Booster_interfaceSrvAgentService_Response.encode
--- @field decode fun(bytes: string): Ros2Booster_interfaceSrvAgentService_Response
local Ros2Booster_interfaceSrvAgentService_Response = classes["Ros2Booster_interfaceSrvAgentService_Response"]

--- @class Ros2Booster_interfaceSrvRpcService_Request
--- @brief Complete ROS2 booster_interface/srv/RpcService_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field msg table Complete nested booster_interface/msg/BoosterApiReqMsg value; no native fields are projected away.
--- @brief Ros2Booster_interfaceSrvRpcService_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvRpcService_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Booster_interfaceSrvRpcService_Request.NATIVE_TYPE: Exact normalized native type name
--- booster_interface/srv/RpcService_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvRpcService_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name booster_interface/srv/RpcService_Request.
--- @brief Ros2Booster_interfaceSrvRpcService_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--- absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvRpcService_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Booster_interfaceSrvRpcService_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--- replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvRpcService_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Booster_interfaceSrvRpcService_Request.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvRpcService_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Booster_interfaceSrvRpcService_Request.MAX_WIRE_BYTES: Inclusive complete maximum 4108 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvRpcService_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4108 bytes.
--- @brief Construct Ros2Booster_interfaceSrvRpcService_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Booster_interfaceSrvRpcService_Request value New mutable complete value; no ROS resource.
--- @see Ros2Booster_interfaceSrvRpcService_Request.encode
--- @field new fun(values?: table): Ros2Booster_interfaceSrvRpcService_Request
--- @brief Encode a complete Ros2Booster_interfaceSrvRpcService_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Booster_interfaceSrvRpcService_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..4108 bytes.
--- @see Ros2Booster_interfaceSrvRpcService_Request.decode
--- @field encode fun(value: Ros2Booster_interfaceSrvRpcService_Request): string
--- @brief Decode exactly one complete Ros2Booster_interfaceSrvRpcService_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Booster_interfaceSrvRpcService_Request value New complete value; failures raise Lua errors.
--- @see Ros2Booster_interfaceSrvRpcService_Request.encode
--- @field decode fun(bytes: string): Ros2Booster_interfaceSrvRpcService_Request
local Ros2Booster_interfaceSrvRpcService_Request = classes["Ros2Booster_interfaceSrvRpcService_Request"]

--- @class Ros2Booster_interfaceSrvRpcService_Response
--- @brief Complete ROS2 booster_interface/srv/RpcService_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field msg table Complete nested booster_interface/msg/BoosterApiRespMsg value; no native fields are projected away.
--- @brief Ros2Booster_interfaceSrvRpcService_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvRpcService_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Booster_interfaceSrvRpcService_Response.NATIVE_TYPE: Exact normalized native type name
--- booster_interface/srv/RpcService_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvRpcService_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name booster_interface/srv/RpcService_Response.
--- @brief Ros2Booster_interfaceSrvRpcService_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--- means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvRpcService_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Booster_interfaceSrvRpcService_Response.CODEC_IDENTITY: Finite canonical schema identity; does
--- not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvRpcService_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Booster_interfaceSrvRpcService_Response.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvRpcService_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Booster_interfaceSrvRpcService_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4108 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Booster_interfaceSrvRpcService_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4108 bytes.
--- @brief Construct Ros2Booster_interfaceSrvRpcService_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Booster_interfaceSrvRpcService_Response value New mutable complete value; no ROS resource.
--- @see Ros2Booster_interfaceSrvRpcService_Response.encode
--- @field new fun(values?: table): Ros2Booster_interfaceSrvRpcService_Response
--- @brief Encode a complete Ros2Booster_interfaceSrvRpcService_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Booster_interfaceSrvRpcService_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..4108 bytes.
--- @see Ros2Booster_interfaceSrvRpcService_Response.decode
--- @field encode fun(value: Ros2Booster_interfaceSrvRpcService_Response): string
--- @brief Decode exactly one complete Ros2Booster_interfaceSrvRpcService_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Booster_interfaceSrvRpcService_Response value New complete value; failures raise Lua errors.
--- @see Ros2Booster_interfaceSrvRpcService_Response.encode
--- @field decode fun(bytes: string): Ros2Booster_interfaceSrvRpcService_Response
local Ros2Booster_interfaceSrvRpcService_Response = classes["Ros2Booster_interfaceSrvRpcService_Response"]

--- @class Ros2Uwvm_booster_sdk_bridgeMsgImuState
--- @brief Complete ROS2 uwvm_booster_sdk_bridge/msg/ImuState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field rpy number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 3 contiguous
--- elements; holes and extra array keys are rejected.
--- @field gyro number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 3 contiguous
--- elements; holes and extra array keys are rejected.
--- @field acc number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 3 contiguous
--- elements; holes and extra array keys are rejected.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgImuState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgImuState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgImuState.NATIVE_TYPE: Exact normalized native type name
--- uwvm_booster_sdk_bridge/msg/ImuState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgImuState.encode
--- @field NATIVE_TYPE string Exact normalized native type name uwvm_booster_sdk_bridge/msg/ImuState.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgImuState.NATIVE_IDENTITY: Exact supplied native identity; nil means
--- absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgImuState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgImuState.CODEC_IDENTITY: Finite canonical schema identity; does not
--- replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgImuState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgImuState.MIN_WIRE_BYTES: Inclusive complete minimum 36 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgImuState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 36 bytes.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgImuState.MAX_WIRE_BYTES: Inclusive complete maximum 36 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgImuState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 36 bytes.
--- @brief Construct Ros2Uwvm_booster_sdk_bridgeMsgImuState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Uwvm_booster_sdk_bridgeMsgImuState value New mutable complete value; no ROS resource.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgImuState.encode
--- @field new fun(values?: table): Ros2Uwvm_booster_sdk_bridgeMsgImuState
--- @brief Encode a complete Ros2Uwvm_booster_sdk_bridgeMsgImuState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Uwvm_booster_sdk_bridgeMsgImuState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 36..36 bytes.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgImuState.decode
--- @field encode fun(value: Ros2Uwvm_booster_sdk_bridgeMsgImuState): string
--- @brief Decode exactly one complete Ros2Uwvm_booster_sdk_bridgeMsgImuState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Uwvm_booster_sdk_bridgeMsgImuState value New complete value; failures raise Lua errors.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgImuState.encode
--- @field decode fun(bytes: string): Ros2Uwvm_booster_sdk_bridgeMsgImuState
local Ros2Uwvm_booster_sdk_bridgeMsgImuState = classes["Ros2Uwvm_booster_sdk_bridgeMsgImuState"]

--- @class Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd
--- @brief Complete ROS2 uwvm_booster_sdk_bridge/msg/MotorCmd value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field mode integer Exact uint8 range 0..255.
--- @field q number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field dq number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field tau number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field kp number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field kd number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field weight number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd.NATIVE_TYPE: Exact normalized native type name
--- uwvm_booster_sdk_bridge/msg/MotorCmd.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd.encode
--- @field NATIVE_TYPE string Exact normalized native type name uwvm_booster_sdk_bridge/msg/MotorCmd.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd.NATIVE_IDENTITY: Exact supplied native identity; nil means
--- absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd.CODEC_IDENTITY: Finite canonical schema identity; does not
--- replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd.MAX_WIRE_BYTES: Inclusive complete maximum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 25 bytes.
--- @brief Construct Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd value New mutable complete value; no ROS resource.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd.encode
--- @field new fun(values?: table): Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd
--- @brief Encode a complete Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..25 bytes.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd.decode
--- @field encode fun(value: Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd): string
--- @brief Decode exactly one complete Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd value New complete value; failures raise Lua errors.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd.encode
--- @field decode fun(bytes: string): Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd
local Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd = classes["Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd"]

--- @class Ros2Uwvm_booster_sdk_bridgeMsgMotorState
--- @brief Complete ROS2 uwvm_booster_sdk_bridge/msg/MotorState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field mode integer Exact uint8 range 0..255.
--- @field q number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field dq number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ddq number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field tau_est number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field temperature integer Exact uint8 range 0..255.
--- @field lost integer Exact uint32 range 0..4294967295.
--- @field reserve integer[] Exact uint32 range 0..4294967295. Exactly 2 contiguous elements; holes and extra
--- array keys are rejected.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgMotorState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgMotorState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgMotorState.NATIVE_TYPE: Exact normalized native type name
--- uwvm_booster_sdk_bridge/msg/MotorState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgMotorState.encode
--- @field NATIVE_TYPE string Exact normalized native type name uwvm_booster_sdk_bridge/msg/MotorState.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgMotorState.NATIVE_IDENTITY: Exact supplied native identity; nil means
--- absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgMotorState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgMotorState.CODEC_IDENTITY: Finite canonical schema identity; does not
--- replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgMotorState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgMotorState.MIN_WIRE_BYTES: Inclusive complete minimum 30 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgMotorState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 30 bytes.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgMotorState.MAX_WIRE_BYTES: Inclusive complete maximum 30 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgMotorState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 30 bytes.
--- @brief Construct Ros2Uwvm_booster_sdk_bridgeMsgMotorState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Uwvm_booster_sdk_bridgeMsgMotorState value New mutable complete value; no ROS resource.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgMotorState.encode
--- @field new fun(values?: table): Ros2Uwvm_booster_sdk_bridgeMsgMotorState
--- @brief Encode a complete Ros2Uwvm_booster_sdk_bridgeMsgMotorState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Uwvm_booster_sdk_bridgeMsgMotorState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 30..30 bytes.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgMotorState.decode
--- @field encode fun(value: Ros2Uwvm_booster_sdk_bridgeMsgMotorState): string
--- @brief Decode exactly one complete Ros2Uwvm_booster_sdk_bridgeMsgMotorState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Uwvm_booster_sdk_bridgeMsgMotorState value New complete value; failures raise Lua errors.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgMotorState.encode
--- @field decode fun(bytes: string): Ros2Uwvm_booster_sdk_bridgeMsgMotorState
local Ros2Uwvm_booster_sdk_bridgeMsgMotorState = classes["Ros2Uwvm_booster_sdk_bridgeMsgMotorState"]

--- @class Ros2Uwvm_booster_sdk_bridgeMsgLowCmd
--- @brief Complete ROS2 uwvm_booster_sdk_bridge/msg/LowCmd value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field cmd_type integer Exact int32 range -2147483648..2147483647.
--- @field motor_cmd table[] Complete nested uwvm_booster_sdk_bridge/msg/MotorCmd value; no native fields are
--- projected away. At most 29 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgLowCmd.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgLowCmd.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgLowCmd.NATIVE_TYPE: Exact normalized native type name
--- uwvm_booster_sdk_bridge/msg/LowCmd.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgLowCmd.encode
--- @field NATIVE_TYPE string Exact normalized native type name uwvm_booster_sdk_bridge/msg/LowCmd.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgLowCmd.NATIVE_IDENTITY: Exact supplied native identity; nil means
--- absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgLowCmd.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgLowCmd.CODEC_IDENTITY: Finite canonical schema identity; does not
--- replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgLowCmd.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgLowCmd.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgLowCmd.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgLowCmd.MAX_WIRE_BYTES: Inclusive complete maximum 733 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgLowCmd.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 733 bytes.
--- @brief Construct Ros2Uwvm_booster_sdk_bridgeMsgLowCmd with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Uwvm_booster_sdk_bridgeMsgLowCmd value New mutable complete value; no ROS resource.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgLowCmd.encode
--- @field new fun(values?: table): Ros2Uwvm_booster_sdk_bridgeMsgLowCmd
--- @brief Encode a complete Ros2Uwvm_booster_sdk_bridgeMsgLowCmd value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Uwvm_booster_sdk_bridgeMsgLowCmd [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..733 bytes.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgLowCmd.decode
--- @field encode fun(value: Ros2Uwvm_booster_sdk_bridgeMsgLowCmd): string
--- @brief Decode exactly one complete Ros2Uwvm_booster_sdk_bridgeMsgLowCmd canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Uwvm_booster_sdk_bridgeMsgLowCmd value New complete value; failures raise Lua errors.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgLowCmd.encode
--- @field decode fun(bytes: string): Ros2Uwvm_booster_sdk_bridgeMsgLowCmd
local Ros2Uwvm_booster_sdk_bridgeMsgLowCmd = classes["Ros2Uwvm_booster_sdk_bridgeMsgLowCmd"]

--- @class Ros2Uwvm_booster_sdk_bridgeMsgLowState
--- @brief Complete ROS2 uwvm_booster_sdk_bridge/msg/LowState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field imu_state table Complete nested uwvm_booster_sdk_bridge/msg/ImuState value; no native fields are
--- projected away.
--- @field motor_state_parallel table[] Complete nested uwvm_booster_sdk_bridge/msg/MotorState value; no native
--- fields are projected away. At most 29 contiguous elements; holes and extra array keys are rejected.
--- @field motor_state_serial table[] Complete nested uwvm_booster_sdk_bridge/msg/MotorState value; no native
--- fields are projected away. At most 29 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgLowState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgLowState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgLowState.NATIVE_TYPE: Exact normalized native type name
--- uwvm_booster_sdk_bridge/msg/LowState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgLowState.encode
--- @field NATIVE_TYPE string Exact normalized native type name uwvm_booster_sdk_bridge/msg/LowState.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgLowState.NATIVE_IDENTITY: Exact supplied native identity; nil means
--- absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgLowState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgLowState.CODEC_IDENTITY: Finite canonical schema identity; does not
--- replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgLowState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgLowState.MIN_WIRE_BYTES: Inclusive complete minimum 44 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgLowState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 44 bytes.
--- @brief Ros2Uwvm_booster_sdk_bridgeMsgLowState.MAX_WIRE_BYTES: Inclusive complete maximum 1784 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgLowState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1784 bytes.
--- @brief Construct Ros2Uwvm_booster_sdk_bridgeMsgLowState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Uwvm_booster_sdk_bridgeMsgLowState value New mutable complete value; no ROS resource.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgLowState.encode
--- @field new fun(values?: table): Ros2Uwvm_booster_sdk_bridgeMsgLowState
--- @brief Encode a complete Ros2Uwvm_booster_sdk_bridgeMsgLowState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Uwvm_booster_sdk_bridgeMsgLowState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 44..1784 bytes.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgLowState.decode
--- @field encode fun(value: Ros2Uwvm_booster_sdk_bridgeMsgLowState): string
--- @brief Decode exactly one complete Ros2Uwvm_booster_sdk_bridgeMsgLowState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Uwvm_booster_sdk_bridgeMsgLowState value New complete value; failures raise Lua errors.
--- @see Ros2Uwvm_booster_sdk_bridgeMsgLowState.encode
--- @field decode fun(bytes: string): Ros2Uwvm_booster_sdk_bridgeMsgLowState
local Ros2Uwvm_booster_sdk_bridgeMsgLowState = classes["Ros2Uwvm_booster_sdk_bridgeMsgLowState"]

return classes, by_name
