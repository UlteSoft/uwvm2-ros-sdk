--- @file records.lua
--- @brief Preserve the complete original elephant/humble canonical value domain.
--- @details The selected domain contains 88 complete record/components and 280 original fields. Declared
--- scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
--- Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
--- create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
--- does not qualify a frontend, target ABI or native ROS transport.
--- @see The platform's localized language guide and complete API-CATALOG.md.
--- @brief Complete source-derived canonical Lua value classes.
--- @details Synchronous local values only; Lua5.4 with signed64-bit integers.
--- @see roswasm/wire.lua
local wire = require("roswasm.wire")
local schemas = {
    {
        ["symbol"] = "Ros2Mecharm_interfacesMsgMecharmAngles",
        ["ros_version"] = 2,
        ["native_type"] = "mecharm_interfaces/msg/MecharmAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_37d12e0fc3b7bbb50bdcee0ca624a5c637f9554f3c64d640f538aeda57417331",
        ["minimum"] = 24,
        ["maximum"] = 24,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_5",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_6",
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
        ["symbol"] = "Ros2Mecharm_interfacesMsgMecharmCoords",
        ["ros_version"] = 2,
        ["native_type"] = "mecharm_interfaces/msg/MecharmCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e1bb96b1908c796e2a89eb4dd2402a6cc02bcc5077c52268bb378a52dd3029ed",
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
                ["name"] = "rz",
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
        ["symbol"] = "Ros2Mecharm_interfacesMsgMecharmGripperStatus",
        ["ros_version"] = 2,
        ["native_type"] = "mecharm_interfaces/msg/MecharmGripperStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2123b61d7b9ec218ee074473c26e5ec82fde818f40796047fc369cb84516e046",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "status",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mecharm_interfacesMsgMecharmPumpStatus",
        ["ros_version"] = 2,
        ["native_type"] = "mecharm_interfaces/msg/MecharmPumpStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4d44c84c1fdd3f4db92d9975545348bfd727320e63c9fbfde5adf0b81ca04add",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "pin2",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mecharm_interfacesMsgMecharmSetAngles",
        ["ros_version"] = 2,
        ["native_type"] = "mecharm_interfaces/msg/MecharmSetAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_54b634e4c5d0bc9fdf04a98d31816e24d3a9c5eb497bb38fb16e2de593cf81f5",
        ["minimum"] = 25,
        ["maximum"] = 25,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_5",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_6",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mecharm_interfacesMsgMecharmSetCoords",
        ["ros_version"] = 2,
        ["native_type"] = "mecharm_interfaces/msg/MecharmSetCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_44944ee22cd4254167083cfdcd7377ee2f59dbe27414932c980670a471a6e7c2",
        ["minimum"] = 26,
        ["maximum"] = 26,
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
                ["name"] = "rz",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "model",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mecharm_interfacesSrvGetAngles_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mecharm_interfaces/srv/GetAngles_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_95b1d7786c03c6fec98fec0706088481fe9c7aa48c9f33f4325031d0437d97df",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Mecharm_interfacesSrvGetAngles_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mecharm_interfaces/srv/GetAngles_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b1a035847ac7a888053ba8de7494abb6d2cdc01f61e4d0a51cb3ef6f479adf61",
        ["minimum"] = 24,
        ["maximum"] = 24,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_5",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_6",
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
        ["symbol"] = "Ros2Mecharm_interfacesSrvGetCoords_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mecharm_interfaces/srv/GetCoords_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_353827e7125cfa6c829f1138cc33901099a26cf73a8d045cf806b427994ccef1",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Mecharm_interfacesSrvGetCoords_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mecharm_interfaces/srv/GetCoords_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f7fcb8c4fdb47c06e93a8f67613490f7ab0ef2af7efb02092874722670b36c75",
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
                ["name"] = "rz",
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
        ["symbol"] = "Ros2Mecharm_interfacesSrvGripperStatus_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mecharm_interfaces/srv/GripperStatus_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_044bf47303f5da0d0e17e795b8567b714d55680e8144c8e2e71ff7032859dfbb",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "status",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mecharm_interfacesSrvGripperStatus_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mecharm_interfaces/srv/GripperStatus_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5aeee3c79bb6ebe4a4cb77f54552e97dcc155c65151a5965761a360d41acbea3",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "flag",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mecharm_interfacesSrvPumpStatus_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mecharm_interfaces/srv/PumpStatus_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f80774682b7b1d447ff2f8dd7f6ac2f917dd4f71ccd3b1685a57b579fa41d6b9",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "pin2",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mecharm_interfacesSrvPumpStatus_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mecharm_interfaces/srv/PumpStatus_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_935c0e2aaca3f1e8aad8e4487484292b3d30ccdff180a9aaa50f454f75ecff1b",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "flag",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mecharm_interfacesSrvSetAngles_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mecharm_interfaces/srv/SetAngles_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_86897875ef9a609098bc1eabba63aec7d960de380db98370e7a67626b2253eeb",
        ["minimum"] = 25,
        ["maximum"] = 25,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_5",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_6",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mecharm_interfacesSrvSetAngles_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mecharm_interfaces/srv/SetAngles_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4782fe6a137dee35bf39d863be0aea118f61dcef092c11b013c44c6f4c129620",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "flag",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mecharm_interfacesSrvSetCoords_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mecharm_interfaces/srv/SetCoords_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a0daefe14076b73f1a64924ffc15a6b9647abe1b1887377e642f41b1a7920916",
        ["minimum"] = 26,
        ["maximum"] = 26,
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
                ["name"] = "rz",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "model",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mecharm_interfacesSrvSetCoords_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mecharm_interfaces/srv/SetCoords_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_43d02cfe61b6fb08f035e1f8ea78496cdcb488ed4c916f528415dce4ab810b7f",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "flag",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mycobot_interfacesMsgMycobotAngles",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_interfaces/msg/MycobotAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_38f099339ed5ee9fe56a5b44c3f0849e2ff7ff721b2a95b5cf49e3b92f6a9d82",
        ["minimum"] = 24,
        ["maximum"] = 24,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_5",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_6",
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
        ["symbol"] = "Ros2Mycobot_interfacesMsgMycobotCoords",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_interfaces/msg/MycobotCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8d9606c561db7680e816f5a19fd148c374f271acee8b261f7d060f370e0399d7",
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
                ["name"] = "rz",
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
        ["symbol"] = "Ros2Mycobot_interfacesMsgMycobotGripperStatus",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_interfaces/msg/MycobotGripperStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4dc3ab413af3da01e26a3289ef9e5ef39488d00483631d701b4d617d9c9ba33d",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "status",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mycobot_interfacesMsgMycobotPumpStatus",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_interfaces/msg/MycobotPumpStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_860004dc3975ab44b5a1b0a77a9ff01ab58bfc71d7142d842d3bf9c636365e58",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "pin2",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mycobot_interfacesMsgMycobotSetAngles",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_interfaces/msg/MycobotSetAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_798576c5f0b03e46e5cc5d2edf81bc7042042482ef574643ca136621346d731e",
        ["minimum"] = 25,
        ["maximum"] = 25,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_5",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_6",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mycobot_interfacesMsgMycobotSetCoords",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_interfaces/msg/MycobotSetCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_462b7629172037a6959d08984896980c8c07ae5b6364c6d848b172dea23cab49",
        ["minimum"] = 26,
        ["maximum"] = 26,
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
                ["name"] = "rz",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "model",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mycobot_interfacesSrvGetAngles_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_interfaces/srv/GetAngles_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ea433bdb6e3cb77923720a56bec24aaec62c88480248a4ed425370092474d38e",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Mycobot_interfacesSrvGetAngles_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_interfaces/srv/GetAngles_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_14d6e2d8a6f7234719fae06d8807c651965387e252160df555ede0a070123b8a",
        ["minimum"] = 24,
        ["maximum"] = 24,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_5",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_6",
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
        ["symbol"] = "Ros2Mycobot_interfacesSrvGetCoords_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_interfaces/srv/GetCoords_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_31ef03eefc143e9d040572e378a5803f44f68bac6d03fbb44ca27f87fb5fb076",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Mycobot_interfacesSrvGetCoords_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_interfaces/srv/GetCoords_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c9886b5cc5f3c48116a1c884f75ab4af49be46e2c0476ffc3aa8167ff96f7787",
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
                ["name"] = "rz",
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
        ["symbol"] = "Ros2Mycobot_interfacesSrvGripperStatus_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_interfaces/srv/GripperStatus_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6c5ae66e66f12834b7d623e07a5b3ef2b8127cd9cd83cb36d6793a68d921fcd5",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "status",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mycobot_interfacesSrvGripperStatus_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_interfaces/srv/GripperStatus_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_530f1e1acaa8cda6b43f8a8c0a38f5376eaebce3e99f7fb194a28143bed2d1ab",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "flag",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mycobot_interfacesSrvPumpStatus_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_interfaces/srv/PumpStatus_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_50b7fa285b93dd9e6b3b0eafda0afeb5911ab6e3b79d58f03f1cf1f76e732cd0",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "pin2",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mycobot_interfacesSrvPumpStatus_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_interfaces/srv/PumpStatus_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b347313e1d4430f4e78a72fb8c35d53a39d1d391290373f84f1f8b2b44375eb0",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "flag",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mycobot_interfacesSrvSetAngles_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_interfaces/srv/SetAngles_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a06efd8b6af878d55c26fda8a7177a0b6c8b687f7e1b9f2e17e2ecd19c440310",
        ["minimum"] = 25,
        ["maximum"] = 25,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_5",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_6",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mycobot_interfacesSrvSetAngles_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_interfaces/srv/SetAngles_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_af4daae72e9ec28c8848b76b556c9387e65ba9698d8f0f6e5ba17522472ab665",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "flag",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mycobot_interfacesSrvSetCoords_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_interfaces/srv/SetCoords_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_76a98d5db6f98255046f13855dc7468049894805d83e3d3a7fbdaace40292213",
        ["minimum"] = 26,
        ["maximum"] = 26,
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
                ["name"] = "rz",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "model",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mycobot_interfacesSrvSetCoords_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_interfaces/srv/SetCoords_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_75e3ae0e6db60a275b08e450c420969aa1ee05d0f34864e8fb6535d2d13613b9",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "flag",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mycobot_pro450_interfacesMsgMycobotAngles",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_pro450_interfaces/msg/MycobotAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2351398be27155ac63b8a3d15ffd0d3088dd7cf284182a9b494791b7780aa6da",
        ["minimum"] = 24,
        ["maximum"] = 24,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_5",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_6",
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
        ["symbol"] = "Ros2Mycobot_pro450_interfacesMsgMycobotCoords",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_pro450_interfaces/msg/MycobotCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b8513545b0975757c6b7f756a5cedfe8aa0c5d28d0e573adfde001b452e923de",
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
                ["name"] = "rz",
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
        ["symbol"] = "Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_pro450_interfaces/msg/MycobotGripperStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1d097932f2e6b9b4e73ff838b5223b585b230e4edc5c229b310eb00404f6e784",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "status",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_pro450_interfaces/msg/MycobotSetAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_23d208d7fa8f7b7488be7c7db487698db4b227ef65e99c55d996901d27c3e591",
        ["minimum"] = 25,
        ["maximum"] = 25,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_5",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_6",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_pro450_interfaces/msg/MycobotSetCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_60f40a2f6a577e5785fd69e0cbe9128b301aeaec6b70fd678c71e7f9a5426cea",
        ["minimum"] = 25,
        ["maximum"] = 25,
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
                ["name"] = "rz",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mycobot_pro450_interfacesSrvGetAngles_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_pro450_interfaces/srv/GetAngles_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d2d8197675b9dadd50ae1a22b165a84e2e76b293b28cc70bec211225c60626c4",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Mycobot_pro450_interfacesSrvGetAngles_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_pro450_interfaces/srv/GetAngles_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_13056bbe3bdef4feb8488783e1c5cf725d1fb94006f36f2221f61081084227f8",
        ["minimum"] = 24,
        ["maximum"] = 24,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_5",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_6",
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
        ["symbol"] = "Ros2Mycobot_pro450_interfacesSrvGetCoords_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_pro450_interfaces/srv/GetCoords_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bda408ece90e671ce58ae428f79f01c1429c3b3aa3c1ef2efe9dc045faa9e3c2",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Mycobot_pro450_interfacesSrvGetCoords_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_pro450_interfaces/srv/GetCoords_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_01e8a3ef4c048100af32d92cd027769e32eacd82dba36dc3bde30c70cb44afdf",
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
                ["name"] = "rz",
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
        ["symbol"] = "Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_pro450_interfaces/srv/GetGripperValue_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_17cb5e3826409b661c2ad4bad8fde2b4c826dde95d8600e1a17bcf4908eca125",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_pro450_interfaces/srv/GetGripperValue_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6b210e18d0696735196fb2e166b7168165dba6f03b97759a437fc8dc08ab2676",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "gripper_angle",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_pro450_interfaces/srv/GripperStatus_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_edc3352d37effe3923c55a024d6acac85a3cb49350974ea35934efa41555ccac",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "status",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_pro450_interfaces/srv/GripperStatus_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_65166c2943fd319555cc1a2dcdaf4475b1e7779960907fe5ab6d1b5dc5536fc2",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "flag",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mycobot_pro450_interfacesSrvSetAngles_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_pro450_interfaces/srv/SetAngles_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ec2659577304938ca4f78c1b4add50190766d8d1b551397668ef7ad03e2ccb09",
        ["minimum"] = 25,
        ["maximum"] = 25,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_5",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_6",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mycobot_pro450_interfacesSrvSetAngles_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_pro450_interfaces/srv/SetAngles_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_28dc59c06324913c1ccbe286ca05b9f47585653a8f086fc5d99a01f6e9ee08b4",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "flag",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mycobot_pro450_interfacesSrvSetCoords_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_pro450_interfaces/srv/SetCoords_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e0c550200472f77aa582a46a5149c05c95648615a306f254599f820992890c81",
        ["minimum"] = 25,
        ["maximum"] = 25,
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
                ["name"] = "rz",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mycobot_pro450_interfacesSrvSetCoords_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mycobot_pro450_interfaces/srv/SetCoords_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9a5ee934233519095e1b28568490f8d958c319e2544976fae0b7de53a54a3f51",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "flag",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mypalletizer_interfacesMsgMypalAngles",
        ["ros_version"] = 2,
        ["native_type"] = "mypalletizer_interfaces/msg/MypalAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0a2dc324515448310b0f026fb26c6c5c6da452e5e7067096e315abe3ab86a35d",
        ["minimum"] = 16,
        ["maximum"] = 16,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
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
        ["symbol"] = "Ros2Mypalletizer_interfacesMsgMypalCoords",
        ["ros_version"] = 2,
        ["native_type"] = "mypalletizer_interfaces/msg/MypalCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_839491548a07528380403fa31c89889ce82f28b2f82e6fd9474835659714b4f7",
        ["minimum"] = 16,
        ["maximum"] = 16,
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
                ["name"] = "rx",
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
        ["symbol"] = "Ros2Mypalletizer_interfacesMsgMypalGripperStatus",
        ["ros_version"] = 2,
        ["native_type"] = "mypalletizer_interfaces/msg/MypalGripperStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f6e4ad6193272d6401bbbfcc20c0f38b6a147a81d9de1ad956d7c154f29daeb0",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "status",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mypalletizer_interfacesMsgMypalPumpStatus",
        ["ros_version"] = 2,
        ["native_type"] = "mypalletizer_interfaces/msg/MypalPumpStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_008dfd13cad42029330909fb7dc68392ba7f6678ad1baa14a41aad1e759f523c",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "pin2",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mypalletizer_interfacesMsgMypalSetAngles",
        ["ros_version"] = 2,
        ["native_type"] = "mypalletizer_interfaces/msg/MypalSetAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b9fdd6ac956fdeb4934ff41982e616f7c0c45b11169b6d60ba74fbcc61458bb5",
        ["minimum"] = 17,
        ["maximum"] = 17,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mypalletizer_interfacesMsgMypalSetCoords",
        ["ros_version"] = 2,
        ["native_type"] = "mypalletizer_interfaces/msg/MypalSetCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0c1b65f543cdd239a5a56a7839ac607c5310cd4145ef6a6da5639a9af8ba4c79",
        ["minimum"] = 17,
        ["maximum"] = 17,
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
                ["name"] = "rx",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mypalletizer_interfacesSrvGetAngles_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mypalletizer_interfaces/srv/GetAngles_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c8124a1063d47b24dae2e279f51d4e48ebf9936a5e305b81b53387a4be344f78",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Mypalletizer_interfacesSrvGetAngles_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mypalletizer_interfaces/srv/GetAngles_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_33812a320c14891a5bc76a86ccbb0a5507cfbcc3706e01bc304263edabc6f75d",
        ["minimum"] = 16,
        ["maximum"] = 16,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
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
        ["symbol"] = "Ros2Mypalletizer_interfacesSrvGetCoords_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mypalletizer_interfaces/srv/GetCoords_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b3db3a0e7d2aed097027798a897caf833f9cc1b8bb027f98c0db016968fa4440",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Mypalletizer_interfacesSrvGetCoords_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mypalletizer_interfaces/srv/GetCoords_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9d237cfa03c4b3c17d99fe0a9c08d1cafa3e8d0e404191e2169eea8683c54c84",
        ["minimum"] = 16,
        ["maximum"] = 16,
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
                ["name"] = "rx",
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
        ["symbol"] = "Ros2Mypalletizer_interfacesSrvGripperStatus_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mypalletizer_interfaces/srv/GripperStatus_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b6d4c5991599ec4ac56e5f65dacd5a1ab89f073e9f07dc2b03692f4289fdcc9d",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "status",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mypalletizer_interfacesSrvGripperStatus_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mypalletizer_interfaces/srv/GripperStatus_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bd0c427dc564ff7201019c6d33c7d0c743a65d263c67eb420b5e653d48e4daf4",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "flag",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mypalletizer_interfacesSrvPumpStatus_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mypalletizer_interfaces/srv/PumpStatus_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6b14af554cb5c65c9411b2c6a76d49cb7cbe06dedcd26d47804d00d12ccf2e2f",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "pin2",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mypalletizer_interfacesSrvPumpStatus_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mypalletizer_interfaces/srv/PumpStatus_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_187a703ce648bc82a276961d82ed8abd5365d8db7af3bb211e590620e1bb2b45",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "flag",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mypalletizer_interfacesSrvSetAngles_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mypalletizer_interfaces/srv/SetAngles_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3997bb19c183b59fbca1675695ea5ee548a247a34f9682dae3fb68fdf1a155ec",
        ["minimum"] = 17,
        ["maximum"] = 17,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mypalletizer_interfacesSrvSetAngles_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mypalletizer_interfaces/srv/SetAngles_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a7952f549b35aa140adac4f18bbe8538c0f6230aa884459091cd74720ab757c9",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "flag",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Mypalletizer_interfacesSrvSetCoords_Request",
        ["ros_version"] = 2,
        ["native_type"] = "mypalletizer_interfaces/srv/SetCoords_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c72f4f1cb71f1ad1076bcc89499abbcfc5eab173fadd19c9a266baf1c32d1541",
        ["minimum"] = 17,
        ["maximum"] = 17,
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
                ["name"] = "rx",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Mypalletizer_interfacesSrvSetCoords_Response",
        ["ros_version"] = 2,
        ["native_type"] = "mypalletizer_interfaces/srv/SetCoords_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0cedaf9087ba0ae3726b9dd0d304665a226fc6df2ee068f6ac2b1c12ce88cb5b",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "flag",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Ultraarm_p1_interfacesMsgMycobotAngles",
        ["ros_version"] = 2,
        ["native_type"] = "ultraarm_p1_interfaces/msg/MycobotAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_75965ba712c12f465c2424b540359dbc4c88e2e85aa772698ee040db7c32a945",
        ["minimum"] = 16,
        ["maximum"] = 16,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
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
        ["symbol"] = "Ros2Ultraarm_p1_interfacesMsgMycobotCoords",
        ["ros_version"] = 2,
        ["native_type"] = "ultraarm_p1_interfaces/msg/MycobotCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c79774c9af7fb4c150cb18c2510df52bbc7bad3c05b604abf90e19087aa05874",
        ["minimum"] = 16,
        ["maximum"] = 16,
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
                ["name"] = "rx",
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
        ["symbol"] = "Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus",
        ["ros_version"] = 2,
        ["native_type"] = "ultraarm_p1_interfaces/msg/MycobotGripperStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1efb83ff22c5eb211fe92355cb5358cb991a373693d33180362e43a2ef56d22f",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "status",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles",
        ["ros_version"] = 2,
        ["native_type"] = "ultraarm_p1_interfaces/msg/MycobotSetAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cb53aab11e200533386b764a423f86bd7a24c65105236945c6b27ba7a9c3221c",
        ["minimum"] = 20,
        ["maximum"] = 20,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords",
        ["ros_version"] = 2,
        ["native_type"] = "ultraarm_p1_interfaces/msg/MycobotSetCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_fca21ab6eed31f03f0f7c9c6010d893f709f1eebb1bf07c1911452da1c50bbee",
        ["minimum"] = 20,
        ["maximum"] = 20,
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
                ["name"] = "rx",
                ["type"] = "float32",
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Ultraarm_p1_interfacesSrvGetAngles_Request",
        ["ros_version"] = 2,
        ["native_type"] = "ultraarm_p1_interfaces/srv/GetAngles_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b2ff68f6919df813ddf49ad9337c2345e3c4e70242ad81f6440d5cd1cd612ff9",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Ultraarm_p1_interfacesSrvGetAngles_Response",
        ["ros_version"] = 2,
        ["native_type"] = "ultraarm_p1_interfaces/srv/GetAngles_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cc8b4259c50ed82d6f3b3bbb9470ac089b127b70ace12457cb41fccb7ae67cbc",
        ["minimum"] = 16,
        ["maximum"] = 16,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
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
        ["symbol"] = "Ros2Ultraarm_p1_interfacesSrvGetCoords_Request",
        ["ros_version"] = 2,
        ["native_type"] = "ultraarm_p1_interfaces/srv/GetCoords_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0ed9a0f7124cb00e62b71aecaedb60ea8832a94aaf4dc8f1de943d91dbf74e01",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Ultraarm_p1_interfacesSrvGetCoords_Response",
        ["ros_version"] = 2,
        ["native_type"] = "ultraarm_p1_interfaces/srv/GetCoords_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_47ef794ffd2a3a4125ce3c9cbbd6b0d85fbb42cbfc888dd8fec39020cd454565",
        ["minimum"] = 16,
        ["maximum"] = 16,
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
                ["name"] = "rx",
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
        ["symbol"] = "Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request",
        ["ros_version"] = 2,
        ["native_type"] = "ultraarm_p1_interfaces/srv/GetGripperValue_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_dad3d4af78250b2b8e44424ee1bb532b1e24bd9b867417fa428dec761fcf4be9",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response",
        ["ros_version"] = 2,
        ["native_type"] = "ultraarm_p1_interfaces/srv/GetGripperValue_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3b3830d2ae5b4327771923acab70739d05dd3f9c8e2b3b060f6a3136a9e6c647",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "gripper_angle",
                ["type"] = "int8",
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
        ["symbol"] = "Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request",
        ["ros_version"] = 2,
        ["native_type"] = "ultraarm_p1_interfaces/srv/GripperStatus_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cdaff7754e24b6910102060d2af379d4bcc9c3a647604ccdf2dc8b4a50d854b8",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "status",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response",
        ["ros_version"] = 2,
        ["native_type"] = "ultraarm_p1_interfaces/srv/GripperStatus_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_55826c68885c7382e5a9e8a0ec35b312af3b2e974236d80518564c3fb8b9fa48",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "flag",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Ultraarm_p1_interfacesSrvSetAngles_Request",
        ["ros_version"] = 2,
        ["native_type"] = "ultraarm_p1_interfaces/srv/SetAngles_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4184d40dd5cef87f13e913d349e37b0661905c5c9f0d8c5f9cc965ea272be025",
        ["minimum"] = 20,
        ["maximum"] = 20,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Ultraarm_p1_interfacesSrvSetAngles_Response",
        ["ros_version"] = 2,
        ["native_type"] = "ultraarm_p1_interfaces/srv/SetAngles_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_de517cd68c164d4214aed8ad92f7bb9ee49f24c7e43d96c18e193095b0b23e1a",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "flag",
                ["type"] = "bool",
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
        ["symbol"] = "Ros2Ultraarm_p1_interfacesSrvSetCoords_Request",
        ["ros_version"] = 2,
        ["native_type"] = "ultraarm_p1_interfaces/srv/SetCoords_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_df9914ced1ef5f92f6102595de772ed076be380360b8fd5732cf7f0d4c0ec3e3",
        ["minimum"] = 20,
        ["maximum"] = 20,
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
                ["name"] = "rx",
                ["type"] = "float32",
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Ultraarm_p1_interfacesSrvSetCoords_Response",
        ["ros_version"] = 2,
        ["native_type"] = "ultraarm_p1_interfaces/srv/SetCoords_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c66cfcc79da5bbc9a19b077761cfd3e89b3dae56ae604205de6316aa37935d7f",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "flag",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
}
local classes, by_name = wire.records(schemas)

--- @class Ros2Mecharm_interfacesMsgMecharmAngles
--- @brief Complete ROS2 mecharm_interfaces/msg/MecharmAngles value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Mecharm_interfacesMsgMecharmAngles.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mecharm_interfacesMsgMecharmAngles.NATIVE_TYPE: Exact normalized native type name mecharm_interfaces/msg/MecharmAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_interfaces/msg/MecharmAngles.
--- @brief Ros2Mecharm_interfacesMsgMecharmAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mecharm_interfacesMsgMecharmAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mecharm_interfacesMsgMecharmAngles.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Mecharm_interfacesMsgMecharmAngles.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2Mecharm_interfacesMsgMecharmAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mecharm_interfacesMsgMecharmAngles value New mutable complete value; no ROS resource.
--- @see Ros2Mecharm_interfacesMsgMecharmAngles.encode
--- @field new fun(values?: table): Ros2Mecharm_interfacesMsgMecharmAngles
--- @brief Encode a complete Ros2Mecharm_interfacesMsgMecharmAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mecharm_interfacesMsgMecharmAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2Mecharm_interfacesMsgMecharmAngles.decode
--- @field encode fun(value: Ros2Mecharm_interfacesMsgMecharmAngles): string
--- @brief Decode exactly one complete Ros2Mecharm_interfacesMsgMecharmAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mecharm_interfacesMsgMecharmAngles value New complete value; failures raise Lua errors.
--- @see Ros2Mecharm_interfacesMsgMecharmAngles.encode
--- @field decode fun(bytes: string): Ros2Mecharm_interfacesMsgMecharmAngles
local Ros2Mecharm_interfacesMsgMecharmAngles = classes["Ros2Mecharm_interfacesMsgMecharmAngles"]

--- @class Ros2Mecharm_interfacesMsgMecharmCoords
--- @brief Complete ROS2 mecharm_interfaces/msg/MecharmCoords value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ry number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Mecharm_interfacesMsgMecharmCoords.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mecharm_interfacesMsgMecharmCoords.NATIVE_TYPE: Exact normalized native type name mecharm_interfaces/msg/MecharmCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_interfaces/msg/MecharmCoords.
--- @brief Ros2Mecharm_interfacesMsgMecharmCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mecharm_interfacesMsgMecharmCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mecharm_interfacesMsgMecharmCoords.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Mecharm_interfacesMsgMecharmCoords.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2Mecharm_interfacesMsgMecharmCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mecharm_interfacesMsgMecharmCoords value New mutable complete value; no ROS resource.
--- @see Ros2Mecharm_interfacesMsgMecharmCoords.encode
--- @field new fun(values?: table): Ros2Mecharm_interfacesMsgMecharmCoords
--- @brief Encode a complete Ros2Mecharm_interfacesMsgMecharmCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mecharm_interfacesMsgMecharmCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2Mecharm_interfacesMsgMecharmCoords.decode
--- @field encode fun(value: Ros2Mecharm_interfacesMsgMecharmCoords): string
--- @brief Decode exactly one complete Ros2Mecharm_interfacesMsgMecharmCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mecharm_interfacesMsgMecharmCoords value New complete value; failures raise Lua errors.
--- @see Ros2Mecharm_interfacesMsgMecharmCoords.encode
--- @field decode fun(bytes: string): Ros2Mecharm_interfacesMsgMecharmCoords
local Ros2Mecharm_interfacesMsgMecharmCoords = classes["Ros2Mecharm_interfacesMsgMecharmCoords"]

--- @class Ros2Mecharm_interfacesMsgMecharmGripperStatus
--- @brief Complete ROS2 mecharm_interfaces/msg/MecharmGripperStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mecharm_interfacesMsgMecharmGripperStatus.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmGripperStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mecharm_interfacesMsgMecharmGripperStatus.NATIVE_TYPE: Exact normalized native type name mecharm_interfaces/msg/MecharmGripperStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmGripperStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_interfaces/msg/MecharmGripperStatus.
--- @brief Ros2Mecharm_interfacesMsgMecharmGripperStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmGripperStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mecharm_interfacesMsgMecharmGripperStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmGripperStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mecharm_interfacesMsgMecharmGripperStatus.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmGripperStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mecharm_interfacesMsgMecharmGripperStatus.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmGripperStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mecharm_interfacesMsgMecharmGripperStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mecharm_interfacesMsgMecharmGripperStatus value New mutable complete value; no ROS resource.
--- @see Ros2Mecharm_interfacesMsgMecharmGripperStatus.encode
--- @field new fun(values?: table): Ros2Mecharm_interfacesMsgMecharmGripperStatus
--- @brief Encode a complete Ros2Mecharm_interfacesMsgMecharmGripperStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mecharm_interfacesMsgMecharmGripperStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mecharm_interfacesMsgMecharmGripperStatus.decode
--- @field encode fun(value: Ros2Mecharm_interfacesMsgMecharmGripperStatus): string
--- @brief Decode exactly one complete Ros2Mecharm_interfacesMsgMecharmGripperStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mecharm_interfacesMsgMecharmGripperStatus value New complete value; failures raise Lua errors.
--- @see Ros2Mecharm_interfacesMsgMecharmGripperStatus.encode
--- @field decode fun(bytes: string): Ros2Mecharm_interfacesMsgMecharmGripperStatus
local Ros2Mecharm_interfacesMsgMecharmGripperStatus = classes["Ros2Mecharm_interfacesMsgMecharmGripperStatus"]

--- @class Ros2Mecharm_interfacesMsgMecharmPumpStatus
--- @brief Complete ROS2 mecharm_interfaces/msg/MecharmPumpStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field status boolean Exact boolean; encoded as one byte0/1.
--- @field pin1 integer Exact int8 range -128..127.
--- @field pin2 integer Exact int8 range -128..127.
--- @brief Ros2Mecharm_interfacesMsgMecharmPumpStatus.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmPumpStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mecharm_interfacesMsgMecharmPumpStatus.NATIVE_TYPE: Exact normalized native type name mecharm_interfaces/msg/MecharmPumpStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmPumpStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_interfaces/msg/MecharmPumpStatus.
--- @brief Ros2Mecharm_interfacesMsgMecharmPumpStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmPumpStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mecharm_interfacesMsgMecharmPumpStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmPumpStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mecharm_interfacesMsgMecharmPumpStatus.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmPumpStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros2Mecharm_interfacesMsgMecharmPumpStatus.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmPumpStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros2Mecharm_interfacesMsgMecharmPumpStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mecharm_interfacesMsgMecharmPumpStatus value New mutable complete value; no ROS resource.
--- @see Ros2Mecharm_interfacesMsgMecharmPumpStatus.encode
--- @field new fun(values?: table): Ros2Mecharm_interfacesMsgMecharmPumpStatus
--- @brief Encode a complete Ros2Mecharm_interfacesMsgMecharmPumpStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mecharm_interfacesMsgMecharmPumpStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros2Mecharm_interfacesMsgMecharmPumpStatus.decode
--- @field encode fun(value: Ros2Mecharm_interfacesMsgMecharmPumpStatus): string
--- @brief Decode exactly one complete Ros2Mecharm_interfacesMsgMecharmPumpStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mecharm_interfacesMsgMecharmPumpStatus value New complete value; failures raise Lua errors.
--- @see Ros2Mecharm_interfacesMsgMecharmPumpStatus.encode
--- @field decode fun(bytes: string): Ros2Mecharm_interfacesMsgMecharmPumpStatus
local Ros2Mecharm_interfacesMsgMecharmPumpStatus = classes["Ros2Mecharm_interfacesMsgMecharmPumpStatus"]

--- @class Ros2Mecharm_interfacesMsgMecharmSetAngles
--- @brief Complete ROS2 mecharm_interfaces/msg/MecharmSetAngles value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros2Mecharm_interfacesMsgMecharmSetAngles.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmSetAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mecharm_interfacesMsgMecharmSetAngles.NATIVE_TYPE: Exact normalized native type name mecharm_interfaces/msg/MecharmSetAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmSetAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_interfaces/msg/MecharmSetAngles.
--- @brief Ros2Mecharm_interfacesMsgMecharmSetAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmSetAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mecharm_interfacesMsgMecharmSetAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmSetAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mecharm_interfacesMsgMecharmSetAngles.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmSetAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros2Mecharm_interfacesMsgMecharmSetAngles.MAX_WIRE_BYTES: Inclusive complete maximum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmSetAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 25 bytes.
--- @brief Construct Ros2Mecharm_interfacesMsgMecharmSetAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mecharm_interfacesMsgMecharmSetAngles value New mutable complete value; no ROS resource.
--- @see Ros2Mecharm_interfacesMsgMecharmSetAngles.encode
--- @field new fun(values?: table): Ros2Mecharm_interfacesMsgMecharmSetAngles
--- @brief Encode a complete Ros2Mecharm_interfacesMsgMecharmSetAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mecharm_interfacesMsgMecharmSetAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..25 bytes.
--- @see Ros2Mecharm_interfacesMsgMecharmSetAngles.decode
--- @field encode fun(value: Ros2Mecharm_interfacesMsgMecharmSetAngles): string
--- @brief Decode exactly one complete Ros2Mecharm_interfacesMsgMecharmSetAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mecharm_interfacesMsgMecharmSetAngles value New complete value; failures raise Lua errors.
--- @see Ros2Mecharm_interfacesMsgMecharmSetAngles.encode
--- @field decode fun(bytes: string): Ros2Mecharm_interfacesMsgMecharmSetAngles
local Ros2Mecharm_interfacesMsgMecharmSetAngles = classes["Ros2Mecharm_interfacesMsgMecharmSetAngles"]

--- @class Ros2Mecharm_interfacesMsgMecharmSetCoords
--- @brief Complete ROS2 mecharm_interfaces/msg/MecharmSetCoords value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ry number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @field model integer Exact int8 range -128..127.
--- @brief Ros2Mecharm_interfacesMsgMecharmSetCoords.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmSetCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mecharm_interfacesMsgMecharmSetCoords.NATIVE_TYPE: Exact normalized native type name mecharm_interfaces/msg/MecharmSetCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmSetCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_interfaces/msg/MecharmSetCoords.
--- @brief Ros2Mecharm_interfacesMsgMecharmSetCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmSetCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mecharm_interfacesMsgMecharmSetCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmSetCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mecharm_interfacesMsgMecharmSetCoords.MIN_WIRE_BYTES: Inclusive complete minimum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmSetCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 26 bytes.
--- @brief Ros2Mecharm_interfacesMsgMecharmSetCoords.MAX_WIRE_BYTES: Inclusive complete maximum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesMsgMecharmSetCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 26 bytes.
--- @brief Construct Ros2Mecharm_interfacesMsgMecharmSetCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mecharm_interfacesMsgMecharmSetCoords value New mutable complete value; no ROS resource.
--- @see Ros2Mecharm_interfacesMsgMecharmSetCoords.encode
--- @field new fun(values?: table): Ros2Mecharm_interfacesMsgMecharmSetCoords
--- @brief Encode a complete Ros2Mecharm_interfacesMsgMecharmSetCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mecharm_interfacesMsgMecharmSetCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 26..26 bytes.
--- @see Ros2Mecharm_interfacesMsgMecharmSetCoords.decode
--- @field encode fun(value: Ros2Mecharm_interfacesMsgMecharmSetCoords): string
--- @brief Decode exactly one complete Ros2Mecharm_interfacesMsgMecharmSetCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mecharm_interfacesMsgMecharmSetCoords value New complete value; failures raise Lua errors.
--- @see Ros2Mecharm_interfacesMsgMecharmSetCoords.encode
--- @field decode fun(bytes: string): Ros2Mecharm_interfacesMsgMecharmSetCoords
local Ros2Mecharm_interfacesMsgMecharmSetCoords = classes["Ros2Mecharm_interfacesMsgMecharmSetCoords"]

--- @class Ros2Mecharm_interfacesSrvGetAngles_Request
--- @brief Complete ROS2 mecharm_interfaces/srv/GetAngles_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Mecharm_interfacesSrvGetAngles_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetAngles_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mecharm_interfacesSrvGetAngles_Request.NATIVE_TYPE: Exact normalized native type name mecharm_interfaces/srv/GetAngles_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetAngles_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_interfaces/srv/GetAngles_Request.
--- @brief Ros2Mecharm_interfacesSrvGetAngles_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetAngles_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mecharm_interfacesSrvGetAngles_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetAngles_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mecharm_interfacesSrvGetAngles_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetAngles_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Mecharm_interfacesSrvGetAngles_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetAngles_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Mecharm_interfacesSrvGetAngles_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mecharm_interfacesSrvGetAngles_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mecharm_interfacesSrvGetAngles_Request.encode
--- @field new fun(values?: table): Ros2Mecharm_interfacesSrvGetAngles_Request
--- @brief Encode a complete Ros2Mecharm_interfacesSrvGetAngles_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mecharm_interfacesSrvGetAngles_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Mecharm_interfacesSrvGetAngles_Request.decode
--- @field encode fun(value: Ros2Mecharm_interfacesSrvGetAngles_Request): string
--- @brief Decode exactly one complete Ros2Mecharm_interfacesSrvGetAngles_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mecharm_interfacesSrvGetAngles_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mecharm_interfacesSrvGetAngles_Request.encode
--- @field decode fun(bytes: string): Ros2Mecharm_interfacesSrvGetAngles_Request
local Ros2Mecharm_interfacesSrvGetAngles_Request = classes["Ros2Mecharm_interfacesSrvGetAngles_Request"]

--- @class Ros2Mecharm_interfacesSrvGetAngles_Response
--- @brief Complete ROS2 mecharm_interfaces/srv/GetAngles_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Mecharm_interfacesSrvGetAngles_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetAngles_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mecharm_interfacesSrvGetAngles_Response.NATIVE_TYPE: Exact normalized native type name mecharm_interfaces/srv/GetAngles_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetAngles_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_interfaces/srv/GetAngles_Response.
--- @brief Ros2Mecharm_interfacesSrvGetAngles_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetAngles_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mecharm_interfacesSrvGetAngles_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetAngles_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mecharm_interfacesSrvGetAngles_Response.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetAngles_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Mecharm_interfacesSrvGetAngles_Response.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetAngles_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2Mecharm_interfacesSrvGetAngles_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mecharm_interfacesSrvGetAngles_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mecharm_interfacesSrvGetAngles_Response.encode
--- @field new fun(values?: table): Ros2Mecharm_interfacesSrvGetAngles_Response
--- @brief Encode a complete Ros2Mecharm_interfacesSrvGetAngles_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mecharm_interfacesSrvGetAngles_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2Mecharm_interfacesSrvGetAngles_Response.decode
--- @field encode fun(value: Ros2Mecharm_interfacesSrvGetAngles_Response): string
--- @brief Decode exactly one complete Ros2Mecharm_interfacesSrvGetAngles_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mecharm_interfacesSrvGetAngles_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mecharm_interfacesSrvGetAngles_Response.encode
--- @field decode fun(bytes: string): Ros2Mecharm_interfacesSrvGetAngles_Response
local Ros2Mecharm_interfacesSrvGetAngles_Response = classes["Ros2Mecharm_interfacesSrvGetAngles_Response"]

--- @class Ros2Mecharm_interfacesSrvGetCoords_Request
--- @brief Complete ROS2 mecharm_interfaces/srv/GetCoords_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Mecharm_interfacesSrvGetCoords_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetCoords_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mecharm_interfacesSrvGetCoords_Request.NATIVE_TYPE: Exact normalized native type name mecharm_interfaces/srv/GetCoords_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetCoords_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_interfaces/srv/GetCoords_Request.
--- @brief Ros2Mecharm_interfacesSrvGetCoords_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetCoords_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mecharm_interfacesSrvGetCoords_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetCoords_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mecharm_interfacesSrvGetCoords_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetCoords_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Mecharm_interfacesSrvGetCoords_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetCoords_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Mecharm_interfacesSrvGetCoords_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mecharm_interfacesSrvGetCoords_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mecharm_interfacesSrvGetCoords_Request.encode
--- @field new fun(values?: table): Ros2Mecharm_interfacesSrvGetCoords_Request
--- @brief Encode a complete Ros2Mecharm_interfacesSrvGetCoords_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mecharm_interfacesSrvGetCoords_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Mecharm_interfacesSrvGetCoords_Request.decode
--- @field encode fun(value: Ros2Mecharm_interfacesSrvGetCoords_Request): string
--- @brief Decode exactly one complete Ros2Mecharm_interfacesSrvGetCoords_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mecharm_interfacesSrvGetCoords_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mecharm_interfacesSrvGetCoords_Request.encode
--- @field decode fun(bytes: string): Ros2Mecharm_interfacesSrvGetCoords_Request
local Ros2Mecharm_interfacesSrvGetCoords_Request = classes["Ros2Mecharm_interfacesSrvGetCoords_Request"]

--- @class Ros2Mecharm_interfacesSrvGetCoords_Response
--- @brief Complete ROS2 mecharm_interfaces/srv/GetCoords_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ry number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Mecharm_interfacesSrvGetCoords_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetCoords_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mecharm_interfacesSrvGetCoords_Response.NATIVE_TYPE: Exact normalized native type name mecharm_interfaces/srv/GetCoords_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetCoords_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_interfaces/srv/GetCoords_Response.
--- @brief Ros2Mecharm_interfacesSrvGetCoords_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetCoords_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mecharm_interfacesSrvGetCoords_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetCoords_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mecharm_interfacesSrvGetCoords_Response.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetCoords_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Mecharm_interfacesSrvGetCoords_Response.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGetCoords_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2Mecharm_interfacesSrvGetCoords_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mecharm_interfacesSrvGetCoords_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mecharm_interfacesSrvGetCoords_Response.encode
--- @field new fun(values?: table): Ros2Mecharm_interfacesSrvGetCoords_Response
--- @brief Encode a complete Ros2Mecharm_interfacesSrvGetCoords_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mecharm_interfacesSrvGetCoords_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2Mecharm_interfacesSrvGetCoords_Response.decode
--- @field encode fun(value: Ros2Mecharm_interfacesSrvGetCoords_Response): string
--- @brief Decode exactly one complete Ros2Mecharm_interfacesSrvGetCoords_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mecharm_interfacesSrvGetCoords_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mecharm_interfacesSrvGetCoords_Response.encode
--- @field decode fun(bytes: string): Ros2Mecharm_interfacesSrvGetCoords_Response
local Ros2Mecharm_interfacesSrvGetCoords_Response = classes["Ros2Mecharm_interfacesSrvGetCoords_Response"]

--- @class Ros2Mecharm_interfacesSrvGripperStatus_Request
--- @brief Complete ROS2 mecharm_interfaces/srv/GripperStatus_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mecharm_interfacesSrvGripperStatus_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGripperStatus_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mecharm_interfacesSrvGripperStatus_Request.NATIVE_TYPE: Exact normalized native type name mecharm_interfaces/srv/GripperStatus_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGripperStatus_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_interfaces/srv/GripperStatus_Request.
--- @brief Ros2Mecharm_interfacesSrvGripperStatus_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGripperStatus_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mecharm_interfacesSrvGripperStatus_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGripperStatus_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mecharm_interfacesSrvGripperStatus_Request.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGripperStatus_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mecharm_interfacesSrvGripperStatus_Request.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGripperStatus_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mecharm_interfacesSrvGripperStatus_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mecharm_interfacesSrvGripperStatus_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mecharm_interfacesSrvGripperStatus_Request.encode
--- @field new fun(values?: table): Ros2Mecharm_interfacesSrvGripperStatus_Request
--- @brief Encode a complete Ros2Mecharm_interfacesSrvGripperStatus_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mecharm_interfacesSrvGripperStatus_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mecharm_interfacesSrvGripperStatus_Request.decode
--- @field encode fun(value: Ros2Mecharm_interfacesSrvGripperStatus_Request): string
--- @brief Decode exactly one complete Ros2Mecharm_interfacesSrvGripperStatus_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mecharm_interfacesSrvGripperStatus_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mecharm_interfacesSrvGripperStatus_Request.encode
--- @field decode fun(bytes: string): Ros2Mecharm_interfacesSrvGripperStatus_Request
local Ros2Mecharm_interfacesSrvGripperStatus_Request = classes["Ros2Mecharm_interfacesSrvGripperStatus_Request"]

--- @class Ros2Mecharm_interfacesSrvGripperStatus_Response
--- @brief Complete ROS2 mecharm_interfaces/srv/GripperStatus_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mecharm_interfacesSrvGripperStatus_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGripperStatus_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mecharm_interfacesSrvGripperStatus_Response.NATIVE_TYPE: Exact normalized native type name mecharm_interfaces/srv/GripperStatus_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGripperStatus_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_interfaces/srv/GripperStatus_Response.
--- @brief Ros2Mecharm_interfacesSrvGripperStatus_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGripperStatus_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mecharm_interfacesSrvGripperStatus_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGripperStatus_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mecharm_interfacesSrvGripperStatus_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGripperStatus_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mecharm_interfacesSrvGripperStatus_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvGripperStatus_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mecharm_interfacesSrvGripperStatus_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mecharm_interfacesSrvGripperStatus_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mecharm_interfacesSrvGripperStatus_Response.encode
--- @field new fun(values?: table): Ros2Mecharm_interfacesSrvGripperStatus_Response
--- @brief Encode a complete Ros2Mecharm_interfacesSrvGripperStatus_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mecharm_interfacesSrvGripperStatus_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mecharm_interfacesSrvGripperStatus_Response.decode
--- @field encode fun(value: Ros2Mecharm_interfacesSrvGripperStatus_Response): string
--- @brief Decode exactly one complete Ros2Mecharm_interfacesSrvGripperStatus_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mecharm_interfacesSrvGripperStatus_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mecharm_interfacesSrvGripperStatus_Response.encode
--- @field decode fun(bytes: string): Ros2Mecharm_interfacesSrvGripperStatus_Response
local Ros2Mecharm_interfacesSrvGripperStatus_Response = classes["Ros2Mecharm_interfacesSrvGripperStatus_Response"]

--- @class Ros2Mecharm_interfacesSrvPumpStatus_Request
--- @brief Complete ROS2 mecharm_interfaces/srv/PumpStatus_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field status boolean Exact boolean; encoded as one byte0/1.
--- @field pin1 integer Exact int8 range -128..127.
--- @field pin2 integer Exact int8 range -128..127.
--- @brief Ros2Mecharm_interfacesSrvPumpStatus_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvPumpStatus_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mecharm_interfacesSrvPumpStatus_Request.NATIVE_TYPE: Exact normalized native type name mecharm_interfaces/srv/PumpStatus_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvPumpStatus_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_interfaces/srv/PumpStatus_Request.
--- @brief Ros2Mecharm_interfacesSrvPumpStatus_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvPumpStatus_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mecharm_interfacesSrvPumpStatus_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvPumpStatus_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mecharm_interfacesSrvPumpStatus_Request.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvPumpStatus_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros2Mecharm_interfacesSrvPumpStatus_Request.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvPumpStatus_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros2Mecharm_interfacesSrvPumpStatus_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mecharm_interfacesSrvPumpStatus_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mecharm_interfacesSrvPumpStatus_Request.encode
--- @field new fun(values?: table): Ros2Mecharm_interfacesSrvPumpStatus_Request
--- @brief Encode a complete Ros2Mecharm_interfacesSrvPumpStatus_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mecharm_interfacesSrvPumpStatus_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros2Mecharm_interfacesSrvPumpStatus_Request.decode
--- @field encode fun(value: Ros2Mecharm_interfacesSrvPumpStatus_Request): string
--- @brief Decode exactly one complete Ros2Mecharm_interfacesSrvPumpStatus_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mecharm_interfacesSrvPumpStatus_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mecharm_interfacesSrvPumpStatus_Request.encode
--- @field decode fun(bytes: string): Ros2Mecharm_interfacesSrvPumpStatus_Request
local Ros2Mecharm_interfacesSrvPumpStatus_Request = classes["Ros2Mecharm_interfacesSrvPumpStatus_Request"]

--- @class Ros2Mecharm_interfacesSrvPumpStatus_Response
--- @brief Complete ROS2 mecharm_interfaces/srv/PumpStatus_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mecharm_interfacesSrvPumpStatus_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvPumpStatus_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mecharm_interfacesSrvPumpStatus_Response.NATIVE_TYPE: Exact normalized native type name mecharm_interfaces/srv/PumpStatus_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvPumpStatus_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_interfaces/srv/PumpStatus_Response.
--- @brief Ros2Mecharm_interfacesSrvPumpStatus_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvPumpStatus_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mecharm_interfacesSrvPumpStatus_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvPumpStatus_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mecharm_interfacesSrvPumpStatus_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvPumpStatus_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mecharm_interfacesSrvPumpStatus_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvPumpStatus_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mecharm_interfacesSrvPumpStatus_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mecharm_interfacesSrvPumpStatus_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mecharm_interfacesSrvPumpStatus_Response.encode
--- @field new fun(values?: table): Ros2Mecharm_interfacesSrvPumpStatus_Response
--- @brief Encode a complete Ros2Mecharm_interfacesSrvPumpStatus_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mecharm_interfacesSrvPumpStatus_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mecharm_interfacesSrvPumpStatus_Response.decode
--- @field encode fun(value: Ros2Mecharm_interfacesSrvPumpStatus_Response): string
--- @brief Decode exactly one complete Ros2Mecharm_interfacesSrvPumpStatus_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mecharm_interfacesSrvPumpStatus_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mecharm_interfacesSrvPumpStatus_Response.encode
--- @field decode fun(bytes: string): Ros2Mecharm_interfacesSrvPumpStatus_Response
local Ros2Mecharm_interfacesSrvPumpStatus_Response = classes["Ros2Mecharm_interfacesSrvPumpStatus_Response"]

--- @class Ros2Mecharm_interfacesSrvSetAngles_Request
--- @brief Complete ROS2 mecharm_interfaces/srv/SetAngles_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros2Mecharm_interfacesSrvSetAngles_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetAngles_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mecharm_interfacesSrvSetAngles_Request.NATIVE_TYPE: Exact normalized native type name mecharm_interfaces/srv/SetAngles_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetAngles_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_interfaces/srv/SetAngles_Request.
--- @brief Ros2Mecharm_interfacesSrvSetAngles_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetAngles_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mecharm_interfacesSrvSetAngles_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetAngles_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mecharm_interfacesSrvSetAngles_Request.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetAngles_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros2Mecharm_interfacesSrvSetAngles_Request.MAX_WIRE_BYTES: Inclusive complete maximum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetAngles_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 25 bytes.
--- @brief Construct Ros2Mecharm_interfacesSrvSetAngles_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mecharm_interfacesSrvSetAngles_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mecharm_interfacesSrvSetAngles_Request.encode
--- @field new fun(values?: table): Ros2Mecharm_interfacesSrvSetAngles_Request
--- @brief Encode a complete Ros2Mecharm_interfacesSrvSetAngles_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mecharm_interfacesSrvSetAngles_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..25 bytes.
--- @see Ros2Mecharm_interfacesSrvSetAngles_Request.decode
--- @field encode fun(value: Ros2Mecharm_interfacesSrvSetAngles_Request): string
--- @brief Decode exactly one complete Ros2Mecharm_interfacesSrvSetAngles_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mecharm_interfacesSrvSetAngles_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mecharm_interfacesSrvSetAngles_Request.encode
--- @field decode fun(bytes: string): Ros2Mecharm_interfacesSrvSetAngles_Request
local Ros2Mecharm_interfacesSrvSetAngles_Request = classes["Ros2Mecharm_interfacesSrvSetAngles_Request"]

--- @class Ros2Mecharm_interfacesSrvSetAngles_Response
--- @brief Complete ROS2 mecharm_interfaces/srv/SetAngles_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mecharm_interfacesSrvSetAngles_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetAngles_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mecharm_interfacesSrvSetAngles_Response.NATIVE_TYPE: Exact normalized native type name mecharm_interfaces/srv/SetAngles_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetAngles_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_interfaces/srv/SetAngles_Response.
--- @brief Ros2Mecharm_interfacesSrvSetAngles_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetAngles_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mecharm_interfacesSrvSetAngles_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetAngles_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mecharm_interfacesSrvSetAngles_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetAngles_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mecharm_interfacesSrvSetAngles_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetAngles_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mecharm_interfacesSrvSetAngles_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mecharm_interfacesSrvSetAngles_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mecharm_interfacesSrvSetAngles_Response.encode
--- @field new fun(values?: table): Ros2Mecharm_interfacesSrvSetAngles_Response
--- @brief Encode a complete Ros2Mecharm_interfacesSrvSetAngles_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mecharm_interfacesSrvSetAngles_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mecharm_interfacesSrvSetAngles_Response.decode
--- @field encode fun(value: Ros2Mecharm_interfacesSrvSetAngles_Response): string
--- @brief Decode exactly one complete Ros2Mecharm_interfacesSrvSetAngles_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mecharm_interfacesSrvSetAngles_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mecharm_interfacesSrvSetAngles_Response.encode
--- @field decode fun(bytes: string): Ros2Mecharm_interfacesSrvSetAngles_Response
local Ros2Mecharm_interfacesSrvSetAngles_Response = classes["Ros2Mecharm_interfacesSrvSetAngles_Response"]

--- @class Ros2Mecharm_interfacesSrvSetCoords_Request
--- @brief Complete ROS2 mecharm_interfaces/srv/SetCoords_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ry number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @field model integer Exact int8 range -128..127.
--- @brief Ros2Mecharm_interfacesSrvSetCoords_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetCoords_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mecharm_interfacesSrvSetCoords_Request.NATIVE_TYPE: Exact normalized native type name mecharm_interfaces/srv/SetCoords_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetCoords_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_interfaces/srv/SetCoords_Request.
--- @brief Ros2Mecharm_interfacesSrvSetCoords_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetCoords_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mecharm_interfacesSrvSetCoords_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetCoords_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mecharm_interfacesSrvSetCoords_Request.MIN_WIRE_BYTES: Inclusive complete minimum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetCoords_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 26 bytes.
--- @brief Ros2Mecharm_interfacesSrvSetCoords_Request.MAX_WIRE_BYTES: Inclusive complete maximum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetCoords_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 26 bytes.
--- @brief Construct Ros2Mecharm_interfacesSrvSetCoords_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mecharm_interfacesSrvSetCoords_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mecharm_interfacesSrvSetCoords_Request.encode
--- @field new fun(values?: table): Ros2Mecharm_interfacesSrvSetCoords_Request
--- @brief Encode a complete Ros2Mecharm_interfacesSrvSetCoords_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mecharm_interfacesSrvSetCoords_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 26..26 bytes.
--- @see Ros2Mecharm_interfacesSrvSetCoords_Request.decode
--- @field encode fun(value: Ros2Mecharm_interfacesSrvSetCoords_Request): string
--- @brief Decode exactly one complete Ros2Mecharm_interfacesSrvSetCoords_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mecharm_interfacesSrvSetCoords_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mecharm_interfacesSrvSetCoords_Request.encode
--- @field decode fun(bytes: string): Ros2Mecharm_interfacesSrvSetCoords_Request
local Ros2Mecharm_interfacesSrvSetCoords_Request = classes["Ros2Mecharm_interfacesSrvSetCoords_Request"]

--- @class Ros2Mecharm_interfacesSrvSetCoords_Response
--- @brief Complete ROS2 mecharm_interfaces/srv/SetCoords_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mecharm_interfacesSrvSetCoords_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetCoords_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mecharm_interfacesSrvSetCoords_Response.NATIVE_TYPE: Exact normalized native type name mecharm_interfaces/srv/SetCoords_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetCoords_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_interfaces/srv/SetCoords_Response.
--- @brief Ros2Mecharm_interfacesSrvSetCoords_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetCoords_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mecharm_interfacesSrvSetCoords_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetCoords_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mecharm_interfacesSrvSetCoords_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetCoords_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mecharm_interfacesSrvSetCoords_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mecharm_interfacesSrvSetCoords_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mecharm_interfacesSrvSetCoords_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mecharm_interfacesSrvSetCoords_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mecharm_interfacesSrvSetCoords_Response.encode
--- @field new fun(values?: table): Ros2Mecharm_interfacesSrvSetCoords_Response
--- @brief Encode a complete Ros2Mecharm_interfacesSrvSetCoords_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mecharm_interfacesSrvSetCoords_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mecharm_interfacesSrvSetCoords_Response.decode
--- @field encode fun(value: Ros2Mecharm_interfacesSrvSetCoords_Response): string
--- @brief Decode exactly one complete Ros2Mecharm_interfacesSrvSetCoords_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mecharm_interfacesSrvSetCoords_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mecharm_interfacesSrvSetCoords_Response.encode
--- @field decode fun(bytes: string): Ros2Mecharm_interfacesSrvSetCoords_Response
local Ros2Mecharm_interfacesSrvSetCoords_Response = classes["Ros2Mecharm_interfacesSrvSetCoords_Response"]

--- @class Ros2Mycobot_interfacesMsgMycobotAngles
--- @brief Complete ROS2 mycobot_interfaces/msg/MycobotAngles value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Mycobot_interfacesMsgMycobotAngles.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_interfacesMsgMycobotAngles.NATIVE_TYPE: Exact normalized native type name mycobot_interfaces/msg/MycobotAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_interfaces/msg/MycobotAngles.
--- @brief Ros2Mycobot_interfacesMsgMycobotAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_interfacesMsgMycobotAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_interfacesMsgMycobotAngles.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Mycobot_interfacesMsgMycobotAngles.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2Mycobot_interfacesMsgMycobotAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_interfacesMsgMycobotAngles value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_interfacesMsgMycobotAngles.encode
--- @field new fun(values?: table): Ros2Mycobot_interfacesMsgMycobotAngles
--- @brief Encode a complete Ros2Mycobot_interfacesMsgMycobotAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_interfacesMsgMycobotAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2Mycobot_interfacesMsgMycobotAngles.decode
--- @field encode fun(value: Ros2Mycobot_interfacesMsgMycobotAngles): string
--- @brief Decode exactly one complete Ros2Mycobot_interfacesMsgMycobotAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_interfacesMsgMycobotAngles value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_interfacesMsgMycobotAngles.encode
--- @field decode fun(bytes: string): Ros2Mycobot_interfacesMsgMycobotAngles
local Ros2Mycobot_interfacesMsgMycobotAngles = classes["Ros2Mycobot_interfacesMsgMycobotAngles"]

--- @class Ros2Mycobot_interfacesMsgMycobotCoords
--- @brief Complete ROS2 mycobot_interfaces/msg/MycobotCoords value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ry number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Mycobot_interfacesMsgMycobotCoords.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_interfacesMsgMycobotCoords.NATIVE_TYPE: Exact normalized native type name mycobot_interfaces/msg/MycobotCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_interfaces/msg/MycobotCoords.
--- @brief Ros2Mycobot_interfacesMsgMycobotCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_interfacesMsgMycobotCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_interfacesMsgMycobotCoords.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Mycobot_interfacesMsgMycobotCoords.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2Mycobot_interfacesMsgMycobotCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_interfacesMsgMycobotCoords value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_interfacesMsgMycobotCoords.encode
--- @field new fun(values?: table): Ros2Mycobot_interfacesMsgMycobotCoords
--- @brief Encode a complete Ros2Mycobot_interfacesMsgMycobotCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_interfacesMsgMycobotCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2Mycobot_interfacesMsgMycobotCoords.decode
--- @field encode fun(value: Ros2Mycobot_interfacesMsgMycobotCoords): string
--- @brief Decode exactly one complete Ros2Mycobot_interfacesMsgMycobotCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_interfacesMsgMycobotCoords value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_interfacesMsgMycobotCoords.encode
--- @field decode fun(bytes: string): Ros2Mycobot_interfacesMsgMycobotCoords
local Ros2Mycobot_interfacesMsgMycobotCoords = classes["Ros2Mycobot_interfacesMsgMycobotCoords"]

--- @class Ros2Mycobot_interfacesMsgMycobotGripperStatus
--- @brief Complete ROS2 mycobot_interfaces/msg/MycobotGripperStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mycobot_interfacesMsgMycobotGripperStatus.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotGripperStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_interfacesMsgMycobotGripperStatus.NATIVE_TYPE: Exact normalized native type name mycobot_interfaces/msg/MycobotGripperStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotGripperStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_interfaces/msg/MycobotGripperStatus.
--- @brief Ros2Mycobot_interfacesMsgMycobotGripperStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotGripperStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_interfacesMsgMycobotGripperStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotGripperStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_interfacesMsgMycobotGripperStatus.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotGripperStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mycobot_interfacesMsgMycobotGripperStatus.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotGripperStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mycobot_interfacesMsgMycobotGripperStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_interfacesMsgMycobotGripperStatus value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_interfacesMsgMycobotGripperStatus.encode
--- @field new fun(values?: table): Ros2Mycobot_interfacesMsgMycobotGripperStatus
--- @brief Encode a complete Ros2Mycobot_interfacesMsgMycobotGripperStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_interfacesMsgMycobotGripperStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mycobot_interfacesMsgMycobotGripperStatus.decode
--- @field encode fun(value: Ros2Mycobot_interfacesMsgMycobotGripperStatus): string
--- @brief Decode exactly one complete Ros2Mycobot_interfacesMsgMycobotGripperStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_interfacesMsgMycobotGripperStatus value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_interfacesMsgMycobotGripperStatus.encode
--- @field decode fun(bytes: string): Ros2Mycobot_interfacesMsgMycobotGripperStatus
local Ros2Mycobot_interfacesMsgMycobotGripperStatus = classes["Ros2Mycobot_interfacesMsgMycobotGripperStatus"]

--- @class Ros2Mycobot_interfacesMsgMycobotPumpStatus
--- @brief Complete ROS2 mycobot_interfaces/msg/MycobotPumpStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field status boolean Exact boolean; encoded as one byte0/1.
--- @field pin1 integer Exact int8 range -128..127.
--- @field pin2 integer Exact int8 range -128..127.
--- @brief Ros2Mycobot_interfacesMsgMycobotPumpStatus.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotPumpStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_interfacesMsgMycobotPumpStatus.NATIVE_TYPE: Exact normalized native type name mycobot_interfaces/msg/MycobotPumpStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotPumpStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_interfaces/msg/MycobotPumpStatus.
--- @brief Ros2Mycobot_interfacesMsgMycobotPumpStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotPumpStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_interfacesMsgMycobotPumpStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotPumpStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_interfacesMsgMycobotPumpStatus.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotPumpStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros2Mycobot_interfacesMsgMycobotPumpStatus.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotPumpStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros2Mycobot_interfacesMsgMycobotPumpStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_interfacesMsgMycobotPumpStatus value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_interfacesMsgMycobotPumpStatus.encode
--- @field new fun(values?: table): Ros2Mycobot_interfacesMsgMycobotPumpStatus
--- @brief Encode a complete Ros2Mycobot_interfacesMsgMycobotPumpStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_interfacesMsgMycobotPumpStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros2Mycobot_interfacesMsgMycobotPumpStatus.decode
--- @field encode fun(value: Ros2Mycobot_interfacesMsgMycobotPumpStatus): string
--- @brief Decode exactly one complete Ros2Mycobot_interfacesMsgMycobotPumpStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_interfacesMsgMycobotPumpStatus value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_interfacesMsgMycobotPumpStatus.encode
--- @field decode fun(bytes: string): Ros2Mycobot_interfacesMsgMycobotPumpStatus
local Ros2Mycobot_interfacesMsgMycobotPumpStatus = classes["Ros2Mycobot_interfacesMsgMycobotPumpStatus"]

--- @class Ros2Mycobot_interfacesMsgMycobotSetAngles
--- @brief Complete ROS2 mycobot_interfaces/msg/MycobotSetAngles value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros2Mycobot_interfacesMsgMycobotSetAngles.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotSetAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_interfacesMsgMycobotSetAngles.NATIVE_TYPE: Exact normalized native type name mycobot_interfaces/msg/MycobotSetAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotSetAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_interfaces/msg/MycobotSetAngles.
--- @brief Ros2Mycobot_interfacesMsgMycobotSetAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotSetAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_interfacesMsgMycobotSetAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotSetAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_interfacesMsgMycobotSetAngles.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotSetAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros2Mycobot_interfacesMsgMycobotSetAngles.MAX_WIRE_BYTES: Inclusive complete maximum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotSetAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 25 bytes.
--- @brief Construct Ros2Mycobot_interfacesMsgMycobotSetAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_interfacesMsgMycobotSetAngles value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_interfacesMsgMycobotSetAngles.encode
--- @field new fun(values?: table): Ros2Mycobot_interfacesMsgMycobotSetAngles
--- @brief Encode a complete Ros2Mycobot_interfacesMsgMycobotSetAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_interfacesMsgMycobotSetAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..25 bytes.
--- @see Ros2Mycobot_interfacesMsgMycobotSetAngles.decode
--- @field encode fun(value: Ros2Mycobot_interfacesMsgMycobotSetAngles): string
--- @brief Decode exactly one complete Ros2Mycobot_interfacesMsgMycobotSetAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_interfacesMsgMycobotSetAngles value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_interfacesMsgMycobotSetAngles.encode
--- @field decode fun(bytes: string): Ros2Mycobot_interfacesMsgMycobotSetAngles
local Ros2Mycobot_interfacesMsgMycobotSetAngles = classes["Ros2Mycobot_interfacesMsgMycobotSetAngles"]

--- @class Ros2Mycobot_interfacesMsgMycobotSetCoords
--- @brief Complete ROS2 mycobot_interfaces/msg/MycobotSetCoords value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ry number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @field model integer Exact int8 range -128..127.
--- @brief Ros2Mycobot_interfacesMsgMycobotSetCoords.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotSetCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_interfacesMsgMycobotSetCoords.NATIVE_TYPE: Exact normalized native type name mycobot_interfaces/msg/MycobotSetCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotSetCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_interfaces/msg/MycobotSetCoords.
--- @brief Ros2Mycobot_interfacesMsgMycobotSetCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotSetCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_interfacesMsgMycobotSetCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotSetCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_interfacesMsgMycobotSetCoords.MIN_WIRE_BYTES: Inclusive complete minimum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotSetCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 26 bytes.
--- @brief Ros2Mycobot_interfacesMsgMycobotSetCoords.MAX_WIRE_BYTES: Inclusive complete maximum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesMsgMycobotSetCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 26 bytes.
--- @brief Construct Ros2Mycobot_interfacesMsgMycobotSetCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_interfacesMsgMycobotSetCoords value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_interfacesMsgMycobotSetCoords.encode
--- @field new fun(values?: table): Ros2Mycobot_interfacesMsgMycobotSetCoords
--- @brief Encode a complete Ros2Mycobot_interfacesMsgMycobotSetCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_interfacesMsgMycobotSetCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 26..26 bytes.
--- @see Ros2Mycobot_interfacesMsgMycobotSetCoords.decode
--- @field encode fun(value: Ros2Mycobot_interfacesMsgMycobotSetCoords): string
--- @brief Decode exactly one complete Ros2Mycobot_interfacesMsgMycobotSetCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_interfacesMsgMycobotSetCoords value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_interfacesMsgMycobotSetCoords.encode
--- @field decode fun(bytes: string): Ros2Mycobot_interfacesMsgMycobotSetCoords
local Ros2Mycobot_interfacesMsgMycobotSetCoords = classes["Ros2Mycobot_interfacesMsgMycobotSetCoords"]

--- @class Ros2Mycobot_interfacesSrvGetAngles_Request
--- @brief Complete ROS2 mycobot_interfaces/srv/GetAngles_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Mycobot_interfacesSrvGetAngles_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetAngles_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_interfacesSrvGetAngles_Request.NATIVE_TYPE: Exact normalized native type name mycobot_interfaces/srv/GetAngles_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetAngles_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_interfaces/srv/GetAngles_Request.
--- @brief Ros2Mycobot_interfacesSrvGetAngles_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetAngles_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_interfacesSrvGetAngles_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetAngles_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_interfacesSrvGetAngles_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetAngles_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Mycobot_interfacesSrvGetAngles_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetAngles_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Mycobot_interfacesSrvGetAngles_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_interfacesSrvGetAngles_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_interfacesSrvGetAngles_Request.encode
--- @field new fun(values?: table): Ros2Mycobot_interfacesSrvGetAngles_Request
--- @brief Encode a complete Ros2Mycobot_interfacesSrvGetAngles_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_interfacesSrvGetAngles_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Mycobot_interfacesSrvGetAngles_Request.decode
--- @field encode fun(value: Ros2Mycobot_interfacesSrvGetAngles_Request): string
--- @brief Decode exactly one complete Ros2Mycobot_interfacesSrvGetAngles_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_interfacesSrvGetAngles_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_interfacesSrvGetAngles_Request.encode
--- @field decode fun(bytes: string): Ros2Mycobot_interfacesSrvGetAngles_Request
local Ros2Mycobot_interfacesSrvGetAngles_Request = classes["Ros2Mycobot_interfacesSrvGetAngles_Request"]

--- @class Ros2Mycobot_interfacesSrvGetAngles_Response
--- @brief Complete ROS2 mycobot_interfaces/srv/GetAngles_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Mycobot_interfacesSrvGetAngles_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetAngles_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_interfacesSrvGetAngles_Response.NATIVE_TYPE: Exact normalized native type name mycobot_interfaces/srv/GetAngles_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetAngles_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_interfaces/srv/GetAngles_Response.
--- @brief Ros2Mycobot_interfacesSrvGetAngles_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetAngles_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_interfacesSrvGetAngles_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetAngles_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_interfacesSrvGetAngles_Response.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetAngles_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Mycobot_interfacesSrvGetAngles_Response.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetAngles_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2Mycobot_interfacesSrvGetAngles_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_interfacesSrvGetAngles_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_interfacesSrvGetAngles_Response.encode
--- @field new fun(values?: table): Ros2Mycobot_interfacesSrvGetAngles_Response
--- @brief Encode a complete Ros2Mycobot_interfacesSrvGetAngles_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_interfacesSrvGetAngles_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2Mycobot_interfacesSrvGetAngles_Response.decode
--- @field encode fun(value: Ros2Mycobot_interfacesSrvGetAngles_Response): string
--- @brief Decode exactly one complete Ros2Mycobot_interfacesSrvGetAngles_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_interfacesSrvGetAngles_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_interfacesSrvGetAngles_Response.encode
--- @field decode fun(bytes: string): Ros2Mycobot_interfacesSrvGetAngles_Response
local Ros2Mycobot_interfacesSrvGetAngles_Response = classes["Ros2Mycobot_interfacesSrvGetAngles_Response"]

--- @class Ros2Mycobot_interfacesSrvGetCoords_Request
--- @brief Complete ROS2 mycobot_interfaces/srv/GetCoords_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Mycobot_interfacesSrvGetCoords_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetCoords_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_interfacesSrvGetCoords_Request.NATIVE_TYPE: Exact normalized native type name mycobot_interfaces/srv/GetCoords_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetCoords_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_interfaces/srv/GetCoords_Request.
--- @brief Ros2Mycobot_interfacesSrvGetCoords_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetCoords_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_interfacesSrvGetCoords_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetCoords_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_interfacesSrvGetCoords_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetCoords_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Mycobot_interfacesSrvGetCoords_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetCoords_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Mycobot_interfacesSrvGetCoords_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_interfacesSrvGetCoords_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_interfacesSrvGetCoords_Request.encode
--- @field new fun(values?: table): Ros2Mycobot_interfacesSrvGetCoords_Request
--- @brief Encode a complete Ros2Mycobot_interfacesSrvGetCoords_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_interfacesSrvGetCoords_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Mycobot_interfacesSrvGetCoords_Request.decode
--- @field encode fun(value: Ros2Mycobot_interfacesSrvGetCoords_Request): string
--- @brief Decode exactly one complete Ros2Mycobot_interfacesSrvGetCoords_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_interfacesSrvGetCoords_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_interfacesSrvGetCoords_Request.encode
--- @field decode fun(bytes: string): Ros2Mycobot_interfacesSrvGetCoords_Request
local Ros2Mycobot_interfacesSrvGetCoords_Request = classes["Ros2Mycobot_interfacesSrvGetCoords_Request"]

--- @class Ros2Mycobot_interfacesSrvGetCoords_Response
--- @brief Complete ROS2 mycobot_interfaces/srv/GetCoords_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ry number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Mycobot_interfacesSrvGetCoords_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetCoords_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_interfacesSrvGetCoords_Response.NATIVE_TYPE: Exact normalized native type name mycobot_interfaces/srv/GetCoords_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetCoords_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_interfaces/srv/GetCoords_Response.
--- @brief Ros2Mycobot_interfacesSrvGetCoords_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetCoords_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_interfacesSrvGetCoords_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetCoords_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_interfacesSrvGetCoords_Response.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetCoords_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Mycobot_interfacesSrvGetCoords_Response.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGetCoords_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2Mycobot_interfacesSrvGetCoords_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_interfacesSrvGetCoords_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_interfacesSrvGetCoords_Response.encode
--- @field new fun(values?: table): Ros2Mycobot_interfacesSrvGetCoords_Response
--- @brief Encode a complete Ros2Mycobot_interfacesSrvGetCoords_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_interfacesSrvGetCoords_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2Mycobot_interfacesSrvGetCoords_Response.decode
--- @field encode fun(value: Ros2Mycobot_interfacesSrvGetCoords_Response): string
--- @brief Decode exactly one complete Ros2Mycobot_interfacesSrvGetCoords_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_interfacesSrvGetCoords_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_interfacesSrvGetCoords_Response.encode
--- @field decode fun(bytes: string): Ros2Mycobot_interfacesSrvGetCoords_Response
local Ros2Mycobot_interfacesSrvGetCoords_Response = classes["Ros2Mycobot_interfacesSrvGetCoords_Response"]

--- @class Ros2Mycobot_interfacesSrvGripperStatus_Request
--- @brief Complete ROS2 mycobot_interfaces/srv/GripperStatus_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mycobot_interfacesSrvGripperStatus_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGripperStatus_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_interfacesSrvGripperStatus_Request.NATIVE_TYPE: Exact normalized native type name mycobot_interfaces/srv/GripperStatus_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGripperStatus_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_interfaces/srv/GripperStatus_Request.
--- @brief Ros2Mycobot_interfacesSrvGripperStatus_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGripperStatus_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_interfacesSrvGripperStatus_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGripperStatus_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_interfacesSrvGripperStatus_Request.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGripperStatus_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mycobot_interfacesSrvGripperStatus_Request.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGripperStatus_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mycobot_interfacesSrvGripperStatus_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_interfacesSrvGripperStatus_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_interfacesSrvGripperStatus_Request.encode
--- @field new fun(values?: table): Ros2Mycobot_interfacesSrvGripperStatus_Request
--- @brief Encode a complete Ros2Mycobot_interfacesSrvGripperStatus_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_interfacesSrvGripperStatus_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mycobot_interfacesSrvGripperStatus_Request.decode
--- @field encode fun(value: Ros2Mycobot_interfacesSrvGripperStatus_Request): string
--- @brief Decode exactly one complete Ros2Mycobot_interfacesSrvGripperStatus_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_interfacesSrvGripperStatus_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_interfacesSrvGripperStatus_Request.encode
--- @field decode fun(bytes: string): Ros2Mycobot_interfacesSrvGripperStatus_Request
local Ros2Mycobot_interfacesSrvGripperStatus_Request = classes["Ros2Mycobot_interfacesSrvGripperStatus_Request"]

--- @class Ros2Mycobot_interfacesSrvGripperStatus_Response
--- @brief Complete ROS2 mycobot_interfaces/srv/GripperStatus_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mycobot_interfacesSrvGripperStatus_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGripperStatus_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_interfacesSrvGripperStatus_Response.NATIVE_TYPE: Exact normalized native type name mycobot_interfaces/srv/GripperStatus_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGripperStatus_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_interfaces/srv/GripperStatus_Response.
--- @brief Ros2Mycobot_interfacesSrvGripperStatus_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGripperStatus_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_interfacesSrvGripperStatus_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGripperStatus_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_interfacesSrvGripperStatus_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGripperStatus_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mycobot_interfacesSrvGripperStatus_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvGripperStatus_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mycobot_interfacesSrvGripperStatus_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_interfacesSrvGripperStatus_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_interfacesSrvGripperStatus_Response.encode
--- @field new fun(values?: table): Ros2Mycobot_interfacesSrvGripperStatus_Response
--- @brief Encode a complete Ros2Mycobot_interfacesSrvGripperStatus_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_interfacesSrvGripperStatus_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mycobot_interfacesSrvGripperStatus_Response.decode
--- @field encode fun(value: Ros2Mycobot_interfacesSrvGripperStatus_Response): string
--- @brief Decode exactly one complete Ros2Mycobot_interfacesSrvGripperStatus_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_interfacesSrvGripperStatus_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_interfacesSrvGripperStatus_Response.encode
--- @field decode fun(bytes: string): Ros2Mycobot_interfacesSrvGripperStatus_Response
local Ros2Mycobot_interfacesSrvGripperStatus_Response = classes["Ros2Mycobot_interfacesSrvGripperStatus_Response"]

--- @class Ros2Mycobot_interfacesSrvPumpStatus_Request
--- @brief Complete ROS2 mycobot_interfaces/srv/PumpStatus_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field status boolean Exact boolean; encoded as one byte0/1.
--- @field pin1 integer Exact int8 range -128..127.
--- @field pin2 integer Exact int8 range -128..127.
--- @brief Ros2Mycobot_interfacesSrvPumpStatus_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvPumpStatus_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_interfacesSrvPumpStatus_Request.NATIVE_TYPE: Exact normalized native type name mycobot_interfaces/srv/PumpStatus_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvPumpStatus_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_interfaces/srv/PumpStatus_Request.
--- @brief Ros2Mycobot_interfacesSrvPumpStatus_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvPumpStatus_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_interfacesSrvPumpStatus_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvPumpStatus_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_interfacesSrvPumpStatus_Request.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvPumpStatus_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros2Mycobot_interfacesSrvPumpStatus_Request.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvPumpStatus_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros2Mycobot_interfacesSrvPumpStatus_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_interfacesSrvPumpStatus_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_interfacesSrvPumpStatus_Request.encode
--- @field new fun(values?: table): Ros2Mycobot_interfacesSrvPumpStatus_Request
--- @brief Encode a complete Ros2Mycobot_interfacesSrvPumpStatus_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_interfacesSrvPumpStatus_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros2Mycobot_interfacesSrvPumpStatus_Request.decode
--- @field encode fun(value: Ros2Mycobot_interfacesSrvPumpStatus_Request): string
--- @brief Decode exactly one complete Ros2Mycobot_interfacesSrvPumpStatus_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_interfacesSrvPumpStatus_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_interfacesSrvPumpStatus_Request.encode
--- @field decode fun(bytes: string): Ros2Mycobot_interfacesSrvPumpStatus_Request
local Ros2Mycobot_interfacesSrvPumpStatus_Request = classes["Ros2Mycobot_interfacesSrvPumpStatus_Request"]

--- @class Ros2Mycobot_interfacesSrvPumpStatus_Response
--- @brief Complete ROS2 mycobot_interfaces/srv/PumpStatus_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mycobot_interfacesSrvPumpStatus_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvPumpStatus_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_interfacesSrvPumpStatus_Response.NATIVE_TYPE: Exact normalized native type name mycobot_interfaces/srv/PumpStatus_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvPumpStatus_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_interfaces/srv/PumpStatus_Response.
--- @brief Ros2Mycobot_interfacesSrvPumpStatus_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvPumpStatus_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_interfacesSrvPumpStatus_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvPumpStatus_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_interfacesSrvPumpStatus_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvPumpStatus_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mycobot_interfacesSrvPumpStatus_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvPumpStatus_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mycobot_interfacesSrvPumpStatus_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_interfacesSrvPumpStatus_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_interfacesSrvPumpStatus_Response.encode
--- @field new fun(values?: table): Ros2Mycobot_interfacesSrvPumpStatus_Response
--- @brief Encode a complete Ros2Mycobot_interfacesSrvPumpStatus_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_interfacesSrvPumpStatus_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mycobot_interfacesSrvPumpStatus_Response.decode
--- @field encode fun(value: Ros2Mycobot_interfacesSrvPumpStatus_Response): string
--- @brief Decode exactly one complete Ros2Mycobot_interfacesSrvPumpStatus_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_interfacesSrvPumpStatus_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_interfacesSrvPumpStatus_Response.encode
--- @field decode fun(bytes: string): Ros2Mycobot_interfacesSrvPumpStatus_Response
local Ros2Mycobot_interfacesSrvPumpStatus_Response = classes["Ros2Mycobot_interfacesSrvPumpStatus_Response"]

--- @class Ros2Mycobot_interfacesSrvSetAngles_Request
--- @brief Complete ROS2 mycobot_interfaces/srv/SetAngles_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros2Mycobot_interfacesSrvSetAngles_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetAngles_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_interfacesSrvSetAngles_Request.NATIVE_TYPE: Exact normalized native type name mycobot_interfaces/srv/SetAngles_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetAngles_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_interfaces/srv/SetAngles_Request.
--- @brief Ros2Mycobot_interfacesSrvSetAngles_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetAngles_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_interfacesSrvSetAngles_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetAngles_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_interfacesSrvSetAngles_Request.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetAngles_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros2Mycobot_interfacesSrvSetAngles_Request.MAX_WIRE_BYTES: Inclusive complete maximum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetAngles_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 25 bytes.
--- @brief Construct Ros2Mycobot_interfacesSrvSetAngles_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_interfacesSrvSetAngles_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_interfacesSrvSetAngles_Request.encode
--- @field new fun(values?: table): Ros2Mycobot_interfacesSrvSetAngles_Request
--- @brief Encode a complete Ros2Mycobot_interfacesSrvSetAngles_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_interfacesSrvSetAngles_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..25 bytes.
--- @see Ros2Mycobot_interfacesSrvSetAngles_Request.decode
--- @field encode fun(value: Ros2Mycobot_interfacesSrvSetAngles_Request): string
--- @brief Decode exactly one complete Ros2Mycobot_interfacesSrvSetAngles_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_interfacesSrvSetAngles_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_interfacesSrvSetAngles_Request.encode
--- @field decode fun(bytes: string): Ros2Mycobot_interfacesSrvSetAngles_Request
local Ros2Mycobot_interfacesSrvSetAngles_Request = classes["Ros2Mycobot_interfacesSrvSetAngles_Request"]

--- @class Ros2Mycobot_interfacesSrvSetAngles_Response
--- @brief Complete ROS2 mycobot_interfaces/srv/SetAngles_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mycobot_interfacesSrvSetAngles_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetAngles_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_interfacesSrvSetAngles_Response.NATIVE_TYPE: Exact normalized native type name mycobot_interfaces/srv/SetAngles_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetAngles_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_interfaces/srv/SetAngles_Response.
--- @brief Ros2Mycobot_interfacesSrvSetAngles_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetAngles_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_interfacesSrvSetAngles_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetAngles_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_interfacesSrvSetAngles_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetAngles_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mycobot_interfacesSrvSetAngles_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetAngles_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mycobot_interfacesSrvSetAngles_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_interfacesSrvSetAngles_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_interfacesSrvSetAngles_Response.encode
--- @field new fun(values?: table): Ros2Mycobot_interfacesSrvSetAngles_Response
--- @brief Encode a complete Ros2Mycobot_interfacesSrvSetAngles_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_interfacesSrvSetAngles_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mycobot_interfacesSrvSetAngles_Response.decode
--- @field encode fun(value: Ros2Mycobot_interfacesSrvSetAngles_Response): string
--- @brief Decode exactly one complete Ros2Mycobot_interfacesSrvSetAngles_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_interfacesSrvSetAngles_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_interfacesSrvSetAngles_Response.encode
--- @field decode fun(bytes: string): Ros2Mycobot_interfacesSrvSetAngles_Response
local Ros2Mycobot_interfacesSrvSetAngles_Response = classes["Ros2Mycobot_interfacesSrvSetAngles_Response"]

--- @class Ros2Mycobot_interfacesSrvSetCoords_Request
--- @brief Complete ROS2 mycobot_interfaces/srv/SetCoords_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ry number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @field model integer Exact int8 range -128..127.
--- @brief Ros2Mycobot_interfacesSrvSetCoords_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetCoords_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_interfacesSrvSetCoords_Request.NATIVE_TYPE: Exact normalized native type name mycobot_interfaces/srv/SetCoords_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetCoords_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_interfaces/srv/SetCoords_Request.
--- @brief Ros2Mycobot_interfacesSrvSetCoords_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetCoords_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_interfacesSrvSetCoords_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetCoords_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_interfacesSrvSetCoords_Request.MIN_WIRE_BYTES: Inclusive complete minimum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetCoords_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 26 bytes.
--- @brief Ros2Mycobot_interfacesSrvSetCoords_Request.MAX_WIRE_BYTES: Inclusive complete maximum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetCoords_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 26 bytes.
--- @brief Construct Ros2Mycobot_interfacesSrvSetCoords_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_interfacesSrvSetCoords_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_interfacesSrvSetCoords_Request.encode
--- @field new fun(values?: table): Ros2Mycobot_interfacesSrvSetCoords_Request
--- @brief Encode a complete Ros2Mycobot_interfacesSrvSetCoords_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_interfacesSrvSetCoords_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 26..26 bytes.
--- @see Ros2Mycobot_interfacesSrvSetCoords_Request.decode
--- @field encode fun(value: Ros2Mycobot_interfacesSrvSetCoords_Request): string
--- @brief Decode exactly one complete Ros2Mycobot_interfacesSrvSetCoords_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_interfacesSrvSetCoords_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_interfacesSrvSetCoords_Request.encode
--- @field decode fun(bytes: string): Ros2Mycobot_interfacesSrvSetCoords_Request
local Ros2Mycobot_interfacesSrvSetCoords_Request = classes["Ros2Mycobot_interfacesSrvSetCoords_Request"]

--- @class Ros2Mycobot_interfacesSrvSetCoords_Response
--- @brief Complete ROS2 mycobot_interfaces/srv/SetCoords_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mycobot_interfacesSrvSetCoords_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetCoords_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_interfacesSrvSetCoords_Response.NATIVE_TYPE: Exact normalized native type name mycobot_interfaces/srv/SetCoords_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetCoords_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_interfaces/srv/SetCoords_Response.
--- @brief Ros2Mycobot_interfacesSrvSetCoords_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetCoords_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_interfacesSrvSetCoords_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetCoords_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_interfacesSrvSetCoords_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetCoords_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mycobot_interfacesSrvSetCoords_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_interfacesSrvSetCoords_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mycobot_interfacesSrvSetCoords_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_interfacesSrvSetCoords_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_interfacesSrvSetCoords_Response.encode
--- @field new fun(values?: table): Ros2Mycobot_interfacesSrvSetCoords_Response
--- @brief Encode a complete Ros2Mycobot_interfacesSrvSetCoords_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_interfacesSrvSetCoords_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mycobot_interfacesSrvSetCoords_Response.decode
--- @field encode fun(value: Ros2Mycobot_interfacesSrvSetCoords_Response): string
--- @brief Decode exactly one complete Ros2Mycobot_interfacesSrvSetCoords_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_interfacesSrvSetCoords_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_interfacesSrvSetCoords_Response.encode
--- @field decode fun(bytes: string): Ros2Mycobot_interfacesSrvSetCoords_Response
local Ros2Mycobot_interfacesSrvSetCoords_Response = classes["Ros2Mycobot_interfacesSrvSetCoords_Response"]

--- @class Ros2Mycobot_pro450_interfacesMsgMycobotAngles
--- @brief Complete ROS2 mycobot_pro450_interfaces/msg/MycobotAngles value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotAngles.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotAngles.NATIVE_TYPE: Exact normalized native type name mycobot_pro450_interfaces/msg/MycobotAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_pro450_interfaces/msg/MycobotAngles.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotAngles.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotAngles.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2Mycobot_pro450_interfacesMsgMycobotAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_pro450_interfacesMsgMycobotAngles value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles.encode
--- @field new fun(values?: table): Ros2Mycobot_pro450_interfacesMsgMycobotAngles
--- @brief Encode a complete Ros2Mycobot_pro450_interfacesMsgMycobotAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_pro450_interfacesMsgMycobotAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles.decode
--- @field encode fun(value: Ros2Mycobot_pro450_interfacesMsgMycobotAngles): string
--- @brief Decode exactly one complete Ros2Mycobot_pro450_interfacesMsgMycobotAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_pro450_interfacesMsgMycobotAngles value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotAngles.encode
--- @field decode fun(bytes: string): Ros2Mycobot_pro450_interfacesMsgMycobotAngles
local Ros2Mycobot_pro450_interfacesMsgMycobotAngles = classes["Ros2Mycobot_pro450_interfacesMsgMycobotAngles"]

--- @class Ros2Mycobot_pro450_interfacesMsgMycobotCoords
--- @brief Complete ROS2 mycobot_pro450_interfaces/msg/MycobotCoords value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ry number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotCoords.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotCoords.NATIVE_TYPE: Exact normalized native type name mycobot_pro450_interfaces/msg/MycobotCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_pro450_interfaces/msg/MycobotCoords.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotCoords.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotCoords.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2Mycobot_pro450_interfacesMsgMycobotCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_pro450_interfacesMsgMycobotCoords value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords.encode
--- @field new fun(values?: table): Ros2Mycobot_pro450_interfacesMsgMycobotCoords
--- @brief Encode a complete Ros2Mycobot_pro450_interfacesMsgMycobotCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_pro450_interfacesMsgMycobotCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords.decode
--- @field encode fun(value: Ros2Mycobot_pro450_interfacesMsgMycobotCoords): string
--- @brief Decode exactly one complete Ros2Mycobot_pro450_interfacesMsgMycobotCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_pro450_interfacesMsgMycobotCoords value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotCoords.encode
--- @field decode fun(bytes: string): Ros2Mycobot_pro450_interfacesMsgMycobotCoords
local Ros2Mycobot_pro450_interfacesMsgMycobotCoords = classes["Ros2Mycobot_pro450_interfacesMsgMycobotCoords"]

--- @class Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus
--- @brief Complete ROS2 mycobot_pro450_interfaces/msg/MycobotGripperStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus.NATIVE_TYPE: Exact normalized native type name mycobot_pro450_interfaces/msg/MycobotGripperStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_pro450_interfaces/msg/MycobotGripperStatus.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus.encode
--- @field new fun(values?: table): Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus
--- @brief Encode a complete Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus.decode
--- @field encode fun(value: Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus): string
--- @brief Decode exactly one complete Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus.encode
--- @field decode fun(bytes: string): Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus
local Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus = classes["Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus"]

--- @class Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles
--- @brief Complete ROS2 mycobot_pro450_interfaces/msg/MycobotSetAngles value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles.NATIVE_TYPE: Exact normalized native type name mycobot_pro450_interfaces/msg/MycobotSetAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_pro450_interfaces/msg/MycobotSetAngles.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles.MAX_WIRE_BYTES: Inclusive complete maximum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 25 bytes.
--- @brief Construct Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles.encode
--- @field new fun(values?: table): Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles
--- @brief Encode a complete Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..25 bytes.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles.decode
--- @field encode fun(value: Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles): string
--- @brief Decode exactly one complete Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles.encode
--- @field decode fun(bytes: string): Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles
local Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles = classes["Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles"]

--- @class Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords
--- @brief Complete ROS2 mycobot_pro450_interfaces/msg/MycobotSetCoords value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ry number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords.NATIVE_TYPE: Exact normalized native type name mycobot_pro450_interfaces/msg/MycobotSetCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_pro450_interfaces/msg/MycobotSetCoords.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords.MAX_WIRE_BYTES: Inclusive complete maximum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 25 bytes.
--- @brief Construct Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords.encode
--- @field new fun(values?: table): Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords
--- @brief Encode a complete Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..25 bytes.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords.decode
--- @field encode fun(value: Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords): string
--- @brief Decode exactly one complete Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords.encode
--- @field decode fun(bytes: string): Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords
local Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords = classes["Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords"]

--- @class Ros2Mycobot_pro450_interfacesSrvGetAngles_Request
--- @brief Complete ROS2 mycobot_pro450_interfaces/srv/GetAngles_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Mycobot_pro450_interfacesSrvGetAngles_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetAngles_Request.NATIVE_TYPE: Exact normalized native type name mycobot_pro450_interfaces/srv/GetAngles_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_pro450_interfaces/srv/GetAngles_Request.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetAngles_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetAngles_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetAngles_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetAngles_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Mycobot_pro450_interfacesSrvGetAngles_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_pro450_interfacesSrvGetAngles_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request.encode
--- @field new fun(values?: table): Ros2Mycobot_pro450_interfacesSrvGetAngles_Request
--- @brief Encode a complete Ros2Mycobot_pro450_interfacesSrvGetAngles_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_pro450_interfacesSrvGetAngles_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request.decode
--- @field encode fun(value: Ros2Mycobot_pro450_interfacesSrvGetAngles_Request): string
--- @brief Decode exactly one complete Ros2Mycobot_pro450_interfacesSrvGetAngles_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_pro450_interfacesSrvGetAngles_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Request.encode
--- @field decode fun(bytes: string): Ros2Mycobot_pro450_interfacesSrvGetAngles_Request
local Ros2Mycobot_pro450_interfacesSrvGetAngles_Request = classes["Ros2Mycobot_pro450_interfacesSrvGetAngles_Request"]

--- @class Ros2Mycobot_pro450_interfacesSrvGetAngles_Response
--- @brief Complete ROS2 mycobot_pro450_interfaces/srv/GetAngles_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetAngles_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetAngles_Response.NATIVE_TYPE: Exact normalized native type name mycobot_pro450_interfaces/srv/GetAngles_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_pro450_interfaces/srv/GetAngles_Response.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetAngles_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetAngles_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetAngles_Response.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetAngles_Response.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2Mycobot_pro450_interfacesSrvGetAngles_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_pro450_interfacesSrvGetAngles_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response.encode
--- @field new fun(values?: table): Ros2Mycobot_pro450_interfacesSrvGetAngles_Response
--- @brief Encode a complete Ros2Mycobot_pro450_interfacesSrvGetAngles_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_pro450_interfacesSrvGetAngles_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response.decode
--- @field encode fun(value: Ros2Mycobot_pro450_interfacesSrvGetAngles_Response): string
--- @brief Decode exactly one complete Ros2Mycobot_pro450_interfacesSrvGetAngles_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_pro450_interfacesSrvGetAngles_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_pro450_interfacesSrvGetAngles_Response.encode
--- @field decode fun(bytes: string): Ros2Mycobot_pro450_interfacesSrvGetAngles_Response
local Ros2Mycobot_pro450_interfacesSrvGetAngles_Response = classes["Ros2Mycobot_pro450_interfacesSrvGetAngles_Response"]

--- @class Ros2Mycobot_pro450_interfacesSrvGetCoords_Request
--- @brief Complete ROS2 mycobot_pro450_interfaces/srv/GetCoords_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Mycobot_pro450_interfacesSrvGetCoords_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetCoords_Request.NATIVE_TYPE: Exact normalized native type name mycobot_pro450_interfaces/srv/GetCoords_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_pro450_interfaces/srv/GetCoords_Request.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetCoords_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetCoords_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetCoords_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetCoords_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Mycobot_pro450_interfacesSrvGetCoords_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_pro450_interfacesSrvGetCoords_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request.encode
--- @field new fun(values?: table): Ros2Mycobot_pro450_interfacesSrvGetCoords_Request
--- @brief Encode a complete Ros2Mycobot_pro450_interfacesSrvGetCoords_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_pro450_interfacesSrvGetCoords_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request.decode
--- @field encode fun(value: Ros2Mycobot_pro450_interfacesSrvGetCoords_Request): string
--- @brief Decode exactly one complete Ros2Mycobot_pro450_interfacesSrvGetCoords_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_pro450_interfacesSrvGetCoords_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Request.encode
--- @field decode fun(bytes: string): Ros2Mycobot_pro450_interfacesSrvGetCoords_Request
local Ros2Mycobot_pro450_interfacesSrvGetCoords_Request = classes["Ros2Mycobot_pro450_interfacesSrvGetCoords_Request"]

--- @class Ros2Mycobot_pro450_interfacesSrvGetCoords_Response
--- @brief Complete ROS2 mycobot_pro450_interfaces/srv/GetCoords_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ry number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetCoords_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetCoords_Response.NATIVE_TYPE: Exact normalized native type name mycobot_pro450_interfaces/srv/GetCoords_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_pro450_interfaces/srv/GetCoords_Response.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetCoords_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetCoords_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetCoords_Response.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetCoords_Response.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2Mycobot_pro450_interfacesSrvGetCoords_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_pro450_interfacesSrvGetCoords_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response.encode
--- @field new fun(values?: table): Ros2Mycobot_pro450_interfacesSrvGetCoords_Response
--- @brief Encode a complete Ros2Mycobot_pro450_interfacesSrvGetCoords_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_pro450_interfacesSrvGetCoords_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response.decode
--- @field encode fun(value: Ros2Mycobot_pro450_interfacesSrvGetCoords_Response): string
--- @brief Decode exactly one complete Ros2Mycobot_pro450_interfacesSrvGetCoords_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_pro450_interfacesSrvGetCoords_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_pro450_interfacesSrvGetCoords_Response.encode
--- @field decode fun(bytes: string): Ros2Mycobot_pro450_interfacesSrvGetCoords_Response
local Ros2Mycobot_pro450_interfacesSrvGetCoords_Response = classes["Ros2Mycobot_pro450_interfacesSrvGetCoords_Response"]

--- @class Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request
--- @brief Complete ROS2 mycobot_pro450_interfaces/srv/GetGripperValue_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request.NATIVE_TYPE: Exact normalized native type name mycobot_pro450_interfaces/srv/GetGripperValue_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_pro450_interfaces/srv/GetGripperValue_Request.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request.encode
--- @field new fun(values?: table): Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request
--- @brief Encode a complete Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request.decode
--- @field encode fun(value: Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request): string
--- @brief Decode exactly one complete Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request.encode
--- @field decode fun(bytes: string): Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request
local Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request = classes["Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request"]

--- @class Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response
--- @brief Complete ROS2 mycobot_pro450_interfaces/srv/GetGripperValue_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field gripper_angle integer Exact int8 range -128..127.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response.NATIVE_TYPE: Exact normalized native type name mycobot_pro450_interfaces/srv/GetGripperValue_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_pro450_interfaces/srv/GetGripperValue_Response.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response.encode
--- @field new fun(values?: table): Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response
--- @brief Encode a complete Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response.decode
--- @field encode fun(value: Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response): string
--- @brief Decode exactly one complete Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response.encode
--- @field decode fun(bytes: string): Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response
local Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response = classes["Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response"]

--- @class Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request
--- @brief Complete ROS2 mycobot_pro450_interfaces/srv/GripperStatus_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request.NATIVE_TYPE: Exact normalized native type name mycobot_pro450_interfaces/srv/GripperStatus_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_pro450_interfaces/srv/GripperStatus_Request.
--- @brief Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request.encode
--- @field new fun(values?: table): Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request
--- @brief Encode a complete Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request.decode
--- @field encode fun(value: Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request): string
--- @brief Decode exactly one complete Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request.encode
--- @field decode fun(bytes: string): Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request
local Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request = classes["Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request"]

--- @class Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response
--- @brief Complete ROS2 mycobot_pro450_interfaces/srv/GripperStatus_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response.NATIVE_TYPE: Exact normalized native type name mycobot_pro450_interfaces/srv/GripperStatus_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_pro450_interfaces/srv/GripperStatus_Response.
--- @brief Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response.encode
--- @field new fun(values?: table): Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response
--- @brief Encode a complete Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response.decode
--- @field encode fun(value: Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response): string
--- @brief Decode exactly one complete Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response.encode
--- @field decode fun(bytes: string): Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response
local Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response = classes["Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response"]

--- @class Ros2Mycobot_pro450_interfacesSrvSetAngles_Request
--- @brief Complete ROS2 mycobot_pro450_interfaces/srv/SetAngles_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetAngles_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetAngles_Request.NATIVE_TYPE: Exact normalized native type name mycobot_pro450_interfaces/srv/SetAngles_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_pro450_interfaces/srv/SetAngles_Request.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetAngles_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetAngles_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetAngles_Request.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetAngles_Request.MAX_WIRE_BYTES: Inclusive complete maximum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 25 bytes.
--- @brief Construct Ros2Mycobot_pro450_interfacesSrvSetAngles_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_pro450_interfacesSrvSetAngles_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request.encode
--- @field new fun(values?: table): Ros2Mycobot_pro450_interfacesSrvSetAngles_Request
--- @brief Encode a complete Ros2Mycobot_pro450_interfacesSrvSetAngles_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_pro450_interfacesSrvSetAngles_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..25 bytes.
--- @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request.decode
--- @field encode fun(value: Ros2Mycobot_pro450_interfacesSrvSetAngles_Request): string
--- @brief Decode exactly one complete Ros2Mycobot_pro450_interfacesSrvSetAngles_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_pro450_interfacesSrvSetAngles_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Request.encode
--- @field decode fun(bytes: string): Ros2Mycobot_pro450_interfacesSrvSetAngles_Request
local Ros2Mycobot_pro450_interfacesSrvSetAngles_Request = classes["Ros2Mycobot_pro450_interfacesSrvSetAngles_Request"]

--- @class Ros2Mycobot_pro450_interfacesSrvSetAngles_Response
--- @brief Complete ROS2 mycobot_pro450_interfaces/srv/SetAngles_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetAngles_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetAngles_Response.NATIVE_TYPE: Exact normalized native type name mycobot_pro450_interfaces/srv/SetAngles_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_pro450_interfaces/srv/SetAngles_Response.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetAngles_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetAngles_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetAngles_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetAngles_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mycobot_pro450_interfacesSrvSetAngles_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_pro450_interfacesSrvSetAngles_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response.encode
--- @field new fun(values?: table): Ros2Mycobot_pro450_interfacesSrvSetAngles_Response
--- @brief Encode a complete Ros2Mycobot_pro450_interfacesSrvSetAngles_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_pro450_interfacesSrvSetAngles_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response.decode
--- @field encode fun(value: Ros2Mycobot_pro450_interfacesSrvSetAngles_Response): string
--- @brief Decode exactly one complete Ros2Mycobot_pro450_interfacesSrvSetAngles_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_pro450_interfacesSrvSetAngles_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_pro450_interfacesSrvSetAngles_Response.encode
--- @field decode fun(bytes: string): Ros2Mycobot_pro450_interfacesSrvSetAngles_Response
local Ros2Mycobot_pro450_interfacesSrvSetAngles_Response = classes["Ros2Mycobot_pro450_interfacesSrvSetAngles_Response"]

--- @class Ros2Mycobot_pro450_interfacesSrvSetCoords_Request
--- @brief Complete ROS2 mycobot_pro450_interfaces/srv/SetCoords_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ry number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetCoords_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetCoords_Request.NATIVE_TYPE: Exact normalized native type name mycobot_pro450_interfaces/srv/SetCoords_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_pro450_interfaces/srv/SetCoords_Request.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetCoords_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetCoords_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetCoords_Request.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetCoords_Request.MAX_WIRE_BYTES: Inclusive complete maximum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 25 bytes.
--- @brief Construct Ros2Mycobot_pro450_interfacesSrvSetCoords_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_pro450_interfacesSrvSetCoords_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request.encode
--- @field new fun(values?: table): Ros2Mycobot_pro450_interfacesSrvSetCoords_Request
--- @brief Encode a complete Ros2Mycobot_pro450_interfacesSrvSetCoords_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_pro450_interfacesSrvSetCoords_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..25 bytes.
--- @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request.decode
--- @field encode fun(value: Ros2Mycobot_pro450_interfacesSrvSetCoords_Request): string
--- @brief Decode exactly one complete Ros2Mycobot_pro450_interfacesSrvSetCoords_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_pro450_interfacesSrvSetCoords_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Request.encode
--- @field decode fun(bytes: string): Ros2Mycobot_pro450_interfacesSrvSetCoords_Request
local Ros2Mycobot_pro450_interfacesSrvSetCoords_Request = classes["Ros2Mycobot_pro450_interfacesSrvSetCoords_Request"]

--- @class Ros2Mycobot_pro450_interfacesSrvSetCoords_Response
--- @brief Complete ROS2 mycobot_pro450_interfaces/srv/SetCoords_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetCoords_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetCoords_Response.NATIVE_TYPE: Exact normalized native type name mycobot_pro450_interfaces/srv/SetCoords_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_pro450_interfaces/srv/SetCoords_Response.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetCoords_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetCoords_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetCoords_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mycobot_pro450_interfacesSrvSetCoords_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mycobot_pro450_interfacesSrvSetCoords_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mycobot_pro450_interfacesSrvSetCoords_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response.encode
--- @field new fun(values?: table): Ros2Mycobot_pro450_interfacesSrvSetCoords_Response
--- @brief Encode a complete Ros2Mycobot_pro450_interfacesSrvSetCoords_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mycobot_pro450_interfacesSrvSetCoords_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response.decode
--- @field encode fun(value: Ros2Mycobot_pro450_interfacesSrvSetCoords_Response): string
--- @brief Decode exactly one complete Ros2Mycobot_pro450_interfacesSrvSetCoords_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mycobot_pro450_interfacesSrvSetCoords_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mycobot_pro450_interfacesSrvSetCoords_Response.encode
--- @field decode fun(bytes: string): Ros2Mycobot_pro450_interfacesSrvSetCoords_Response
local Ros2Mycobot_pro450_interfacesSrvSetCoords_Response = classes["Ros2Mycobot_pro450_interfacesSrvSetCoords_Response"]

--- @class Ros2Mypalletizer_interfacesMsgMypalAngles
--- @brief Complete ROS2 mypalletizer_interfaces/msg/MypalAngles value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Mypalletizer_interfacesMsgMypalAngles.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mypalletizer_interfacesMsgMypalAngles.NATIVE_TYPE: Exact normalized native type name mypalletizer_interfaces/msg/MypalAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_interfaces/msg/MypalAngles.
--- @brief Ros2Mypalletizer_interfacesMsgMypalAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mypalletizer_interfacesMsgMypalAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mypalletizer_interfacesMsgMypalAngles.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Mypalletizer_interfacesMsgMypalAngles.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros2Mypalletizer_interfacesMsgMypalAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mypalletizer_interfacesMsgMypalAngles value New mutable complete value; no ROS resource.
--- @see Ros2Mypalletizer_interfacesMsgMypalAngles.encode
--- @field new fun(values?: table): Ros2Mypalletizer_interfacesMsgMypalAngles
--- @brief Encode a complete Ros2Mypalletizer_interfacesMsgMypalAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mypalletizer_interfacesMsgMypalAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros2Mypalletizer_interfacesMsgMypalAngles.decode
--- @field encode fun(value: Ros2Mypalletizer_interfacesMsgMypalAngles): string
--- @brief Decode exactly one complete Ros2Mypalletizer_interfacesMsgMypalAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mypalletizer_interfacesMsgMypalAngles value New complete value; failures raise Lua errors.
--- @see Ros2Mypalletizer_interfacesMsgMypalAngles.encode
--- @field decode fun(bytes: string): Ros2Mypalletizer_interfacesMsgMypalAngles
local Ros2Mypalletizer_interfacesMsgMypalAngles = classes["Ros2Mypalletizer_interfacesMsgMypalAngles"]

--- @class Ros2Mypalletizer_interfacesMsgMypalCoords
--- @brief Complete ROS2 mypalletizer_interfaces/msg/MypalCoords value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Mypalletizer_interfacesMsgMypalCoords.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mypalletizer_interfacesMsgMypalCoords.NATIVE_TYPE: Exact normalized native type name mypalletizer_interfaces/msg/MypalCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_interfaces/msg/MypalCoords.
--- @brief Ros2Mypalletizer_interfacesMsgMypalCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mypalletizer_interfacesMsgMypalCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mypalletizer_interfacesMsgMypalCoords.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Mypalletizer_interfacesMsgMypalCoords.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros2Mypalletizer_interfacesMsgMypalCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mypalletizer_interfacesMsgMypalCoords value New mutable complete value; no ROS resource.
--- @see Ros2Mypalletizer_interfacesMsgMypalCoords.encode
--- @field new fun(values?: table): Ros2Mypalletizer_interfacesMsgMypalCoords
--- @brief Encode a complete Ros2Mypalletizer_interfacesMsgMypalCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mypalletizer_interfacesMsgMypalCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros2Mypalletizer_interfacesMsgMypalCoords.decode
--- @field encode fun(value: Ros2Mypalletizer_interfacesMsgMypalCoords): string
--- @brief Decode exactly one complete Ros2Mypalletizer_interfacesMsgMypalCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mypalletizer_interfacesMsgMypalCoords value New complete value; failures raise Lua errors.
--- @see Ros2Mypalletizer_interfacesMsgMypalCoords.encode
--- @field decode fun(bytes: string): Ros2Mypalletizer_interfacesMsgMypalCoords
local Ros2Mypalletizer_interfacesMsgMypalCoords = classes["Ros2Mypalletizer_interfacesMsgMypalCoords"]

--- @class Ros2Mypalletizer_interfacesMsgMypalGripperStatus
--- @brief Complete ROS2 mypalletizer_interfaces/msg/MypalGripperStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mypalletizer_interfacesMsgMypalGripperStatus.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalGripperStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mypalletizer_interfacesMsgMypalGripperStatus.NATIVE_TYPE: Exact normalized native type name mypalletizer_interfaces/msg/MypalGripperStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalGripperStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_interfaces/msg/MypalGripperStatus.
--- @brief Ros2Mypalletizer_interfacesMsgMypalGripperStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalGripperStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mypalletizer_interfacesMsgMypalGripperStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalGripperStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mypalletizer_interfacesMsgMypalGripperStatus.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalGripperStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mypalletizer_interfacesMsgMypalGripperStatus.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalGripperStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mypalletizer_interfacesMsgMypalGripperStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mypalletizer_interfacesMsgMypalGripperStatus value New mutable complete value; no ROS resource.
--- @see Ros2Mypalletizer_interfacesMsgMypalGripperStatus.encode
--- @field new fun(values?: table): Ros2Mypalletizer_interfacesMsgMypalGripperStatus
--- @brief Encode a complete Ros2Mypalletizer_interfacesMsgMypalGripperStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mypalletizer_interfacesMsgMypalGripperStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mypalletizer_interfacesMsgMypalGripperStatus.decode
--- @field encode fun(value: Ros2Mypalletizer_interfacesMsgMypalGripperStatus): string
--- @brief Decode exactly one complete Ros2Mypalletizer_interfacesMsgMypalGripperStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mypalletizer_interfacesMsgMypalGripperStatus value New complete value; failures raise Lua errors.
--- @see Ros2Mypalletizer_interfacesMsgMypalGripperStatus.encode
--- @field decode fun(bytes: string): Ros2Mypalletizer_interfacesMsgMypalGripperStatus
local Ros2Mypalletizer_interfacesMsgMypalGripperStatus = classes["Ros2Mypalletizer_interfacesMsgMypalGripperStatus"]

--- @class Ros2Mypalletizer_interfacesMsgMypalPumpStatus
--- @brief Complete ROS2 mypalletizer_interfaces/msg/MypalPumpStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field status boolean Exact boolean; encoded as one byte0/1.
--- @field pin1 integer Exact int8 range -128..127.
--- @field pin2 integer Exact int8 range -128..127.
--- @brief Ros2Mypalletizer_interfacesMsgMypalPumpStatus.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mypalletizer_interfacesMsgMypalPumpStatus.NATIVE_TYPE: Exact normalized native type name mypalletizer_interfaces/msg/MypalPumpStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_interfaces/msg/MypalPumpStatus.
--- @brief Ros2Mypalletizer_interfacesMsgMypalPumpStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mypalletizer_interfacesMsgMypalPumpStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mypalletizer_interfacesMsgMypalPumpStatus.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros2Mypalletizer_interfacesMsgMypalPumpStatus.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros2Mypalletizer_interfacesMsgMypalPumpStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mypalletizer_interfacesMsgMypalPumpStatus value New mutable complete value; no ROS resource.
--- @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus.encode
--- @field new fun(values?: table): Ros2Mypalletizer_interfacesMsgMypalPumpStatus
--- @brief Encode a complete Ros2Mypalletizer_interfacesMsgMypalPumpStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mypalletizer_interfacesMsgMypalPumpStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus.decode
--- @field encode fun(value: Ros2Mypalletizer_interfacesMsgMypalPumpStatus): string
--- @brief Decode exactly one complete Ros2Mypalletizer_interfacesMsgMypalPumpStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mypalletizer_interfacesMsgMypalPumpStatus value New complete value; failures raise Lua errors.
--- @see Ros2Mypalletizer_interfacesMsgMypalPumpStatus.encode
--- @field decode fun(bytes: string): Ros2Mypalletizer_interfacesMsgMypalPumpStatus
local Ros2Mypalletizer_interfacesMsgMypalPumpStatus = classes["Ros2Mypalletizer_interfacesMsgMypalPumpStatus"]

--- @class Ros2Mypalletizer_interfacesMsgMypalSetAngles
--- @brief Complete ROS2 mypalletizer_interfaces/msg/MypalSetAngles value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros2Mypalletizer_interfacesMsgMypalSetAngles.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalSetAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mypalletizer_interfacesMsgMypalSetAngles.NATIVE_TYPE: Exact normalized native type name mypalletizer_interfaces/msg/MypalSetAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalSetAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_interfaces/msg/MypalSetAngles.
--- @brief Ros2Mypalletizer_interfacesMsgMypalSetAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalSetAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mypalletizer_interfacesMsgMypalSetAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalSetAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mypalletizer_interfacesMsgMypalSetAngles.MIN_WIRE_BYTES: Inclusive complete minimum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalSetAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 17 bytes.
--- @brief Ros2Mypalletizer_interfacesMsgMypalSetAngles.MAX_WIRE_BYTES: Inclusive complete maximum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalSetAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 17 bytes.
--- @brief Construct Ros2Mypalletizer_interfacesMsgMypalSetAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mypalletizer_interfacesMsgMypalSetAngles value New mutable complete value; no ROS resource.
--- @see Ros2Mypalletizer_interfacesMsgMypalSetAngles.encode
--- @field new fun(values?: table): Ros2Mypalletizer_interfacesMsgMypalSetAngles
--- @brief Encode a complete Ros2Mypalletizer_interfacesMsgMypalSetAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mypalletizer_interfacesMsgMypalSetAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 17..17 bytes.
--- @see Ros2Mypalletizer_interfacesMsgMypalSetAngles.decode
--- @field encode fun(value: Ros2Mypalletizer_interfacesMsgMypalSetAngles): string
--- @brief Decode exactly one complete Ros2Mypalletizer_interfacesMsgMypalSetAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mypalletizer_interfacesMsgMypalSetAngles value New complete value; failures raise Lua errors.
--- @see Ros2Mypalletizer_interfacesMsgMypalSetAngles.encode
--- @field decode fun(bytes: string): Ros2Mypalletizer_interfacesMsgMypalSetAngles
local Ros2Mypalletizer_interfacesMsgMypalSetAngles = classes["Ros2Mypalletizer_interfacesMsgMypalSetAngles"]

--- @class Ros2Mypalletizer_interfacesMsgMypalSetCoords
--- @brief Complete ROS2 mypalletizer_interfaces/msg/MypalSetCoords value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros2Mypalletizer_interfacesMsgMypalSetCoords.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalSetCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mypalletizer_interfacesMsgMypalSetCoords.NATIVE_TYPE: Exact normalized native type name mypalletizer_interfaces/msg/MypalSetCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalSetCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_interfaces/msg/MypalSetCoords.
--- @brief Ros2Mypalletizer_interfacesMsgMypalSetCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalSetCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mypalletizer_interfacesMsgMypalSetCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalSetCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mypalletizer_interfacesMsgMypalSetCoords.MIN_WIRE_BYTES: Inclusive complete minimum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalSetCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 17 bytes.
--- @brief Ros2Mypalletizer_interfacesMsgMypalSetCoords.MAX_WIRE_BYTES: Inclusive complete maximum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesMsgMypalSetCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 17 bytes.
--- @brief Construct Ros2Mypalletizer_interfacesMsgMypalSetCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mypalletizer_interfacesMsgMypalSetCoords value New mutable complete value; no ROS resource.
--- @see Ros2Mypalletizer_interfacesMsgMypalSetCoords.encode
--- @field new fun(values?: table): Ros2Mypalletizer_interfacesMsgMypalSetCoords
--- @brief Encode a complete Ros2Mypalletizer_interfacesMsgMypalSetCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mypalletizer_interfacesMsgMypalSetCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 17..17 bytes.
--- @see Ros2Mypalletizer_interfacesMsgMypalSetCoords.decode
--- @field encode fun(value: Ros2Mypalletizer_interfacesMsgMypalSetCoords): string
--- @brief Decode exactly one complete Ros2Mypalletizer_interfacesMsgMypalSetCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mypalletizer_interfacesMsgMypalSetCoords value New complete value; failures raise Lua errors.
--- @see Ros2Mypalletizer_interfacesMsgMypalSetCoords.encode
--- @field decode fun(bytes: string): Ros2Mypalletizer_interfacesMsgMypalSetCoords
local Ros2Mypalletizer_interfacesMsgMypalSetCoords = classes["Ros2Mypalletizer_interfacesMsgMypalSetCoords"]

--- @class Ros2Mypalletizer_interfacesSrvGetAngles_Request
--- @brief Complete ROS2 mypalletizer_interfaces/srv/GetAngles_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Mypalletizer_interfacesSrvGetAngles_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetAngles_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mypalletizer_interfacesSrvGetAngles_Request.NATIVE_TYPE: Exact normalized native type name mypalletizer_interfaces/srv/GetAngles_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetAngles_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_interfaces/srv/GetAngles_Request.
--- @brief Ros2Mypalletizer_interfacesSrvGetAngles_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetAngles_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mypalletizer_interfacesSrvGetAngles_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetAngles_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mypalletizer_interfacesSrvGetAngles_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetAngles_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Mypalletizer_interfacesSrvGetAngles_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetAngles_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Mypalletizer_interfacesSrvGetAngles_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mypalletizer_interfacesSrvGetAngles_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mypalletizer_interfacesSrvGetAngles_Request.encode
--- @field new fun(values?: table): Ros2Mypalletizer_interfacesSrvGetAngles_Request
--- @brief Encode a complete Ros2Mypalletizer_interfacesSrvGetAngles_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mypalletizer_interfacesSrvGetAngles_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Mypalletizer_interfacesSrvGetAngles_Request.decode
--- @field encode fun(value: Ros2Mypalletizer_interfacesSrvGetAngles_Request): string
--- @brief Decode exactly one complete Ros2Mypalletizer_interfacesSrvGetAngles_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mypalletizer_interfacesSrvGetAngles_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mypalletizer_interfacesSrvGetAngles_Request.encode
--- @field decode fun(bytes: string): Ros2Mypalletizer_interfacesSrvGetAngles_Request
local Ros2Mypalletizer_interfacesSrvGetAngles_Request = classes["Ros2Mypalletizer_interfacesSrvGetAngles_Request"]

--- @class Ros2Mypalletizer_interfacesSrvGetAngles_Response
--- @brief Complete ROS2 mypalletizer_interfaces/srv/GetAngles_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Mypalletizer_interfacesSrvGetAngles_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetAngles_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mypalletizer_interfacesSrvGetAngles_Response.NATIVE_TYPE: Exact normalized native type name mypalletizer_interfaces/srv/GetAngles_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetAngles_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_interfaces/srv/GetAngles_Response.
--- @brief Ros2Mypalletizer_interfacesSrvGetAngles_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetAngles_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mypalletizer_interfacesSrvGetAngles_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetAngles_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mypalletizer_interfacesSrvGetAngles_Response.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetAngles_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Mypalletizer_interfacesSrvGetAngles_Response.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetAngles_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros2Mypalletizer_interfacesSrvGetAngles_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mypalletizer_interfacesSrvGetAngles_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mypalletizer_interfacesSrvGetAngles_Response.encode
--- @field new fun(values?: table): Ros2Mypalletizer_interfacesSrvGetAngles_Response
--- @brief Encode a complete Ros2Mypalletizer_interfacesSrvGetAngles_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mypalletizer_interfacesSrvGetAngles_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros2Mypalletizer_interfacesSrvGetAngles_Response.decode
--- @field encode fun(value: Ros2Mypalletizer_interfacesSrvGetAngles_Response): string
--- @brief Decode exactly one complete Ros2Mypalletizer_interfacesSrvGetAngles_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mypalletizer_interfacesSrvGetAngles_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mypalletizer_interfacesSrvGetAngles_Response.encode
--- @field decode fun(bytes: string): Ros2Mypalletizer_interfacesSrvGetAngles_Response
local Ros2Mypalletizer_interfacesSrvGetAngles_Response = classes["Ros2Mypalletizer_interfacesSrvGetAngles_Response"]

--- @class Ros2Mypalletizer_interfacesSrvGetCoords_Request
--- @brief Complete ROS2 mypalletizer_interfaces/srv/GetCoords_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Mypalletizer_interfacesSrvGetCoords_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetCoords_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mypalletizer_interfacesSrvGetCoords_Request.NATIVE_TYPE: Exact normalized native type name mypalletizer_interfaces/srv/GetCoords_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetCoords_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_interfaces/srv/GetCoords_Request.
--- @brief Ros2Mypalletizer_interfacesSrvGetCoords_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetCoords_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mypalletizer_interfacesSrvGetCoords_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetCoords_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mypalletizer_interfacesSrvGetCoords_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetCoords_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Mypalletizer_interfacesSrvGetCoords_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetCoords_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Mypalletizer_interfacesSrvGetCoords_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mypalletizer_interfacesSrvGetCoords_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mypalletizer_interfacesSrvGetCoords_Request.encode
--- @field new fun(values?: table): Ros2Mypalletizer_interfacesSrvGetCoords_Request
--- @brief Encode a complete Ros2Mypalletizer_interfacesSrvGetCoords_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mypalletizer_interfacesSrvGetCoords_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Mypalletizer_interfacesSrvGetCoords_Request.decode
--- @field encode fun(value: Ros2Mypalletizer_interfacesSrvGetCoords_Request): string
--- @brief Decode exactly one complete Ros2Mypalletizer_interfacesSrvGetCoords_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mypalletizer_interfacesSrvGetCoords_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mypalletizer_interfacesSrvGetCoords_Request.encode
--- @field decode fun(bytes: string): Ros2Mypalletizer_interfacesSrvGetCoords_Request
local Ros2Mypalletizer_interfacesSrvGetCoords_Request = classes["Ros2Mypalletizer_interfacesSrvGetCoords_Request"]

--- @class Ros2Mypalletizer_interfacesSrvGetCoords_Response
--- @brief Complete ROS2 mypalletizer_interfaces/srv/GetCoords_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Mypalletizer_interfacesSrvGetCoords_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetCoords_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mypalletizer_interfacesSrvGetCoords_Response.NATIVE_TYPE: Exact normalized native type name mypalletizer_interfaces/srv/GetCoords_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetCoords_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_interfaces/srv/GetCoords_Response.
--- @brief Ros2Mypalletizer_interfacesSrvGetCoords_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetCoords_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mypalletizer_interfacesSrvGetCoords_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetCoords_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mypalletizer_interfacesSrvGetCoords_Response.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetCoords_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Mypalletizer_interfacesSrvGetCoords_Response.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGetCoords_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros2Mypalletizer_interfacesSrvGetCoords_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mypalletizer_interfacesSrvGetCoords_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mypalletizer_interfacesSrvGetCoords_Response.encode
--- @field new fun(values?: table): Ros2Mypalletizer_interfacesSrvGetCoords_Response
--- @brief Encode a complete Ros2Mypalletizer_interfacesSrvGetCoords_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mypalletizer_interfacesSrvGetCoords_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros2Mypalletizer_interfacesSrvGetCoords_Response.decode
--- @field encode fun(value: Ros2Mypalletizer_interfacesSrvGetCoords_Response): string
--- @brief Decode exactly one complete Ros2Mypalletizer_interfacesSrvGetCoords_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mypalletizer_interfacesSrvGetCoords_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mypalletizer_interfacesSrvGetCoords_Response.encode
--- @field decode fun(bytes: string): Ros2Mypalletizer_interfacesSrvGetCoords_Response
local Ros2Mypalletizer_interfacesSrvGetCoords_Response = classes["Ros2Mypalletizer_interfacesSrvGetCoords_Response"]

--- @class Ros2Mypalletizer_interfacesSrvGripperStatus_Request
--- @brief Complete ROS2 mypalletizer_interfaces/srv/GripperStatus_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mypalletizer_interfacesSrvGripperStatus_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGripperStatus_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mypalletizer_interfacesSrvGripperStatus_Request.NATIVE_TYPE: Exact normalized native type name mypalletizer_interfaces/srv/GripperStatus_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGripperStatus_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_interfaces/srv/GripperStatus_Request.
--- @brief Ros2Mypalletizer_interfacesSrvGripperStatus_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGripperStatus_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mypalletizer_interfacesSrvGripperStatus_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGripperStatus_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mypalletizer_interfacesSrvGripperStatus_Request.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGripperStatus_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mypalletizer_interfacesSrvGripperStatus_Request.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGripperStatus_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mypalletizer_interfacesSrvGripperStatus_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mypalletizer_interfacesSrvGripperStatus_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mypalletizer_interfacesSrvGripperStatus_Request.encode
--- @field new fun(values?: table): Ros2Mypalletizer_interfacesSrvGripperStatus_Request
--- @brief Encode a complete Ros2Mypalletizer_interfacesSrvGripperStatus_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mypalletizer_interfacesSrvGripperStatus_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mypalletizer_interfacesSrvGripperStatus_Request.decode
--- @field encode fun(value: Ros2Mypalletizer_interfacesSrvGripperStatus_Request): string
--- @brief Decode exactly one complete Ros2Mypalletizer_interfacesSrvGripperStatus_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mypalletizer_interfacesSrvGripperStatus_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mypalletizer_interfacesSrvGripperStatus_Request.encode
--- @field decode fun(bytes: string): Ros2Mypalletizer_interfacesSrvGripperStatus_Request
local Ros2Mypalletizer_interfacesSrvGripperStatus_Request = classes["Ros2Mypalletizer_interfacesSrvGripperStatus_Request"]

--- @class Ros2Mypalletizer_interfacesSrvGripperStatus_Response
--- @brief Complete ROS2 mypalletizer_interfaces/srv/GripperStatus_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mypalletizer_interfacesSrvGripperStatus_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGripperStatus_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mypalletizer_interfacesSrvGripperStatus_Response.NATIVE_TYPE: Exact normalized native type name mypalletizer_interfaces/srv/GripperStatus_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGripperStatus_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_interfaces/srv/GripperStatus_Response.
--- @brief Ros2Mypalletizer_interfacesSrvGripperStatus_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGripperStatus_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mypalletizer_interfacesSrvGripperStatus_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGripperStatus_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mypalletizer_interfacesSrvGripperStatus_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGripperStatus_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mypalletizer_interfacesSrvGripperStatus_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvGripperStatus_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mypalletizer_interfacesSrvGripperStatus_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mypalletizer_interfacesSrvGripperStatus_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mypalletizer_interfacesSrvGripperStatus_Response.encode
--- @field new fun(values?: table): Ros2Mypalletizer_interfacesSrvGripperStatus_Response
--- @brief Encode a complete Ros2Mypalletizer_interfacesSrvGripperStatus_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mypalletizer_interfacesSrvGripperStatus_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mypalletizer_interfacesSrvGripperStatus_Response.decode
--- @field encode fun(value: Ros2Mypalletizer_interfacesSrvGripperStatus_Response): string
--- @brief Decode exactly one complete Ros2Mypalletizer_interfacesSrvGripperStatus_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mypalletizer_interfacesSrvGripperStatus_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mypalletizer_interfacesSrvGripperStatus_Response.encode
--- @field decode fun(bytes: string): Ros2Mypalletizer_interfacesSrvGripperStatus_Response
local Ros2Mypalletizer_interfacesSrvGripperStatus_Response = classes["Ros2Mypalletizer_interfacesSrvGripperStatus_Response"]

--- @class Ros2Mypalletizer_interfacesSrvPumpStatus_Request
--- @brief Complete ROS2 mypalletizer_interfaces/srv/PumpStatus_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field status boolean Exact boolean; encoded as one byte0/1.
--- @field pin1 integer Exact int8 range -128..127.
--- @field pin2 integer Exact int8 range -128..127.
--- @brief Ros2Mypalletizer_interfacesSrvPumpStatus_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mypalletizer_interfacesSrvPumpStatus_Request.NATIVE_TYPE: Exact normalized native type name mypalletizer_interfaces/srv/PumpStatus_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_interfaces/srv/PumpStatus_Request.
--- @brief Ros2Mypalletizer_interfacesSrvPumpStatus_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mypalletizer_interfacesSrvPumpStatus_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mypalletizer_interfacesSrvPumpStatus_Request.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros2Mypalletizer_interfacesSrvPumpStatus_Request.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros2Mypalletizer_interfacesSrvPumpStatus_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mypalletizer_interfacesSrvPumpStatus_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request.encode
--- @field new fun(values?: table): Ros2Mypalletizer_interfacesSrvPumpStatus_Request
--- @brief Encode a complete Ros2Mypalletizer_interfacesSrvPumpStatus_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mypalletizer_interfacesSrvPumpStatus_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request.decode
--- @field encode fun(value: Ros2Mypalletizer_interfacesSrvPumpStatus_Request): string
--- @brief Decode exactly one complete Ros2Mypalletizer_interfacesSrvPumpStatus_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mypalletizer_interfacesSrvPumpStatus_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mypalletizer_interfacesSrvPumpStatus_Request.encode
--- @field decode fun(bytes: string): Ros2Mypalletizer_interfacesSrvPumpStatus_Request
local Ros2Mypalletizer_interfacesSrvPumpStatus_Request = classes["Ros2Mypalletizer_interfacesSrvPumpStatus_Request"]

--- @class Ros2Mypalletizer_interfacesSrvPumpStatus_Response
--- @brief Complete ROS2 mypalletizer_interfaces/srv/PumpStatus_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mypalletizer_interfacesSrvPumpStatus_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvPumpStatus_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mypalletizer_interfacesSrvPumpStatus_Response.NATIVE_TYPE: Exact normalized native type name mypalletizer_interfaces/srv/PumpStatus_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvPumpStatus_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_interfaces/srv/PumpStatus_Response.
--- @brief Ros2Mypalletizer_interfacesSrvPumpStatus_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvPumpStatus_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mypalletizer_interfacesSrvPumpStatus_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvPumpStatus_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mypalletizer_interfacesSrvPumpStatus_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvPumpStatus_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mypalletizer_interfacesSrvPumpStatus_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvPumpStatus_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mypalletizer_interfacesSrvPumpStatus_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mypalletizer_interfacesSrvPumpStatus_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mypalletizer_interfacesSrvPumpStatus_Response.encode
--- @field new fun(values?: table): Ros2Mypalletizer_interfacesSrvPumpStatus_Response
--- @brief Encode a complete Ros2Mypalletizer_interfacesSrvPumpStatus_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mypalletizer_interfacesSrvPumpStatus_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mypalletizer_interfacesSrvPumpStatus_Response.decode
--- @field encode fun(value: Ros2Mypalletizer_interfacesSrvPumpStatus_Response): string
--- @brief Decode exactly one complete Ros2Mypalletizer_interfacesSrvPumpStatus_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mypalletizer_interfacesSrvPumpStatus_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mypalletizer_interfacesSrvPumpStatus_Response.encode
--- @field decode fun(bytes: string): Ros2Mypalletizer_interfacesSrvPumpStatus_Response
local Ros2Mypalletizer_interfacesSrvPumpStatus_Response = classes["Ros2Mypalletizer_interfacesSrvPumpStatus_Response"]

--- @class Ros2Mypalletizer_interfacesSrvSetAngles_Request
--- @brief Complete ROS2 mypalletizer_interfaces/srv/SetAngles_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros2Mypalletizer_interfacesSrvSetAngles_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetAngles_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mypalletizer_interfacesSrvSetAngles_Request.NATIVE_TYPE: Exact normalized native type name mypalletizer_interfaces/srv/SetAngles_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetAngles_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_interfaces/srv/SetAngles_Request.
--- @brief Ros2Mypalletizer_interfacesSrvSetAngles_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetAngles_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mypalletizer_interfacesSrvSetAngles_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetAngles_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mypalletizer_interfacesSrvSetAngles_Request.MIN_WIRE_BYTES: Inclusive complete minimum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetAngles_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 17 bytes.
--- @brief Ros2Mypalletizer_interfacesSrvSetAngles_Request.MAX_WIRE_BYTES: Inclusive complete maximum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetAngles_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 17 bytes.
--- @brief Construct Ros2Mypalletizer_interfacesSrvSetAngles_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mypalletizer_interfacesSrvSetAngles_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mypalletizer_interfacesSrvSetAngles_Request.encode
--- @field new fun(values?: table): Ros2Mypalletizer_interfacesSrvSetAngles_Request
--- @brief Encode a complete Ros2Mypalletizer_interfacesSrvSetAngles_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mypalletizer_interfacesSrvSetAngles_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 17..17 bytes.
--- @see Ros2Mypalletizer_interfacesSrvSetAngles_Request.decode
--- @field encode fun(value: Ros2Mypalletizer_interfacesSrvSetAngles_Request): string
--- @brief Decode exactly one complete Ros2Mypalletizer_interfacesSrvSetAngles_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mypalletizer_interfacesSrvSetAngles_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mypalletizer_interfacesSrvSetAngles_Request.encode
--- @field decode fun(bytes: string): Ros2Mypalletizer_interfacesSrvSetAngles_Request
local Ros2Mypalletizer_interfacesSrvSetAngles_Request = classes["Ros2Mypalletizer_interfacesSrvSetAngles_Request"]

--- @class Ros2Mypalletizer_interfacesSrvSetAngles_Response
--- @brief Complete ROS2 mypalletizer_interfaces/srv/SetAngles_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mypalletizer_interfacesSrvSetAngles_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetAngles_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mypalletizer_interfacesSrvSetAngles_Response.NATIVE_TYPE: Exact normalized native type name mypalletizer_interfaces/srv/SetAngles_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetAngles_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_interfaces/srv/SetAngles_Response.
--- @brief Ros2Mypalletizer_interfacesSrvSetAngles_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetAngles_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mypalletizer_interfacesSrvSetAngles_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetAngles_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mypalletizer_interfacesSrvSetAngles_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetAngles_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mypalletizer_interfacesSrvSetAngles_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetAngles_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mypalletizer_interfacesSrvSetAngles_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mypalletizer_interfacesSrvSetAngles_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mypalletizer_interfacesSrvSetAngles_Response.encode
--- @field new fun(values?: table): Ros2Mypalletizer_interfacesSrvSetAngles_Response
--- @brief Encode a complete Ros2Mypalletizer_interfacesSrvSetAngles_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mypalletizer_interfacesSrvSetAngles_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mypalletizer_interfacesSrvSetAngles_Response.decode
--- @field encode fun(value: Ros2Mypalletizer_interfacesSrvSetAngles_Response): string
--- @brief Decode exactly one complete Ros2Mypalletizer_interfacesSrvSetAngles_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mypalletizer_interfacesSrvSetAngles_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mypalletizer_interfacesSrvSetAngles_Response.encode
--- @field decode fun(bytes: string): Ros2Mypalletizer_interfacesSrvSetAngles_Response
local Ros2Mypalletizer_interfacesSrvSetAngles_Response = classes["Ros2Mypalletizer_interfacesSrvSetAngles_Response"]

--- @class Ros2Mypalletizer_interfacesSrvSetCoords_Request
--- @brief Complete ROS2 mypalletizer_interfaces/srv/SetCoords_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros2Mypalletizer_interfacesSrvSetCoords_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetCoords_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mypalletizer_interfacesSrvSetCoords_Request.NATIVE_TYPE: Exact normalized native type name mypalletizer_interfaces/srv/SetCoords_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetCoords_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_interfaces/srv/SetCoords_Request.
--- @brief Ros2Mypalletizer_interfacesSrvSetCoords_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetCoords_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mypalletizer_interfacesSrvSetCoords_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetCoords_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mypalletizer_interfacesSrvSetCoords_Request.MIN_WIRE_BYTES: Inclusive complete minimum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetCoords_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 17 bytes.
--- @brief Ros2Mypalletizer_interfacesSrvSetCoords_Request.MAX_WIRE_BYTES: Inclusive complete maximum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetCoords_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 17 bytes.
--- @brief Construct Ros2Mypalletizer_interfacesSrvSetCoords_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mypalletizer_interfacesSrvSetCoords_Request value New mutable complete value; no ROS resource.
--- @see Ros2Mypalletizer_interfacesSrvSetCoords_Request.encode
--- @field new fun(values?: table): Ros2Mypalletizer_interfacesSrvSetCoords_Request
--- @brief Encode a complete Ros2Mypalletizer_interfacesSrvSetCoords_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mypalletizer_interfacesSrvSetCoords_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 17..17 bytes.
--- @see Ros2Mypalletizer_interfacesSrvSetCoords_Request.decode
--- @field encode fun(value: Ros2Mypalletizer_interfacesSrvSetCoords_Request): string
--- @brief Decode exactly one complete Ros2Mypalletizer_interfacesSrvSetCoords_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mypalletizer_interfacesSrvSetCoords_Request value New complete value; failures raise Lua errors.
--- @see Ros2Mypalletizer_interfacesSrvSetCoords_Request.encode
--- @field decode fun(bytes: string): Ros2Mypalletizer_interfacesSrvSetCoords_Request
local Ros2Mypalletizer_interfacesSrvSetCoords_Request = classes["Ros2Mypalletizer_interfacesSrvSetCoords_Request"]

--- @class Ros2Mypalletizer_interfacesSrvSetCoords_Response
--- @brief Complete ROS2 mypalletizer_interfaces/srv/SetCoords_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Mypalletizer_interfacesSrvSetCoords_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetCoords_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Mypalletizer_interfacesSrvSetCoords_Response.NATIVE_TYPE: Exact normalized native type name mypalletizer_interfaces/srv/SetCoords_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetCoords_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_interfaces/srv/SetCoords_Response.
--- @brief Ros2Mypalletizer_interfacesSrvSetCoords_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetCoords_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Mypalletizer_interfacesSrvSetCoords_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetCoords_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Mypalletizer_interfacesSrvSetCoords_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetCoords_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Mypalletizer_interfacesSrvSetCoords_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Mypalletizer_interfacesSrvSetCoords_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Mypalletizer_interfacesSrvSetCoords_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Mypalletizer_interfacesSrvSetCoords_Response value New mutable complete value; no ROS resource.
--- @see Ros2Mypalletizer_interfacesSrvSetCoords_Response.encode
--- @field new fun(values?: table): Ros2Mypalletizer_interfacesSrvSetCoords_Response
--- @brief Encode a complete Ros2Mypalletizer_interfacesSrvSetCoords_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Mypalletizer_interfacesSrvSetCoords_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Mypalletizer_interfacesSrvSetCoords_Response.decode
--- @field encode fun(value: Ros2Mypalletizer_interfacesSrvSetCoords_Response): string
--- @brief Decode exactly one complete Ros2Mypalletizer_interfacesSrvSetCoords_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Mypalletizer_interfacesSrvSetCoords_Response value New complete value; failures raise Lua errors.
--- @see Ros2Mypalletizer_interfacesSrvSetCoords_Response.encode
--- @field decode fun(bytes: string): Ros2Mypalletizer_interfacesSrvSetCoords_Response
local Ros2Mypalletizer_interfacesSrvSetCoords_Response = classes["Ros2Mypalletizer_interfacesSrvSetCoords_Response"]

--- @class Ros2Ultraarm_p1_interfacesMsgMycobotAngles
--- @brief Complete ROS2 ultraarm_p1_interfaces/msg/MycobotAngles value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotAngles.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotAngles.NATIVE_TYPE: Exact normalized native type name ultraarm_p1_interfaces/msg/MycobotAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_p1_interfaces/msg/MycobotAngles.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotAngles.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotAngles.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros2Ultraarm_p1_interfacesMsgMycobotAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Ultraarm_p1_interfacesMsgMycobotAngles value New mutable complete value; no ROS resource.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotAngles.encode
--- @field new fun(values?: table): Ros2Ultraarm_p1_interfacesMsgMycobotAngles
--- @brief Encode a complete Ros2Ultraarm_p1_interfacesMsgMycobotAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Ultraarm_p1_interfacesMsgMycobotAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotAngles.decode
--- @field encode fun(value: Ros2Ultraarm_p1_interfacesMsgMycobotAngles): string
--- @brief Decode exactly one complete Ros2Ultraarm_p1_interfacesMsgMycobotAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Ultraarm_p1_interfacesMsgMycobotAngles value New complete value; failures raise Lua errors.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotAngles.encode
--- @field decode fun(bytes: string): Ros2Ultraarm_p1_interfacesMsgMycobotAngles
local Ros2Ultraarm_p1_interfacesMsgMycobotAngles = classes["Ros2Ultraarm_p1_interfacesMsgMycobotAngles"]

--- @class Ros2Ultraarm_p1_interfacesMsgMycobotCoords
--- @brief Complete ROS2 ultraarm_p1_interfaces/msg/MycobotCoords value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotCoords.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotCoords.NATIVE_TYPE: Exact normalized native type name ultraarm_p1_interfaces/msg/MycobotCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_p1_interfaces/msg/MycobotCoords.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotCoords.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotCoords.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros2Ultraarm_p1_interfacesMsgMycobotCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Ultraarm_p1_interfacesMsgMycobotCoords value New mutable complete value; no ROS resource.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotCoords.encode
--- @field new fun(values?: table): Ros2Ultraarm_p1_interfacesMsgMycobotCoords
--- @brief Encode a complete Ros2Ultraarm_p1_interfacesMsgMycobotCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Ultraarm_p1_interfacesMsgMycobotCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotCoords.decode
--- @field encode fun(value: Ros2Ultraarm_p1_interfacesMsgMycobotCoords): string
--- @brief Decode exactly one complete Ros2Ultraarm_p1_interfacesMsgMycobotCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Ultraarm_p1_interfacesMsgMycobotCoords value New complete value; failures raise Lua errors.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotCoords.encode
--- @field decode fun(bytes: string): Ros2Ultraarm_p1_interfacesMsgMycobotCoords
local Ros2Ultraarm_p1_interfacesMsgMycobotCoords = classes["Ros2Ultraarm_p1_interfacesMsgMycobotCoords"]

--- @class Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus
--- @brief Complete ROS2 ultraarm_p1_interfaces/msg/MycobotGripperStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus.NATIVE_TYPE: Exact normalized native type name ultraarm_p1_interfaces/msg/MycobotGripperStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_p1_interfaces/msg/MycobotGripperStatus.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus value New mutable complete value; no ROS resource.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus.encode
--- @field new fun(values?: table): Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus
--- @brief Encode a complete Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus.decode
--- @field encode fun(value: Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus): string
--- @brief Decode exactly one complete Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus value New complete value; failures raise Lua errors.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus.encode
--- @field decode fun(bytes: string): Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus
local Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus = classes["Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus"]

--- @class Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles
--- @brief Complete ROS2 ultraarm_p1_interfaces/msg/MycobotSetAngles value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles.NATIVE_TYPE: Exact normalized native type name ultraarm_p1_interfaces/msg/MycobotSetAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_p1_interfaces/msg/MycobotSetAngles.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles.MAX_WIRE_BYTES: Inclusive complete maximum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 20 bytes.
--- @brief Construct Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles value New mutable complete value; no ROS resource.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles.encode
--- @field new fun(values?: table): Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles
--- @brief Encode a complete Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..20 bytes.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles.decode
--- @field encode fun(value: Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles): string
--- @brief Decode exactly one complete Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles value New complete value; failures raise Lua errors.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles.encode
--- @field decode fun(bytes: string): Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles
local Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles = classes["Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles"]

--- @class Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords
--- @brief Complete ROS2 ultraarm_p1_interfaces/msg/MycobotSetCoords value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords.NATIVE_TYPE: Exact normalized native type name ultraarm_p1_interfaces/msg/MycobotSetCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_p1_interfaces/msg/MycobotSetCoords.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords.MAX_WIRE_BYTES: Inclusive complete maximum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 20 bytes.
--- @brief Construct Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords value New mutable complete value; no ROS resource.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords.encode
--- @field new fun(values?: table): Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords
--- @brief Encode a complete Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..20 bytes.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords.decode
--- @field encode fun(value: Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords): string
--- @brief Decode exactly one complete Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords value New complete value; failures raise Lua errors.
--- @see Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords.encode
--- @field decode fun(bytes: string): Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords
local Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords = classes["Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords"]

--- @class Ros2Ultraarm_p1_interfacesSrvGetAngles_Request
--- @brief Complete ROS2 ultraarm_p1_interfaces/srv/GetAngles_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Ultraarm_p1_interfacesSrvGetAngles_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetAngles_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetAngles_Request.NATIVE_TYPE: Exact normalized native type name ultraarm_p1_interfaces/srv/GetAngles_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetAngles_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_p1_interfaces/srv/GetAngles_Request.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetAngles_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetAngles_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetAngles_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetAngles_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetAngles_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetAngles_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetAngles_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetAngles_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Ultraarm_p1_interfacesSrvGetAngles_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Ultraarm_p1_interfacesSrvGetAngles_Request value New mutable complete value; no ROS resource.
--- @see Ros2Ultraarm_p1_interfacesSrvGetAngles_Request.encode
--- @field new fun(values?: table): Ros2Ultraarm_p1_interfacesSrvGetAngles_Request
--- @brief Encode a complete Ros2Ultraarm_p1_interfacesSrvGetAngles_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Ultraarm_p1_interfacesSrvGetAngles_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Ultraarm_p1_interfacesSrvGetAngles_Request.decode
--- @field encode fun(value: Ros2Ultraarm_p1_interfacesSrvGetAngles_Request): string
--- @brief Decode exactly one complete Ros2Ultraarm_p1_interfacesSrvGetAngles_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Ultraarm_p1_interfacesSrvGetAngles_Request value New complete value; failures raise Lua errors.
--- @see Ros2Ultraarm_p1_interfacesSrvGetAngles_Request.encode
--- @field decode fun(bytes: string): Ros2Ultraarm_p1_interfacesSrvGetAngles_Request
local Ros2Ultraarm_p1_interfacesSrvGetAngles_Request = classes["Ros2Ultraarm_p1_interfacesSrvGetAngles_Request"]

--- @class Ros2Ultraarm_p1_interfacesSrvGetAngles_Response
--- @brief Complete ROS2 ultraarm_p1_interfaces/srv/GetAngles_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetAngles_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetAngles_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetAngles_Response.NATIVE_TYPE: Exact normalized native type name ultraarm_p1_interfaces/srv/GetAngles_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetAngles_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_p1_interfaces/srv/GetAngles_Response.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetAngles_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetAngles_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetAngles_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetAngles_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetAngles_Response.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetAngles_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetAngles_Response.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetAngles_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros2Ultraarm_p1_interfacesSrvGetAngles_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Ultraarm_p1_interfacesSrvGetAngles_Response value New mutable complete value; no ROS resource.
--- @see Ros2Ultraarm_p1_interfacesSrvGetAngles_Response.encode
--- @field new fun(values?: table): Ros2Ultraarm_p1_interfacesSrvGetAngles_Response
--- @brief Encode a complete Ros2Ultraarm_p1_interfacesSrvGetAngles_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Ultraarm_p1_interfacesSrvGetAngles_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros2Ultraarm_p1_interfacesSrvGetAngles_Response.decode
--- @field encode fun(value: Ros2Ultraarm_p1_interfacesSrvGetAngles_Response): string
--- @brief Decode exactly one complete Ros2Ultraarm_p1_interfacesSrvGetAngles_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Ultraarm_p1_interfacesSrvGetAngles_Response value New complete value; failures raise Lua errors.
--- @see Ros2Ultraarm_p1_interfacesSrvGetAngles_Response.encode
--- @field decode fun(bytes: string): Ros2Ultraarm_p1_interfacesSrvGetAngles_Response
local Ros2Ultraarm_p1_interfacesSrvGetAngles_Response = classes["Ros2Ultraarm_p1_interfacesSrvGetAngles_Response"]

--- @class Ros2Ultraarm_p1_interfacesSrvGetCoords_Request
--- @brief Complete ROS2 ultraarm_p1_interfaces/srv/GetCoords_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Ultraarm_p1_interfacesSrvGetCoords_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetCoords_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetCoords_Request.NATIVE_TYPE: Exact normalized native type name ultraarm_p1_interfaces/srv/GetCoords_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetCoords_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_p1_interfaces/srv/GetCoords_Request.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetCoords_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetCoords_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetCoords_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetCoords_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetCoords_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetCoords_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetCoords_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetCoords_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Ultraarm_p1_interfacesSrvGetCoords_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Ultraarm_p1_interfacesSrvGetCoords_Request value New mutable complete value; no ROS resource.
--- @see Ros2Ultraarm_p1_interfacesSrvGetCoords_Request.encode
--- @field new fun(values?: table): Ros2Ultraarm_p1_interfacesSrvGetCoords_Request
--- @brief Encode a complete Ros2Ultraarm_p1_interfacesSrvGetCoords_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Ultraarm_p1_interfacesSrvGetCoords_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Ultraarm_p1_interfacesSrvGetCoords_Request.decode
--- @field encode fun(value: Ros2Ultraarm_p1_interfacesSrvGetCoords_Request): string
--- @brief Decode exactly one complete Ros2Ultraarm_p1_interfacesSrvGetCoords_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Ultraarm_p1_interfacesSrvGetCoords_Request value New complete value; failures raise Lua errors.
--- @see Ros2Ultraarm_p1_interfacesSrvGetCoords_Request.encode
--- @field decode fun(bytes: string): Ros2Ultraarm_p1_interfacesSrvGetCoords_Request
local Ros2Ultraarm_p1_interfacesSrvGetCoords_Request = classes["Ros2Ultraarm_p1_interfacesSrvGetCoords_Request"]

--- @class Ros2Ultraarm_p1_interfacesSrvGetCoords_Response
--- @brief Complete ROS2 ultraarm_p1_interfaces/srv/GetCoords_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetCoords_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetCoords_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetCoords_Response.NATIVE_TYPE: Exact normalized native type name ultraarm_p1_interfaces/srv/GetCoords_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetCoords_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_p1_interfaces/srv/GetCoords_Response.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetCoords_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetCoords_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetCoords_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetCoords_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetCoords_Response.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetCoords_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetCoords_Response.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetCoords_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros2Ultraarm_p1_interfacesSrvGetCoords_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Ultraarm_p1_interfacesSrvGetCoords_Response value New mutable complete value; no ROS resource.
--- @see Ros2Ultraarm_p1_interfacesSrvGetCoords_Response.encode
--- @field new fun(values?: table): Ros2Ultraarm_p1_interfacesSrvGetCoords_Response
--- @brief Encode a complete Ros2Ultraarm_p1_interfacesSrvGetCoords_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Ultraarm_p1_interfacesSrvGetCoords_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros2Ultraarm_p1_interfacesSrvGetCoords_Response.decode
--- @field encode fun(value: Ros2Ultraarm_p1_interfacesSrvGetCoords_Response): string
--- @brief Decode exactly one complete Ros2Ultraarm_p1_interfacesSrvGetCoords_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Ultraarm_p1_interfacesSrvGetCoords_Response value New complete value; failures raise Lua errors.
--- @see Ros2Ultraarm_p1_interfacesSrvGetCoords_Response.encode
--- @field decode fun(bytes: string): Ros2Ultraarm_p1_interfacesSrvGetCoords_Response
local Ros2Ultraarm_p1_interfacesSrvGetCoords_Response = classes["Ros2Ultraarm_p1_interfacesSrvGetCoords_Response"]

--- @class Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request
--- @brief Complete ROS2 ultraarm_p1_interfaces/srv/GetGripperValue_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request.NATIVE_TYPE: Exact normalized native type name ultraarm_p1_interfaces/srv/GetGripperValue_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_p1_interfaces/srv/GetGripperValue_Request.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request value New mutable complete value; no ROS resource.
--- @see Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request.encode
--- @field new fun(values?: table): Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request
--- @brief Encode a complete Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request.decode
--- @field encode fun(value: Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request): string
--- @brief Decode exactly one complete Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request value New complete value; failures raise Lua errors.
--- @see Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request.encode
--- @field decode fun(bytes: string): Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request
local Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request = classes["Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request"]

--- @class Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response
--- @brief Complete ROS2 ultraarm_p1_interfaces/srv/GetGripperValue_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field gripper_angle integer Exact int8 range -128..127.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response.NATIVE_TYPE: Exact normalized native type name ultraarm_p1_interfaces/srv/GetGripperValue_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_p1_interfaces/srv/GetGripperValue_Response.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response value New mutable complete value; no ROS resource.
--- @see Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response.encode
--- @field new fun(values?: table): Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response
--- @brief Encode a complete Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response.decode
--- @field encode fun(value: Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response): string
--- @brief Decode exactly one complete Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response value New complete value; failures raise Lua errors.
--- @see Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response.encode
--- @field decode fun(bytes: string): Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response
local Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response = classes["Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response"]

--- @class Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request
--- @brief Complete ROS2 ultraarm_p1_interfaces/srv/GripperStatus_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request.NATIVE_TYPE: Exact normalized native type name ultraarm_p1_interfaces/srv/GripperStatus_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_p1_interfaces/srv/GripperStatus_Request.
--- @brief Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request value New mutable complete value; no ROS resource.
--- @see Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request.encode
--- @field new fun(values?: table): Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request
--- @brief Encode a complete Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request.decode
--- @field encode fun(value: Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request): string
--- @brief Decode exactly one complete Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request value New complete value; failures raise Lua errors.
--- @see Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request.encode
--- @field decode fun(bytes: string): Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request
local Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request = classes["Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request"]

--- @class Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response
--- @brief Complete ROS2 ultraarm_p1_interfaces/srv/GripperStatus_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response.NATIVE_TYPE: Exact normalized native type name ultraarm_p1_interfaces/srv/GripperStatus_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_p1_interfaces/srv/GripperStatus_Response.
--- @brief Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response value New mutable complete value; no ROS resource.
--- @see Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response.encode
--- @field new fun(values?: table): Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response
--- @brief Encode a complete Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response.decode
--- @field encode fun(value: Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response): string
--- @brief Decode exactly one complete Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response value New complete value; failures raise Lua errors.
--- @see Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response.encode
--- @field decode fun(bytes: string): Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response
local Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response = classes["Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response"]

--- @class Ros2Ultraarm_p1_interfacesSrvSetAngles_Request
--- @brief Complete ROS2 ultraarm_p1_interfaces/srv/SetAngles_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetAngles_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetAngles_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetAngles_Request.NATIVE_TYPE: Exact normalized native type name ultraarm_p1_interfaces/srv/SetAngles_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetAngles_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_p1_interfaces/srv/SetAngles_Request.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetAngles_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetAngles_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetAngles_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetAngles_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetAngles_Request.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetAngles_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetAngles_Request.MAX_WIRE_BYTES: Inclusive complete maximum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetAngles_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 20 bytes.
--- @brief Construct Ros2Ultraarm_p1_interfacesSrvSetAngles_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Ultraarm_p1_interfacesSrvSetAngles_Request value New mutable complete value; no ROS resource.
--- @see Ros2Ultraarm_p1_interfacesSrvSetAngles_Request.encode
--- @field new fun(values?: table): Ros2Ultraarm_p1_interfacesSrvSetAngles_Request
--- @brief Encode a complete Ros2Ultraarm_p1_interfacesSrvSetAngles_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Ultraarm_p1_interfacesSrvSetAngles_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..20 bytes.
--- @see Ros2Ultraarm_p1_interfacesSrvSetAngles_Request.decode
--- @field encode fun(value: Ros2Ultraarm_p1_interfacesSrvSetAngles_Request): string
--- @brief Decode exactly one complete Ros2Ultraarm_p1_interfacesSrvSetAngles_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Ultraarm_p1_interfacesSrvSetAngles_Request value New complete value; failures raise Lua errors.
--- @see Ros2Ultraarm_p1_interfacesSrvSetAngles_Request.encode
--- @field decode fun(bytes: string): Ros2Ultraarm_p1_interfacesSrvSetAngles_Request
local Ros2Ultraarm_p1_interfacesSrvSetAngles_Request = classes["Ros2Ultraarm_p1_interfacesSrvSetAngles_Request"]

--- @class Ros2Ultraarm_p1_interfacesSrvSetAngles_Response
--- @brief Complete ROS2 ultraarm_p1_interfaces/srv/SetAngles_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetAngles_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetAngles_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetAngles_Response.NATIVE_TYPE: Exact normalized native type name ultraarm_p1_interfaces/srv/SetAngles_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetAngles_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_p1_interfaces/srv/SetAngles_Response.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetAngles_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetAngles_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetAngles_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetAngles_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetAngles_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetAngles_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetAngles_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetAngles_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Ultraarm_p1_interfacesSrvSetAngles_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Ultraarm_p1_interfacesSrvSetAngles_Response value New mutable complete value; no ROS resource.
--- @see Ros2Ultraarm_p1_interfacesSrvSetAngles_Response.encode
--- @field new fun(values?: table): Ros2Ultraarm_p1_interfacesSrvSetAngles_Response
--- @brief Encode a complete Ros2Ultraarm_p1_interfacesSrvSetAngles_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Ultraarm_p1_interfacesSrvSetAngles_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Ultraarm_p1_interfacesSrvSetAngles_Response.decode
--- @field encode fun(value: Ros2Ultraarm_p1_interfacesSrvSetAngles_Response): string
--- @brief Decode exactly one complete Ros2Ultraarm_p1_interfacesSrvSetAngles_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Ultraarm_p1_interfacesSrvSetAngles_Response value New complete value; failures raise Lua errors.
--- @see Ros2Ultraarm_p1_interfacesSrvSetAngles_Response.encode
--- @field decode fun(bytes: string): Ros2Ultraarm_p1_interfacesSrvSetAngles_Response
local Ros2Ultraarm_p1_interfacesSrvSetAngles_Response = classes["Ros2Ultraarm_p1_interfacesSrvSetAngles_Response"]

--- @class Ros2Ultraarm_p1_interfacesSrvSetCoords_Request
--- @brief Complete ROS2 ultraarm_p1_interfaces/srv/SetCoords_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetCoords_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetCoords_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetCoords_Request.NATIVE_TYPE: Exact normalized native type name ultraarm_p1_interfaces/srv/SetCoords_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetCoords_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_p1_interfaces/srv/SetCoords_Request.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetCoords_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetCoords_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetCoords_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetCoords_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetCoords_Request.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetCoords_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetCoords_Request.MAX_WIRE_BYTES: Inclusive complete maximum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetCoords_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 20 bytes.
--- @brief Construct Ros2Ultraarm_p1_interfacesSrvSetCoords_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Ultraarm_p1_interfacesSrvSetCoords_Request value New mutable complete value; no ROS resource.
--- @see Ros2Ultraarm_p1_interfacesSrvSetCoords_Request.encode
--- @field new fun(values?: table): Ros2Ultraarm_p1_interfacesSrvSetCoords_Request
--- @brief Encode a complete Ros2Ultraarm_p1_interfacesSrvSetCoords_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Ultraarm_p1_interfacesSrvSetCoords_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..20 bytes.
--- @see Ros2Ultraarm_p1_interfacesSrvSetCoords_Request.decode
--- @field encode fun(value: Ros2Ultraarm_p1_interfacesSrvSetCoords_Request): string
--- @brief Decode exactly one complete Ros2Ultraarm_p1_interfacesSrvSetCoords_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Ultraarm_p1_interfacesSrvSetCoords_Request value New complete value; failures raise Lua errors.
--- @see Ros2Ultraarm_p1_interfacesSrvSetCoords_Request.encode
--- @field decode fun(bytes: string): Ros2Ultraarm_p1_interfacesSrvSetCoords_Request
local Ros2Ultraarm_p1_interfacesSrvSetCoords_Request = classes["Ros2Ultraarm_p1_interfacesSrvSetCoords_Request"]

--- @class Ros2Ultraarm_p1_interfacesSrvSetCoords_Response
--- @brief Complete ROS2 ultraarm_p1_interfaces/srv/SetCoords_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetCoords_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetCoords_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetCoords_Response.NATIVE_TYPE: Exact normalized native type name ultraarm_p1_interfaces/srv/SetCoords_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetCoords_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_p1_interfaces/srv/SetCoords_Response.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetCoords_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetCoords_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetCoords_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetCoords_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetCoords_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetCoords_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Ultraarm_p1_interfacesSrvSetCoords_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Ultraarm_p1_interfacesSrvSetCoords_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Ultraarm_p1_interfacesSrvSetCoords_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Ultraarm_p1_interfacesSrvSetCoords_Response value New mutable complete value; no ROS resource.
--- @see Ros2Ultraarm_p1_interfacesSrvSetCoords_Response.encode
--- @field new fun(values?: table): Ros2Ultraarm_p1_interfacesSrvSetCoords_Response
--- @brief Encode a complete Ros2Ultraarm_p1_interfacesSrvSetCoords_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Ultraarm_p1_interfacesSrvSetCoords_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Ultraarm_p1_interfacesSrvSetCoords_Response.decode
--- @field encode fun(value: Ros2Ultraarm_p1_interfacesSrvSetCoords_Response): string
--- @brief Decode exactly one complete Ros2Ultraarm_p1_interfacesSrvSetCoords_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Ultraarm_p1_interfacesSrvSetCoords_Response value New complete value; failures raise Lua errors.
--- @see Ros2Ultraarm_p1_interfacesSrvSetCoords_Response.encode
--- @field decode fun(bytes: string): Ros2Ultraarm_p1_interfacesSrvSetCoords_Response
local Ros2Ultraarm_p1_interfacesSrvSetCoords_Response = classes["Ros2Ultraarm_p1_interfacesSrvSetCoords_Response"]

return classes, by_name
