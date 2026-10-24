--- @brief Complete source-derived canonical Lua value classes.
--- @details Synchronous local values only; Lua5.4 with signed64-bit integers.
--- @see roswasm/wire.lua
local wire = require("roswasm.wire")
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
        ["symbol"] = "Ros2DrddsMsgMetaType",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/msg/MetaType",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_589934883c499944b42386d9aa89152e69c3bb41dcf26d0246cacdbb1b50162f",
        ["minimum"] = 16,
        ["maximum"] = 16,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "frame_id",
                ["type"] = "uint64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "stamp",
                ["type"] = "Ros2Builtin_interfacesMsgTime",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2DrddsMsgBatteryDataValue",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/msg/BatteryDataValue",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_076c053d37d08f14e5a1a886e696e6a0f7fe3a7bea54b38206cdcba3a23313bc",
        ["minimum"] = 59,
        ["maximum"] = 123,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "voltage",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "current",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "remaining_capacity",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "nominal_capacity",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "cycles",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "production_date",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "balanced_low",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "balanced_high",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "protected_state",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "software_version",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "battery_level",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "mos_state",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "battery_quantity",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "battery_ntc",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "battery_temperature",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "battery_serialnum",
                ["type"] = "uint8",
                ["array"] = "array",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2DrddsMsgBatteryData",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/msg/BatteryData",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8ab951a101e2e9522c39bcbb7fabea8966e78ea8141cb568e0aa1ac0c89d692e",
        ["minimum"] = 20,
        ["maximum"] = 512,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2DrddsMsgMetaType",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
            },
            {
                ["name"] = "data",
                ["type"] = "Ros2DrddsMsgBatteryDataValue",
                ["array"] = "sequence",
                ["count"] = 4,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 59,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2DrddsMsgGamepadData",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/msg/GamepadData",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_14c915cd4dc71671a25bdc811b65f0fc26aeb415e234205d5d53e53dfd3c6978",
        ["minimum"] = 34,
        ["maximum"] = 34,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2DrddsMsgMetaType",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
            },
            {
                ["name"] = "left_axis_x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "left_axis_y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "right_axis_x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "right_axis_y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "buttons",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2DrddsMsgImuDataValue",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/msg/ImuDataValue",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c857b56c129bf59c4c6d6e1ea61b4f46e01f6a938b7eb55826c52f0b1f18e859",
        ["minimum"] = 36,
        ["maximum"] = 36,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "roll",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "pitch",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "yaw",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "omega_x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "omega_y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "omega_z",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "acc_x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "acc_y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "acc_z",
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
        ["symbol"] = "Ros2DrddsMsgImuData",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/msg/ImuData",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c98e1cc04d46c99666aea581a36b338bdd91561f843dc4cdfcd86a48e6cb989c",
        ["minimum"] = 52,
        ["maximum"] = 52,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2DrddsMsgMetaType",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
            },
            {
                ["name"] = "data",
                ["type"] = "Ros2DrddsMsgImuDataValue",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 36,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2DrddsMsgJointCmdValue",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/msg/JointCmdValue",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f685f314bb39c4543735ba73d92655c4cace1d1162a9c699275b3937460738de",
        ["minimum"] = 28,
        ["maximum"] = 284,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "name",
                ["type"] = "uint8",
                ["array"] = "sequence",
                ["count"] = 256,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "data_id",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "control_word",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "position",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "torque",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "velocity",
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2DrddsMsgJointData",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/msg/JointData",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_269b21fc3b8c1461496b2aab41fc3354e9dc17cc9050ca7ce1962e62afce7e05",
        ["minimum"] = 28,
        ["maximum"] = 28,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "name",
                ["type"] = "uint8",
                ["array"] = "array",
                ["count"] = 4,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "data_id",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "status_word",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "position",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "torque",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "velocity",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "motion_temp",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "driver_temp",
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
        ["symbol"] = "Ros2DrddsMsgJointDataCmd",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/msg/JointDataCmd",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c68c64167c2bd6ce84e78a37fe245c0c2bc40d4b2945a486f257222b2e1e7e0e",
        ["minimum"] = 28,
        ["maximum"] = 28,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "name",
                ["type"] = "uint8",
                ["array"] = "array",
                ["count"] = 4,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "data_id",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "control_word",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "position",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "torque",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "velocity",
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2DrddsMsgJointValue",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/msg/JointValue",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5c0cb9ecbc1169e7b4cf4656cd0105466cb4e9269c946339debabfd64e5824da",
        ["minimum"] = 28,
        ["maximum"] = 284,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "name",
                ["type"] = "uint8",
                ["array"] = "sequence",
                ["count"] = 256,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "data_id",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "status_word",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "position",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "torque",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "velocity",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "motion_temp",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "driver_temp",
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
        ["symbol"] = "Ros2DrddsMsgJointsDataValue",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/msg/JointsDataValue",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e1c01b2edfac0d76f024533b582b3be527bbe70f8be7be45ea74dab31e764bd8",
        ["minimum"] = 448,
        ["maximum"] = 448,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joints_data",
                ["type"] = "Ros2DrddsMsgJointData",
                ["array"] = "array",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2DrddsMsgJointsData",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/msg/JointsData",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_58eaf7ff13be07922dbb6edfb9109be96a3adad0fbd512a5f66af24dc7b4d43d",
        ["minimum"] = 464,
        ["maximum"] = 464,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2DrddsMsgMetaType",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
            },
            {
                ["name"] = "data",
                ["type"] = "Ros2DrddsMsgJointsDataValue",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 448,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2DrddsMsgJointsDataCmdValue",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/msg/JointsDataCmdValue",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_797ad7349b381083eafb361a8a7d4f28d64c8f3a1ee5719a3008d687893ab016",
        ["minimum"] = 448,
        ["maximum"] = 448,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joints_data",
                ["type"] = "Ros2DrddsMsgJointDataCmd",
                ["array"] = "array",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2DrddsMsgJointsDataCmd",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/msg/JointsDataCmd",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5b1676cb4fbfd6970756ce6221ca6abf1911bd7e8108146fd9afccf62180bb45",
        ["minimum"] = 464,
        ["maximum"] = 464,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2DrddsMsgMetaType",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
            },
            {
                ["name"] = "data",
                ["type"] = "Ros2DrddsMsgJointsDataCmdValue",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 448,
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
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "y",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "z",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {},
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
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "angular",
                ["type"] = "Ros2Geometry_msgsMsgVector3",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Sensor_msgsMsgJointState",
        ["ros_version"] = 2,
        ["native_type"] = "sensor_msgs/msg/JointState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_81135016cfa64b7f2845d6090ce9f70691df1472ab66993c7d98b2a79399907f",
        ["minimum"] = 28,
        ["maximum"] = 6044,
        ["semantics"] = "joint-state-optional-equal-length-arrays",
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
                ["name"] = "name",
                ["type"] = "string",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "position",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "velocity",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "effort",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2DrddsMsgRobotStatus",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/msg/RobotStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_aa90e870c49613a133808e9eade2720e131e77b95138c0a5efe47e1e3cb052ae",
        ["minimum"] = 189,
        ["maximum"] = 6845,
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
                ["name"] = "robot",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 128,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "command_source",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 128,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "current_state",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 128,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "current_state_id",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "requested_state",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 128,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "requested_state_id",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "safety_mode",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "command",
                ["type"] = "Ros2Geometry_msgsMsgTwist",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 48,
            },
            {
                ["name"] = "command_timed_out",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "rejected_commands",
                ["type"] = "uint64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "command_updates",
                ["type"] = "uint64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "joint_stamp",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "imu_stamp",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "telemetry_fresh",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "joints",
                ["type"] = "Ros2Sensor_msgsMsgJointState",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
            {
                ["name"] = "base_rpy",
                ["type"] = "Ros2Geometry_msgsMsgVector3",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "base_angular_velocity",
                ["type"] = "Ros2Geometry_msgsMsgVector3",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2DrddsMsgStdMsgFloat32",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/msg/StdMsgFloat32",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_60c4d2a6c37bc75722023dbd51c1796b1330023c2c773bd4da25aebb4d665c33",
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
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2DrddsMsgStdMsgInt32",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/msg/StdMsgInt32",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_460694ceb9e0e29101e97b5758a3171e02b7830565fec83358ee7fa6157d42b1",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "value",
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
        ["symbol"] = "Ros2DrddsMsgStdStatus",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/msg/StdStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4d9ff460d62c4251ecda42a2637156e54b5e9adcce2ff442299c04968d6a2b28",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "state",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "error_code",
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
        ["symbol"] = "Ros2DrddsMsgSteerValue",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/msg/SteerValue",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_10007d7ed0f14ea52138dba2c3dfee590070ed8f2c0e5f48adab2486c371a236",
        ["minimum"] = 24,
        ["maximum"] = 24,
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
                ["name"] = "z",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "roll",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "pitch",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "yaw",
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
        ["symbol"] = "Ros2DrddsMsgSteer",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/msg/Steer",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0749b852b4689e1d6df3fe333e91280ae87065f16267a255e548d73ed9e14793",
        ["minimum"] = 40,
        ["maximum"] = 40,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2DrddsMsgMetaType",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
            },
            {
                ["name"] = "data",
                ["type"] = "Ros2DrddsMsgSteerValue",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2DrddsSrvStdSrvInt32_Request",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/srv/StdSrvInt32_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_00be6642e848f5cb36a34038277cf0002cdd2a76de8384ac17e11cd101fcd25e",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "command",
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
        ["symbol"] = "Ros2DrddsSrvStdSrvInt32_Response",
        ["ros_version"] = 2,
        ["native_type"] = "drdds/srv/StdSrvInt32_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a264c039c6b47e96c72615b8eba30d74b4bba736dabe5d52457f173930a9dcb4",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
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
}
local classes, by_name = wire.records(schemas)

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

--- @class Ros2DrddsMsgMetaType
--- @brief Complete ROS2 drdds/msg/MetaType value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field frame_id string Exactly eight little-endian bytes; never a Lua number.
--- @field stamp table Complete nested builtin_interfaces/msg/Time value; no native fields are projected away.
--- @brief Ros2DrddsMsgMetaType.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgMetaType.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsMsgMetaType.NATIVE_TYPE: Exact normalized native type name drdds/msg/MetaType.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgMetaType.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/msg/MetaType.
--- @brief Ros2DrddsMsgMetaType.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--- compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgMetaType.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsMsgMetaType.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--- agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgMetaType.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsMsgMetaType.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgMetaType.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2DrddsMsgMetaType.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgMetaType.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros2DrddsMsgMetaType with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsMsgMetaType value New mutable complete value; no ROS resource.
--- @see Ros2DrddsMsgMetaType.encode
--- @field new fun(values?: table): Ros2DrddsMsgMetaType
--- @brief Encode a complete Ros2DrddsMsgMetaType value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsMsgMetaType [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros2DrddsMsgMetaType.decode
--- @field encode fun(value: Ros2DrddsMsgMetaType): string
--- @brief Decode exactly one complete Ros2DrddsMsgMetaType canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsMsgMetaType value New complete value; failures raise Lua errors.
--- @see Ros2DrddsMsgMetaType.encode
--- @field decode fun(bytes: string): Ros2DrddsMsgMetaType
local Ros2DrddsMsgMetaType = classes["Ros2DrddsMsgMetaType"]

--- @class Ros2DrddsMsgBatteryDataValue
--- @brief Complete ROS2 drdds/msg/BatteryDataValue value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field voltage integer Exact uint16 range 0..65535.
--- @field current integer Exact int16 range -32768..32767.
--- @field remaining_capacity integer Exact uint16 range 0..65535.
--- @field nominal_capacity integer Exact uint16 range 0..65535.
--- @field cycles integer Exact uint16 range 0..65535.
--- @field production_date integer Exact uint16 range 0..65535.
--- @field balanced_low integer Exact uint16 range 0..65535.
--- @field balanced_high integer Exact uint16 range 0..65535.
--- @field protected_state integer Exact uint16 range 0..65535.
--- @field software_version integer Exact uint8 range 0..255.
--- @field battery_level integer Exact uint8 range 0..255.
--- @field mos_state integer Exact uint8 range 0..255.
--- @field battery_quantity integer Exact uint8 range 0..255.
--- @field battery_ntc integer Exact uint8 range 0..255.
--- @field battery_temperature number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16
--- contiguous elements; holes and extra array keys are rejected.
--- @field battery_serialnum integer[] Exact uint8 range 0..255. Exactly 32 contiguous elements; holes and extra
--- array keys are rejected.
--- @brief Ros2DrddsMsgBatteryDataValue.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgBatteryDataValue.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsMsgBatteryDataValue.NATIVE_TYPE: Exact normalized native type name drdds/msg/BatteryDataValue.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgBatteryDataValue.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/msg/BatteryDataValue.
--- @brief Ros2DrddsMsgBatteryDataValue.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--- inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgBatteryDataValue.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsMsgBatteryDataValue.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--- native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgBatteryDataValue.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsMsgBatteryDataValue.MIN_WIRE_BYTES: Inclusive complete minimum 59 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgBatteryDataValue.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 59 bytes.
--- @brief Ros2DrddsMsgBatteryDataValue.MAX_WIRE_BYTES: Inclusive complete maximum 123 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgBatteryDataValue.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 123 bytes.
--- @brief Construct Ros2DrddsMsgBatteryDataValue with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsMsgBatteryDataValue value New mutable complete value; no ROS resource.
--- @see Ros2DrddsMsgBatteryDataValue.encode
--- @field new fun(values?: table): Ros2DrddsMsgBatteryDataValue
--- @brief Encode a complete Ros2DrddsMsgBatteryDataValue value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsMsgBatteryDataValue [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 59..123 bytes.
--- @see Ros2DrddsMsgBatteryDataValue.decode
--- @field encode fun(value: Ros2DrddsMsgBatteryDataValue): string
--- @brief Decode exactly one complete Ros2DrddsMsgBatteryDataValue canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsMsgBatteryDataValue value New complete value; failures raise Lua errors.
--- @see Ros2DrddsMsgBatteryDataValue.encode
--- @field decode fun(bytes: string): Ros2DrddsMsgBatteryDataValue
local Ros2DrddsMsgBatteryDataValue = classes["Ros2DrddsMsgBatteryDataValue"]

--- @class Ros2DrddsMsgBatteryData
--- @brief Complete ROS2 drdds/msg/BatteryData value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested drdds/msg/MetaType value; no native fields are projected away.
--- @field data table[] Complete nested drdds/msg/BatteryDataValue value; no native fields are projected away.
--- At most 4 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2DrddsMsgBatteryData.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgBatteryData.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsMsgBatteryData.NATIVE_TYPE: Exact normalized native type name drdds/msg/BatteryData.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgBatteryData.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/msg/BatteryData.
--- @brief Ros2DrddsMsgBatteryData.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--- inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgBatteryData.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsMsgBatteryData.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--- type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgBatteryData.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsMsgBatteryData.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgBatteryData.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros2DrddsMsgBatteryData.MAX_WIRE_BYTES: Inclusive complete maximum 512 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgBatteryData.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 512 bytes.
--- @brief Construct Ros2DrddsMsgBatteryData with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsMsgBatteryData value New mutable complete value; no ROS resource.
--- @see Ros2DrddsMsgBatteryData.encode
--- @field new fun(values?: table): Ros2DrddsMsgBatteryData
--- @brief Encode a complete Ros2DrddsMsgBatteryData value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsMsgBatteryData [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..512 bytes.
--- @see Ros2DrddsMsgBatteryData.decode
--- @field encode fun(value: Ros2DrddsMsgBatteryData): string
--- @brief Decode exactly one complete Ros2DrddsMsgBatteryData canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsMsgBatteryData value New complete value; failures raise Lua errors.
--- @see Ros2DrddsMsgBatteryData.encode
--- @field decode fun(bytes: string): Ros2DrddsMsgBatteryData
local Ros2DrddsMsgBatteryData = classes["Ros2DrddsMsgBatteryData"]

--- @class Ros2DrddsMsgGamepadData
--- @brief Complete ROS2 drdds/msg/GamepadData value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested drdds/msg/MetaType value; no native fields are projected away.
--- @field left_axis_x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field left_axis_y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field right_axis_x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field right_axis_y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field buttons integer Exact uint16 range 0..65535.
--- @brief Ros2DrddsMsgGamepadData.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgGamepadData.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsMsgGamepadData.NATIVE_TYPE: Exact normalized native type name drdds/msg/GamepadData.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgGamepadData.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/msg/GamepadData.
--- @brief Ros2DrddsMsgGamepadData.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--- inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgGamepadData.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsMsgGamepadData.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--- type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgGamepadData.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsMsgGamepadData.MIN_WIRE_BYTES: Inclusive complete minimum 34 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgGamepadData.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 34 bytes.
--- @brief Ros2DrddsMsgGamepadData.MAX_WIRE_BYTES: Inclusive complete maximum 34 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgGamepadData.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 34 bytes.
--- @brief Construct Ros2DrddsMsgGamepadData with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsMsgGamepadData value New mutable complete value; no ROS resource.
--- @see Ros2DrddsMsgGamepadData.encode
--- @field new fun(values?: table): Ros2DrddsMsgGamepadData
--- @brief Encode a complete Ros2DrddsMsgGamepadData value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsMsgGamepadData [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 34..34 bytes.
--- @see Ros2DrddsMsgGamepadData.decode
--- @field encode fun(value: Ros2DrddsMsgGamepadData): string
--- @brief Decode exactly one complete Ros2DrddsMsgGamepadData canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsMsgGamepadData value New complete value; failures raise Lua errors.
--- @see Ros2DrddsMsgGamepadData.encode
--- @field decode fun(bytes: string): Ros2DrddsMsgGamepadData
local Ros2DrddsMsgGamepadData = classes["Ros2DrddsMsgGamepadData"]

--- @class Ros2DrddsMsgImuDataValue
--- @brief Complete ROS2 drdds/msg/ImuDataValue value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field roll number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field pitch number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field yaw number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field omega_x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field omega_y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field omega_z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field acc_x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field acc_y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field acc_z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2DrddsMsgImuDataValue.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgImuDataValue.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsMsgImuDataValue.NATIVE_TYPE: Exact normalized native type name drdds/msg/ImuDataValue.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgImuDataValue.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/msg/ImuDataValue.
--- @brief Ros2DrddsMsgImuDataValue.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--- inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgImuDataValue.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsMsgImuDataValue.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--- type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgImuDataValue.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsMsgImuDataValue.MIN_WIRE_BYTES: Inclusive complete minimum 36 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgImuDataValue.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 36 bytes.
--- @brief Ros2DrddsMsgImuDataValue.MAX_WIRE_BYTES: Inclusive complete maximum 36 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgImuDataValue.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 36 bytes.
--- @brief Construct Ros2DrddsMsgImuDataValue with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsMsgImuDataValue value New mutable complete value; no ROS resource.
--- @see Ros2DrddsMsgImuDataValue.encode
--- @field new fun(values?: table): Ros2DrddsMsgImuDataValue
--- @brief Encode a complete Ros2DrddsMsgImuDataValue value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsMsgImuDataValue [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 36..36 bytes.
--- @see Ros2DrddsMsgImuDataValue.decode
--- @field encode fun(value: Ros2DrddsMsgImuDataValue): string
--- @brief Decode exactly one complete Ros2DrddsMsgImuDataValue canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsMsgImuDataValue value New complete value; failures raise Lua errors.
--- @see Ros2DrddsMsgImuDataValue.encode
--- @field decode fun(bytes: string): Ros2DrddsMsgImuDataValue
local Ros2DrddsMsgImuDataValue = classes["Ros2DrddsMsgImuDataValue"]

--- @class Ros2DrddsMsgImuData
--- @brief Complete ROS2 drdds/msg/ImuData value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested drdds/msg/MetaType value; no native fields are projected away.
--- @field data table Complete nested drdds/msg/ImuDataValue value; no native fields are projected away.
--- @brief Ros2DrddsMsgImuData.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgImuData.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsMsgImuData.NATIVE_TYPE: Exact normalized native type name drdds/msg/ImuData.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgImuData.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/msg/ImuData.
--- @brief Ros2DrddsMsgImuData.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--- compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgImuData.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsMsgImuData.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgImuData.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsMsgImuData.MIN_WIRE_BYTES: Inclusive complete minimum 52 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgImuData.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 52 bytes.
--- @brief Ros2DrddsMsgImuData.MAX_WIRE_BYTES: Inclusive complete maximum 52 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgImuData.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 52 bytes.
--- @brief Construct Ros2DrddsMsgImuData with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsMsgImuData value New mutable complete value; no ROS resource.
--- @see Ros2DrddsMsgImuData.encode
--- @field new fun(values?: table): Ros2DrddsMsgImuData
--- @brief Encode a complete Ros2DrddsMsgImuData value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsMsgImuData [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 52..52 bytes.
--- @see Ros2DrddsMsgImuData.decode
--- @field encode fun(value: Ros2DrddsMsgImuData): string
--- @brief Decode exactly one complete Ros2DrddsMsgImuData canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsMsgImuData value New complete value; failures raise Lua errors.
--- @see Ros2DrddsMsgImuData.encode
--- @field decode fun(bytes: string): Ros2DrddsMsgImuData
local Ros2DrddsMsgImuData = classes["Ros2DrddsMsgImuData"]

--- @class Ros2DrddsMsgJointCmdValue
--- @brief Complete ROS2 drdds/msg/JointCmdValue value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field name integer[] Exact uint8 range 0..255. At most 256 contiguous elements; holes and extra array keys
--- are rejected.
--- @field data_id integer Exact uint16 range 0..65535.
--- @field control_word integer Exact uint16 range 0..65535.
--- @field position number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field torque number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field velocity number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field kp number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field kd number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2DrddsMsgJointCmdValue.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointCmdValue.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsMsgJointCmdValue.NATIVE_TYPE: Exact normalized native type name drdds/msg/JointCmdValue.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointCmdValue.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/msg/JointCmdValue.
--- @brief Ros2DrddsMsgJointCmdValue.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--- inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointCmdValue.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsMsgJointCmdValue.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--- type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointCmdValue.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsMsgJointCmdValue.MIN_WIRE_BYTES: Inclusive complete minimum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointCmdValue.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 28 bytes.
--- @brief Ros2DrddsMsgJointCmdValue.MAX_WIRE_BYTES: Inclusive complete maximum 284 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointCmdValue.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 284 bytes.
--- @brief Construct Ros2DrddsMsgJointCmdValue with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsMsgJointCmdValue value New mutable complete value; no ROS resource.
--- @see Ros2DrddsMsgJointCmdValue.encode
--- @field new fun(values?: table): Ros2DrddsMsgJointCmdValue
--- @brief Encode a complete Ros2DrddsMsgJointCmdValue value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsMsgJointCmdValue [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 28..284 bytes.
--- @see Ros2DrddsMsgJointCmdValue.decode
--- @field encode fun(value: Ros2DrddsMsgJointCmdValue): string
--- @brief Decode exactly one complete Ros2DrddsMsgJointCmdValue canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsMsgJointCmdValue value New complete value; failures raise Lua errors.
--- @see Ros2DrddsMsgJointCmdValue.encode
--- @field decode fun(bytes: string): Ros2DrddsMsgJointCmdValue
local Ros2DrddsMsgJointCmdValue = classes["Ros2DrddsMsgJointCmdValue"]

--- @class Ros2DrddsMsgJointData
--- @brief Complete ROS2 drdds/msg/JointData value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field name integer[] Exact uint8 range 0..255. Exactly 4 contiguous elements; holes and extra array keys
--- are rejected.
--- @field data_id integer Exact uint16 range 0..65535.
--- @field status_word integer Exact uint16 range 0..65535.
--- @field position number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field torque number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field velocity number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field motion_temp number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field driver_temp number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2DrddsMsgJointData.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointData.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsMsgJointData.NATIVE_TYPE: Exact normalized native type name drdds/msg/JointData.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointData.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/msg/JointData.
--- @brief Ros2DrddsMsgJointData.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--- compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointData.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsMsgJointData.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--- agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointData.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsMsgJointData.MIN_WIRE_BYTES: Inclusive complete minimum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointData.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 28 bytes.
--- @brief Ros2DrddsMsgJointData.MAX_WIRE_BYTES: Inclusive complete maximum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointData.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 28 bytes.
--- @brief Construct Ros2DrddsMsgJointData with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsMsgJointData value New mutable complete value; no ROS resource.
--- @see Ros2DrddsMsgJointData.encode
--- @field new fun(values?: table): Ros2DrddsMsgJointData
--- @brief Encode a complete Ros2DrddsMsgJointData value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsMsgJointData [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 28..28 bytes.
--- @see Ros2DrddsMsgJointData.decode
--- @field encode fun(value: Ros2DrddsMsgJointData): string
--- @brief Decode exactly one complete Ros2DrddsMsgJointData canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsMsgJointData value New complete value; failures raise Lua errors.
--- @see Ros2DrddsMsgJointData.encode
--- @field decode fun(bytes: string): Ros2DrddsMsgJointData
local Ros2DrddsMsgJointData = classes["Ros2DrddsMsgJointData"]

--- @class Ros2DrddsMsgJointDataCmd
--- @brief Complete ROS2 drdds/msg/JointDataCmd value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field name integer[] Exact uint8 range 0..255. Exactly 4 contiguous elements; holes and extra array keys
--- are rejected.
--- @field data_id integer Exact uint16 range 0..65535.
--- @field control_word integer Exact uint16 range 0..65535.
--- @field position number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field torque number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field velocity number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field kp number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field kd number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2DrddsMsgJointDataCmd.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointDataCmd.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsMsgJointDataCmd.NATIVE_TYPE: Exact normalized native type name drdds/msg/JointDataCmd.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointDataCmd.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/msg/JointDataCmd.
--- @brief Ros2DrddsMsgJointDataCmd.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--- inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointDataCmd.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsMsgJointDataCmd.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--- type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointDataCmd.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsMsgJointDataCmd.MIN_WIRE_BYTES: Inclusive complete minimum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointDataCmd.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 28 bytes.
--- @brief Ros2DrddsMsgJointDataCmd.MAX_WIRE_BYTES: Inclusive complete maximum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointDataCmd.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 28 bytes.
--- @brief Construct Ros2DrddsMsgJointDataCmd with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsMsgJointDataCmd value New mutable complete value; no ROS resource.
--- @see Ros2DrddsMsgJointDataCmd.encode
--- @field new fun(values?: table): Ros2DrddsMsgJointDataCmd
--- @brief Encode a complete Ros2DrddsMsgJointDataCmd value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsMsgJointDataCmd [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 28..28 bytes.
--- @see Ros2DrddsMsgJointDataCmd.decode
--- @field encode fun(value: Ros2DrddsMsgJointDataCmd): string
--- @brief Decode exactly one complete Ros2DrddsMsgJointDataCmd canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsMsgJointDataCmd value New complete value; failures raise Lua errors.
--- @see Ros2DrddsMsgJointDataCmd.encode
--- @field decode fun(bytes: string): Ros2DrddsMsgJointDataCmd
local Ros2DrddsMsgJointDataCmd = classes["Ros2DrddsMsgJointDataCmd"]

--- @class Ros2DrddsMsgJointValue
--- @brief Complete ROS2 drdds/msg/JointValue value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field name integer[] Exact uint8 range 0..255. At most 256 contiguous elements; holes and extra array keys
--- are rejected.
--- @field data_id integer Exact uint16 range 0..65535.
--- @field status_word integer Exact uint16 range 0..65535.
--- @field position number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field torque number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field velocity number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field motion_temp number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field driver_temp number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2DrddsMsgJointValue.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointValue.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsMsgJointValue.NATIVE_TYPE: Exact normalized native type name drdds/msg/JointValue.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointValue.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/msg/JointValue.
--- @brief Ros2DrddsMsgJointValue.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--- inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointValue.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsMsgJointValue.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--- agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointValue.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsMsgJointValue.MIN_WIRE_BYTES: Inclusive complete minimum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointValue.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 28 bytes.
--- @brief Ros2DrddsMsgJointValue.MAX_WIRE_BYTES: Inclusive complete maximum 284 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointValue.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 284 bytes.
--- @brief Construct Ros2DrddsMsgJointValue with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsMsgJointValue value New mutable complete value; no ROS resource.
--- @see Ros2DrddsMsgJointValue.encode
--- @field new fun(values?: table): Ros2DrddsMsgJointValue
--- @brief Encode a complete Ros2DrddsMsgJointValue value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsMsgJointValue [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 28..284 bytes.
--- @see Ros2DrddsMsgJointValue.decode
--- @field encode fun(value: Ros2DrddsMsgJointValue): string
--- @brief Decode exactly one complete Ros2DrddsMsgJointValue canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsMsgJointValue value New complete value; failures raise Lua errors.
--- @see Ros2DrddsMsgJointValue.encode
--- @field decode fun(bytes: string): Ros2DrddsMsgJointValue
local Ros2DrddsMsgJointValue = classes["Ros2DrddsMsgJointValue"]

--- @class Ros2DrddsMsgJointsDataValue
--- @brief Complete ROS2 drdds/msg/JointsDataValue value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joints_data table[] Complete nested drdds/msg/JointData value; no native fields are projected away.
--- Exactly 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2DrddsMsgJointsDataValue.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsDataValue.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsMsgJointsDataValue.NATIVE_TYPE: Exact normalized native type name drdds/msg/JointsDataValue.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsDataValue.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/msg/JointsDataValue.
--- @brief Ros2DrddsMsgJointsDataValue.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--- inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsDataValue.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsMsgJointsDataValue.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--- type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsDataValue.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsMsgJointsDataValue.MIN_WIRE_BYTES: Inclusive complete minimum 448 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsDataValue.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 448 bytes.
--- @brief Ros2DrddsMsgJointsDataValue.MAX_WIRE_BYTES: Inclusive complete maximum 448 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsDataValue.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 448 bytes.
--- @brief Construct Ros2DrddsMsgJointsDataValue with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsMsgJointsDataValue value New mutable complete value; no ROS resource.
--- @see Ros2DrddsMsgJointsDataValue.encode
--- @field new fun(values?: table): Ros2DrddsMsgJointsDataValue
--- @brief Encode a complete Ros2DrddsMsgJointsDataValue value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsMsgJointsDataValue [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 448..448 bytes.
--- @see Ros2DrddsMsgJointsDataValue.decode
--- @field encode fun(value: Ros2DrddsMsgJointsDataValue): string
--- @brief Decode exactly one complete Ros2DrddsMsgJointsDataValue canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsMsgJointsDataValue value New complete value; failures raise Lua errors.
--- @see Ros2DrddsMsgJointsDataValue.encode
--- @field decode fun(bytes: string): Ros2DrddsMsgJointsDataValue
local Ros2DrddsMsgJointsDataValue = classes["Ros2DrddsMsgJointsDataValue"]

--- @class Ros2DrddsMsgJointsData
--- @brief Complete ROS2 drdds/msg/JointsData value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested drdds/msg/MetaType value; no native fields are projected away.
--- @field data table Complete nested drdds/msg/JointsDataValue value; no native fields are projected away.
--- @brief Ros2DrddsMsgJointsData.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsData.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsMsgJointsData.NATIVE_TYPE: Exact normalized native type name drdds/msg/JointsData.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsData.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/msg/JointsData.
--- @brief Ros2DrddsMsgJointsData.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--- inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsData.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsMsgJointsData.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--- agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsData.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsMsgJointsData.MIN_WIRE_BYTES: Inclusive complete minimum 464 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsData.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 464 bytes.
--- @brief Ros2DrddsMsgJointsData.MAX_WIRE_BYTES: Inclusive complete maximum 464 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsData.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 464 bytes.
--- @brief Construct Ros2DrddsMsgJointsData with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsMsgJointsData value New mutable complete value; no ROS resource.
--- @see Ros2DrddsMsgJointsData.encode
--- @field new fun(values?: table): Ros2DrddsMsgJointsData
--- @brief Encode a complete Ros2DrddsMsgJointsData value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsMsgJointsData [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 464..464 bytes.
--- @see Ros2DrddsMsgJointsData.decode
--- @field encode fun(value: Ros2DrddsMsgJointsData): string
--- @brief Decode exactly one complete Ros2DrddsMsgJointsData canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsMsgJointsData value New complete value; failures raise Lua errors.
--- @see Ros2DrddsMsgJointsData.encode
--- @field decode fun(bytes: string): Ros2DrddsMsgJointsData
local Ros2DrddsMsgJointsData = classes["Ros2DrddsMsgJointsData"]

--- @class Ros2DrddsMsgJointsDataCmdValue
--- @brief Complete ROS2 drdds/msg/JointsDataCmdValue value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joints_data table[] Complete nested drdds/msg/JointDataCmd value; no native fields are projected
--- away. Exactly 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2DrddsMsgJointsDataCmdValue.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsDataCmdValue.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsMsgJointsDataCmdValue.NATIVE_TYPE: Exact normalized native type name drdds/msg/JointsDataCmdValue.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsDataCmdValue.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/msg/JointsDataCmdValue.
--- @brief Ros2DrddsMsgJointsDataCmdValue.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--- inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsDataCmdValue.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsMsgJointsDataCmdValue.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--- native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsDataCmdValue.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsMsgJointsDataCmdValue.MIN_WIRE_BYTES: Inclusive complete minimum 448 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsDataCmdValue.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 448 bytes.
--- @brief Ros2DrddsMsgJointsDataCmdValue.MAX_WIRE_BYTES: Inclusive complete maximum 448 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsDataCmdValue.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 448 bytes.
--- @brief Construct Ros2DrddsMsgJointsDataCmdValue with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsMsgJointsDataCmdValue value New mutable complete value; no ROS resource.
--- @see Ros2DrddsMsgJointsDataCmdValue.encode
--- @field new fun(values?: table): Ros2DrddsMsgJointsDataCmdValue
--- @brief Encode a complete Ros2DrddsMsgJointsDataCmdValue value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsMsgJointsDataCmdValue [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 448..448 bytes.
--- @see Ros2DrddsMsgJointsDataCmdValue.decode
--- @field encode fun(value: Ros2DrddsMsgJointsDataCmdValue): string
--- @brief Decode exactly one complete Ros2DrddsMsgJointsDataCmdValue canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsMsgJointsDataCmdValue value New complete value; failures raise Lua errors.
--- @see Ros2DrddsMsgJointsDataCmdValue.encode
--- @field decode fun(bytes: string): Ros2DrddsMsgJointsDataCmdValue
local Ros2DrddsMsgJointsDataCmdValue = classes["Ros2DrddsMsgJointsDataCmdValue"]

--- @class Ros2DrddsMsgJointsDataCmd
--- @brief Complete ROS2 drdds/msg/JointsDataCmd value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested drdds/msg/MetaType value; no native fields are projected away.
--- @field data table Complete nested drdds/msg/JointsDataCmdValue value; no native fields are projected away.
--- @brief Ros2DrddsMsgJointsDataCmd.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsDataCmd.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsMsgJointsDataCmd.NATIVE_TYPE: Exact normalized native type name drdds/msg/JointsDataCmd.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsDataCmd.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/msg/JointsDataCmd.
--- @brief Ros2DrddsMsgJointsDataCmd.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--- inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsDataCmd.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsMsgJointsDataCmd.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--- type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsDataCmd.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsMsgJointsDataCmd.MIN_WIRE_BYTES: Inclusive complete minimum 464 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsDataCmd.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 464 bytes.
--- @brief Ros2DrddsMsgJointsDataCmd.MAX_WIRE_BYTES: Inclusive complete maximum 464 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgJointsDataCmd.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 464 bytes.
--- @brief Construct Ros2DrddsMsgJointsDataCmd with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsMsgJointsDataCmd value New mutable complete value; no ROS resource.
--- @see Ros2DrddsMsgJointsDataCmd.encode
--- @field new fun(values?: table): Ros2DrddsMsgJointsDataCmd
--- @brief Encode a complete Ros2DrddsMsgJointsDataCmd value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsMsgJointsDataCmd [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 464..464 bytes.
--- @see Ros2DrddsMsgJointsDataCmd.decode
--- @field encode fun(value: Ros2DrddsMsgJointsDataCmd): string
--- @brief Decode exactly one complete Ros2DrddsMsgJointsDataCmd canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsMsgJointsDataCmd value New complete value; failures raise Lua errors.
--- @see Ros2DrddsMsgJointsDataCmd.encode
--- @field decode fun(bytes: string): Ros2DrddsMsgJointsDataCmd
local Ros2DrddsMsgJointsDataCmd = classes["Ros2DrddsMsgJointsDataCmd"]

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

--- @class Ros2Geometry_msgsMsgVector3
--- @brief Complete ROS2 geometry_msgs/msg/Vector3 value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float64.
--- @field y number Finite IEEE float64.
--- @field z number Finite IEEE float64.
--- @brief Ros2Geometry_msgsMsgVector3.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgVector3.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Geometry_msgsMsgVector3.NATIVE_TYPE: Exact normalized native type name geometry_msgs/msg/Vector3.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgVector3.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/msg/Vector3.
--- @brief Ros2Geometry_msgsMsgVector3.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--- inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgVector3.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Geometry_msgsMsgVector3.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--- type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgVector3.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Geometry_msgsMsgVector3.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgVector3.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Geometry_msgsMsgVector3.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgVector3.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2Geometry_msgsMsgVector3 with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Geometry_msgsMsgVector3 value New mutable complete value; no ROS resource.
--- @see Ros2Geometry_msgsMsgVector3.encode
--- @field new fun(values?: table): Ros2Geometry_msgsMsgVector3
--- @brief Encode a complete Ros2Geometry_msgsMsgVector3 value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Geometry_msgsMsgVector3 [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2Geometry_msgsMsgVector3.decode
--- @field encode fun(value: Ros2Geometry_msgsMsgVector3): string
--- @brief Decode exactly one complete Ros2Geometry_msgsMsgVector3 canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Geometry_msgsMsgVector3 value New complete value; failures raise Lua errors.
--- @see Ros2Geometry_msgsMsgVector3.encode
--- @field decode fun(bytes: string): Ros2Geometry_msgsMsgVector3
local Ros2Geometry_msgsMsgVector3 = classes["Ros2Geometry_msgsMsgVector3"]

--- @class Ros2Geometry_msgsMsgTwist
--- @brief Complete ROS2 geometry_msgs/msg/Twist value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field linear table Complete nested geometry_msgs/msg/Vector3 value; no native fields are projected away.
--- @field angular table Complete nested geometry_msgs/msg/Vector3 value; no native fields are projected away.
--- @brief Ros2Geometry_msgsMsgTwist.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTwist.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Geometry_msgsMsgTwist.NATIVE_TYPE: Exact normalized native type name geometry_msgs/msg/Twist.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTwist.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/msg/Twist.
--- @brief Ros2Geometry_msgsMsgTwist.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--- inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTwist.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Geometry_msgsMsgTwist.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--- type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTwist.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Geometry_msgsMsgTwist.MIN_WIRE_BYTES: Inclusive complete minimum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTwist.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 48 bytes.
--- @brief Ros2Geometry_msgsMsgTwist.MAX_WIRE_BYTES: Inclusive complete maximum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTwist.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 48 bytes.
--- @brief Construct Ros2Geometry_msgsMsgTwist with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Geometry_msgsMsgTwist value New mutable complete value; no ROS resource.
--- @see Ros2Geometry_msgsMsgTwist.encode
--- @field new fun(values?: table): Ros2Geometry_msgsMsgTwist
--- @brief Encode a complete Ros2Geometry_msgsMsgTwist value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Geometry_msgsMsgTwist [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 48..48 bytes.
--- @see Ros2Geometry_msgsMsgTwist.decode
--- @field encode fun(value: Ros2Geometry_msgsMsgTwist): string
--- @brief Decode exactly one complete Ros2Geometry_msgsMsgTwist canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Geometry_msgsMsgTwist value New complete value; failures raise Lua errors.
--- @see Ros2Geometry_msgsMsgTwist.encode
--- @field decode fun(bytes: string): Ros2Geometry_msgsMsgTwist
local Ros2Geometry_msgsMsgTwist = classes["Ros2Geometry_msgsMsgTwist"]

--- @class Ros2Sensor_msgsMsgJointState
--- @brief Complete ROS2 sensor_msgs/msg/JointState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field name string[] Strict UTF-8 without NUL; length0..64 bytes. At most 64 contiguous elements; holes and
--- extra array keys are rejected. Empty is permitted; all nonempty JointState arrays must have equal length.
--- @field position number[] Finite IEEE float64. At most 64 contiguous elements; holes and extra array keys are
--- rejected. Empty is permitted; all nonempty JointState arrays must have equal length.
--- @field velocity number[] Finite IEEE float64. At most 64 contiguous elements; holes and extra array keys are
--- rejected. Empty is permitted; all nonempty JointState arrays must have equal length.
--- @field effort number[] Finite IEEE float64. At most 64 contiguous elements; holes and extra array keys are
--- rejected. Empty is permitted; all nonempty JointState arrays must have equal length.
--- @brief Ros2Sensor_msgsMsgJointState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Sensor_msgsMsgJointState.NATIVE_TYPE: Exact normalized native type name sensor_msgs/msg/JointState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field NATIVE_TYPE string Exact normalized native type name sensor_msgs/msg/JointState.
--- @brief Ros2Sensor_msgsMsgJointState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--- inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Sensor_msgsMsgJointState.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--- native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Sensor_msgsMsgJointState.MIN_WIRE_BYTES: Inclusive complete minimum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 28 bytes.
--- @brief Ros2Sensor_msgsMsgJointState.MAX_WIRE_BYTES: Inclusive complete maximum 6044 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 6044 bytes.
--- @brief Construct Ros2Sensor_msgsMsgJointState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Sensor_msgsMsgJointState value New mutable complete value; no ROS resource.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field new fun(values?: table): Ros2Sensor_msgsMsgJointState
--- @brief Encode a complete Ros2Sensor_msgsMsgJointState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Sensor_msgsMsgJointState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 28..6044 bytes.
--- @see Ros2Sensor_msgsMsgJointState.decode
--- @field encode fun(value: Ros2Sensor_msgsMsgJointState): string
--- @brief Decode exactly one complete Ros2Sensor_msgsMsgJointState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Sensor_msgsMsgJointState value New complete value; failures raise Lua errors.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field decode fun(bytes: string): Ros2Sensor_msgsMsgJointState
local Ros2Sensor_msgsMsgJointState = classes["Ros2Sensor_msgsMsgJointState"]

--- @class Ros2DrddsMsgRobotStatus
--- @brief Complete ROS2 drdds/msg/RobotStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field robot string Strict UTF-8 without NUL; length0..128 bytes.
--- @field command_source string Strict UTF-8 without NUL; length0..128 bytes.
--- @field current_state string Strict UTF-8 without NUL; length0..128 bytes.
--- @field current_state_id integer Exact uint8 range 0..255.
--- @field requested_state string Strict UTF-8 without NUL; length0..128 bytes.
--- @field requested_state_id integer Exact uint8 range 0..255.
--- @field safety_mode integer Exact uint8 range 0..255.
--- @field command table Complete nested geometry_msgs/msg/Twist value; no native fields are projected away.
--- @field command_timed_out boolean Exact boolean; encoded as one byte0/1.
--- @field rejected_commands string Exactly eight little-endian bytes; never a Lua number.
--- @field command_updates string Exactly eight little-endian bytes; never a Lua number.
--- @field joint_stamp number Finite IEEE float64.
--- @field imu_stamp number Finite IEEE float64.
--- @field telemetry_fresh boolean Exact boolean; encoded as one byte0/1.
--- @field joints table Complete nested sensor_msgs/msg/JointState value; no native fields are projected away.
--- @field base_rpy table Complete nested geometry_msgs/msg/Vector3 value; no native fields are projected away.
--- @field base_angular_velocity table Complete nested geometry_msgs/msg/Vector3 value; no native fields are
--- projected away.
--- @brief Ros2DrddsMsgRobotStatus.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgRobotStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsMsgRobotStatus.NATIVE_TYPE: Exact normalized native type name drdds/msg/RobotStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgRobotStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/msg/RobotStatus.
--- @brief Ros2DrddsMsgRobotStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--- inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgRobotStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsMsgRobotStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--- type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgRobotStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsMsgRobotStatus.MIN_WIRE_BYTES: Inclusive complete minimum 189 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgRobotStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 189 bytes.
--- @brief Ros2DrddsMsgRobotStatus.MAX_WIRE_BYTES: Inclusive complete maximum 6845 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgRobotStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 6845 bytes.
--- @brief Construct Ros2DrddsMsgRobotStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsMsgRobotStatus value New mutable complete value; no ROS resource.
--- @see Ros2DrddsMsgRobotStatus.encode
--- @field new fun(values?: table): Ros2DrddsMsgRobotStatus
--- @brief Encode a complete Ros2DrddsMsgRobotStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsMsgRobotStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 189..6845 bytes.
--- @see Ros2DrddsMsgRobotStatus.decode
--- @field encode fun(value: Ros2DrddsMsgRobotStatus): string
--- @brief Decode exactly one complete Ros2DrddsMsgRobotStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsMsgRobotStatus value New complete value; failures raise Lua errors.
--- @see Ros2DrddsMsgRobotStatus.encode
--- @field decode fun(bytes: string): Ros2DrddsMsgRobotStatus
local Ros2DrddsMsgRobotStatus = classes["Ros2DrddsMsgRobotStatus"]

--- @class Ros2DrddsMsgStdMsgFloat32
--- @brief Complete ROS2 drdds/msg/StdMsgFloat32 value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field value number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2DrddsMsgStdMsgFloat32.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgStdMsgFloat32.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsMsgStdMsgFloat32.NATIVE_TYPE: Exact normalized native type name drdds/msg/StdMsgFloat32.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgStdMsgFloat32.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/msg/StdMsgFloat32.
--- @brief Ros2DrddsMsgStdMsgFloat32.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--- inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgStdMsgFloat32.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsMsgStdMsgFloat32.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--- type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgStdMsgFloat32.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsMsgStdMsgFloat32.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgStdMsgFloat32.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2DrddsMsgStdMsgFloat32.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgStdMsgFloat32.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2DrddsMsgStdMsgFloat32 with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsMsgStdMsgFloat32 value New mutable complete value; no ROS resource.
--- @see Ros2DrddsMsgStdMsgFloat32.encode
--- @field new fun(values?: table): Ros2DrddsMsgStdMsgFloat32
--- @brief Encode a complete Ros2DrddsMsgStdMsgFloat32 value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsMsgStdMsgFloat32 [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2DrddsMsgStdMsgFloat32.decode
--- @field encode fun(value: Ros2DrddsMsgStdMsgFloat32): string
--- @brief Decode exactly one complete Ros2DrddsMsgStdMsgFloat32 canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsMsgStdMsgFloat32 value New complete value; failures raise Lua errors.
--- @see Ros2DrddsMsgStdMsgFloat32.encode
--- @field decode fun(bytes: string): Ros2DrddsMsgStdMsgFloat32
local Ros2DrddsMsgStdMsgFloat32 = classes["Ros2DrddsMsgStdMsgFloat32"]

--- @class Ros2DrddsMsgStdMsgInt32
--- @brief Complete ROS2 drdds/msg/StdMsgInt32 value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field value integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2DrddsMsgStdMsgInt32.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgStdMsgInt32.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsMsgStdMsgInt32.NATIVE_TYPE: Exact normalized native type name drdds/msg/StdMsgInt32.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgStdMsgInt32.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/msg/StdMsgInt32.
--- @brief Ros2DrddsMsgStdMsgInt32.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--- inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgStdMsgInt32.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsMsgStdMsgInt32.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--- type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgStdMsgInt32.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsMsgStdMsgInt32.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgStdMsgInt32.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2DrddsMsgStdMsgInt32.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgStdMsgInt32.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2DrddsMsgStdMsgInt32 with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsMsgStdMsgInt32 value New mutable complete value; no ROS resource.
--- @see Ros2DrddsMsgStdMsgInt32.encode
--- @field new fun(values?: table): Ros2DrddsMsgStdMsgInt32
--- @brief Encode a complete Ros2DrddsMsgStdMsgInt32 value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsMsgStdMsgInt32 [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2DrddsMsgStdMsgInt32.decode
--- @field encode fun(value: Ros2DrddsMsgStdMsgInt32): string
--- @brief Decode exactly one complete Ros2DrddsMsgStdMsgInt32 canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsMsgStdMsgInt32 value New complete value; failures raise Lua errors.
--- @see Ros2DrddsMsgStdMsgInt32.encode
--- @field decode fun(bytes: string): Ros2DrddsMsgStdMsgInt32
local Ros2DrddsMsgStdMsgInt32 = classes["Ros2DrddsMsgStdMsgInt32"]

--- @class Ros2DrddsMsgStdStatus
--- @brief Complete ROS2 drdds/msg/StdStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field state integer Exact int32 range -2147483648..2147483647.
--- @field error_code integer Exact uint32 range 0..4294967295.
--- @brief Ros2DrddsMsgStdStatus.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgStdStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsMsgStdStatus.NATIVE_TYPE: Exact normalized native type name drdds/msg/StdStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgStdStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/msg/StdStatus.
--- @brief Ros2DrddsMsgStdStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--- compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgStdStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsMsgStdStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--- agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgStdStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsMsgStdStatus.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgStdStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2DrddsMsgStdStatus.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgStdStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2DrddsMsgStdStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsMsgStdStatus value New mutable complete value; no ROS resource.
--- @see Ros2DrddsMsgStdStatus.encode
--- @field new fun(values?: table): Ros2DrddsMsgStdStatus
--- @brief Encode a complete Ros2DrddsMsgStdStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsMsgStdStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2DrddsMsgStdStatus.decode
--- @field encode fun(value: Ros2DrddsMsgStdStatus): string
--- @brief Decode exactly one complete Ros2DrddsMsgStdStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsMsgStdStatus value New complete value; failures raise Lua errors.
--- @see Ros2DrddsMsgStdStatus.encode
--- @field decode fun(bytes: string): Ros2DrddsMsgStdStatus
local Ros2DrddsMsgStdStatus = classes["Ros2DrddsMsgStdStatus"]

--- @class Ros2DrddsMsgSteerValue
--- @brief Complete ROS2 drdds/msg/SteerValue value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field roll number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field pitch number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field yaw number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2DrddsMsgSteerValue.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgSteerValue.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsMsgSteerValue.NATIVE_TYPE: Exact normalized native type name drdds/msg/SteerValue.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgSteerValue.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/msg/SteerValue.
--- @brief Ros2DrddsMsgSteerValue.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--- inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgSteerValue.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsMsgSteerValue.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--- agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgSteerValue.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsMsgSteerValue.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgSteerValue.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2DrddsMsgSteerValue.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgSteerValue.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2DrddsMsgSteerValue with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsMsgSteerValue value New mutable complete value; no ROS resource.
--- @see Ros2DrddsMsgSteerValue.encode
--- @field new fun(values?: table): Ros2DrddsMsgSteerValue
--- @brief Encode a complete Ros2DrddsMsgSteerValue value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsMsgSteerValue [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2DrddsMsgSteerValue.decode
--- @field encode fun(value: Ros2DrddsMsgSteerValue): string
--- @brief Decode exactly one complete Ros2DrddsMsgSteerValue canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsMsgSteerValue value New complete value; failures raise Lua errors.
--- @see Ros2DrddsMsgSteerValue.encode
--- @field decode fun(bytes: string): Ros2DrddsMsgSteerValue
local Ros2DrddsMsgSteerValue = classes["Ros2DrddsMsgSteerValue"]

--- @class Ros2DrddsMsgSteer
--- @brief Complete ROS2 drdds/msg/Steer value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested drdds/msg/MetaType value; no native fields are projected away.
--- @field data table Complete nested drdds/msg/SteerValue value; no native fields are projected away.
--- @brief Ros2DrddsMsgSteer.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgSteer.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsMsgSteer.NATIVE_TYPE: Exact normalized native type name drdds/msg/Steer.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgSteer.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/msg/Steer.
--- @brief Ros2DrddsMsgSteer.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--- compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgSteer.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsMsgSteer.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgSteer.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsMsgSteer.MIN_WIRE_BYTES: Inclusive complete minimum 40 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgSteer.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 40 bytes.
--- @brief Ros2DrddsMsgSteer.MAX_WIRE_BYTES: Inclusive complete maximum 40 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsMsgSteer.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 40 bytes.
--- @brief Construct Ros2DrddsMsgSteer with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsMsgSteer value New mutable complete value; no ROS resource.
--- @see Ros2DrddsMsgSteer.encode
--- @field new fun(values?: table): Ros2DrddsMsgSteer
--- @brief Encode a complete Ros2DrddsMsgSteer value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsMsgSteer [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 40..40 bytes.
--- @see Ros2DrddsMsgSteer.decode
--- @field encode fun(value: Ros2DrddsMsgSteer): string
--- @brief Decode exactly one complete Ros2DrddsMsgSteer canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsMsgSteer value New complete value; failures raise Lua errors.
--- @see Ros2DrddsMsgSteer.encode
--- @field decode fun(bytes: string): Ros2DrddsMsgSteer
local Ros2DrddsMsgSteer = classes["Ros2DrddsMsgSteer"]

--- @class Ros2DrddsSrvStdSrvInt32_Request
--- @brief Complete ROS2 drdds/srv/StdSrvInt32_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field command integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2DrddsSrvStdSrvInt32_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsSrvStdSrvInt32_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsSrvStdSrvInt32_Request.NATIVE_TYPE: Exact normalized native type name drdds/srv/StdSrvInt32_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsSrvStdSrvInt32_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/srv/StdSrvInt32_Request.
--- @brief Ros2DrddsSrvStdSrvInt32_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--- not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsSrvStdSrvInt32_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsSrvStdSrvInt32_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--- native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsSrvStdSrvInt32_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsSrvStdSrvInt32_Request.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsSrvStdSrvInt32_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2DrddsSrvStdSrvInt32_Request.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsSrvStdSrvInt32_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2DrddsSrvStdSrvInt32_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsSrvStdSrvInt32_Request value New mutable complete value; no ROS resource.
--- @see Ros2DrddsSrvStdSrvInt32_Request.encode
--- @field new fun(values?: table): Ros2DrddsSrvStdSrvInt32_Request
--- @brief Encode a complete Ros2DrddsSrvStdSrvInt32_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsSrvStdSrvInt32_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2DrddsSrvStdSrvInt32_Request.decode
--- @field encode fun(value: Ros2DrddsSrvStdSrvInt32_Request): string
--- @brief Decode exactly one complete Ros2DrddsSrvStdSrvInt32_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsSrvStdSrvInt32_Request value New complete value; failures raise Lua errors.
--- @see Ros2DrddsSrvStdSrvInt32_Request.encode
--- @field decode fun(bytes: string): Ros2DrddsSrvStdSrvInt32_Request
local Ros2DrddsSrvStdSrvInt32_Request = classes["Ros2DrddsSrvStdSrvInt32_Request"]

--- @class Ros2DrddsSrvStdSrvInt32_Response
--- @brief Complete ROS2 drdds/srv/StdSrvInt32_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2DrddsSrvStdSrvInt32_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsSrvStdSrvInt32_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2DrddsSrvStdSrvInt32_Response.NATIVE_TYPE: Exact normalized native type name
--- drdds/srv/StdSrvInt32_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsSrvStdSrvInt32_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name drdds/srv/StdSrvInt32_Response.
--- @brief Ros2DrddsSrvStdSrvInt32_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--- not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsSrvStdSrvInt32_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2DrddsSrvStdSrvInt32_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--- native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsSrvStdSrvInt32_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2DrddsSrvStdSrvInt32_Response.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsSrvStdSrvInt32_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2DrddsSrvStdSrvInt32_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2DrddsSrvStdSrvInt32_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2DrddsSrvStdSrvInt32_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2DrddsSrvStdSrvInt32_Response value New mutable complete value; no ROS resource.
--- @see Ros2DrddsSrvStdSrvInt32_Response.encode
--- @field new fun(values?: table): Ros2DrddsSrvStdSrvInt32_Response
--- @brief Encode a complete Ros2DrddsSrvStdSrvInt32_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2DrddsSrvStdSrvInt32_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2DrddsSrvStdSrvInt32_Response.decode
--- @field encode fun(value: Ros2DrddsSrvStdSrvInt32_Response): string
--- @brief Decode exactly one complete Ros2DrddsSrvStdSrvInt32_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2DrddsSrvStdSrvInt32_Response value New complete value; failures raise Lua errors.
--- @see Ros2DrddsSrvStdSrvInt32_Response.encode
--- @field decode fun(bytes: string): Ros2DrddsSrvStdSrvInt32_Response
local Ros2DrddsSrvStdSrvInt32_Response = classes["Ros2DrddsSrvStdSrvInt32_Response"]

return classes, by_name
