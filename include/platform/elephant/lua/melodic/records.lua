--- @file records.lua
--- @brief Preserve the complete original elephant/melodic canonical value domain.
--- @details The selected domain contains 126 complete record/components and 448 original fields. Declared
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
        ["symbol"] = "Ros1Mybuddy_communicationMybuddyAngles",
        ["ros_version"] = 1,
        ["native_type"] = "mybuddy_communication/MybuddyAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f3c510869207e6d72e868ae35ef95d49a1eea5164c7ef1056cb3d335029563e9",
        ["minimum"] = 52,
        ["maximum"] = 52,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_0",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
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
                ["name"] = "joint_7",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_8",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_9",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_10",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_11",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_12",
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
        ["symbol"] = "Ros1Mybuddy_communicationMybuddyCoords",
        ["ros_version"] = 1,
        ["native_type"] = "mybuddy_communication/MybuddyCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a1df376733f2673e25fed814a038e00f556b82c2b8bce3755644904e50c95384",
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
        ["symbol"] = "Ros1Mybuddy_communicationMybuddyGripperStatus",
        ["ros_version"] = 1,
        ["native_type"] = "mybuddy_communication/MybuddyGripperStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_86fdaf7d3397b26155c891e15d2ebdd903d5899a0895128e720276eb35a63854",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
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
        ["symbol"] = "Ros1Mybuddy_communicationMybuddyPumpStatus",
        ["ros_version"] = 1,
        ["native_type"] = "mybuddy_communication/MybuddyPumpStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_33b6419700f9baf41b584bb464d0234426a04e1bd86d198fe3d66c06845cd80a",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin2",
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
        ["symbol"] = "Ros1Mybuddy_communicationMybuddySetAngles",
        ["ros_version"] = 1,
        ["native_type"] = "mybuddy_communication/MybuddySetAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8f41fddfb715bfaa95c90974cf257181a9ae3e2f36969f6fdfdf3ab03b7d4486",
        ["minimum"] = 53,
        ["maximum"] = 53,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_0",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
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
                ["name"] = "joint_7",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_8",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_9",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_10",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_11",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_12",
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
        ["symbol"] = "Ros1Mybuddy_communicationMybuddySetCoords",
        ["ros_version"] = 1,
        ["native_type"] = "mybuddy_communication/MybuddySetCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bf9f2ee073928aafabbd532644eb57eec70d4b864a3097e2ab1a37840abd3669",
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
        ["symbol"] = "Ros1Mybuddy_communicationGetAnglesRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mybuddy_communication/GetAnglesRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7ba90c12eb91dbcc296c0d61069d0dc12c3ac576c970cd2fe9a0fed29f058e38",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Mybuddy_communicationGetAnglesResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mybuddy_communication/GetAnglesResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_98085b01a21ae26a74a286d790aab310530fff2a88d7a3c35e071df09abd709d",
        ["minimum"] = 52,
        ["maximum"] = 52,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_0",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
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
                ["name"] = "joint_7",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_8",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_9",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_10",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_11",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_12",
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
        ["symbol"] = "Ros1Mybuddy_communicationGetCoordsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mybuddy_communication/GetCoordsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e5b4bd6f4d17f79bf3477c2577e73355b871523291aace267fea201f5a2b43ef",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Mybuddy_communicationGetCoordsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mybuddy_communication/GetCoordsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_604a9a58b11d6e51faee74226c4820db7668b2054b2e48949cf9deb5958f5873",
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
        ["symbol"] = "Ros1Mybuddy_communicationGripperStatusRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mybuddy_communication/GripperStatusRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7816f3fa4c8b7068eeb16e74940d2e26401df47b7bc6881d123f94b554523173",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
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
        ["symbol"] = "Ros1Mybuddy_communicationGripperStatusResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mybuddy_communication/GripperStatusResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b329fd687ef106ed366d80c5651fc536ad266d2b16dee8f985f1bad32738330b",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mybuddy_communicationPumpStatusRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mybuddy_communication/PumpStatusRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4261e7e11f0c6065de868444a0be45d363465b0913246b06b4a2c413714d77e9",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin2",
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
        ["symbol"] = "Ros1Mybuddy_communicationPumpStatusResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mybuddy_communication/PumpStatusResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_975f537d88c880f8daa3459f6762dc6ec7d7eee1f580c0e79f3cb581b77cabd4",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mybuddy_communicationSetAnglesRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mybuddy_communication/SetAnglesRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_47d19578189892ca10e073d8d250839f1e2b39ebbb3525ed9b03a15af18eb240",
        ["minimum"] = 53,
        ["maximum"] = 53,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_0",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
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
                ["name"] = "joint_7",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_8",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_9",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_10",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_11",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_12",
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
        ["symbol"] = "Ros1Mybuddy_communicationSetAnglesResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mybuddy_communication/SetAnglesResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7371fa369708af552fd68522d7effdd00bf82bf7e2fe21469ceb210f51582f81",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mybuddy_communicationSetCoordsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mybuddy_communication/SetCoordsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_81f7315bebd612a9406a2805b393415b8a1956e49f3d1b8efb21f9e703b0bfe0",
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
        ["symbol"] = "Ros1Mybuddy_communicationSetCoordsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mybuddy_communication/SetCoordsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e5c41ea9420e43a5406ddee23cee961347bfad4f83baf9ebac93d16cdb5d0b21",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mecharm_communicationMycobotAngles",
        ["ros_version"] = 1,
        ["native_type"] = "mecharm_communication/MycobotAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4afa3dc66ce6ffe02170c76da688514a04aa7b47008aeb8f79c44f9ff867d189",
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
        ["symbol"] = "Ros1Mecharm_communicationMycobotCoords",
        ["ros_version"] = 1,
        ["native_type"] = "mecharm_communication/MycobotCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a6a82e22cd0a2f24657c0a253ed00bf31c0a266e6ebaab071cfd369780818d35",
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
        ["symbol"] = "Ros1Mecharm_communicationMycobotGripperStatus",
        ["ros_version"] = 1,
        ["native_type"] = "mecharm_communication/MycobotGripperStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_07e04dad52b423c371dc5432b68a2f4272cf55328d6f0a10f091dc389d57a4bf",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
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
        ["symbol"] = "Ros1Mecharm_communicationMycobotPumpStatus",
        ["ros_version"] = 1,
        ["native_type"] = "mecharm_communication/MycobotPumpStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f559fbf7d5d2c872b3660132eb8c17c79ca3c2d27e975f8fb8fde1d86072a6fa",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin2",
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
        ["symbol"] = "Ros1Mecharm_communicationMycobotSetAngles",
        ["ros_version"] = 1,
        ["native_type"] = "mecharm_communication/MycobotSetAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bce09b709e806417595c05e0e795d689b8c53008f9916633d934f935f9389de9",
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
        ["symbol"] = "Ros1Mecharm_communicationMycobotSetCoords",
        ["ros_version"] = 1,
        ["native_type"] = "mecharm_communication/MycobotSetCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_68ffa6950e0934b845b2b45140612997c8276a3ac7ed4303e43cd70417491913",
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
        ["symbol"] = "Ros1Mecharm_communicationGetAnglesRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mecharm_communication/GetAnglesRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6a8f60e71495c9944e1e97c308d5c992674bd46060b6f6abf2df3f9748c13123",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Mecharm_communicationGetAnglesResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mecharm_communication/GetAnglesResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e792a206903dc49fab725e3b3507af3cf4712f10740e9dcceeb90dedfe6ea6e8",
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
        ["symbol"] = "Ros1Mecharm_communicationGetCoordsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mecharm_communication/GetCoordsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_55d4d1b8965ea12f9b15d4bd5a22c43793d04af452fefb84bd98bc3d7d8da8bf",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Mecharm_communicationGetCoordsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mecharm_communication/GetCoordsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2230e517685ea625507334067ccceb8424ecf782fcd4163c551d09048e900ca8",
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
        ["symbol"] = "Ros1Mecharm_communicationGripperStatusRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mecharm_communication/GripperStatusRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_98284fbac3bdb61857b9175b1f82adc7265d0ed418088123d79bf75cb04c9a2c",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
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
        ["symbol"] = "Ros1Mecharm_communicationGripperStatusResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mecharm_communication/GripperStatusResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_29cfb0267fbe68d5dafcd3c9d16a8d4dab6b21477921a48ba35135bc0c22bb32",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mecharm_communicationPumpStatusRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mecharm_communication/PumpStatusRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_aa138db91e46b41659dfc5901225aaaae1c1ae0461c35d3f7a90d0cf86c9920d",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin2",
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
        ["symbol"] = "Ros1Mecharm_communicationPumpStatusResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mecharm_communication/PumpStatusResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_876caa88c833bfa180b8747110683c789aa238c0cda162a8e262c66fddefdd8f",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mecharm_communicationSetAnglesRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mecharm_communication/SetAnglesRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7ad54edf4730457f2b2124c925b87a99bdbeddd8bfcc1e0d806f7b9dad31507b",
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
        ["symbol"] = "Ros1Mecharm_communicationSetAnglesResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mecharm_communication/SetAnglesResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_940a294ef91d04afeb65b88bbdd91df3a7db0a07435ced3993db3a9d0f574c6e",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mecharm_communicationSetCoordsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mecharm_communication/SetCoordsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_68deaf663a1fe2d3d7434935f10161eb444e7ea2f79e4b746fee9bd0383fc929",
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
        ["symbol"] = "Ros1Mecharm_communicationSetCoordsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mecharm_communication/SetCoordsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c66a6e14c4c7eba1b52d7ef57802cb6122a120f692bcc1552c51078301b1b409",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Myarm_communicationMyArmAngles",
        ["ros_version"] = 1,
        ["native_type"] = "myarm_communication/MyArmAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_eff11a03e974b4af030c2dc92d0111cf95e0fb3ce004235bada3fe358b63fd4c",
        ["minimum"] = 28,
        ["maximum"] = 28,
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
                ["name"] = "joint_7",
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
        ["symbol"] = "Ros1Myarm_communicationMyArmCoords",
        ["ros_version"] = 1,
        ["native_type"] = "myarm_communication/MyArmCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f0df1605988924f0263805fb2b27ab7ef9e2296691ed15e03a337606362c983c",
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
        ["symbol"] = "Ros1Myarm_communicationMyArmGripperStatus",
        ["ros_version"] = 1,
        ["native_type"] = "myarm_communication/MyArmGripperStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7875df5b50417da1cef60d79c872aff0b40a08f9bbfe80c103729d3c4c892c6f",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
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
        ["symbol"] = "Ros1Myarm_communicationMyArmPumpStatus",
        ["ros_version"] = 1,
        ["native_type"] = "myarm_communication/MyArmPumpStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_58765b94f1ecb3bb131f6480ea6830631cde9c96eeef94fd9b22598ccc9ea928",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin2",
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
        ["symbol"] = "Ros1Myarm_communicationMyArmSetAngles",
        ["ros_version"] = 1,
        ["native_type"] = "myarm_communication/MyArmSetAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6acbfd19e3864b66e47b9da5c7c0e8890e7336e8d6c9a5657c4f5eaa5285fe42",
        ["minimum"] = 29,
        ["maximum"] = 29,
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
                ["name"] = "joint_7",
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
        ["symbol"] = "Ros1Myarm_communicationMyArmSetCoords",
        ["ros_version"] = 1,
        ["native_type"] = "myarm_communication/MyArmSetCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ce10c29be4cfd832d5076fead55817a0ac7ccde002d5bbbd7a2befd95e9752fd",
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
        ["symbol"] = "Ros1Myarm_communicationGetAnglesRequest",
        ["ros_version"] = 1,
        ["native_type"] = "myarm_communication/GetAnglesRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_18ea682d1c475321b67435e9f207a14627113ad237a38c759cfe4e1c92fded37",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Myarm_communicationGetAnglesResponse",
        ["ros_version"] = 1,
        ["native_type"] = "myarm_communication/GetAnglesResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0c68b293384d21d06e23d4aba10b4a4c2eff4e1a0eaa81903e026fe28da410c7",
        ["minimum"] = 28,
        ["maximum"] = 28,
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
                ["name"] = "joint_7",
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
        ["symbol"] = "Ros1Myarm_communicationGetCoordsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "myarm_communication/GetCoordsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_04d9d79ad983cf4631cf65a48cae60d982cd0f234f0f4ed1afa0cc630bd63d95",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Myarm_communicationGetCoordsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "myarm_communication/GetCoordsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_752564704c08fb2076df8eea4f6f5b89621041372472f0f99b6627fdfda831b7",
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
        ["symbol"] = "Ros1Myarm_communicationGripperStatusRequest",
        ["ros_version"] = 1,
        ["native_type"] = "myarm_communication/GripperStatusRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_adec2e0fbf48862c2245aea4c31c59ea12abdec26b4727b14005b65006c58976",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
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
        ["symbol"] = "Ros1Myarm_communicationGripperStatusResponse",
        ["ros_version"] = 1,
        ["native_type"] = "myarm_communication/GripperStatusResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d703a0ec6f562f1deb444313e36e6a728b4e521d1196d90a63725753d5fe9659",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Myarm_communicationPumpStatusRequest",
        ["ros_version"] = 1,
        ["native_type"] = "myarm_communication/PumpStatusRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_eac2f5c006a0fa86df638c52e9cfb7d2c17818ec10e32ad5277af216c6c944f4",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin2",
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
        ["symbol"] = "Ros1Myarm_communicationPumpStatusResponse",
        ["ros_version"] = 1,
        ["native_type"] = "myarm_communication/PumpStatusResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_28533ec27c01d85c9a4644959ea8e5c3f2480f5203a9545e96e4242158f08044",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Myarm_communicationSetAnglesRequest",
        ["ros_version"] = 1,
        ["native_type"] = "myarm_communication/SetAnglesRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c15c81907fbace209686a98578019d893d86cecf4782427ac2c3858da8cd3e0a",
        ["minimum"] = 29,
        ["maximum"] = 29,
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
                ["name"] = "joint_7",
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
        ["symbol"] = "Ros1Myarm_communicationSetAnglesResponse",
        ["ros_version"] = 1,
        ["native_type"] = "myarm_communication/SetAnglesResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_dbdbcb001f0478a4bba5ae9d7320d8dbfa4e36a5c1c130215ff5ab864c73af0f",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Myarm_communicationSetCoordsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "myarm_communication/SetCoordsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_86cfc6edb6b86f90a21818e824aea50b697e314687472e1e96e9ce5399ef66c6",
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
        ["symbol"] = "Ros1Myarm_communicationSetCoordsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "myarm_communication/SetCoordsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_52a54371663141d4384dae8969b729baf097a0aa6105f263e78593743e44272d",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mycobot_320_communicationMycobotAngles",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_320_communication/MycobotAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_67ec61da0c2bf7ee461c21abbfcab14d74b84cb6c9a12430e2a306abdc65690a",
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
        ["symbol"] = "Ros1Mycobot_320_communicationMycobotCoords",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_320_communication/MycobotCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1f2ada8331783764a52ed35c81c3ce9a2fdd260e2dffa2990751ce5156c3ad03",
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
        ["symbol"] = "Ros1Mycobot_320_communicationMycobotGripperStatus",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_320_communication/MycobotGripperStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_efb4ccdb3ce35d67174700f3d3dd7332d0f7a834c5d76b6153e389e031907984",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
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
        ["symbol"] = "Ros1Mycobot_320_communicationMycobotPumpStatus",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_320_communication/MycobotPumpStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bb1d48067f44b7022820a6175afe05d5ba8caed9f750874a4e703389cb0d83f4",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin2",
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
        ["symbol"] = "Ros1Mycobot_320_communicationMycobotSetAngles",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_320_communication/MycobotSetAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bf04b1bd24ab2f56c1835d1abe44b73fe023407c3ebdd3d35341242116a5d259",
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
        ["symbol"] = "Ros1Mycobot_320_communicationMycobotSetCoords",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_320_communication/MycobotSetCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_761235ef96bcc1c687ad8dd3f6d39982d1b0a7a24eaab3bb54feb9780b9e0092",
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
        ["symbol"] = "Ros1Mycobot_320_communicationGetAnglesRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_320_communication/GetAnglesRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_fe13e75d9def5e6f7f831297c771cd4d319e1e9862b5026382fed23747b721b8",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Mycobot_320_communicationGetAnglesResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_320_communication/GetAnglesResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c0cb03f21add6e566a30129ed7ce3174fa86786859c472a848c6768678adc80a",
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
        ["symbol"] = "Ros1Mycobot_320_communicationGetCoordsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_320_communication/GetCoordsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_82b2ae7ba4bf2aff8cd6c88ae344b376604624612abdd633c930695c1d1650d6",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Mycobot_320_communicationGetCoordsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_320_communication/GetCoordsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_821bac75a42a37fa06f51e57c09839f3557487dc8e883310601cb2e00bb6b05d",
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
        ["symbol"] = "Ros1Mycobot_320_communicationGripperStatusRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_320_communication/GripperStatusRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_68d072c047f4f026459309282a40c78c5db51571126efb85b7ca9e9f121b5eb5",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
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
        ["symbol"] = "Ros1Mycobot_320_communicationGripperStatusResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_320_communication/GripperStatusResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9c1387ec1a93d6674ac6dd735b2811957db57359e9e461dcedc70ae6fccc5544",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mycobot_320_communicationPumpStatusRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_320_communication/PumpStatusRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_23a6e68b36341b30ab13026cbddfd01b16d352105bb5faecd7c1ec6ad654ab60",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin2",
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
        ["symbol"] = "Ros1Mycobot_320_communicationPumpStatusResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_320_communication/PumpStatusResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_037f53ebd0750c76a798ff17507759fcf71aa8a55496e5b151b8d977dff2c1c8",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mycobot_320_communicationSetAnglesRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_320_communication/SetAnglesRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_644a7c29bae881d5f29708b552dcd8fd4102289aa396614590bca33dbda9f7da",
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
        ["symbol"] = "Ros1Mycobot_320_communicationSetAnglesResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_320_communication/SetAnglesResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_57578e8427fc6a3a89aa595259e03c3498153482afd716dd44c0d09ee9f59f20",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mycobot_320_communicationSetCoordsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_320_communication/SetCoordsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f398444b45a64155c410a44da67043cee13993d75beabd6bc104b23ccd1d6656",
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
        ["symbol"] = "Ros1Mycobot_320_communicationSetCoordsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_320_communication/SetCoordsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3fef1bfe9036381f8ad45bc1490e96b4917df5689ccf3a84d66e5ba5145e56c4",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mycobot_communicationMycobotAngles",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/MycobotAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6",
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
        ["symbol"] = "Ros1Mycobot_communicationMycobotCoords",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/MycobotCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2",
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
        ["symbol"] = "Ros1Mycobot_communicationMycobotGripperStatus",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/MycobotGripperStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
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
        ["symbol"] = "Ros1Mycobot_communicationMycobotPumpStatus",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/MycobotPumpStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin2",
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
        ["symbol"] = "Ros1Mycobot_communicationMycobotSetAngles",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/MycobotSetAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334",
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
        ["symbol"] = "Ros1Mycobot_communicationMycobotSetCoords",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/MycobotSetCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9",
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
        ["symbol"] = "Ros1Mycobot_communicationGetAnglesRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/GetAnglesRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Mycobot_communicationGetAnglesResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/GetAnglesResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3",
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
        ["symbol"] = "Ros1Mycobot_communicationGetCoordsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/GetCoordsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Mycobot_communicationGetCoordsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/GetCoordsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107",
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
        ["symbol"] = "Ros1Mycobot_communicationGripperStatusRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/GripperStatusRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
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
        ["symbol"] = "Ros1Mycobot_communicationGripperStatusResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/GripperStatusResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mycobot_communicationPumpStatusRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/PumpStatusRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin2",
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
        ["symbol"] = "Ros1Mycobot_communicationPumpStatusResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/PumpStatusResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mycobot_communicationSetAnglesRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/SetAnglesRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd",
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
        ["symbol"] = "Ros1Mycobot_communicationSetAnglesResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/SetAnglesResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mycobot_communicationSetCoordsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/SetCoordsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a",
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
        ["symbol"] = "Ros1Mycobot_communicationSetCoordsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/SetCoordsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mypalletizer_communicationMypalAngles",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/MypalAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9",
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
        ["symbol"] = "Ros1Mypalletizer_communicationMypalCoords",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/MypalCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80",
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
        ["symbol"] = "Ros1Mypalletizer_communicationMypalGripperStatus",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/MypalGripperStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
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
        ["symbol"] = "Ros1Mypalletizer_communicationMypalPumpStatus",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/MypalPumpStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin2",
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
        ["symbol"] = "Ros1Mypalletizer_communicationMypalSetAngles",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/MypalSetAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98",
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
        ["symbol"] = "Ros1Mypalletizer_communicationMypalSetCoords",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/MypalSetCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448",
        ["minimum"] = 18,
        ["maximum"] = 18,
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
        ["symbol"] = "Ros1Mypalletizer_communicationGetAnglesRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/GetAnglesRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Mypalletizer_communicationGetAnglesResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/GetAnglesResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745",
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
        ["symbol"] = "Ros1Mypalletizer_communicationGetCoordsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/GetCoordsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Mypalletizer_communicationGetCoordsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/GetCoordsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb",
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
        ["symbol"] = "Ros1Mypalletizer_communicationGripperStatusRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/GripperStatusRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
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
        ["symbol"] = "Ros1Mypalletizer_communicationGripperStatusResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/GripperStatusResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mypalletizer_communicationPumpStatusRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/PumpStatusRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin2",
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
        ["symbol"] = "Ros1Mypalletizer_communicationPumpStatusResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/PumpStatusResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mypalletizer_communicationSetAnglesRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/SetAnglesRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d",
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
        ["symbol"] = "Ros1Mypalletizer_communicationSetAnglesResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/SetAnglesResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mypalletizer_communicationSetCoordsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/SetCoordsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1",
        ["minimum"] = 18,
        ["maximum"] = 18,
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
        ["symbol"] = "Ros1Mypalletizer_communicationSetCoordsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/SetCoordsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Ultraarm_communicationUltraArmAngles",
        ["ros_version"] = 1,
        ["native_type"] = "ultraarm_communication/ultraArmAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8fa11b8169b634ea7c786bef6ee5d8f0d42488b9841f06104ca8fd378c0fa88d",
        ["minimum"] = 12,
        ["maximum"] = 12,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Ultraarm_communicationUltraArmCoords",
        ["ros_version"] = 1,
        ["native_type"] = "ultraarm_communication/ultraArmCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4e540a1f7d66110adec19bcf3114c44bbc8574efbfd05e911de8d56cc64f24fa",
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
                ["name"] = "z",
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
        ["symbol"] = "Ros1Ultraarm_communicationUltraArmGripperStatus",
        ["ros_version"] = 1,
        ["native_type"] = "ultraarm_communication/ultraArmGripperStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_60d9ded61184b6f51986afe42b42c786ffb71a13ee6af004c3836c6708b41f9c",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
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
        ["symbol"] = "Ros1Ultraarm_communicationUltraArmPumpStatus",
        ["ros_version"] = 1,
        ["native_type"] = "ultraarm_communication/ultraArmPumpStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f765502e0a7c0a4fe18049032fe9d314512de56bc2d52e4b1a8cbaf01fbc68e1",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
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
        ["symbol"] = "Ros1Ultraarm_communicationUltraArmSetAngles",
        ["ros_version"] = 1,
        ["native_type"] = "ultraarm_communication/ultraArmSetAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0536de7f7a45a8d0a19b16b78557ec77c4ce5f99e1141df3c617da847cbb079c",
        ["minimum"] = 13,
        ["maximum"] = 13,
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
        ["symbol"] = "Ros1Ultraarm_communicationUltraArmSetCoords",
        ["ros_version"] = 1,
        ["native_type"] = "ultraarm_communication/ultraArmSetCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4e59dd853f51fe18f9401ec6d0fffaa50a00ba7c96a12b8d09c9bfd5ad68f818",
        ["minimum"] = 13,
        ["maximum"] = 13,
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
        ["symbol"] = "Ros1Ultraarm_communicationGetAnglesRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ultraarm_communication/GetAnglesRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_fd6922aabe6ec7f82731d19efb0963753d86a8f412de96f8bc67ea2615a7c860",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Ultraarm_communicationGetAnglesResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ultraarm_communication/GetAnglesResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d7048c8ef416139a11a58bd7d5b865f4b6e0b5431c8e80cdd8c4c79de67cc128",
        ["minimum"] = 12,
        ["maximum"] = 12,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Ultraarm_communicationGetCoordsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ultraarm_communication/GetCoordsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_40a6535b429baf0bbe0bc642ade7a8048e693633388ccd061bf12b6d795bbbd1",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Ultraarm_communicationGetCoordsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ultraarm_communication/GetCoordsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9f19d8d2eb7284c4cbe2587ca0438d4680287759553d908340f5053ae4f4f036",
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
                ["name"] = "z",
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
        ["symbol"] = "Ros1Ultraarm_communicationGripperStatusRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ultraarm_communication/GripperStatusRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c435d39bef04bd7022e048c0cf364d100bf7a92855f04c816d2a22f0e672d586",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
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
        ["symbol"] = "Ros1Ultraarm_communicationGripperStatusResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ultraarm_communication/GripperStatusResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_fa0c99ff37acea63c5d507174f9725a9341ffaa007e722e21a8e0b93097e56d4",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Ultraarm_communicationPumpStatusRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ultraarm_communication/PumpStatusRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_03df5de115870b7679c85e5dc64f996694578f1b7b41387e531a49ee6626e8b2",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
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
        ["symbol"] = "Ros1Ultraarm_communicationPumpStatusResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ultraarm_communication/PumpStatusResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_693fd1ad36c534188f959fdb72df4f970432946c5706472c0bf41b27d054a4ee",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Ultraarm_communicationSetAnglesRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ultraarm_communication/SetAnglesRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_fe8cdfa565c8aa8b77db9743af57d7c1ba14aa9dd31c8d4ca92bb7aec107bb42",
        ["minimum"] = 13,
        ["maximum"] = 13,
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
        ["symbol"] = "Ros1Ultraarm_communicationSetAnglesResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ultraarm_communication/SetAnglesResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f1ecaff9a60a47ef978b0faf2b9b2b9166ae308b3df718b0536536004dc8a3b4",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Ultraarm_communicationSetCoordsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "ultraarm_communication/SetCoordsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2a4670c426b6cf566795b0e874018769fb7e852bd104770dff3e735608c3e3d5",
        ["minimum"] = 13,
        ["maximum"] = 13,
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
        ["symbol"] = "Ros1Ultraarm_communicationSetCoordsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "ultraarm_communication/SetCoordsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_02aa6c82612c5ffd43e890bb173a59245e00cd91dbc38303dcbdc0fb30683431",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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

--- @class Ros1Mybuddy_communicationMybuddyAngles
--- @brief Complete ROS1 mybuddy_communication/MybuddyAngles value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_0 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_7 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_8 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_9 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_10 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_11 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_12 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Mybuddy_communicationMybuddyAngles.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mybuddy_communicationMybuddyAngles.NATIVE_TYPE: Exact normalized native type name mybuddy_communication/MybuddyAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mybuddy_communication/MybuddyAngles.
--- @brief Ros1Mybuddy_communicationMybuddyAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mybuddy_communicationMybuddyAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mybuddy_communicationMybuddyAngles.MIN_WIRE_BYTES: Inclusive complete minimum 52 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 52 bytes.
--- @brief Ros1Mybuddy_communicationMybuddyAngles.MAX_WIRE_BYTES: Inclusive complete maximum 52 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 52 bytes.
--- @brief Construct Ros1Mybuddy_communicationMybuddyAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mybuddy_communicationMybuddyAngles value New mutable complete value; no ROS resource.
--- @see Ros1Mybuddy_communicationMybuddyAngles.encode
--- @field new fun(values?: table): Ros1Mybuddy_communicationMybuddyAngles
--- @brief Encode a complete Ros1Mybuddy_communicationMybuddyAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mybuddy_communicationMybuddyAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 52..52 bytes.
--- @see Ros1Mybuddy_communicationMybuddyAngles.decode
--- @field encode fun(value: Ros1Mybuddy_communicationMybuddyAngles): string
--- @brief Decode exactly one complete Ros1Mybuddy_communicationMybuddyAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mybuddy_communicationMybuddyAngles value New complete value; failures raise Lua errors.
--- @see Ros1Mybuddy_communicationMybuddyAngles.encode
--- @field decode fun(bytes: string): Ros1Mybuddy_communicationMybuddyAngles
local Ros1Mybuddy_communicationMybuddyAngles = classes["Ros1Mybuddy_communicationMybuddyAngles"]

--- @class Ros1Mybuddy_communicationMybuddyCoords
--- @brief Complete ROS1 mybuddy_communication/MybuddyCoords value and codec.
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
--- @brief Ros1Mybuddy_communicationMybuddyCoords.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mybuddy_communicationMybuddyCoords.NATIVE_TYPE: Exact normalized native type name mybuddy_communication/MybuddyCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mybuddy_communication/MybuddyCoords.
--- @brief Ros1Mybuddy_communicationMybuddyCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mybuddy_communicationMybuddyCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mybuddy_communicationMybuddyCoords.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Mybuddy_communicationMybuddyCoords.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Mybuddy_communicationMybuddyCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mybuddy_communicationMybuddyCoords value New mutable complete value; no ROS resource.
--- @see Ros1Mybuddy_communicationMybuddyCoords.encode
--- @field new fun(values?: table): Ros1Mybuddy_communicationMybuddyCoords
--- @brief Encode a complete Ros1Mybuddy_communicationMybuddyCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mybuddy_communicationMybuddyCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Mybuddy_communicationMybuddyCoords.decode
--- @field encode fun(value: Ros1Mybuddy_communicationMybuddyCoords): string
--- @brief Decode exactly one complete Ros1Mybuddy_communicationMybuddyCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mybuddy_communicationMybuddyCoords value New complete value; failures raise Lua errors.
--- @see Ros1Mybuddy_communicationMybuddyCoords.encode
--- @field decode fun(bytes: string): Ros1Mybuddy_communicationMybuddyCoords
local Ros1Mybuddy_communicationMybuddyCoords = classes["Ros1Mybuddy_communicationMybuddyCoords"]

--- @class Ros1Mybuddy_communicationMybuddyGripperStatus
--- @brief Complete ROS1 mybuddy_communication/MybuddyGripperStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mybuddy_communicationMybuddyGripperStatus.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyGripperStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mybuddy_communicationMybuddyGripperStatus.NATIVE_TYPE: Exact normalized native type name mybuddy_communication/MybuddyGripperStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyGripperStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name mybuddy_communication/MybuddyGripperStatus.
--- @brief Ros1Mybuddy_communicationMybuddyGripperStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyGripperStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mybuddy_communicationMybuddyGripperStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyGripperStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mybuddy_communicationMybuddyGripperStatus.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyGripperStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mybuddy_communicationMybuddyGripperStatus.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyGripperStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mybuddy_communicationMybuddyGripperStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mybuddy_communicationMybuddyGripperStatus value New mutable complete value; no ROS resource.
--- @see Ros1Mybuddy_communicationMybuddyGripperStatus.encode
--- @field new fun(values?: table): Ros1Mybuddy_communicationMybuddyGripperStatus
--- @brief Encode a complete Ros1Mybuddy_communicationMybuddyGripperStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mybuddy_communicationMybuddyGripperStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mybuddy_communicationMybuddyGripperStatus.decode
--- @field encode fun(value: Ros1Mybuddy_communicationMybuddyGripperStatus): string
--- @brief Decode exactly one complete Ros1Mybuddy_communicationMybuddyGripperStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mybuddy_communicationMybuddyGripperStatus value New complete value; failures raise Lua errors.
--- @see Ros1Mybuddy_communicationMybuddyGripperStatus.encode
--- @field decode fun(bytes: string): Ros1Mybuddy_communicationMybuddyGripperStatus
local Ros1Mybuddy_communicationMybuddyGripperStatus = classes["Ros1Mybuddy_communicationMybuddyGripperStatus"]

--- @class Ros1Mybuddy_communicationMybuddyPumpStatus
--- @brief Complete ROS1 mybuddy_communication/MybuddyPumpStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @field Pin1 integer Exact int8 range -128..127.
--- @field Pin2 integer Exact int8 range -128..127.
--- @brief Ros1Mybuddy_communicationMybuddyPumpStatus.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyPumpStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mybuddy_communicationMybuddyPumpStatus.NATIVE_TYPE: Exact normalized native type name mybuddy_communication/MybuddyPumpStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyPumpStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name mybuddy_communication/MybuddyPumpStatus.
--- @brief Ros1Mybuddy_communicationMybuddyPumpStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyPumpStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mybuddy_communicationMybuddyPumpStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyPumpStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mybuddy_communicationMybuddyPumpStatus.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyPumpStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros1Mybuddy_communicationMybuddyPumpStatus.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddyPumpStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros1Mybuddy_communicationMybuddyPumpStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mybuddy_communicationMybuddyPumpStatus value New mutable complete value; no ROS resource.
--- @see Ros1Mybuddy_communicationMybuddyPumpStatus.encode
--- @field new fun(values?: table): Ros1Mybuddy_communicationMybuddyPumpStatus
--- @brief Encode a complete Ros1Mybuddy_communicationMybuddyPumpStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mybuddy_communicationMybuddyPumpStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros1Mybuddy_communicationMybuddyPumpStatus.decode
--- @field encode fun(value: Ros1Mybuddy_communicationMybuddyPumpStatus): string
--- @brief Decode exactly one complete Ros1Mybuddy_communicationMybuddyPumpStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mybuddy_communicationMybuddyPumpStatus value New complete value; failures raise Lua errors.
--- @see Ros1Mybuddy_communicationMybuddyPumpStatus.encode
--- @field decode fun(bytes: string): Ros1Mybuddy_communicationMybuddyPumpStatus
local Ros1Mybuddy_communicationMybuddyPumpStatus = classes["Ros1Mybuddy_communicationMybuddyPumpStatus"]

--- @class Ros1Mybuddy_communicationMybuddySetAngles
--- @brief Complete ROS1 mybuddy_communication/MybuddySetAngles value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_0 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_7 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_8 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_9 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_10 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_11 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_12 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros1Mybuddy_communicationMybuddySetAngles.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddySetAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mybuddy_communicationMybuddySetAngles.NATIVE_TYPE: Exact normalized native type name mybuddy_communication/MybuddySetAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddySetAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mybuddy_communication/MybuddySetAngles.
--- @brief Ros1Mybuddy_communicationMybuddySetAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddySetAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mybuddy_communicationMybuddySetAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddySetAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mybuddy_communicationMybuddySetAngles.MIN_WIRE_BYTES: Inclusive complete minimum 53 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddySetAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 53 bytes.
--- @brief Ros1Mybuddy_communicationMybuddySetAngles.MAX_WIRE_BYTES: Inclusive complete maximum 53 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddySetAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 53 bytes.
--- @brief Construct Ros1Mybuddy_communicationMybuddySetAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mybuddy_communicationMybuddySetAngles value New mutable complete value; no ROS resource.
--- @see Ros1Mybuddy_communicationMybuddySetAngles.encode
--- @field new fun(values?: table): Ros1Mybuddy_communicationMybuddySetAngles
--- @brief Encode a complete Ros1Mybuddy_communicationMybuddySetAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mybuddy_communicationMybuddySetAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 53..53 bytes.
--- @see Ros1Mybuddy_communicationMybuddySetAngles.decode
--- @field encode fun(value: Ros1Mybuddy_communicationMybuddySetAngles): string
--- @brief Decode exactly one complete Ros1Mybuddy_communicationMybuddySetAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mybuddy_communicationMybuddySetAngles value New complete value; failures raise Lua errors.
--- @see Ros1Mybuddy_communicationMybuddySetAngles.encode
--- @field decode fun(bytes: string): Ros1Mybuddy_communicationMybuddySetAngles
local Ros1Mybuddy_communicationMybuddySetAngles = classes["Ros1Mybuddy_communicationMybuddySetAngles"]

--- @class Ros1Mybuddy_communicationMybuddySetCoords
--- @brief Complete ROS1 mybuddy_communication/MybuddySetCoords value and codec.
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
--- @brief Ros1Mybuddy_communicationMybuddySetCoords.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddySetCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mybuddy_communicationMybuddySetCoords.NATIVE_TYPE: Exact normalized native type name mybuddy_communication/MybuddySetCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddySetCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mybuddy_communication/MybuddySetCoords.
--- @brief Ros1Mybuddy_communicationMybuddySetCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddySetCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mybuddy_communicationMybuddySetCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddySetCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mybuddy_communicationMybuddySetCoords.MIN_WIRE_BYTES: Inclusive complete minimum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddySetCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 26 bytes.
--- @brief Ros1Mybuddy_communicationMybuddySetCoords.MAX_WIRE_BYTES: Inclusive complete maximum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationMybuddySetCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 26 bytes.
--- @brief Construct Ros1Mybuddy_communicationMybuddySetCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mybuddy_communicationMybuddySetCoords value New mutable complete value; no ROS resource.
--- @see Ros1Mybuddy_communicationMybuddySetCoords.encode
--- @field new fun(values?: table): Ros1Mybuddy_communicationMybuddySetCoords
--- @brief Encode a complete Ros1Mybuddy_communicationMybuddySetCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mybuddy_communicationMybuddySetCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 26..26 bytes.
--- @see Ros1Mybuddy_communicationMybuddySetCoords.decode
--- @field encode fun(value: Ros1Mybuddy_communicationMybuddySetCoords): string
--- @brief Decode exactly one complete Ros1Mybuddy_communicationMybuddySetCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mybuddy_communicationMybuddySetCoords value New complete value; failures raise Lua errors.
--- @see Ros1Mybuddy_communicationMybuddySetCoords.encode
--- @field decode fun(bytes: string): Ros1Mybuddy_communicationMybuddySetCoords
local Ros1Mybuddy_communicationMybuddySetCoords = classes["Ros1Mybuddy_communicationMybuddySetCoords"]

--- @class Ros1Mybuddy_communicationGetAnglesRequest
--- @brief Complete ROS1 mybuddy_communication/GetAnglesRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Mybuddy_communicationGetAnglesRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetAnglesRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mybuddy_communicationGetAnglesRequest.NATIVE_TYPE: Exact normalized native type name mybuddy_communication/GetAnglesRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetAnglesRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mybuddy_communication/GetAnglesRequest.
--- @brief Ros1Mybuddy_communicationGetAnglesRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetAnglesRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mybuddy_communicationGetAnglesRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetAnglesRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mybuddy_communicationGetAnglesRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetAnglesRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Mybuddy_communicationGetAnglesRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetAnglesRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Mybuddy_communicationGetAnglesRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mybuddy_communicationGetAnglesRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mybuddy_communicationGetAnglesRequest.encode
--- @field new fun(values?: table): Ros1Mybuddy_communicationGetAnglesRequest
--- @brief Encode a complete Ros1Mybuddy_communicationGetAnglesRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mybuddy_communicationGetAnglesRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Mybuddy_communicationGetAnglesRequest.decode
--- @field encode fun(value: Ros1Mybuddy_communicationGetAnglesRequest): string
--- @brief Decode exactly one complete Ros1Mybuddy_communicationGetAnglesRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mybuddy_communicationGetAnglesRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mybuddy_communicationGetAnglesRequest.encode
--- @field decode fun(bytes: string): Ros1Mybuddy_communicationGetAnglesRequest
local Ros1Mybuddy_communicationGetAnglesRequest = classes["Ros1Mybuddy_communicationGetAnglesRequest"]

--- @class Ros1Mybuddy_communicationGetAnglesResponse
--- @brief Complete ROS1 mybuddy_communication/GetAnglesResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_0 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_7 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_8 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_9 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_10 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_11 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_12 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Mybuddy_communicationGetAnglesResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetAnglesResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mybuddy_communicationGetAnglesResponse.NATIVE_TYPE: Exact normalized native type name mybuddy_communication/GetAnglesResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetAnglesResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mybuddy_communication/GetAnglesResponse.
--- @brief Ros1Mybuddy_communicationGetAnglesResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetAnglesResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mybuddy_communicationGetAnglesResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetAnglesResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mybuddy_communicationGetAnglesResponse.MIN_WIRE_BYTES: Inclusive complete minimum 52 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetAnglesResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 52 bytes.
--- @brief Ros1Mybuddy_communicationGetAnglesResponse.MAX_WIRE_BYTES: Inclusive complete maximum 52 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetAnglesResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 52 bytes.
--- @brief Construct Ros1Mybuddy_communicationGetAnglesResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mybuddy_communicationGetAnglesResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mybuddy_communicationGetAnglesResponse.encode
--- @field new fun(values?: table): Ros1Mybuddy_communicationGetAnglesResponse
--- @brief Encode a complete Ros1Mybuddy_communicationGetAnglesResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mybuddy_communicationGetAnglesResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 52..52 bytes.
--- @see Ros1Mybuddy_communicationGetAnglesResponse.decode
--- @field encode fun(value: Ros1Mybuddy_communicationGetAnglesResponse): string
--- @brief Decode exactly one complete Ros1Mybuddy_communicationGetAnglesResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mybuddy_communicationGetAnglesResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mybuddy_communicationGetAnglesResponse.encode
--- @field decode fun(bytes: string): Ros1Mybuddy_communicationGetAnglesResponse
local Ros1Mybuddy_communicationGetAnglesResponse = classes["Ros1Mybuddy_communicationGetAnglesResponse"]

--- @class Ros1Mybuddy_communicationGetCoordsRequest
--- @brief Complete ROS1 mybuddy_communication/GetCoordsRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Mybuddy_communicationGetCoordsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetCoordsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mybuddy_communicationGetCoordsRequest.NATIVE_TYPE: Exact normalized native type name mybuddy_communication/GetCoordsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetCoordsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mybuddy_communication/GetCoordsRequest.
--- @brief Ros1Mybuddy_communicationGetCoordsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetCoordsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mybuddy_communicationGetCoordsRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetCoordsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mybuddy_communicationGetCoordsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetCoordsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Mybuddy_communicationGetCoordsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetCoordsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Mybuddy_communicationGetCoordsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mybuddy_communicationGetCoordsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mybuddy_communicationGetCoordsRequest.encode
--- @field new fun(values?: table): Ros1Mybuddy_communicationGetCoordsRequest
--- @brief Encode a complete Ros1Mybuddy_communicationGetCoordsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mybuddy_communicationGetCoordsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Mybuddy_communicationGetCoordsRequest.decode
--- @field encode fun(value: Ros1Mybuddy_communicationGetCoordsRequest): string
--- @brief Decode exactly one complete Ros1Mybuddy_communicationGetCoordsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mybuddy_communicationGetCoordsRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mybuddy_communicationGetCoordsRequest.encode
--- @field decode fun(bytes: string): Ros1Mybuddy_communicationGetCoordsRequest
local Ros1Mybuddy_communicationGetCoordsRequest = classes["Ros1Mybuddy_communicationGetCoordsRequest"]

--- @class Ros1Mybuddy_communicationGetCoordsResponse
--- @brief Complete ROS1 mybuddy_communication/GetCoordsResponse value and codec.
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
--- @brief Ros1Mybuddy_communicationGetCoordsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetCoordsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mybuddy_communicationGetCoordsResponse.NATIVE_TYPE: Exact normalized native type name mybuddy_communication/GetCoordsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetCoordsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mybuddy_communication/GetCoordsResponse.
--- @brief Ros1Mybuddy_communicationGetCoordsResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetCoordsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mybuddy_communicationGetCoordsResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetCoordsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mybuddy_communicationGetCoordsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetCoordsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Mybuddy_communicationGetCoordsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGetCoordsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Mybuddy_communicationGetCoordsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mybuddy_communicationGetCoordsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mybuddy_communicationGetCoordsResponse.encode
--- @field new fun(values?: table): Ros1Mybuddy_communicationGetCoordsResponse
--- @brief Encode a complete Ros1Mybuddy_communicationGetCoordsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mybuddy_communicationGetCoordsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Mybuddy_communicationGetCoordsResponse.decode
--- @field encode fun(value: Ros1Mybuddy_communicationGetCoordsResponse): string
--- @brief Decode exactly one complete Ros1Mybuddy_communicationGetCoordsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mybuddy_communicationGetCoordsResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mybuddy_communicationGetCoordsResponse.encode
--- @field decode fun(bytes: string): Ros1Mybuddy_communicationGetCoordsResponse
local Ros1Mybuddy_communicationGetCoordsResponse = classes["Ros1Mybuddy_communicationGetCoordsResponse"]

--- @class Ros1Mybuddy_communicationGripperStatusRequest
--- @brief Complete ROS1 mybuddy_communication/GripperStatusRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mybuddy_communicationGripperStatusRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGripperStatusRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mybuddy_communicationGripperStatusRequest.NATIVE_TYPE: Exact normalized native type name mybuddy_communication/GripperStatusRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGripperStatusRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mybuddy_communication/GripperStatusRequest.
--- @brief Ros1Mybuddy_communicationGripperStatusRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGripperStatusRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mybuddy_communicationGripperStatusRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGripperStatusRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mybuddy_communicationGripperStatusRequest.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGripperStatusRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mybuddy_communicationGripperStatusRequest.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGripperStatusRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mybuddy_communicationGripperStatusRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mybuddy_communicationGripperStatusRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mybuddy_communicationGripperStatusRequest.encode
--- @field new fun(values?: table): Ros1Mybuddy_communicationGripperStatusRequest
--- @brief Encode a complete Ros1Mybuddy_communicationGripperStatusRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mybuddy_communicationGripperStatusRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mybuddy_communicationGripperStatusRequest.decode
--- @field encode fun(value: Ros1Mybuddy_communicationGripperStatusRequest): string
--- @brief Decode exactly one complete Ros1Mybuddy_communicationGripperStatusRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mybuddy_communicationGripperStatusRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mybuddy_communicationGripperStatusRequest.encode
--- @field decode fun(bytes: string): Ros1Mybuddy_communicationGripperStatusRequest
local Ros1Mybuddy_communicationGripperStatusRequest = classes["Ros1Mybuddy_communicationGripperStatusRequest"]

--- @class Ros1Mybuddy_communicationGripperStatusResponse
--- @brief Complete ROS1 mybuddy_communication/GripperStatusResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mybuddy_communicationGripperStatusResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGripperStatusResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mybuddy_communicationGripperStatusResponse.NATIVE_TYPE: Exact normalized native type name mybuddy_communication/GripperStatusResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGripperStatusResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mybuddy_communication/GripperStatusResponse.
--- @brief Ros1Mybuddy_communicationGripperStatusResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGripperStatusResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mybuddy_communicationGripperStatusResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGripperStatusResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mybuddy_communicationGripperStatusResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGripperStatusResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mybuddy_communicationGripperStatusResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationGripperStatusResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mybuddy_communicationGripperStatusResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mybuddy_communicationGripperStatusResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mybuddy_communicationGripperStatusResponse.encode
--- @field new fun(values?: table): Ros1Mybuddy_communicationGripperStatusResponse
--- @brief Encode a complete Ros1Mybuddy_communicationGripperStatusResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mybuddy_communicationGripperStatusResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mybuddy_communicationGripperStatusResponse.decode
--- @field encode fun(value: Ros1Mybuddy_communicationGripperStatusResponse): string
--- @brief Decode exactly one complete Ros1Mybuddy_communicationGripperStatusResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mybuddy_communicationGripperStatusResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mybuddy_communicationGripperStatusResponse.encode
--- @field decode fun(bytes: string): Ros1Mybuddy_communicationGripperStatusResponse
local Ros1Mybuddy_communicationGripperStatusResponse = classes["Ros1Mybuddy_communicationGripperStatusResponse"]

--- @class Ros1Mybuddy_communicationPumpStatusRequest
--- @brief Complete ROS1 mybuddy_communication/PumpStatusRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @field Pin1 integer Exact int8 range -128..127.
--- @field Pin2 integer Exact int8 range -128..127.
--- @brief Ros1Mybuddy_communicationPumpStatusRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationPumpStatusRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mybuddy_communicationPumpStatusRequest.NATIVE_TYPE: Exact normalized native type name mybuddy_communication/PumpStatusRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationPumpStatusRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mybuddy_communication/PumpStatusRequest.
--- @brief Ros1Mybuddy_communicationPumpStatusRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationPumpStatusRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mybuddy_communicationPumpStatusRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationPumpStatusRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mybuddy_communicationPumpStatusRequest.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationPumpStatusRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros1Mybuddy_communicationPumpStatusRequest.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationPumpStatusRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros1Mybuddy_communicationPumpStatusRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mybuddy_communicationPumpStatusRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mybuddy_communicationPumpStatusRequest.encode
--- @field new fun(values?: table): Ros1Mybuddy_communicationPumpStatusRequest
--- @brief Encode a complete Ros1Mybuddy_communicationPumpStatusRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mybuddy_communicationPumpStatusRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros1Mybuddy_communicationPumpStatusRequest.decode
--- @field encode fun(value: Ros1Mybuddy_communicationPumpStatusRequest): string
--- @brief Decode exactly one complete Ros1Mybuddy_communicationPumpStatusRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mybuddy_communicationPumpStatusRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mybuddy_communicationPumpStatusRequest.encode
--- @field decode fun(bytes: string): Ros1Mybuddy_communicationPumpStatusRequest
local Ros1Mybuddy_communicationPumpStatusRequest = classes["Ros1Mybuddy_communicationPumpStatusRequest"]

--- @class Ros1Mybuddy_communicationPumpStatusResponse
--- @brief Complete ROS1 mybuddy_communication/PumpStatusResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mybuddy_communicationPumpStatusResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationPumpStatusResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mybuddy_communicationPumpStatusResponse.NATIVE_TYPE: Exact normalized native type name mybuddy_communication/PumpStatusResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationPumpStatusResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mybuddy_communication/PumpStatusResponse.
--- @brief Ros1Mybuddy_communicationPumpStatusResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationPumpStatusResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mybuddy_communicationPumpStatusResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationPumpStatusResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mybuddy_communicationPumpStatusResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationPumpStatusResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mybuddy_communicationPumpStatusResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationPumpStatusResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mybuddy_communicationPumpStatusResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mybuddy_communicationPumpStatusResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mybuddy_communicationPumpStatusResponse.encode
--- @field new fun(values?: table): Ros1Mybuddy_communicationPumpStatusResponse
--- @brief Encode a complete Ros1Mybuddy_communicationPumpStatusResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mybuddy_communicationPumpStatusResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mybuddy_communicationPumpStatusResponse.decode
--- @field encode fun(value: Ros1Mybuddy_communicationPumpStatusResponse): string
--- @brief Decode exactly one complete Ros1Mybuddy_communicationPumpStatusResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mybuddy_communicationPumpStatusResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mybuddy_communicationPumpStatusResponse.encode
--- @field decode fun(bytes: string): Ros1Mybuddy_communicationPumpStatusResponse
local Ros1Mybuddy_communicationPumpStatusResponse = classes["Ros1Mybuddy_communicationPumpStatusResponse"]

--- @class Ros1Mybuddy_communicationSetAnglesRequest
--- @brief Complete ROS1 mybuddy_communication/SetAnglesRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_0 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_7 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_8 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_9 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_10 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_11 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_12 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros1Mybuddy_communicationSetAnglesRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetAnglesRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mybuddy_communicationSetAnglesRequest.NATIVE_TYPE: Exact normalized native type name mybuddy_communication/SetAnglesRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetAnglesRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mybuddy_communication/SetAnglesRequest.
--- @brief Ros1Mybuddy_communicationSetAnglesRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetAnglesRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mybuddy_communicationSetAnglesRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetAnglesRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mybuddy_communicationSetAnglesRequest.MIN_WIRE_BYTES: Inclusive complete minimum 53 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetAnglesRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 53 bytes.
--- @brief Ros1Mybuddy_communicationSetAnglesRequest.MAX_WIRE_BYTES: Inclusive complete maximum 53 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetAnglesRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 53 bytes.
--- @brief Construct Ros1Mybuddy_communicationSetAnglesRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mybuddy_communicationSetAnglesRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mybuddy_communicationSetAnglesRequest.encode
--- @field new fun(values?: table): Ros1Mybuddy_communicationSetAnglesRequest
--- @brief Encode a complete Ros1Mybuddy_communicationSetAnglesRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mybuddy_communicationSetAnglesRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 53..53 bytes.
--- @see Ros1Mybuddy_communicationSetAnglesRequest.decode
--- @field encode fun(value: Ros1Mybuddy_communicationSetAnglesRequest): string
--- @brief Decode exactly one complete Ros1Mybuddy_communicationSetAnglesRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mybuddy_communicationSetAnglesRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mybuddy_communicationSetAnglesRequest.encode
--- @field decode fun(bytes: string): Ros1Mybuddy_communicationSetAnglesRequest
local Ros1Mybuddy_communicationSetAnglesRequest = classes["Ros1Mybuddy_communicationSetAnglesRequest"]

--- @class Ros1Mybuddy_communicationSetAnglesResponse
--- @brief Complete ROS1 mybuddy_communication/SetAnglesResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mybuddy_communicationSetAnglesResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetAnglesResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mybuddy_communicationSetAnglesResponse.NATIVE_TYPE: Exact normalized native type name mybuddy_communication/SetAnglesResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetAnglesResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mybuddy_communication/SetAnglesResponse.
--- @brief Ros1Mybuddy_communicationSetAnglesResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetAnglesResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mybuddy_communicationSetAnglesResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetAnglesResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mybuddy_communicationSetAnglesResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetAnglesResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mybuddy_communicationSetAnglesResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetAnglesResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mybuddy_communicationSetAnglesResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mybuddy_communicationSetAnglesResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mybuddy_communicationSetAnglesResponse.encode
--- @field new fun(values?: table): Ros1Mybuddy_communicationSetAnglesResponse
--- @brief Encode a complete Ros1Mybuddy_communicationSetAnglesResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mybuddy_communicationSetAnglesResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mybuddy_communicationSetAnglesResponse.decode
--- @field encode fun(value: Ros1Mybuddy_communicationSetAnglesResponse): string
--- @brief Decode exactly one complete Ros1Mybuddy_communicationSetAnglesResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mybuddy_communicationSetAnglesResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mybuddy_communicationSetAnglesResponse.encode
--- @field decode fun(bytes: string): Ros1Mybuddy_communicationSetAnglesResponse
local Ros1Mybuddy_communicationSetAnglesResponse = classes["Ros1Mybuddy_communicationSetAnglesResponse"]

--- @class Ros1Mybuddy_communicationSetCoordsRequest
--- @brief Complete ROS1 mybuddy_communication/SetCoordsRequest value and codec.
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
--- @brief Ros1Mybuddy_communicationSetCoordsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetCoordsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mybuddy_communicationSetCoordsRequest.NATIVE_TYPE: Exact normalized native type name mybuddy_communication/SetCoordsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetCoordsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mybuddy_communication/SetCoordsRequest.
--- @brief Ros1Mybuddy_communicationSetCoordsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetCoordsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mybuddy_communicationSetCoordsRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetCoordsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mybuddy_communicationSetCoordsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetCoordsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 26 bytes.
--- @brief Ros1Mybuddy_communicationSetCoordsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetCoordsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 26 bytes.
--- @brief Construct Ros1Mybuddy_communicationSetCoordsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mybuddy_communicationSetCoordsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mybuddy_communicationSetCoordsRequest.encode
--- @field new fun(values?: table): Ros1Mybuddy_communicationSetCoordsRequest
--- @brief Encode a complete Ros1Mybuddy_communicationSetCoordsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mybuddy_communicationSetCoordsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 26..26 bytes.
--- @see Ros1Mybuddy_communicationSetCoordsRequest.decode
--- @field encode fun(value: Ros1Mybuddy_communicationSetCoordsRequest): string
--- @brief Decode exactly one complete Ros1Mybuddy_communicationSetCoordsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mybuddy_communicationSetCoordsRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mybuddy_communicationSetCoordsRequest.encode
--- @field decode fun(bytes: string): Ros1Mybuddy_communicationSetCoordsRequest
local Ros1Mybuddy_communicationSetCoordsRequest = classes["Ros1Mybuddy_communicationSetCoordsRequest"]

--- @class Ros1Mybuddy_communicationSetCoordsResponse
--- @brief Complete ROS1 mybuddy_communication/SetCoordsResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mybuddy_communicationSetCoordsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetCoordsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mybuddy_communicationSetCoordsResponse.NATIVE_TYPE: Exact normalized native type name mybuddy_communication/SetCoordsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetCoordsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mybuddy_communication/SetCoordsResponse.
--- @brief Ros1Mybuddy_communicationSetCoordsResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetCoordsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mybuddy_communicationSetCoordsResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetCoordsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mybuddy_communicationSetCoordsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetCoordsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mybuddy_communicationSetCoordsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mybuddy_communicationSetCoordsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mybuddy_communicationSetCoordsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mybuddy_communicationSetCoordsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mybuddy_communicationSetCoordsResponse.encode
--- @field new fun(values?: table): Ros1Mybuddy_communicationSetCoordsResponse
--- @brief Encode a complete Ros1Mybuddy_communicationSetCoordsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mybuddy_communicationSetCoordsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mybuddy_communicationSetCoordsResponse.decode
--- @field encode fun(value: Ros1Mybuddy_communicationSetCoordsResponse): string
--- @brief Decode exactly one complete Ros1Mybuddy_communicationSetCoordsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mybuddy_communicationSetCoordsResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mybuddy_communicationSetCoordsResponse.encode
--- @field decode fun(bytes: string): Ros1Mybuddy_communicationSetCoordsResponse
local Ros1Mybuddy_communicationSetCoordsResponse = classes["Ros1Mybuddy_communicationSetCoordsResponse"]

--- @class Ros1Mecharm_communicationMycobotAngles
--- @brief Complete ROS1 mecharm_communication/MycobotAngles value and codec.
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
--- @brief Ros1Mecharm_communicationMycobotAngles.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mecharm_communicationMycobotAngles.NATIVE_TYPE: Exact normalized native type name mecharm_communication/MycobotAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_communication/MycobotAngles.
--- @brief Ros1Mecharm_communicationMycobotAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mecharm_communicationMycobotAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mecharm_communicationMycobotAngles.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Mecharm_communicationMycobotAngles.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Mecharm_communicationMycobotAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mecharm_communicationMycobotAngles value New mutable complete value; no ROS resource.
--- @see Ros1Mecharm_communicationMycobotAngles.encode
--- @field new fun(values?: table): Ros1Mecharm_communicationMycobotAngles
--- @brief Encode a complete Ros1Mecharm_communicationMycobotAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mecharm_communicationMycobotAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Mecharm_communicationMycobotAngles.decode
--- @field encode fun(value: Ros1Mecharm_communicationMycobotAngles): string
--- @brief Decode exactly one complete Ros1Mecharm_communicationMycobotAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mecharm_communicationMycobotAngles value New complete value; failures raise Lua errors.
--- @see Ros1Mecharm_communicationMycobotAngles.encode
--- @field decode fun(bytes: string): Ros1Mecharm_communicationMycobotAngles
local Ros1Mecharm_communicationMycobotAngles = classes["Ros1Mecharm_communicationMycobotAngles"]

--- @class Ros1Mecharm_communicationMycobotCoords
--- @brief Complete ROS1 mecharm_communication/MycobotCoords value and codec.
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
--- @brief Ros1Mecharm_communicationMycobotCoords.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mecharm_communicationMycobotCoords.NATIVE_TYPE: Exact normalized native type name mecharm_communication/MycobotCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_communication/MycobotCoords.
--- @brief Ros1Mecharm_communicationMycobotCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mecharm_communicationMycobotCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mecharm_communicationMycobotCoords.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Mecharm_communicationMycobotCoords.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Mecharm_communicationMycobotCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mecharm_communicationMycobotCoords value New mutable complete value; no ROS resource.
--- @see Ros1Mecharm_communicationMycobotCoords.encode
--- @field new fun(values?: table): Ros1Mecharm_communicationMycobotCoords
--- @brief Encode a complete Ros1Mecharm_communicationMycobotCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mecharm_communicationMycobotCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Mecharm_communicationMycobotCoords.decode
--- @field encode fun(value: Ros1Mecharm_communicationMycobotCoords): string
--- @brief Decode exactly one complete Ros1Mecharm_communicationMycobotCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mecharm_communicationMycobotCoords value New complete value; failures raise Lua errors.
--- @see Ros1Mecharm_communicationMycobotCoords.encode
--- @field decode fun(bytes: string): Ros1Mecharm_communicationMycobotCoords
local Ros1Mecharm_communicationMycobotCoords = classes["Ros1Mecharm_communicationMycobotCoords"]

--- @class Ros1Mecharm_communicationMycobotGripperStatus
--- @brief Complete ROS1 mecharm_communication/MycobotGripperStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mecharm_communicationMycobotGripperStatus.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotGripperStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mecharm_communicationMycobotGripperStatus.NATIVE_TYPE: Exact normalized native type name mecharm_communication/MycobotGripperStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotGripperStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_communication/MycobotGripperStatus.
--- @brief Ros1Mecharm_communicationMycobotGripperStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotGripperStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mecharm_communicationMycobotGripperStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotGripperStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mecharm_communicationMycobotGripperStatus.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotGripperStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mecharm_communicationMycobotGripperStatus.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotGripperStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mecharm_communicationMycobotGripperStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mecharm_communicationMycobotGripperStatus value New mutable complete value; no ROS resource.
--- @see Ros1Mecharm_communicationMycobotGripperStatus.encode
--- @field new fun(values?: table): Ros1Mecharm_communicationMycobotGripperStatus
--- @brief Encode a complete Ros1Mecharm_communicationMycobotGripperStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mecharm_communicationMycobotGripperStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mecharm_communicationMycobotGripperStatus.decode
--- @field encode fun(value: Ros1Mecharm_communicationMycobotGripperStatus): string
--- @brief Decode exactly one complete Ros1Mecharm_communicationMycobotGripperStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mecharm_communicationMycobotGripperStatus value New complete value; failures raise Lua errors.
--- @see Ros1Mecharm_communicationMycobotGripperStatus.encode
--- @field decode fun(bytes: string): Ros1Mecharm_communicationMycobotGripperStatus
local Ros1Mecharm_communicationMycobotGripperStatus = classes["Ros1Mecharm_communicationMycobotGripperStatus"]

--- @class Ros1Mecharm_communicationMycobotPumpStatus
--- @brief Complete ROS1 mecharm_communication/MycobotPumpStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @field Pin1 integer Exact int8 range -128..127.
--- @field Pin2 integer Exact int8 range -128..127.
--- @brief Ros1Mecharm_communicationMycobotPumpStatus.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotPumpStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mecharm_communicationMycobotPumpStatus.NATIVE_TYPE: Exact normalized native type name mecharm_communication/MycobotPumpStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotPumpStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_communication/MycobotPumpStatus.
--- @brief Ros1Mecharm_communicationMycobotPumpStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotPumpStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mecharm_communicationMycobotPumpStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotPumpStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mecharm_communicationMycobotPumpStatus.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotPumpStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros1Mecharm_communicationMycobotPumpStatus.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotPumpStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros1Mecharm_communicationMycobotPumpStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mecharm_communicationMycobotPumpStatus value New mutable complete value; no ROS resource.
--- @see Ros1Mecharm_communicationMycobotPumpStatus.encode
--- @field new fun(values?: table): Ros1Mecharm_communicationMycobotPumpStatus
--- @brief Encode a complete Ros1Mecharm_communicationMycobotPumpStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mecharm_communicationMycobotPumpStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros1Mecharm_communicationMycobotPumpStatus.decode
--- @field encode fun(value: Ros1Mecharm_communicationMycobotPumpStatus): string
--- @brief Decode exactly one complete Ros1Mecharm_communicationMycobotPumpStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mecharm_communicationMycobotPumpStatus value New complete value; failures raise Lua errors.
--- @see Ros1Mecharm_communicationMycobotPumpStatus.encode
--- @field decode fun(bytes: string): Ros1Mecharm_communicationMycobotPumpStatus
local Ros1Mecharm_communicationMycobotPumpStatus = classes["Ros1Mecharm_communicationMycobotPumpStatus"]

--- @class Ros1Mecharm_communicationMycobotSetAngles
--- @brief Complete ROS1 mecharm_communication/MycobotSetAngles value and codec.
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
--- @brief Ros1Mecharm_communicationMycobotSetAngles.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotSetAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mecharm_communicationMycobotSetAngles.NATIVE_TYPE: Exact normalized native type name mecharm_communication/MycobotSetAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotSetAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_communication/MycobotSetAngles.
--- @brief Ros1Mecharm_communicationMycobotSetAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotSetAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mecharm_communicationMycobotSetAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotSetAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mecharm_communicationMycobotSetAngles.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotSetAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros1Mecharm_communicationMycobotSetAngles.MAX_WIRE_BYTES: Inclusive complete maximum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotSetAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 25 bytes.
--- @brief Construct Ros1Mecharm_communicationMycobotSetAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mecharm_communicationMycobotSetAngles value New mutable complete value; no ROS resource.
--- @see Ros1Mecharm_communicationMycobotSetAngles.encode
--- @field new fun(values?: table): Ros1Mecharm_communicationMycobotSetAngles
--- @brief Encode a complete Ros1Mecharm_communicationMycobotSetAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mecharm_communicationMycobotSetAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..25 bytes.
--- @see Ros1Mecharm_communicationMycobotSetAngles.decode
--- @field encode fun(value: Ros1Mecharm_communicationMycobotSetAngles): string
--- @brief Decode exactly one complete Ros1Mecharm_communicationMycobotSetAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mecharm_communicationMycobotSetAngles value New complete value; failures raise Lua errors.
--- @see Ros1Mecharm_communicationMycobotSetAngles.encode
--- @field decode fun(bytes: string): Ros1Mecharm_communicationMycobotSetAngles
local Ros1Mecharm_communicationMycobotSetAngles = classes["Ros1Mecharm_communicationMycobotSetAngles"]

--- @class Ros1Mecharm_communicationMycobotSetCoords
--- @brief Complete ROS1 mecharm_communication/MycobotSetCoords value and codec.
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
--- @brief Ros1Mecharm_communicationMycobotSetCoords.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotSetCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mecharm_communicationMycobotSetCoords.NATIVE_TYPE: Exact normalized native type name mecharm_communication/MycobotSetCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotSetCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_communication/MycobotSetCoords.
--- @brief Ros1Mecharm_communicationMycobotSetCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotSetCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mecharm_communicationMycobotSetCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotSetCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mecharm_communicationMycobotSetCoords.MIN_WIRE_BYTES: Inclusive complete minimum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotSetCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 26 bytes.
--- @brief Ros1Mecharm_communicationMycobotSetCoords.MAX_WIRE_BYTES: Inclusive complete maximum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationMycobotSetCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 26 bytes.
--- @brief Construct Ros1Mecharm_communicationMycobotSetCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mecharm_communicationMycobotSetCoords value New mutable complete value; no ROS resource.
--- @see Ros1Mecharm_communicationMycobotSetCoords.encode
--- @field new fun(values?: table): Ros1Mecharm_communicationMycobotSetCoords
--- @brief Encode a complete Ros1Mecharm_communicationMycobotSetCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mecharm_communicationMycobotSetCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 26..26 bytes.
--- @see Ros1Mecharm_communicationMycobotSetCoords.decode
--- @field encode fun(value: Ros1Mecharm_communicationMycobotSetCoords): string
--- @brief Decode exactly one complete Ros1Mecharm_communicationMycobotSetCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mecharm_communicationMycobotSetCoords value New complete value; failures raise Lua errors.
--- @see Ros1Mecharm_communicationMycobotSetCoords.encode
--- @field decode fun(bytes: string): Ros1Mecharm_communicationMycobotSetCoords
local Ros1Mecharm_communicationMycobotSetCoords = classes["Ros1Mecharm_communicationMycobotSetCoords"]

--- @class Ros1Mecharm_communicationGetAnglesRequest
--- @brief Complete ROS1 mecharm_communication/GetAnglesRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Mecharm_communicationGetAnglesRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetAnglesRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mecharm_communicationGetAnglesRequest.NATIVE_TYPE: Exact normalized native type name mecharm_communication/GetAnglesRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetAnglesRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_communication/GetAnglesRequest.
--- @brief Ros1Mecharm_communicationGetAnglesRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetAnglesRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mecharm_communicationGetAnglesRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetAnglesRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mecharm_communicationGetAnglesRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetAnglesRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Mecharm_communicationGetAnglesRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetAnglesRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Mecharm_communicationGetAnglesRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mecharm_communicationGetAnglesRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mecharm_communicationGetAnglesRequest.encode
--- @field new fun(values?: table): Ros1Mecharm_communicationGetAnglesRequest
--- @brief Encode a complete Ros1Mecharm_communicationGetAnglesRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mecharm_communicationGetAnglesRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Mecharm_communicationGetAnglesRequest.decode
--- @field encode fun(value: Ros1Mecharm_communicationGetAnglesRequest): string
--- @brief Decode exactly one complete Ros1Mecharm_communicationGetAnglesRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mecharm_communicationGetAnglesRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mecharm_communicationGetAnglesRequest.encode
--- @field decode fun(bytes: string): Ros1Mecharm_communicationGetAnglesRequest
local Ros1Mecharm_communicationGetAnglesRequest = classes["Ros1Mecharm_communicationGetAnglesRequest"]

--- @class Ros1Mecharm_communicationGetAnglesResponse
--- @brief Complete ROS1 mecharm_communication/GetAnglesResponse value and codec.
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
--- @brief Ros1Mecharm_communicationGetAnglesResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetAnglesResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mecharm_communicationGetAnglesResponse.NATIVE_TYPE: Exact normalized native type name mecharm_communication/GetAnglesResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetAnglesResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_communication/GetAnglesResponse.
--- @brief Ros1Mecharm_communicationGetAnglesResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetAnglesResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mecharm_communicationGetAnglesResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetAnglesResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mecharm_communicationGetAnglesResponse.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetAnglesResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Mecharm_communicationGetAnglesResponse.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetAnglesResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Mecharm_communicationGetAnglesResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mecharm_communicationGetAnglesResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mecharm_communicationGetAnglesResponse.encode
--- @field new fun(values?: table): Ros1Mecharm_communicationGetAnglesResponse
--- @brief Encode a complete Ros1Mecharm_communicationGetAnglesResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mecharm_communicationGetAnglesResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Mecharm_communicationGetAnglesResponse.decode
--- @field encode fun(value: Ros1Mecharm_communicationGetAnglesResponse): string
--- @brief Decode exactly one complete Ros1Mecharm_communicationGetAnglesResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mecharm_communicationGetAnglesResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mecharm_communicationGetAnglesResponse.encode
--- @field decode fun(bytes: string): Ros1Mecharm_communicationGetAnglesResponse
local Ros1Mecharm_communicationGetAnglesResponse = classes["Ros1Mecharm_communicationGetAnglesResponse"]

--- @class Ros1Mecharm_communicationGetCoordsRequest
--- @brief Complete ROS1 mecharm_communication/GetCoordsRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Mecharm_communicationGetCoordsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetCoordsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mecharm_communicationGetCoordsRequest.NATIVE_TYPE: Exact normalized native type name mecharm_communication/GetCoordsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetCoordsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_communication/GetCoordsRequest.
--- @brief Ros1Mecharm_communicationGetCoordsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetCoordsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mecharm_communicationGetCoordsRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetCoordsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mecharm_communicationGetCoordsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetCoordsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Mecharm_communicationGetCoordsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetCoordsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Mecharm_communicationGetCoordsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mecharm_communicationGetCoordsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mecharm_communicationGetCoordsRequest.encode
--- @field new fun(values?: table): Ros1Mecharm_communicationGetCoordsRequest
--- @brief Encode a complete Ros1Mecharm_communicationGetCoordsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mecharm_communicationGetCoordsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Mecharm_communicationGetCoordsRequest.decode
--- @field encode fun(value: Ros1Mecharm_communicationGetCoordsRequest): string
--- @brief Decode exactly one complete Ros1Mecharm_communicationGetCoordsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mecharm_communicationGetCoordsRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mecharm_communicationGetCoordsRequest.encode
--- @field decode fun(bytes: string): Ros1Mecharm_communicationGetCoordsRequest
local Ros1Mecharm_communicationGetCoordsRequest = classes["Ros1Mecharm_communicationGetCoordsRequest"]

--- @class Ros1Mecharm_communicationGetCoordsResponse
--- @brief Complete ROS1 mecharm_communication/GetCoordsResponse value and codec.
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
--- @brief Ros1Mecharm_communicationGetCoordsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetCoordsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mecharm_communicationGetCoordsResponse.NATIVE_TYPE: Exact normalized native type name mecharm_communication/GetCoordsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetCoordsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_communication/GetCoordsResponse.
--- @brief Ros1Mecharm_communicationGetCoordsResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetCoordsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mecharm_communicationGetCoordsResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetCoordsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mecharm_communicationGetCoordsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetCoordsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Mecharm_communicationGetCoordsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGetCoordsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Mecharm_communicationGetCoordsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mecharm_communicationGetCoordsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mecharm_communicationGetCoordsResponse.encode
--- @field new fun(values?: table): Ros1Mecharm_communicationGetCoordsResponse
--- @brief Encode a complete Ros1Mecharm_communicationGetCoordsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mecharm_communicationGetCoordsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Mecharm_communicationGetCoordsResponse.decode
--- @field encode fun(value: Ros1Mecharm_communicationGetCoordsResponse): string
--- @brief Decode exactly one complete Ros1Mecharm_communicationGetCoordsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mecharm_communicationGetCoordsResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mecharm_communicationGetCoordsResponse.encode
--- @field decode fun(bytes: string): Ros1Mecharm_communicationGetCoordsResponse
local Ros1Mecharm_communicationGetCoordsResponse = classes["Ros1Mecharm_communicationGetCoordsResponse"]

--- @class Ros1Mecharm_communicationGripperStatusRequest
--- @brief Complete ROS1 mecharm_communication/GripperStatusRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mecharm_communicationGripperStatusRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGripperStatusRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mecharm_communicationGripperStatusRequest.NATIVE_TYPE: Exact normalized native type name mecharm_communication/GripperStatusRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGripperStatusRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_communication/GripperStatusRequest.
--- @brief Ros1Mecharm_communicationGripperStatusRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGripperStatusRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mecharm_communicationGripperStatusRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGripperStatusRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mecharm_communicationGripperStatusRequest.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGripperStatusRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mecharm_communicationGripperStatusRequest.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGripperStatusRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mecharm_communicationGripperStatusRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mecharm_communicationGripperStatusRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mecharm_communicationGripperStatusRequest.encode
--- @field new fun(values?: table): Ros1Mecharm_communicationGripperStatusRequest
--- @brief Encode a complete Ros1Mecharm_communicationGripperStatusRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mecharm_communicationGripperStatusRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mecharm_communicationGripperStatusRequest.decode
--- @field encode fun(value: Ros1Mecharm_communicationGripperStatusRequest): string
--- @brief Decode exactly one complete Ros1Mecharm_communicationGripperStatusRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mecharm_communicationGripperStatusRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mecharm_communicationGripperStatusRequest.encode
--- @field decode fun(bytes: string): Ros1Mecharm_communicationGripperStatusRequest
local Ros1Mecharm_communicationGripperStatusRequest = classes["Ros1Mecharm_communicationGripperStatusRequest"]

--- @class Ros1Mecharm_communicationGripperStatusResponse
--- @brief Complete ROS1 mecharm_communication/GripperStatusResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mecharm_communicationGripperStatusResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGripperStatusResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mecharm_communicationGripperStatusResponse.NATIVE_TYPE: Exact normalized native type name mecharm_communication/GripperStatusResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGripperStatusResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_communication/GripperStatusResponse.
--- @brief Ros1Mecharm_communicationGripperStatusResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGripperStatusResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mecharm_communicationGripperStatusResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGripperStatusResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mecharm_communicationGripperStatusResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGripperStatusResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mecharm_communicationGripperStatusResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationGripperStatusResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mecharm_communicationGripperStatusResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mecharm_communicationGripperStatusResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mecharm_communicationGripperStatusResponse.encode
--- @field new fun(values?: table): Ros1Mecharm_communicationGripperStatusResponse
--- @brief Encode a complete Ros1Mecharm_communicationGripperStatusResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mecharm_communicationGripperStatusResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mecharm_communicationGripperStatusResponse.decode
--- @field encode fun(value: Ros1Mecharm_communicationGripperStatusResponse): string
--- @brief Decode exactly one complete Ros1Mecharm_communicationGripperStatusResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mecharm_communicationGripperStatusResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mecharm_communicationGripperStatusResponse.encode
--- @field decode fun(bytes: string): Ros1Mecharm_communicationGripperStatusResponse
local Ros1Mecharm_communicationGripperStatusResponse = classes["Ros1Mecharm_communicationGripperStatusResponse"]

--- @class Ros1Mecharm_communicationPumpStatusRequest
--- @brief Complete ROS1 mecharm_communication/PumpStatusRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @field Pin1 integer Exact int8 range -128..127.
--- @field Pin2 integer Exact int8 range -128..127.
--- @brief Ros1Mecharm_communicationPumpStatusRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationPumpStatusRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mecharm_communicationPumpStatusRequest.NATIVE_TYPE: Exact normalized native type name mecharm_communication/PumpStatusRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationPumpStatusRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_communication/PumpStatusRequest.
--- @brief Ros1Mecharm_communicationPumpStatusRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationPumpStatusRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mecharm_communicationPumpStatusRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationPumpStatusRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mecharm_communicationPumpStatusRequest.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationPumpStatusRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros1Mecharm_communicationPumpStatusRequest.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationPumpStatusRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros1Mecharm_communicationPumpStatusRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mecharm_communicationPumpStatusRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mecharm_communicationPumpStatusRequest.encode
--- @field new fun(values?: table): Ros1Mecharm_communicationPumpStatusRequest
--- @brief Encode a complete Ros1Mecharm_communicationPumpStatusRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mecharm_communicationPumpStatusRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros1Mecharm_communicationPumpStatusRequest.decode
--- @field encode fun(value: Ros1Mecharm_communicationPumpStatusRequest): string
--- @brief Decode exactly one complete Ros1Mecharm_communicationPumpStatusRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mecharm_communicationPumpStatusRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mecharm_communicationPumpStatusRequest.encode
--- @field decode fun(bytes: string): Ros1Mecharm_communicationPumpStatusRequest
local Ros1Mecharm_communicationPumpStatusRequest = classes["Ros1Mecharm_communicationPumpStatusRequest"]

--- @class Ros1Mecharm_communicationPumpStatusResponse
--- @brief Complete ROS1 mecharm_communication/PumpStatusResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mecharm_communicationPumpStatusResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationPumpStatusResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mecharm_communicationPumpStatusResponse.NATIVE_TYPE: Exact normalized native type name mecharm_communication/PumpStatusResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationPumpStatusResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_communication/PumpStatusResponse.
--- @brief Ros1Mecharm_communicationPumpStatusResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationPumpStatusResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mecharm_communicationPumpStatusResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationPumpStatusResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mecharm_communicationPumpStatusResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationPumpStatusResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mecharm_communicationPumpStatusResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationPumpStatusResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mecharm_communicationPumpStatusResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mecharm_communicationPumpStatusResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mecharm_communicationPumpStatusResponse.encode
--- @field new fun(values?: table): Ros1Mecharm_communicationPumpStatusResponse
--- @brief Encode a complete Ros1Mecharm_communicationPumpStatusResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mecharm_communicationPumpStatusResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mecharm_communicationPumpStatusResponse.decode
--- @field encode fun(value: Ros1Mecharm_communicationPumpStatusResponse): string
--- @brief Decode exactly one complete Ros1Mecharm_communicationPumpStatusResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mecharm_communicationPumpStatusResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mecharm_communicationPumpStatusResponse.encode
--- @field decode fun(bytes: string): Ros1Mecharm_communicationPumpStatusResponse
local Ros1Mecharm_communicationPumpStatusResponse = classes["Ros1Mecharm_communicationPumpStatusResponse"]

--- @class Ros1Mecharm_communicationSetAnglesRequest
--- @brief Complete ROS1 mecharm_communication/SetAnglesRequest value and codec.
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
--- @brief Ros1Mecharm_communicationSetAnglesRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetAnglesRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mecharm_communicationSetAnglesRequest.NATIVE_TYPE: Exact normalized native type name mecharm_communication/SetAnglesRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetAnglesRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_communication/SetAnglesRequest.
--- @brief Ros1Mecharm_communicationSetAnglesRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetAnglesRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mecharm_communicationSetAnglesRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetAnglesRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mecharm_communicationSetAnglesRequest.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetAnglesRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros1Mecharm_communicationSetAnglesRequest.MAX_WIRE_BYTES: Inclusive complete maximum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetAnglesRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 25 bytes.
--- @brief Construct Ros1Mecharm_communicationSetAnglesRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mecharm_communicationSetAnglesRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mecharm_communicationSetAnglesRequest.encode
--- @field new fun(values?: table): Ros1Mecharm_communicationSetAnglesRequest
--- @brief Encode a complete Ros1Mecharm_communicationSetAnglesRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mecharm_communicationSetAnglesRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..25 bytes.
--- @see Ros1Mecharm_communicationSetAnglesRequest.decode
--- @field encode fun(value: Ros1Mecharm_communicationSetAnglesRequest): string
--- @brief Decode exactly one complete Ros1Mecharm_communicationSetAnglesRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mecharm_communicationSetAnglesRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mecharm_communicationSetAnglesRequest.encode
--- @field decode fun(bytes: string): Ros1Mecharm_communicationSetAnglesRequest
local Ros1Mecharm_communicationSetAnglesRequest = classes["Ros1Mecharm_communicationSetAnglesRequest"]

--- @class Ros1Mecharm_communicationSetAnglesResponse
--- @brief Complete ROS1 mecharm_communication/SetAnglesResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mecharm_communicationSetAnglesResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetAnglesResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mecharm_communicationSetAnglesResponse.NATIVE_TYPE: Exact normalized native type name mecharm_communication/SetAnglesResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetAnglesResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_communication/SetAnglesResponse.
--- @brief Ros1Mecharm_communicationSetAnglesResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetAnglesResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mecharm_communicationSetAnglesResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetAnglesResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mecharm_communicationSetAnglesResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetAnglesResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mecharm_communicationSetAnglesResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetAnglesResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mecharm_communicationSetAnglesResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mecharm_communicationSetAnglesResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mecharm_communicationSetAnglesResponse.encode
--- @field new fun(values?: table): Ros1Mecharm_communicationSetAnglesResponse
--- @brief Encode a complete Ros1Mecharm_communicationSetAnglesResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mecharm_communicationSetAnglesResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mecharm_communicationSetAnglesResponse.decode
--- @field encode fun(value: Ros1Mecharm_communicationSetAnglesResponse): string
--- @brief Decode exactly one complete Ros1Mecharm_communicationSetAnglesResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mecharm_communicationSetAnglesResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mecharm_communicationSetAnglesResponse.encode
--- @field decode fun(bytes: string): Ros1Mecharm_communicationSetAnglesResponse
local Ros1Mecharm_communicationSetAnglesResponse = classes["Ros1Mecharm_communicationSetAnglesResponse"]

--- @class Ros1Mecharm_communicationSetCoordsRequest
--- @brief Complete ROS1 mecharm_communication/SetCoordsRequest value and codec.
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
--- @brief Ros1Mecharm_communicationSetCoordsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetCoordsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mecharm_communicationSetCoordsRequest.NATIVE_TYPE: Exact normalized native type name mecharm_communication/SetCoordsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetCoordsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_communication/SetCoordsRequest.
--- @brief Ros1Mecharm_communicationSetCoordsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetCoordsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mecharm_communicationSetCoordsRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetCoordsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mecharm_communicationSetCoordsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetCoordsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 26 bytes.
--- @brief Ros1Mecharm_communicationSetCoordsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetCoordsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 26 bytes.
--- @brief Construct Ros1Mecharm_communicationSetCoordsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mecharm_communicationSetCoordsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mecharm_communicationSetCoordsRequest.encode
--- @field new fun(values?: table): Ros1Mecharm_communicationSetCoordsRequest
--- @brief Encode a complete Ros1Mecharm_communicationSetCoordsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mecharm_communicationSetCoordsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 26..26 bytes.
--- @see Ros1Mecharm_communicationSetCoordsRequest.decode
--- @field encode fun(value: Ros1Mecharm_communicationSetCoordsRequest): string
--- @brief Decode exactly one complete Ros1Mecharm_communicationSetCoordsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mecharm_communicationSetCoordsRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mecharm_communicationSetCoordsRequest.encode
--- @field decode fun(bytes: string): Ros1Mecharm_communicationSetCoordsRequest
local Ros1Mecharm_communicationSetCoordsRequest = classes["Ros1Mecharm_communicationSetCoordsRequest"]

--- @class Ros1Mecharm_communicationSetCoordsResponse
--- @brief Complete ROS1 mecharm_communication/SetCoordsResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mecharm_communicationSetCoordsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetCoordsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mecharm_communicationSetCoordsResponse.NATIVE_TYPE: Exact normalized native type name mecharm_communication/SetCoordsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetCoordsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mecharm_communication/SetCoordsResponse.
--- @brief Ros1Mecharm_communicationSetCoordsResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetCoordsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mecharm_communicationSetCoordsResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetCoordsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mecharm_communicationSetCoordsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetCoordsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mecharm_communicationSetCoordsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mecharm_communicationSetCoordsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mecharm_communicationSetCoordsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mecharm_communicationSetCoordsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mecharm_communicationSetCoordsResponse.encode
--- @field new fun(values?: table): Ros1Mecharm_communicationSetCoordsResponse
--- @brief Encode a complete Ros1Mecharm_communicationSetCoordsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mecharm_communicationSetCoordsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mecharm_communicationSetCoordsResponse.decode
--- @field encode fun(value: Ros1Mecharm_communicationSetCoordsResponse): string
--- @brief Decode exactly one complete Ros1Mecharm_communicationSetCoordsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mecharm_communicationSetCoordsResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mecharm_communicationSetCoordsResponse.encode
--- @field decode fun(bytes: string): Ros1Mecharm_communicationSetCoordsResponse
local Ros1Mecharm_communicationSetCoordsResponse = classes["Ros1Mecharm_communicationSetCoordsResponse"]

--- @class Ros1Myarm_communicationMyArmAngles
--- @brief Complete ROS1 myarm_communication/MyArmAngles value and codec.
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
--- @field joint_7 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Myarm_communicationMyArmAngles.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Myarm_communicationMyArmAngles.NATIVE_TYPE: Exact normalized native type name myarm_communication/MyArmAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name myarm_communication/MyArmAngles.
--- @brief Ros1Myarm_communicationMyArmAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Myarm_communicationMyArmAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Myarm_communicationMyArmAngles.MIN_WIRE_BYTES: Inclusive complete minimum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 28 bytes.
--- @brief Ros1Myarm_communicationMyArmAngles.MAX_WIRE_BYTES: Inclusive complete maximum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 28 bytes.
--- @brief Construct Ros1Myarm_communicationMyArmAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Myarm_communicationMyArmAngles value New mutable complete value; no ROS resource.
--- @see Ros1Myarm_communicationMyArmAngles.encode
--- @field new fun(values?: table): Ros1Myarm_communicationMyArmAngles
--- @brief Encode a complete Ros1Myarm_communicationMyArmAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Myarm_communicationMyArmAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 28..28 bytes.
--- @see Ros1Myarm_communicationMyArmAngles.decode
--- @field encode fun(value: Ros1Myarm_communicationMyArmAngles): string
--- @brief Decode exactly one complete Ros1Myarm_communicationMyArmAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Myarm_communicationMyArmAngles value New complete value; failures raise Lua errors.
--- @see Ros1Myarm_communicationMyArmAngles.encode
--- @field decode fun(bytes: string): Ros1Myarm_communicationMyArmAngles
local Ros1Myarm_communicationMyArmAngles = classes["Ros1Myarm_communicationMyArmAngles"]

--- @class Ros1Myarm_communicationMyArmCoords
--- @brief Complete ROS1 myarm_communication/MyArmCoords value and codec.
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
--- @brief Ros1Myarm_communicationMyArmCoords.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Myarm_communicationMyArmCoords.NATIVE_TYPE: Exact normalized native type name myarm_communication/MyArmCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name myarm_communication/MyArmCoords.
--- @brief Ros1Myarm_communicationMyArmCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Myarm_communicationMyArmCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Myarm_communicationMyArmCoords.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Myarm_communicationMyArmCoords.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Myarm_communicationMyArmCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Myarm_communicationMyArmCoords value New mutable complete value; no ROS resource.
--- @see Ros1Myarm_communicationMyArmCoords.encode
--- @field new fun(values?: table): Ros1Myarm_communicationMyArmCoords
--- @brief Encode a complete Ros1Myarm_communicationMyArmCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Myarm_communicationMyArmCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Myarm_communicationMyArmCoords.decode
--- @field encode fun(value: Ros1Myarm_communicationMyArmCoords): string
--- @brief Decode exactly one complete Ros1Myarm_communicationMyArmCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Myarm_communicationMyArmCoords value New complete value; failures raise Lua errors.
--- @see Ros1Myarm_communicationMyArmCoords.encode
--- @field decode fun(bytes: string): Ros1Myarm_communicationMyArmCoords
local Ros1Myarm_communicationMyArmCoords = classes["Ros1Myarm_communicationMyArmCoords"]

--- @class Ros1Myarm_communicationMyArmGripperStatus
--- @brief Complete ROS1 myarm_communication/MyArmGripperStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Myarm_communicationMyArmGripperStatus.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmGripperStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Myarm_communicationMyArmGripperStatus.NATIVE_TYPE: Exact normalized native type name myarm_communication/MyArmGripperStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmGripperStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name myarm_communication/MyArmGripperStatus.
--- @brief Ros1Myarm_communicationMyArmGripperStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmGripperStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Myarm_communicationMyArmGripperStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmGripperStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Myarm_communicationMyArmGripperStatus.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmGripperStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Myarm_communicationMyArmGripperStatus.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmGripperStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Myarm_communicationMyArmGripperStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Myarm_communicationMyArmGripperStatus value New mutable complete value; no ROS resource.
--- @see Ros1Myarm_communicationMyArmGripperStatus.encode
--- @field new fun(values?: table): Ros1Myarm_communicationMyArmGripperStatus
--- @brief Encode a complete Ros1Myarm_communicationMyArmGripperStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Myarm_communicationMyArmGripperStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Myarm_communicationMyArmGripperStatus.decode
--- @field encode fun(value: Ros1Myarm_communicationMyArmGripperStatus): string
--- @brief Decode exactly one complete Ros1Myarm_communicationMyArmGripperStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Myarm_communicationMyArmGripperStatus value New complete value; failures raise Lua errors.
--- @see Ros1Myarm_communicationMyArmGripperStatus.encode
--- @field decode fun(bytes: string): Ros1Myarm_communicationMyArmGripperStatus
local Ros1Myarm_communicationMyArmGripperStatus = classes["Ros1Myarm_communicationMyArmGripperStatus"]

--- @class Ros1Myarm_communicationMyArmPumpStatus
--- @brief Complete ROS1 myarm_communication/MyArmPumpStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @field Pin1 integer Exact int8 range -128..127.
--- @field Pin2 integer Exact int8 range -128..127.
--- @brief Ros1Myarm_communicationMyArmPumpStatus.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmPumpStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Myarm_communicationMyArmPumpStatus.NATIVE_TYPE: Exact normalized native type name myarm_communication/MyArmPumpStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmPumpStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name myarm_communication/MyArmPumpStatus.
--- @brief Ros1Myarm_communicationMyArmPumpStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmPumpStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Myarm_communicationMyArmPumpStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmPumpStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Myarm_communicationMyArmPumpStatus.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmPumpStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros1Myarm_communicationMyArmPumpStatus.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmPumpStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros1Myarm_communicationMyArmPumpStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Myarm_communicationMyArmPumpStatus value New mutable complete value; no ROS resource.
--- @see Ros1Myarm_communicationMyArmPumpStatus.encode
--- @field new fun(values?: table): Ros1Myarm_communicationMyArmPumpStatus
--- @brief Encode a complete Ros1Myarm_communicationMyArmPumpStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Myarm_communicationMyArmPumpStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros1Myarm_communicationMyArmPumpStatus.decode
--- @field encode fun(value: Ros1Myarm_communicationMyArmPumpStatus): string
--- @brief Decode exactly one complete Ros1Myarm_communicationMyArmPumpStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Myarm_communicationMyArmPumpStatus value New complete value; failures raise Lua errors.
--- @see Ros1Myarm_communicationMyArmPumpStatus.encode
--- @field decode fun(bytes: string): Ros1Myarm_communicationMyArmPumpStatus
local Ros1Myarm_communicationMyArmPumpStatus = classes["Ros1Myarm_communicationMyArmPumpStatus"]

--- @class Ros1Myarm_communicationMyArmSetAngles
--- @brief Complete ROS1 myarm_communication/MyArmSetAngles value and codec.
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
--- @field joint_7 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros1Myarm_communicationMyArmSetAngles.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmSetAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Myarm_communicationMyArmSetAngles.NATIVE_TYPE: Exact normalized native type name myarm_communication/MyArmSetAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmSetAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name myarm_communication/MyArmSetAngles.
--- @brief Ros1Myarm_communicationMyArmSetAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmSetAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Myarm_communicationMyArmSetAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmSetAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Myarm_communicationMyArmSetAngles.MIN_WIRE_BYTES: Inclusive complete minimum 29 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmSetAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 29 bytes.
--- @brief Ros1Myarm_communicationMyArmSetAngles.MAX_WIRE_BYTES: Inclusive complete maximum 29 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmSetAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 29 bytes.
--- @brief Construct Ros1Myarm_communicationMyArmSetAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Myarm_communicationMyArmSetAngles value New mutable complete value; no ROS resource.
--- @see Ros1Myarm_communicationMyArmSetAngles.encode
--- @field new fun(values?: table): Ros1Myarm_communicationMyArmSetAngles
--- @brief Encode a complete Ros1Myarm_communicationMyArmSetAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Myarm_communicationMyArmSetAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 29..29 bytes.
--- @see Ros1Myarm_communicationMyArmSetAngles.decode
--- @field encode fun(value: Ros1Myarm_communicationMyArmSetAngles): string
--- @brief Decode exactly one complete Ros1Myarm_communicationMyArmSetAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Myarm_communicationMyArmSetAngles value New complete value; failures raise Lua errors.
--- @see Ros1Myarm_communicationMyArmSetAngles.encode
--- @field decode fun(bytes: string): Ros1Myarm_communicationMyArmSetAngles
local Ros1Myarm_communicationMyArmSetAngles = classes["Ros1Myarm_communicationMyArmSetAngles"]

--- @class Ros1Myarm_communicationMyArmSetCoords
--- @brief Complete ROS1 myarm_communication/MyArmSetCoords value and codec.
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
--- @brief Ros1Myarm_communicationMyArmSetCoords.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmSetCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Myarm_communicationMyArmSetCoords.NATIVE_TYPE: Exact normalized native type name myarm_communication/MyArmSetCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmSetCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name myarm_communication/MyArmSetCoords.
--- @brief Ros1Myarm_communicationMyArmSetCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmSetCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Myarm_communicationMyArmSetCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmSetCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Myarm_communicationMyArmSetCoords.MIN_WIRE_BYTES: Inclusive complete minimum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmSetCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 26 bytes.
--- @brief Ros1Myarm_communicationMyArmSetCoords.MAX_WIRE_BYTES: Inclusive complete maximum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationMyArmSetCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 26 bytes.
--- @brief Construct Ros1Myarm_communicationMyArmSetCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Myarm_communicationMyArmSetCoords value New mutable complete value; no ROS resource.
--- @see Ros1Myarm_communicationMyArmSetCoords.encode
--- @field new fun(values?: table): Ros1Myarm_communicationMyArmSetCoords
--- @brief Encode a complete Ros1Myarm_communicationMyArmSetCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Myarm_communicationMyArmSetCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 26..26 bytes.
--- @see Ros1Myarm_communicationMyArmSetCoords.decode
--- @field encode fun(value: Ros1Myarm_communicationMyArmSetCoords): string
--- @brief Decode exactly one complete Ros1Myarm_communicationMyArmSetCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Myarm_communicationMyArmSetCoords value New complete value; failures raise Lua errors.
--- @see Ros1Myarm_communicationMyArmSetCoords.encode
--- @field decode fun(bytes: string): Ros1Myarm_communicationMyArmSetCoords
local Ros1Myarm_communicationMyArmSetCoords = classes["Ros1Myarm_communicationMyArmSetCoords"]

--- @class Ros1Myarm_communicationGetAnglesRequest
--- @brief Complete ROS1 myarm_communication/GetAnglesRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Myarm_communicationGetAnglesRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetAnglesRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Myarm_communicationGetAnglesRequest.NATIVE_TYPE: Exact normalized native type name myarm_communication/GetAnglesRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetAnglesRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name myarm_communication/GetAnglesRequest.
--- @brief Ros1Myarm_communicationGetAnglesRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetAnglesRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Myarm_communicationGetAnglesRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetAnglesRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Myarm_communicationGetAnglesRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetAnglesRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Myarm_communicationGetAnglesRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetAnglesRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Myarm_communicationGetAnglesRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Myarm_communicationGetAnglesRequest value New mutable complete value; no ROS resource.
--- @see Ros1Myarm_communicationGetAnglesRequest.encode
--- @field new fun(values?: table): Ros1Myarm_communicationGetAnglesRequest
--- @brief Encode a complete Ros1Myarm_communicationGetAnglesRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Myarm_communicationGetAnglesRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Myarm_communicationGetAnglesRequest.decode
--- @field encode fun(value: Ros1Myarm_communicationGetAnglesRequest): string
--- @brief Decode exactly one complete Ros1Myarm_communicationGetAnglesRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Myarm_communicationGetAnglesRequest value New complete value; failures raise Lua errors.
--- @see Ros1Myarm_communicationGetAnglesRequest.encode
--- @field decode fun(bytes: string): Ros1Myarm_communicationGetAnglesRequest
local Ros1Myarm_communicationGetAnglesRequest = classes["Ros1Myarm_communicationGetAnglesRequest"]

--- @class Ros1Myarm_communicationGetAnglesResponse
--- @brief Complete ROS1 myarm_communication/GetAnglesResponse value and codec.
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
--- @field joint_7 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Myarm_communicationGetAnglesResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetAnglesResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Myarm_communicationGetAnglesResponse.NATIVE_TYPE: Exact normalized native type name myarm_communication/GetAnglesResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetAnglesResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name myarm_communication/GetAnglesResponse.
--- @brief Ros1Myarm_communicationGetAnglesResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetAnglesResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Myarm_communicationGetAnglesResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetAnglesResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Myarm_communicationGetAnglesResponse.MIN_WIRE_BYTES: Inclusive complete minimum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetAnglesResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 28 bytes.
--- @brief Ros1Myarm_communicationGetAnglesResponse.MAX_WIRE_BYTES: Inclusive complete maximum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetAnglesResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 28 bytes.
--- @brief Construct Ros1Myarm_communicationGetAnglesResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Myarm_communicationGetAnglesResponse value New mutable complete value; no ROS resource.
--- @see Ros1Myarm_communicationGetAnglesResponse.encode
--- @field new fun(values?: table): Ros1Myarm_communicationGetAnglesResponse
--- @brief Encode a complete Ros1Myarm_communicationGetAnglesResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Myarm_communicationGetAnglesResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 28..28 bytes.
--- @see Ros1Myarm_communicationGetAnglesResponse.decode
--- @field encode fun(value: Ros1Myarm_communicationGetAnglesResponse): string
--- @brief Decode exactly one complete Ros1Myarm_communicationGetAnglesResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Myarm_communicationGetAnglesResponse value New complete value; failures raise Lua errors.
--- @see Ros1Myarm_communicationGetAnglesResponse.encode
--- @field decode fun(bytes: string): Ros1Myarm_communicationGetAnglesResponse
local Ros1Myarm_communicationGetAnglesResponse = classes["Ros1Myarm_communicationGetAnglesResponse"]

--- @class Ros1Myarm_communicationGetCoordsRequest
--- @brief Complete ROS1 myarm_communication/GetCoordsRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Myarm_communicationGetCoordsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetCoordsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Myarm_communicationGetCoordsRequest.NATIVE_TYPE: Exact normalized native type name myarm_communication/GetCoordsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetCoordsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name myarm_communication/GetCoordsRequest.
--- @brief Ros1Myarm_communicationGetCoordsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetCoordsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Myarm_communicationGetCoordsRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetCoordsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Myarm_communicationGetCoordsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetCoordsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Myarm_communicationGetCoordsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetCoordsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Myarm_communicationGetCoordsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Myarm_communicationGetCoordsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Myarm_communicationGetCoordsRequest.encode
--- @field new fun(values?: table): Ros1Myarm_communicationGetCoordsRequest
--- @brief Encode a complete Ros1Myarm_communicationGetCoordsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Myarm_communicationGetCoordsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Myarm_communicationGetCoordsRequest.decode
--- @field encode fun(value: Ros1Myarm_communicationGetCoordsRequest): string
--- @brief Decode exactly one complete Ros1Myarm_communicationGetCoordsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Myarm_communicationGetCoordsRequest value New complete value; failures raise Lua errors.
--- @see Ros1Myarm_communicationGetCoordsRequest.encode
--- @field decode fun(bytes: string): Ros1Myarm_communicationGetCoordsRequest
local Ros1Myarm_communicationGetCoordsRequest = classes["Ros1Myarm_communicationGetCoordsRequest"]

--- @class Ros1Myarm_communicationGetCoordsResponse
--- @brief Complete ROS1 myarm_communication/GetCoordsResponse value and codec.
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
--- @brief Ros1Myarm_communicationGetCoordsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetCoordsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Myarm_communicationGetCoordsResponse.NATIVE_TYPE: Exact normalized native type name myarm_communication/GetCoordsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetCoordsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name myarm_communication/GetCoordsResponse.
--- @brief Ros1Myarm_communicationGetCoordsResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetCoordsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Myarm_communicationGetCoordsResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetCoordsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Myarm_communicationGetCoordsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetCoordsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Myarm_communicationGetCoordsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGetCoordsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Myarm_communicationGetCoordsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Myarm_communicationGetCoordsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Myarm_communicationGetCoordsResponse.encode
--- @field new fun(values?: table): Ros1Myarm_communicationGetCoordsResponse
--- @brief Encode a complete Ros1Myarm_communicationGetCoordsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Myarm_communicationGetCoordsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Myarm_communicationGetCoordsResponse.decode
--- @field encode fun(value: Ros1Myarm_communicationGetCoordsResponse): string
--- @brief Decode exactly one complete Ros1Myarm_communicationGetCoordsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Myarm_communicationGetCoordsResponse value New complete value; failures raise Lua errors.
--- @see Ros1Myarm_communicationGetCoordsResponse.encode
--- @field decode fun(bytes: string): Ros1Myarm_communicationGetCoordsResponse
local Ros1Myarm_communicationGetCoordsResponse = classes["Ros1Myarm_communicationGetCoordsResponse"]

--- @class Ros1Myarm_communicationGripperStatusRequest
--- @brief Complete ROS1 myarm_communication/GripperStatusRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Myarm_communicationGripperStatusRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGripperStatusRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Myarm_communicationGripperStatusRequest.NATIVE_TYPE: Exact normalized native type name myarm_communication/GripperStatusRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGripperStatusRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name myarm_communication/GripperStatusRequest.
--- @brief Ros1Myarm_communicationGripperStatusRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGripperStatusRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Myarm_communicationGripperStatusRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGripperStatusRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Myarm_communicationGripperStatusRequest.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGripperStatusRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Myarm_communicationGripperStatusRequest.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGripperStatusRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Myarm_communicationGripperStatusRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Myarm_communicationGripperStatusRequest value New mutable complete value; no ROS resource.
--- @see Ros1Myarm_communicationGripperStatusRequest.encode
--- @field new fun(values?: table): Ros1Myarm_communicationGripperStatusRequest
--- @brief Encode a complete Ros1Myarm_communicationGripperStatusRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Myarm_communicationGripperStatusRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Myarm_communicationGripperStatusRequest.decode
--- @field encode fun(value: Ros1Myarm_communicationGripperStatusRequest): string
--- @brief Decode exactly one complete Ros1Myarm_communicationGripperStatusRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Myarm_communicationGripperStatusRequest value New complete value; failures raise Lua errors.
--- @see Ros1Myarm_communicationGripperStatusRequest.encode
--- @field decode fun(bytes: string): Ros1Myarm_communicationGripperStatusRequest
local Ros1Myarm_communicationGripperStatusRequest = classes["Ros1Myarm_communicationGripperStatusRequest"]

--- @class Ros1Myarm_communicationGripperStatusResponse
--- @brief Complete ROS1 myarm_communication/GripperStatusResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Myarm_communicationGripperStatusResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGripperStatusResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Myarm_communicationGripperStatusResponse.NATIVE_TYPE: Exact normalized native type name myarm_communication/GripperStatusResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGripperStatusResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name myarm_communication/GripperStatusResponse.
--- @brief Ros1Myarm_communicationGripperStatusResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGripperStatusResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Myarm_communicationGripperStatusResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGripperStatusResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Myarm_communicationGripperStatusResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGripperStatusResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Myarm_communicationGripperStatusResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationGripperStatusResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Myarm_communicationGripperStatusResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Myarm_communicationGripperStatusResponse value New mutable complete value; no ROS resource.
--- @see Ros1Myarm_communicationGripperStatusResponse.encode
--- @field new fun(values?: table): Ros1Myarm_communicationGripperStatusResponse
--- @brief Encode a complete Ros1Myarm_communicationGripperStatusResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Myarm_communicationGripperStatusResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Myarm_communicationGripperStatusResponse.decode
--- @field encode fun(value: Ros1Myarm_communicationGripperStatusResponse): string
--- @brief Decode exactly one complete Ros1Myarm_communicationGripperStatusResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Myarm_communicationGripperStatusResponse value New complete value; failures raise Lua errors.
--- @see Ros1Myarm_communicationGripperStatusResponse.encode
--- @field decode fun(bytes: string): Ros1Myarm_communicationGripperStatusResponse
local Ros1Myarm_communicationGripperStatusResponse = classes["Ros1Myarm_communicationGripperStatusResponse"]

--- @class Ros1Myarm_communicationPumpStatusRequest
--- @brief Complete ROS1 myarm_communication/PumpStatusRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @field Pin1 integer Exact int8 range -128..127.
--- @field Pin2 integer Exact int8 range -128..127.
--- @brief Ros1Myarm_communicationPumpStatusRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationPumpStatusRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Myarm_communicationPumpStatusRequest.NATIVE_TYPE: Exact normalized native type name myarm_communication/PumpStatusRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationPumpStatusRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name myarm_communication/PumpStatusRequest.
--- @brief Ros1Myarm_communicationPumpStatusRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationPumpStatusRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Myarm_communicationPumpStatusRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationPumpStatusRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Myarm_communicationPumpStatusRequest.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationPumpStatusRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros1Myarm_communicationPumpStatusRequest.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationPumpStatusRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros1Myarm_communicationPumpStatusRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Myarm_communicationPumpStatusRequest value New mutable complete value; no ROS resource.
--- @see Ros1Myarm_communicationPumpStatusRequest.encode
--- @field new fun(values?: table): Ros1Myarm_communicationPumpStatusRequest
--- @brief Encode a complete Ros1Myarm_communicationPumpStatusRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Myarm_communicationPumpStatusRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros1Myarm_communicationPumpStatusRequest.decode
--- @field encode fun(value: Ros1Myarm_communicationPumpStatusRequest): string
--- @brief Decode exactly one complete Ros1Myarm_communicationPumpStatusRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Myarm_communicationPumpStatusRequest value New complete value; failures raise Lua errors.
--- @see Ros1Myarm_communicationPumpStatusRequest.encode
--- @field decode fun(bytes: string): Ros1Myarm_communicationPumpStatusRequest
local Ros1Myarm_communicationPumpStatusRequest = classes["Ros1Myarm_communicationPumpStatusRequest"]

--- @class Ros1Myarm_communicationPumpStatusResponse
--- @brief Complete ROS1 myarm_communication/PumpStatusResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Myarm_communicationPumpStatusResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationPumpStatusResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Myarm_communicationPumpStatusResponse.NATIVE_TYPE: Exact normalized native type name myarm_communication/PumpStatusResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationPumpStatusResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name myarm_communication/PumpStatusResponse.
--- @brief Ros1Myarm_communicationPumpStatusResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationPumpStatusResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Myarm_communicationPumpStatusResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationPumpStatusResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Myarm_communicationPumpStatusResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationPumpStatusResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Myarm_communicationPumpStatusResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationPumpStatusResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Myarm_communicationPumpStatusResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Myarm_communicationPumpStatusResponse value New mutable complete value; no ROS resource.
--- @see Ros1Myarm_communicationPumpStatusResponse.encode
--- @field new fun(values?: table): Ros1Myarm_communicationPumpStatusResponse
--- @brief Encode a complete Ros1Myarm_communicationPumpStatusResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Myarm_communicationPumpStatusResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Myarm_communicationPumpStatusResponse.decode
--- @field encode fun(value: Ros1Myarm_communicationPumpStatusResponse): string
--- @brief Decode exactly one complete Ros1Myarm_communicationPumpStatusResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Myarm_communicationPumpStatusResponse value New complete value; failures raise Lua errors.
--- @see Ros1Myarm_communicationPumpStatusResponse.encode
--- @field decode fun(bytes: string): Ros1Myarm_communicationPumpStatusResponse
local Ros1Myarm_communicationPumpStatusResponse = classes["Ros1Myarm_communicationPumpStatusResponse"]

--- @class Ros1Myarm_communicationSetAnglesRequest
--- @brief Complete ROS1 myarm_communication/SetAnglesRequest value and codec.
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
--- @field joint_7 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros1Myarm_communicationSetAnglesRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetAnglesRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Myarm_communicationSetAnglesRequest.NATIVE_TYPE: Exact normalized native type name myarm_communication/SetAnglesRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetAnglesRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name myarm_communication/SetAnglesRequest.
--- @brief Ros1Myarm_communicationSetAnglesRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetAnglesRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Myarm_communicationSetAnglesRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetAnglesRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Myarm_communicationSetAnglesRequest.MIN_WIRE_BYTES: Inclusive complete minimum 29 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetAnglesRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 29 bytes.
--- @brief Ros1Myarm_communicationSetAnglesRequest.MAX_WIRE_BYTES: Inclusive complete maximum 29 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetAnglesRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 29 bytes.
--- @brief Construct Ros1Myarm_communicationSetAnglesRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Myarm_communicationSetAnglesRequest value New mutable complete value; no ROS resource.
--- @see Ros1Myarm_communicationSetAnglesRequest.encode
--- @field new fun(values?: table): Ros1Myarm_communicationSetAnglesRequest
--- @brief Encode a complete Ros1Myarm_communicationSetAnglesRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Myarm_communicationSetAnglesRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 29..29 bytes.
--- @see Ros1Myarm_communicationSetAnglesRequest.decode
--- @field encode fun(value: Ros1Myarm_communicationSetAnglesRequest): string
--- @brief Decode exactly one complete Ros1Myarm_communicationSetAnglesRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Myarm_communicationSetAnglesRequest value New complete value; failures raise Lua errors.
--- @see Ros1Myarm_communicationSetAnglesRequest.encode
--- @field decode fun(bytes: string): Ros1Myarm_communicationSetAnglesRequest
local Ros1Myarm_communicationSetAnglesRequest = classes["Ros1Myarm_communicationSetAnglesRequest"]

--- @class Ros1Myarm_communicationSetAnglesResponse
--- @brief Complete ROS1 myarm_communication/SetAnglesResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Myarm_communicationSetAnglesResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetAnglesResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Myarm_communicationSetAnglesResponse.NATIVE_TYPE: Exact normalized native type name myarm_communication/SetAnglesResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetAnglesResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name myarm_communication/SetAnglesResponse.
--- @brief Ros1Myarm_communicationSetAnglesResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetAnglesResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Myarm_communicationSetAnglesResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetAnglesResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Myarm_communicationSetAnglesResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetAnglesResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Myarm_communicationSetAnglesResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetAnglesResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Myarm_communicationSetAnglesResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Myarm_communicationSetAnglesResponse value New mutable complete value; no ROS resource.
--- @see Ros1Myarm_communicationSetAnglesResponse.encode
--- @field new fun(values?: table): Ros1Myarm_communicationSetAnglesResponse
--- @brief Encode a complete Ros1Myarm_communicationSetAnglesResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Myarm_communicationSetAnglesResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Myarm_communicationSetAnglesResponse.decode
--- @field encode fun(value: Ros1Myarm_communicationSetAnglesResponse): string
--- @brief Decode exactly one complete Ros1Myarm_communicationSetAnglesResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Myarm_communicationSetAnglesResponse value New complete value; failures raise Lua errors.
--- @see Ros1Myarm_communicationSetAnglesResponse.encode
--- @field decode fun(bytes: string): Ros1Myarm_communicationSetAnglesResponse
local Ros1Myarm_communicationSetAnglesResponse = classes["Ros1Myarm_communicationSetAnglesResponse"]

--- @class Ros1Myarm_communicationSetCoordsRequest
--- @brief Complete ROS1 myarm_communication/SetCoordsRequest value and codec.
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
--- @brief Ros1Myarm_communicationSetCoordsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetCoordsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Myarm_communicationSetCoordsRequest.NATIVE_TYPE: Exact normalized native type name myarm_communication/SetCoordsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetCoordsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name myarm_communication/SetCoordsRequest.
--- @brief Ros1Myarm_communicationSetCoordsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetCoordsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Myarm_communicationSetCoordsRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetCoordsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Myarm_communicationSetCoordsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetCoordsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 26 bytes.
--- @brief Ros1Myarm_communicationSetCoordsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetCoordsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 26 bytes.
--- @brief Construct Ros1Myarm_communicationSetCoordsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Myarm_communicationSetCoordsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Myarm_communicationSetCoordsRequest.encode
--- @field new fun(values?: table): Ros1Myarm_communicationSetCoordsRequest
--- @brief Encode a complete Ros1Myarm_communicationSetCoordsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Myarm_communicationSetCoordsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 26..26 bytes.
--- @see Ros1Myarm_communicationSetCoordsRequest.decode
--- @field encode fun(value: Ros1Myarm_communicationSetCoordsRequest): string
--- @brief Decode exactly one complete Ros1Myarm_communicationSetCoordsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Myarm_communicationSetCoordsRequest value New complete value; failures raise Lua errors.
--- @see Ros1Myarm_communicationSetCoordsRequest.encode
--- @field decode fun(bytes: string): Ros1Myarm_communicationSetCoordsRequest
local Ros1Myarm_communicationSetCoordsRequest = classes["Ros1Myarm_communicationSetCoordsRequest"]

--- @class Ros1Myarm_communicationSetCoordsResponse
--- @brief Complete ROS1 myarm_communication/SetCoordsResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Myarm_communicationSetCoordsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetCoordsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Myarm_communicationSetCoordsResponse.NATIVE_TYPE: Exact normalized native type name myarm_communication/SetCoordsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetCoordsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name myarm_communication/SetCoordsResponse.
--- @brief Ros1Myarm_communicationSetCoordsResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetCoordsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Myarm_communicationSetCoordsResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetCoordsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Myarm_communicationSetCoordsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetCoordsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Myarm_communicationSetCoordsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Myarm_communicationSetCoordsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Myarm_communicationSetCoordsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Myarm_communicationSetCoordsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Myarm_communicationSetCoordsResponse.encode
--- @field new fun(values?: table): Ros1Myarm_communicationSetCoordsResponse
--- @brief Encode a complete Ros1Myarm_communicationSetCoordsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Myarm_communicationSetCoordsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Myarm_communicationSetCoordsResponse.decode
--- @field encode fun(value: Ros1Myarm_communicationSetCoordsResponse): string
--- @brief Decode exactly one complete Ros1Myarm_communicationSetCoordsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Myarm_communicationSetCoordsResponse value New complete value; failures raise Lua errors.
--- @see Ros1Myarm_communicationSetCoordsResponse.encode
--- @field decode fun(bytes: string): Ros1Myarm_communicationSetCoordsResponse
local Ros1Myarm_communicationSetCoordsResponse = classes["Ros1Myarm_communicationSetCoordsResponse"]

--- @class Ros1Mycobot_320_communicationMycobotAngles
--- @brief Complete ROS1 mycobot_320_communication/MycobotAngles value and codec.
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
--- @brief Ros1Mycobot_320_communicationMycobotAngles.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_320_communicationMycobotAngles.NATIVE_TYPE: Exact normalized native type name mycobot_320_communication/MycobotAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_320_communication/MycobotAngles.
--- @brief Ros1Mycobot_320_communicationMycobotAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_320_communicationMycobotAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_320_communicationMycobotAngles.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Mycobot_320_communicationMycobotAngles.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Mycobot_320_communicationMycobotAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_320_communicationMycobotAngles value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_320_communicationMycobotAngles.encode
--- @field new fun(values?: table): Ros1Mycobot_320_communicationMycobotAngles
--- @brief Encode a complete Ros1Mycobot_320_communicationMycobotAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_320_communicationMycobotAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Mycobot_320_communicationMycobotAngles.decode
--- @field encode fun(value: Ros1Mycobot_320_communicationMycobotAngles): string
--- @brief Decode exactly one complete Ros1Mycobot_320_communicationMycobotAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_320_communicationMycobotAngles value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_320_communicationMycobotAngles.encode
--- @field decode fun(bytes: string): Ros1Mycobot_320_communicationMycobotAngles
local Ros1Mycobot_320_communicationMycobotAngles = classes["Ros1Mycobot_320_communicationMycobotAngles"]

--- @class Ros1Mycobot_320_communicationMycobotCoords
--- @brief Complete ROS1 mycobot_320_communication/MycobotCoords value and codec.
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
--- @brief Ros1Mycobot_320_communicationMycobotCoords.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_320_communicationMycobotCoords.NATIVE_TYPE: Exact normalized native type name mycobot_320_communication/MycobotCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_320_communication/MycobotCoords.
--- @brief Ros1Mycobot_320_communicationMycobotCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_320_communicationMycobotCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_320_communicationMycobotCoords.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Mycobot_320_communicationMycobotCoords.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Mycobot_320_communicationMycobotCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_320_communicationMycobotCoords value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_320_communicationMycobotCoords.encode
--- @field new fun(values?: table): Ros1Mycobot_320_communicationMycobotCoords
--- @brief Encode a complete Ros1Mycobot_320_communicationMycobotCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_320_communicationMycobotCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Mycobot_320_communicationMycobotCoords.decode
--- @field encode fun(value: Ros1Mycobot_320_communicationMycobotCoords): string
--- @brief Decode exactly one complete Ros1Mycobot_320_communicationMycobotCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_320_communicationMycobotCoords value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_320_communicationMycobotCoords.encode
--- @field decode fun(bytes: string): Ros1Mycobot_320_communicationMycobotCoords
local Ros1Mycobot_320_communicationMycobotCoords = classes["Ros1Mycobot_320_communicationMycobotCoords"]

--- @class Ros1Mycobot_320_communicationMycobotGripperStatus
--- @brief Complete ROS1 mycobot_320_communication/MycobotGripperStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mycobot_320_communicationMycobotGripperStatus.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotGripperStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_320_communicationMycobotGripperStatus.NATIVE_TYPE: Exact normalized native type name mycobot_320_communication/MycobotGripperStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotGripperStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_320_communication/MycobotGripperStatus.
--- @brief Ros1Mycobot_320_communicationMycobotGripperStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotGripperStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_320_communicationMycobotGripperStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotGripperStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_320_communicationMycobotGripperStatus.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotGripperStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mycobot_320_communicationMycobotGripperStatus.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotGripperStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mycobot_320_communicationMycobotGripperStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_320_communicationMycobotGripperStatus value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_320_communicationMycobotGripperStatus.encode
--- @field new fun(values?: table): Ros1Mycobot_320_communicationMycobotGripperStatus
--- @brief Encode a complete Ros1Mycobot_320_communicationMycobotGripperStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_320_communicationMycobotGripperStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mycobot_320_communicationMycobotGripperStatus.decode
--- @field encode fun(value: Ros1Mycobot_320_communicationMycobotGripperStatus): string
--- @brief Decode exactly one complete Ros1Mycobot_320_communicationMycobotGripperStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_320_communicationMycobotGripperStatus value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_320_communicationMycobotGripperStatus.encode
--- @field decode fun(bytes: string): Ros1Mycobot_320_communicationMycobotGripperStatus
local Ros1Mycobot_320_communicationMycobotGripperStatus = classes["Ros1Mycobot_320_communicationMycobotGripperStatus"]

--- @class Ros1Mycobot_320_communicationMycobotPumpStatus
--- @brief Complete ROS1 mycobot_320_communication/MycobotPumpStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @field Pin1 integer Exact int8 range -128..127.
--- @field Pin2 integer Exact int8 range -128..127.
--- @brief Ros1Mycobot_320_communicationMycobotPumpStatus.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotPumpStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_320_communicationMycobotPumpStatus.NATIVE_TYPE: Exact normalized native type name mycobot_320_communication/MycobotPumpStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotPumpStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_320_communication/MycobotPumpStatus.
--- @brief Ros1Mycobot_320_communicationMycobotPumpStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotPumpStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_320_communicationMycobotPumpStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotPumpStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_320_communicationMycobotPumpStatus.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotPumpStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros1Mycobot_320_communicationMycobotPumpStatus.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotPumpStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros1Mycobot_320_communicationMycobotPumpStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_320_communicationMycobotPumpStatus value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_320_communicationMycobotPumpStatus.encode
--- @field new fun(values?: table): Ros1Mycobot_320_communicationMycobotPumpStatus
--- @brief Encode a complete Ros1Mycobot_320_communicationMycobotPumpStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_320_communicationMycobotPumpStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros1Mycobot_320_communicationMycobotPumpStatus.decode
--- @field encode fun(value: Ros1Mycobot_320_communicationMycobotPumpStatus): string
--- @brief Decode exactly one complete Ros1Mycobot_320_communicationMycobotPumpStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_320_communicationMycobotPumpStatus value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_320_communicationMycobotPumpStatus.encode
--- @field decode fun(bytes: string): Ros1Mycobot_320_communicationMycobotPumpStatus
local Ros1Mycobot_320_communicationMycobotPumpStatus = classes["Ros1Mycobot_320_communicationMycobotPumpStatus"]

--- @class Ros1Mycobot_320_communicationMycobotSetAngles
--- @brief Complete ROS1 mycobot_320_communication/MycobotSetAngles value and codec.
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
--- @brief Ros1Mycobot_320_communicationMycobotSetAngles.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotSetAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_320_communicationMycobotSetAngles.NATIVE_TYPE: Exact normalized native type name mycobot_320_communication/MycobotSetAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotSetAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_320_communication/MycobotSetAngles.
--- @brief Ros1Mycobot_320_communicationMycobotSetAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotSetAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_320_communicationMycobotSetAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotSetAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_320_communicationMycobotSetAngles.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotSetAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros1Mycobot_320_communicationMycobotSetAngles.MAX_WIRE_BYTES: Inclusive complete maximum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotSetAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 25 bytes.
--- @brief Construct Ros1Mycobot_320_communicationMycobotSetAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_320_communicationMycobotSetAngles value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_320_communicationMycobotSetAngles.encode
--- @field new fun(values?: table): Ros1Mycobot_320_communicationMycobotSetAngles
--- @brief Encode a complete Ros1Mycobot_320_communicationMycobotSetAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_320_communicationMycobotSetAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..25 bytes.
--- @see Ros1Mycobot_320_communicationMycobotSetAngles.decode
--- @field encode fun(value: Ros1Mycobot_320_communicationMycobotSetAngles): string
--- @brief Decode exactly one complete Ros1Mycobot_320_communicationMycobotSetAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_320_communicationMycobotSetAngles value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_320_communicationMycobotSetAngles.encode
--- @field decode fun(bytes: string): Ros1Mycobot_320_communicationMycobotSetAngles
local Ros1Mycobot_320_communicationMycobotSetAngles = classes["Ros1Mycobot_320_communicationMycobotSetAngles"]

--- @class Ros1Mycobot_320_communicationMycobotSetCoords
--- @brief Complete ROS1 mycobot_320_communication/MycobotSetCoords value and codec.
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
--- @brief Ros1Mycobot_320_communicationMycobotSetCoords.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotSetCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_320_communicationMycobotSetCoords.NATIVE_TYPE: Exact normalized native type name mycobot_320_communication/MycobotSetCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotSetCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_320_communication/MycobotSetCoords.
--- @brief Ros1Mycobot_320_communicationMycobotSetCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotSetCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_320_communicationMycobotSetCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotSetCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_320_communicationMycobotSetCoords.MIN_WIRE_BYTES: Inclusive complete minimum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotSetCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 26 bytes.
--- @brief Ros1Mycobot_320_communicationMycobotSetCoords.MAX_WIRE_BYTES: Inclusive complete maximum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationMycobotSetCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 26 bytes.
--- @brief Construct Ros1Mycobot_320_communicationMycobotSetCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_320_communicationMycobotSetCoords value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_320_communicationMycobotSetCoords.encode
--- @field new fun(values?: table): Ros1Mycobot_320_communicationMycobotSetCoords
--- @brief Encode a complete Ros1Mycobot_320_communicationMycobotSetCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_320_communicationMycobotSetCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 26..26 bytes.
--- @see Ros1Mycobot_320_communicationMycobotSetCoords.decode
--- @field encode fun(value: Ros1Mycobot_320_communicationMycobotSetCoords): string
--- @brief Decode exactly one complete Ros1Mycobot_320_communicationMycobotSetCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_320_communicationMycobotSetCoords value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_320_communicationMycobotSetCoords.encode
--- @field decode fun(bytes: string): Ros1Mycobot_320_communicationMycobotSetCoords
local Ros1Mycobot_320_communicationMycobotSetCoords = classes["Ros1Mycobot_320_communicationMycobotSetCoords"]

--- @class Ros1Mycobot_320_communicationGetAnglesRequest
--- @brief Complete ROS1 mycobot_320_communication/GetAnglesRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Mycobot_320_communicationGetAnglesRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetAnglesRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_320_communicationGetAnglesRequest.NATIVE_TYPE: Exact normalized native type name mycobot_320_communication/GetAnglesRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetAnglesRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_320_communication/GetAnglesRequest.
--- @brief Ros1Mycobot_320_communicationGetAnglesRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetAnglesRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_320_communicationGetAnglesRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetAnglesRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_320_communicationGetAnglesRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetAnglesRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Mycobot_320_communicationGetAnglesRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetAnglesRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Mycobot_320_communicationGetAnglesRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_320_communicationGetAnglesRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_320_communicationGetAnglesRequest.encode
--- @field new fun(values?: table): Ros1Mycobot_320_communicationGetAnglesRequest
--- @brief Encode a complete Ros1Mycobot_320_communicationGetAnglesRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_320_communicationGetAnglesRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Mycobot_320_communicationGetAnglesRequest.decode
--- @field encode fun(value: Ros1Mycobot_320_communicationGetAnglesRequest): string
--- @brief Decode exactly one complete Ros1Mycobot_320_communicationGetAnglesRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_320_communicationGetAnglesRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_320_communicationGetAnglesRequest.encode
--- @field decode fun(bytes: string): Ros1Mycobot_320_communicationGetAnglesRequest
local Ros1Mycobot_320_communicationGetAnglesRequest = classes["Ros1Mycobot_320_communicationGetAnglesRequest"]

--- @class Ros1Mycobot_320_communicationGetAnglesResponse
--- @brief Complete ROS1 mycobot_320_communication/GetAnglesResponse value and codec.
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
--- @brief Ros1Mycobot_320_communicationGetAnglesResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetAnglesResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_320_communicationGetAnglesResponse.NATIVE_TYPE: Exact normalized native type name mycobot_320_communication/GetAnglesResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetAnglesResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_320_communication/GetAnglesResponse.
--- @brief Ros1Mycobot_320_communicationGetAnglesResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetAnglesResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_320_communicationGetAnglesResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetAnglesResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_320_communicationGetAnglesResponse.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetAnglesResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Mycobot_320_communicationGetAnglesResponse.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetAnglesResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Mycobot_320_communicationGetAnglesResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_320_communicationGetAnglesResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_320_communicationGetAnglesResponse.encode
--- @field new fun(values?: table): Ros1Mycobot_320_communicationGetAnglesResponse
--- @brief Encode a complete Ros1Mycobot_320_communicationGetAnglesResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_320_communicationGetAnglesResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Mycobot_320_communicationGetAnglesResponse.decode
--- @field encode fun(value: Ros1Mycobot_320_communicationGetAnglesResponse): string
--- @brief Decode exactly one complete Ros1Mycobot_320_communicationGetAnglesResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_320_communicationGetAnglesResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_320_communicationGetAnglesResponse.encode
--- @field decode fun(bytes: string): Ros1Mycobot_320_communicationGetAnglesResponse
local Ros1Mycobot_320_communicationGetAnglesResponse = classes["Ros1Mycobot_320_communicationGetAnglesResponse"]

--- @class Ros1Mycobot_320_communicationGetCoordsRequest
--- @brief Complete ROS1 mycobot_320_communication/GetCoordsRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Mycobot_320_communicationGetCoordsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetCoordsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_320_communicationGetCoordsRequest.NATIVE_TYPE: Exact normalized native type name mycobot_320_communication/GetCoordsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetCoordsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_320_communication/GetCoordsRequest.
--- @brief Ros1Mycobot_320_communicationGetCoordsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetCoordsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_320_communicationGetCoordsRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetCoordsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_320_communicationGetCoordsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetCoordsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Mycobot_320_communicationGetCoordsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetCoordsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Mycobot_320_communicationGetCoordsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_320_communicationGetCoordsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_320_communicationGetCoordsRequest.encode
--- @field new fun(values?: table): Ros1Mycobot_320_communicationGetCoordsRequest
--- @brief Encode a complete Ros1Mycobot_320_communicationGetCoordsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_320_communicationGetCoordsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Mycobot_320_communicationGetCoordsRequest.decode
--- @field encode fun(value: Ros1Mycobot_320_communicationGetCoordsRequest): string
--- @brief Decode exactly one complete Ros1Mycobot_320_communicationGetCoordsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_320_communicationGetCoordsRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_320_communicationGetCoordsRequest.encode
--- @field decode fun(bytes: string): Ros1Mycobot_320_communicationGetCoordsRequest
local Ros1Mycobot_320_communicationGetCoordsRequest = classes["Ros1Mycobot_320_communicationGetCoordsRequest"]

--- @class Ros1Mycobot_320_communicationGetCoordsResponse
--- @brief Complete ROS1 mycobot_320_communication/GetCoordsResponse value and codec.
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
--- @brief Ros1Mycobot_320_communicationGetCoordsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetCoordsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_320_communicationGetCoordsResponse.NATIVE_TYPE: Exact normalized native type name mycobot_320_communication/GetCoordsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetCoordsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_320_communication/GetCoordsResponse.
--- @brief Ros1Mycobot_320_communicationGetCoordsResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetCoordsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_320_communicationGetCoordsResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetCoordsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_320_communicationGetCoordsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetCoordsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Mycobot_320_communicationGetCoordsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGetCoordsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Mycobot_320_communicationGetCoordsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_320_communicationGetCoordsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_320_communicationGetCoordsResponse.encode
--- @field new fun(values?: table): Ros1Mycobot_320_communicationGetCoordsResponse
--- @brief Encode a complete Ros1Mycobot_320_communicationGetCoordsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_320_communicationGetCoordsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Mycobot_320_communicationGetCoordsResponse.decode
--- @field encode fun(value: Ros1Mycobot_320_communicationGetCoordsResponse): string
--- @brief Decode exactly one complete Ros1Mycobot_320_communicationGetCoordsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_320_communicationGetCoordsResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_320_communicationGetCoordsResponse.encode
--- @field decode fun(bytes: string): Ros1Mycobot_320_communicationGetCoordsResponse
local Ros1Mycobot_320_communicationGetCoordsResponse = classes["Ros1Mycobot_320_communicationGetCoordsResponse"]

--- @class Ros1Mycobot_320_communicationGripperStatusRequest
--- @brief Complete ROS1 mycobot_320_communication/GripperStatusRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mycobot_320_communicationGripperStatusRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGripperStatusRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_320_communicationGripperStatusRequest.NATIVE_TYPE: Exact normalized native type name mycobot_320_communication/GripperStatusRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGripperStatusRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_320_communication/GripperStatusRequest.
--- @brief Ros1Mycobot_320_communicationGripperStatusRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGripperStatusRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_320_communicationGripperStatusRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGripperStatusRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_320_communicationGripperStatusRequest.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGripperStatusRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mycobot_320_communicationGripperStatusRequest.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGripperStatusRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mycobot_320_communicationGripperStatusRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_320_communicationGripperStatusRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_320_communicationGripperStatusRequest.encode
--- @field new fun(values?: table): Ros1Mycobot_320_communicationGripperStatusRequest
--- @brief Encode a complete Ros1Mycobot_320_communicationGripperStatusRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_320_communicationGripperStatusRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mycobot_320_communicationGripperStatusRequest.decode
--- @field encode fun(value: Ros1Mycobot_320_communicationGripperStatusRequest): string
--- @brief Decode exactly one complete Ros1Mycobot_320_communicationGripperStatusRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_320_communicationGripperStatusRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_320_communicationGripperStatusRequest.encode
--- @field decode fun(bytes: string): Ros1Mycobot_320_communicationGripperStatusRequest
local Ros1Mycobot_320_communicationGripperStatusRequest = classes["Ros1Mycobot_320_communicationGripperStatusRequest"]

--- @class Ros1Mycobot_320_communicationGripperStatusResponse
--- @brief Complete ROS1 mycobot_320_communication/GripperStatusResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mycobot_320_communicationGripperStatusResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGripperStatusResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_320_communicationGripperStatusResponse.NATIVE_TYPE: Exact normalized native type name mycobot_320_communication/GripperStatusResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGripperStatusResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_320_communication/GripperStatusResponse.
--- @brief Ros1Mycobot_320_communicationGripperStatusResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGripperStatusResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_320_communicationGripperStatusResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGripperStatusResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_320_communicationGripperStatusResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGripperStatusResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mycobot_320_communicationGripperStatusResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationGripperStatusResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mycobot_320_communicationGripperStatusResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_320_communicationGripperStatusResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_320_communicationGripperStatusResponse.encode
--- @field new fun(values?: table): Ros1Mycobot_320_communicationGripperStatusResponse
--- @brief Encode a complete Ros1Mycobot_320_communicationGripperStatusResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_320_communicationGripperStatusResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mycobot_320_communicationGripperStatusResponse.decode
--- @field encode fun(value: Ros1Mycobot_320_communicationGripperStatusResponse): string
--- @brief Decode exactly one complete Ros1Mycobot_320_communicationGripperStatusResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_320_communicationGripperStatusResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_320_communicationGripperStatusResponse.encode
--- @field decode fun(bytes: string): Ros1Mycobot_320_communicationGripperStatusResponse
local Ros1Mycobot_320_communicationGripperStatusResponse = classes["Ros1Mycobot_320_communicationGripperStatusResponse"]

--- @class Ros1Mycobot_320_communicationPumpStatusRequest
--- @brief Complete ROS1 mycobot_320_communication/PumpStatusRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @field Pin1 integer Exact int8 range -128..127.
--- @field Pin2 integer Exact int8 range -128..127.
--- @brief Ros1Mycobot_320_communicationPumpStatusRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationPumpStatusRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_320_communicationPumpStatusRequest.NATIVE_TYPE: Exact normalized native type name mycobot_320_communication/PumpStatusRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationPumpStatusRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_320_communication/PumpStatusRequest.
--- @brief Ros1Mycobot_320_communicationPumpStatusRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationPumpStatusRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_320_communicationPumpStatusRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationPumpStatusRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_320_communicationPumpStatusRequest.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationPumpStatusRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros1Mycobot_320_communicationPumpStatusRequest.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationPumpStatusRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros1Mycobot_320_communicationPumpStatusRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_320_communicationPumpStatusRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_320_communicationPumpStatusRequest.encode
--- @field new fun(values?: table): Ros1Mycobot_320_communicationPumpStatusRequest
--- @brief Encode a complete Ros1Mycobot_320_communicationPumpStatusRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_320_communicationPumpStatusRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros1Mycobot_320_communicationPumpStatusRequest.decode
--- @field encode fun(value: Ros1Mycobot_320_communicationPumpStatusRequest): string
--- @brief Decode exactly one complete Ros1Mycobot_320_communicationPumpStatusRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_320_communicationPumpStatusRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_320_communicationPumpStatusRequest.encode
--- @field decode fun(bytes: string): Ros1Mycobot_320_communicationPumpStatusRequest
local Ros1Mycobot_320_communicationPumpStatusRequest = classes["Ros1Mycobot_320_communicationPumpStatusRequest"]

--- @class Ros1Mycobot_320_communicationPumpStatusResponse
--- @brief Complete ROS1 mycobot_320_communication/PumpStatusResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mycobot_320_communicationPumpStatusResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationPumpStatusResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_320_communicationPumpStatusResponse.NATIVE_TYPE: Exact normalized native type name mycobot_320_communication/PumpStatusResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationPumpStatusResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_320_communication/PumpStatusResponse.
--- @brief Ros1Mycobot_320_communicationPumpStatusResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationPumpStatusResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_320_communicationPumpStatusResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationPumpStatusResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_320_communicationPumpStatusResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationPumpStatusResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mycobot_320_communicationPumpStatusResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationPumpStatusResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mycobot_320_communicationPumpStatusResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_320_communicationPumpStatusResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_320_communicationPumpStatusResponse.encode
--- @field new fun(values?: table): Ros1Mycobot_320_communicationPumpStatusResponse
--- @brief Encode a complete Ros1Mycobot_320_communicationPumpStatusResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_320_communicationPumpStatusResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mycobot_320_communicationPumpStatusResponse.decode
--- @field encode fun(value: Ros1Mycobot_320_communicationPumpStatusResponse): string
--- @brief Decode exactly one complete Ros1Mycobot_320_communicationPumpStatusResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_320_communicationPumpStatusResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_320_communicationPumpStatusResponse.encode
--- @field decode fun(bytes: string): Ros1Mycobot_320_communicationPumpStatusResponse
local Ros1Mycobot_320_communicationPumpStatusResponse = classes["Ros1Mycobot_320_communicationPumpStatusResponse"]

--- @class Ros1Mycobot_320_communicationSetAnglesRequest
--- @brief Complete ROS1 mycobot_320_communication/SetAnglesRequest value and codec.
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
--- @brief Ros1Mycobot_320_communicationSetAnglesRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetAnglesRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_320_communicationSetAnglesRequest.NATIVE_TYPE: Exact normalized native type name mycobot_320_communication/SetAnglesRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetAnglesRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_320_communication/SetAnglesRequest.
--- @brief Ros1Mycobot_320_communicationSetAnglesRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetAnglesRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_320_communicationSetAnglesRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetAnglesRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_320_communicationSetAnglesRequest.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetAnglesRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros1Mycobot_320_communicationSetAnglesRequest.MAX_WIRE_BYTES: Inclusive complete maximum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetAnglesRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 25 bytes.
--- @brief Construct Ros1Mycobot_320_communicationSetAnglesRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_320_communicationSetAnglesRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_320_communicationSetAnglesRequest.encode
--- @field new fun(values?: table): Ros1Mycobot_320_communicationSetAnglesRequest
--- @brief Encode a complete Ros1Mycobot_320_communicationSetAnglesRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_320_communicationSetAnglesRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..25 bytes.
--- @see Ros1Mycobot_320_communicationSetAnglesRequest.decode
--- @field encode fun(value: Ros1Mycobot_320_communicationSetAnglesRequest): string
--- @brief Decode exactly one complete Ros1Mycobot_320_communicationSetAnglesRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_320_communicationSetAnglesRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_320_communicationSetAnglesRequest.encode
--- @field decode fun(bytes: string): Ros1Mycobot_320_communicationSetAnglesRequest
local Ros1Mycobot_320_communicationSetAnglesRequest = classes["Ros1Mycobot_320_communicationSetAnglesRequest"]

--- @class Ros1Mycobot_320_communicationSetAnglesResponse
--- @brief Complete ROS1 mycobot_320_communication/SetAnglesResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mycobot_320_communicationSetAnglesResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetAnglesResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_320_communicationSetAnglesResponse.NATIVE_TYPE: Exact normalized native type name mycobot_320_communication/SetAnglesResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetAnglesResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_320_communication/SetAnglesResponse.
--- @brief Ros1Mycobot_320_communicationSetAnglesResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetAnglesResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_320_communicationSetAnglesResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetAnglesResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_320_communicationSetAnglesResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetAnglesResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mycobot_320_communicationSetAnglesResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetAnglesResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mycobot_320_communicationSetAnglesResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_320_communicationSetAnglesResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_320_communicationSetAnglesResponse.encode
--- @field new fun(values?: table): Ros1Mycobot_320_communicationSetAnglesResponse
--- @brief Encode a complete Ros1Mycobot_320_communicationSetAnglesResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_320_communicationSetAnglesResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mycobot_320_communicationSetAnglesResponse.decode
--- @field encode fun(value: Ros1Mycobot_320_communicationSetAnglesResponse): string
--- @brief Decode exactly one complete Ros1Mycobot_320_communicationSetAnglesResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_320_communicationSetAnglesResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_320_communicationSetAnglesResponse.encode
--- @field decode fun(bytes: string): Ros1Mycobot_320_communicationSetAnglesResponse
local Ros1Mycobot_320_communicationSetAnglesResponse = classes["Ros1Mycobot_320_communicationSetAnglesResponse"]

--- @class Ros1Mycobot_320_communicationSetCoordsRequest
--- @brief Complete ROS1 mycobot_320_communication/SetCoordsRequest value and codec.
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
--- @brief Ros1Mycobot_320_communicationSetCoordsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetCoordsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_320_communicationSetCoordsRequest.NATIVE_TYPE: Exact normalized native type name mycobot_320_communication/SetCoordsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetCoordsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_320_communication/SetCoordsRequest.
--- @brief Ros1Mycobot_320_communicationSetCoordsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetCoordsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_320_communicationSetCoordsRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetCoordsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_320_communicationSetCoordsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetCoordsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 26 bytes.
--- @brief Ros1Mycobot_320_communicationSetCoordsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetCoordsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 26 bytes.
--- @brief Construct Ros1Mycobot_320_communicationSetCoordsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_320_communicationSetCoordsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_320_communicationSetCoordsRequest.encode
--- @field new fun(values?: table): Ros1Mycobot_320_communicationSetCoordsRequest
--- @brief Encode a complete Ros1Mycobot_320_communicationSetCoordsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_320_communicationSetCoordsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 26..26 bytes.
--- @see Ros1Mycobot_320_communicationSetCoordsRequest.decode
--- @field encode fun(value: Ros1Mycobot_320_communicationSetCoordsRequest): string
--- @brief Decode exactly one complete Ros1Mycobot_320_communicationSetCoordsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_320_communicationSetCoordsRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_320_communicationSetCoordsRequest.encode
--- @field decode fun(bytes: string): Ros1Mycobot_320_communicationSetCoordsRequest
local Ros1Mycobot_320_communicationSetCoordsRequest = classes["Ros1Mycobot_320_communicationSetCoordsRequest"]

--- @class Ros1Mycobot_320_communicationSetCoordsResponse
--- @brief Complete ROS1 mycobot_320_communication/SetCoordsResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mycobot_320_communicationSetCoordsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetCoordsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_320_communicationSetCoordsResponse.NATIVE_TYPE: Exact normalized native type name mycobot_320_communication/SetCoordsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetCoordsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_320_communication/SetCoordsResponse.
--- @brief Ros1Mycobot_320_communicationSetCoordsResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetCoordsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_320_communicationSetCoordsResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetCoordsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_320_communicationSetCoordsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetCoordsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mycobot_320_communicationSetCoordsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_320_communicationSetCoordsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mycobot_320_communicationSetCoordsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_320_communicationSetCoordsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_320_communicationSetCoordsResponse.encode
--- @field new fun(values?: table): Ros1Mycobot_320_communicationSetCoordsResponse
--- @brief Encode a complete Ros1Mycobot_320_communicationSetCoordsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_320_communicationSetCoordsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mycobot_320_communicationSetCoordsResponse.decode
--- @field encode fun(value: Ros1Mycobot_320_communicationSetCoordsResponse): string
--- @brief Decode exactly one complete Ros1Mycobot_320_communicationSetCoordsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_320_communicationSetCoordsResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_320_communicationSetCoordsResponse.encode
--- @field decode fun(bytes: string): Ros1Mycobot_320_communicationSetCoordsResponse
local Ros1Mycobot_320_communicationSetCoordsResponse = classes["Ros1Mycobot_320_communicationSetCoordsResponse"]

--- @class Ros1Mycobot_communicationMycobotAngles
--- @brief Complete ROS1 mycobot_communication/MycobotAngles value and codec.
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
--- @brief Ros1Mycobot_communicationMycobotAngles.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationMycobotAngles.NATIVE_TYPE: Exact normalized native type name mycobot_communication/MycobotAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/MycobotAngles.
--- @brief Ros1Mycobot_communicationMycobotAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationMycobotAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationMycobotAngles.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Mycobot_communicationMycobotAngles.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Mycobot_communicationMycobotAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationMycobotAngles value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationMycobotAngles.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationMycobotAngles
--- @brief Encode a complete Ros1Mycobot_communicationMycobotAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationMycobotAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Mycobot_communicationMycobotAngles.decode
--- @field encode fun(value: Ros1Mycobot_communicationMycobotAngles): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationMycobotAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationMycobotAngles value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationMycobotAngles.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationMycobotAngles
local Ros1Mycobot_communicationMycobotAngles = classes["Ros1Mycobot_communicationMycobotAngles"]

--- @class Ros1Mycobot_communicationMycobotCoords
--- @brief Complete ROS1 mycobot_communication/MycobotCoords value and codec.
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
--- @brief Ros1Mycobot_communicationMycobotCoords.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationMycobotCoords.NATIVE_TYPE: Exact normalized native type name mycobot_communication/MycobotCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/MycobotCoords.
--- @brief Ros1Mycobot_communicationMycobotCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationMycobotCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationMycobotCoords.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Mycobot_communicationMycobotCoords.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Mycobot_communicationMycobotCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationMycobotCoords value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationMycobotCoords.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationMycobotCoords
--- @brief Encode a complete Ros1Mycobot_communicationMycobotCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationMycobotCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Mycobot_communicationMycobotCoords.decode
--- @field encode fun(value: Ros1Mycobot_communicationMycobotCoords): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationMycobotCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationMycobotCoords value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationMycobotCoords.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationMycobotCoords
local Ros1Mycobot_communicationMycobotCoords = classes["Ros1Mycobot_communicationMycobotCoords"]

--- @class Ros1Mycobot_communicationMycobotGripperStatus
--- @brief Complete ROS1 mycobot_communication/MycobotGripperStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mycobot_communicationMycobotGripperStatus.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotGripperStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationMycobotGripperStatus.NATIVE_TYPE: Exact normalized native type name mycobot_communication/MycobotGripperStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotGripperStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/MycobotGripperStatus.
--- @brief Ros1Mycobot_communicationMycobotGripperStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotGripperStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationMycobotGripperStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotGripperStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationMycobotGripperStatus.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotGripperStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mycobot_communicationMycobotGripperStatus.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotGripperStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mycobot_communicationMycobotGripperStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationMycobotGripperStatus value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationMycobotGripperStatus.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationMycobotGripperStatus
--- @brief Encode a complete Ros1Mycobot_communicationMycobotGripperStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationMycobotGripperStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mycobot_communicationMycobotGripperStatus.decode
--- @field encode fun(value: Ros1Mycobot_communicationMycobotGripperStatus): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationMycobotGripperStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationMycobotGripperStatus value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationMycobotGripperStatus.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationMycobotGripperStatus
local Ros1Mycobot_communicationMycobotGripperStatus = classes["Ros1Mycobot_communicationMycobotGripperStatus"]

--- @class Ros1Mycobot_communicationMycobotPumpStatus
--- @brief Complete ROS1 mycobot_communication/MycobotPumpStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @field Pin1 integer Exact int8 range -128..127.
--- @field Pin2 integer Exact int8 range -128..127.
--- @brief Ros1Mycobot_communicationMycobotPumpStatus.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotPumpStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationMycobotPumpStatus.NATIVE_TYPE: Exact normalized native type name mycobot_communication/MycobotPumpStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotPumpStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/MycobotPumpStatus.
--- @brief Ros1Mycobot_communicationMycobotPumpStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotPumpStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationMycobotPumpStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotPumpStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationMycobotPumpStatus.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotPumpStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros1Mycobot_communicationMycobotPumpStatus.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotPumpStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros1Mycobot_communicationMycobotPumpStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationMycobotPumpStatus value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationMycobotPumpStatus.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationMycobotPumpStatus
--- @brief Encode a complete Ros1Mycobot_communicationMycobotPumpStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationMycobotPumpStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros1Mycobot_communicationMycobotPumpStatus.decode
--- @field encode fun(value: Ros1Mycobot_communicationMycobotPumpStatus): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationMycobotPumpStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationMycobotPumpStatus value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationMycobotPumpStatus.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationMycobotPumpStatus
local Ros1Mycobot_communicationMycobotPumpStatus = classes["Ros1Mycobot_communicationMycobotPumpStatus"]

--- @class Ros1Mycobot_communicationMycobotSetAngles
--- @brief Complete ROS1 mycobot_communication/MycobotSetAngles value and codec.
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
--- @brief Ros1Mycobot_communicationMycobotSetAngles.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationMycobotSetAngles.NATIVE_TYPE: Exact normalized native type name mycobot_communication/MycobotSetAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/MycobotSetAngles.
--- @brief Ros1Mycobot_communicationMycobotSetAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationMycobotSetAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationMycobotSetAngles.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros1Mycobot_communicationMycobotSetAngles.MAX_WIRE_BYTES: Inclusive complete maximum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 25 bytes.
--- @brief Construct Ros1Mycobot_communicationMycobotSetAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationMycobotSetAngles value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationMycobotSetAngles.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationMycobotSetAngles
--- @brief Encode a complete Ros1Mycobot_communicationMycobotSetAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationMycobotSetAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..25 bytes.
--- @see Ros1Mycobot_communicationMycobotSetAngles.decode
--- @field encode fun(value: Ros1Mycobot_communicationMycobotSetAngles): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationMycobotSetAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationMycobotSetAngles value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationMycobotSetAngles.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationMycobotSetAngles
local Ros1Mycobot_communicationMycobotSetAngles = classes["Ros1Mycobot_communicationMycobotSetAngles"]

--- @class Ros1Mycobot_communicationMycobotSetCoords
--- @brief Complete ROS1 mycobot_communication/MycobotSetCoords value and codec.
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
--- @brief Ros1Mycobot_communicationMycobotSetCoords.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationMycobotSetCoords.NATIVE_TYPE: Exact normalized native type name mycobot_communication/MycobotSetCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/MycobotSetCoords.
--- @brief Ros1Mycobot_communicationMycobotSetCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationMycobotSetCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationMycobotSetCoords.MIN_WIRE_BYTES: Inclusive complete minimum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 26 bytes.
--- @brief Ros1Mycobot_communicationMycobotSetCoords.MAX_WIRE_BYTES: Inclusive complete maximum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 26 bytes.
--- @brief Construct Ros1Mycobot_communicationMycobotSetCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationMycobotSetCoords value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationMycobotSetCoords.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationMycobotSetCoords
--- @brief Encode a complete Ros1Mycobot_communicationMycobotSetCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationMycobotSetCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 26..26 bytes.
--- @see Ros1Mycobot_communicationMycobotSetCoords.decode
--- @field encode fun(value: Ros1Mycobot_communicationMycobotSetCoords): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationMycobotSetCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationMycobotSetCoords value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationMycobotSetCoords.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationMycobotSetCoords
local Ros1Mycobot_communicationMycobotSetCoords = classes["Ros1Mycobot_communicationMycobotSetCoords"]

--- @class Ros1Mycobot_communicationGetAnglesRequest
--- @brief Complete ROS1 mycobot_communication/GetAnglesRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Mycobot_communicationGetAnglesRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationGetAnglesRequest.NATIVE_TYPE: Exact normalized native type name mycobot_communication/GetAnglesRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/GetAnglesRequest.
--- @brief Ros1Mycobot_communicationGetAnglesRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationGetAnglesRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationGetAnglesRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Mycobot_communicationGetAnglesRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Mycobot_communicationGetAnglesRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationGetAnglesRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationGetAnglesRequest.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationGetAnglesRequest
--- @brief Encode a complete Ros1Mycobot_communicationGetAnglesRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationGetAnglesRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Mycobot_communicationGetAnglesRequest.decode
--- @field encode fun(value: Ros1Mycobot_communicationGetAnglesRequest): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationGetAnglesRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationGetAnglesRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationGetAnglesRequest.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationGetAnglesRequest
local Ros1Mycobot_communicationGetAnglesRequest = classes["Ros1Mycobot_communicationGetAnglesRequest"]

--- @class Ros1Mycobot_communicationGetAnglesResponse
--- @brief Complete ROS1 mycobot_communication/GetAnglesResponse value and codec.
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
--- @brief Ros1Mycobot_communicationGetAnglesResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationGetAnglesResponse.NATIVE_TYPE: Exact normalized native type name mycobot_communication/GetAnglesResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/GetAnglesResponse.
--- @brief Ros1Mycobot_communicationGetAnglesResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationGetAnglesResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationGetAnglesResponse.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Mycobot_communicationGetAnglesResponse.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Mycobot_communicationGetAnglesResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationGetAnglesResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationGetAnglesResponse.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationGetAnglesResponse
--- @brief Encode a complete Ros1Mycobot_communicationGetAnglesResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationGetAnglesResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Mycobot_communicationGetAnglesResponse.decode
--- @field encode fun(value: Ros1Mycobot_communicationGetAnglesResponse): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationGetAnglesResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationGetAnglesResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationGetAnglesResponse.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationGetAnglesResponse
local Ros1Mycobot_communicationGetAnglesResponse = classes["Ros1Mycobot_communicationGetAnglesResponse"]

--- @class Ros1Mycobot_communicationGetCoordsRequest
--- @brief Complete ROS1 mycobot_communication/GetCoordsRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Mycobot_communicationGetCoordsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationGetCoordsRequest.NATIVE_TYPE: Exact normalized native type name mycobot_communication/GetCoordsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/GetCoordsRequest.
--- @brief Ros1Mycobot_communicationGetCoordsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationGetCoordsRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationGetCoordsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Mycobot_communicationGetCoordsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Mycobot_communicationGetCoordsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationGetCoordsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationGetCoordsRequest.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationGetCoordsRequest
--- @brief Encode a complete Ros1Mycobot_communicationGetCoordsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationGetCoordsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Mycobot_communicationGetCoordsRequest.decode
--- @field encode fun(value: Ros1Mycobot_communicationGetCoordsRequest): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationGetCoordsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationGetCoordsRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationGetCoordsRequest.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationGetCoordsRequest
local Ros1Mycobot_communicationGetCoordsRequest = classes["Ros1Mycobot_communicationGetCoordsRequest"]

--- @class Ros1Mycobot_communicationGetCoordsResponse
--- @brief Complete ROS1 mycobot_communication/GetCoordsResponse value and codec.
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
--- @brief Ros1Mycobot_communicationGetCoordsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationGetCoordsResponse.NATIVE_TYPE: Exact normalized native type name mycobot_communication/GetCoordsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/GetCoordsResponse.
--- @brief Ros1Mycobot_communicationGetCoordsResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationGetCoordsResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationGetCoordsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Mycobot_communicationGetCoordsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Mycobot_communicationGetCoordsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationGetCoordsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationGetCoordsResponse.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationGetCoordsResponse
--- @brief Encode a complete Ros1Mycobot_communicationGetCoordsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationGetCoordsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Mycobot_communicationGetCoordsResponse.decode
--- @field encode fun(value: Ros1Mycobot_communicationGetCoordsResponse): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationGetCoordsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationGetCoordsResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationGetCoordsResponse.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationGetCoordsResponse
local Ros1Mycobot_communicationGetCoordsResponse = classes["Ros1Mycobot_communicationGetCoordsResponse"]

--- @class Ros1Mycobot_communicationGripperStatusRequest
--- @brief Complete ROS1 mycobot_communication/GripperStatusRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mycobot_communicationGripperStatusRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationGripperStatusRequest.NATIVE_TYPE: Exact normalized native type name mycobot_communication/GripperStatusRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/GripperStatusRequest.
--- @brief Ros1Mycobot_communicationGripperStatusRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationGripperStatusRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationGripperStatusRequest.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mycobot_communicationGripperStatusRequest.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mycobot_communicationGripperStatusRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationGripperStatusRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationGripperStatusRequest.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationGripperStatusRequest
--- @brief Encode a complete Ros1Mycobot_communicationGripperStatusRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationGripperStatusRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mycobot_communicationGripperStatusRequest.decode
--- @field encode fun(value: Ros1Mycobot_communicationGripperStatusRequest): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationGripperStatusRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationGripperStatusRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationGripperStatusRequest.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationGripperStatusRequest
local Ros1Mycobot_communicationGripperStatusRequest = classes["Ros1Mycobot_communicationGripperStatusRequest"]

--- @class Ros1Mycobot_communicationGripperStatusResponse
--- @brief Complete ROS1 mycobot_communication/GripperStatusResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mycobot_communicationGripperStatusResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationGripperStatusResponse.NATIVE_TYPE: Exact normalized native type name mycobot_communication/GripperStatusResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/GripperStatusResponse.
--- @brief Ros1Mycobot_communicationGripperStatusResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationGripperStatusResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationGripperStatusResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mycobot_communicationGripperStatusResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mycobot_communicationGripperStatusResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationGripperStatusResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationGripperStatusResponse.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationGripperStatusResponse
--- @brief Encode a complete Ros1Mycobot_communicationGripperStatusResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationGripperStatusResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mycobot_communicationGripperStatusResponse.decode
--- @field encode fun(value: Ros1Mycobot_communicationGripperStatusResponse): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationGripperStatusResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationGripperStatusResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationGripperStatusResponse.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationGripperStatusResponse
local Ros1Mycobot_communicationGripperStatusResponse = classes["Ros1Mycobot_communicationGripperStatusResponse"]

--- @class Ros1Mycobot_communicationPumpStatusRequest
--- @brief Complete ROS1 mycobot_communication/PumpStatusRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @field Pin1 integer Exact int8 range -128..127.
--- @field Pin2 integer Exact int8 range -128..127.
--- @brief Ros1Mycobot_communicationPumpStatusRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationPumpStatusRequest.NATIVE_TYPE: Exact normalized native type name mycobot_communication/PumpStatusRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/PumpStatusRequest.
--- @brief Ros1Mycobot_communicationPumpStatusRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationPumpStatusRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationPumpStatusRequest.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros1Mycobot_communicationPumpStatusRequest.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros1Mycobot_communicationPumpStatusRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationPumpStatusRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationPumpStatusRequest.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationPumpStatusRequest
--- @brief Encode a complete Ros1Mycobot_communicationPumpStatusRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationPumpStatusRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros1Mycobot_communicationPumpStatusRequest.decode
--- @field encode fun(value: Ros1Mycobot_communicationPumpStatusRequest): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationPumpStatusRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationPumpStatusRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationPumpStatusRequest.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationPumpStatusRequest
local Ros1Mycobot_communicationPumpStatusRequest = classes["Ros1Mycobot_communicationPumpStatusRequest"]

--- @class Ros1Mycobot_communicationPumpStatusResponse
--- @brief Complete ROS1 mycobot_communication/PumpStatusResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mycobot_communicationPumpStatusResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationPumpStatusResponse.NATIVE_TYPE: Exact normalized native type name mycobot_communication/PumpStatusResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/PumpStatusResponse.
--- @brief Ros1Mycobot_communicationPumpStatusResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationPumpStatusResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationPumpStatusResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mycobot_communicationPumpStatusResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mycobot_communicationPumpStatusResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationPumpStatusResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationPumpStatusResponse.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationPumpStatusResponse
--- @brief Encode a complete Ros1Mycobot_communicationPumpStatusResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationPumpStatusResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mycobot_communicationPumpStatusResponse.decode
--- @field encode fun(value: Ros1Mycobot_communicationPumpStatusResponse): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationPumpStatusResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationPumpStatusResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationPumpStatusResponse.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationPumpStatusResponse
local Ros1Mycobot_communicationPumpStatusResponse = classes["Ros1Mycobot_communicationPumpStatusResponse"]

--- @class Ros1Mycobot_communicationSetAnglesRequest
--- @brief Complete ROS1 mycobot_communication/SetAnglesRequest value and codec.
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
--- @brief Ros1Mycobot_communicationSetAnglesRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationSetAnglesRequest.NATIVE_TYPE: Exact normalized native type name mycobot_communication/SetAnglesRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/SetAnglesRequest.
--- @brief Ros1Mycobot_communicationSetAnglesRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationSetAnglesRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationSetAnglesRequest.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros1Mycobot_communicationSetAnglesRequest.MAX_WIRE_BYTES: Inclusive complete maximum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 25 bytes.
--- @brief Construct Ros1Mycobot_communicationSetAnglesRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationSetAnglesRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationSetAnglesRequest.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationSetAnglesRequest
--- @brief Encode a complete Ros1Mycobot_communicationSetAnglesRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationSetAnglesRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..25 bytes.
--- @see Ros1Mycobot_communicationSetAnglesRequest.decode
--- @field encode fun(value: Ros1Mycobot_communicationSetAnglesRequest): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationSetAnglesRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationSetAnglesRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationSetAnglesRequest.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationSetAnglesRequest
local Ros1Mycobot_communicationSetAnglesRequest = classes["Ros1Mycobot_communicationSetAnglesRequest"]

--- @class Ros1Mycobot_communicationSetAnglesResponse
--- @brief Complete ROS1 mycobot_communication/SetAnglesResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mycobot_communicationSetAnglesResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationSetAnglesResponse.NATIVE_TYPE: Exact normalized native type name mycobot_communication/SetAnglesResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/SetAnglesResponse.
--- @brief Ros1Mycobot_communicationSetAnglesResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationSetAnglesResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationSetAnglesResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mycobot_communicationSetAnglesResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mycobot_communicationSetAnglesResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationSetAnglesResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationSetAnglesResponse.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationSetAnglesResponse
--- @brief Encode a complete Ros1Mycobot_communicationSetAnglesResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationSetAnglesResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mycobot_communicationSetAnglesResponse.decode
--- @field encode fun(value: Ros1Mycobot_communicationSetAnglesResponse): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationSetAnglesResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationSetAnglesResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationSetAnglesResponse.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationSetAnglesResponse
local Ros1Mycobot_communicationSetAnglesResponse = classes["Ros1Mycobot_communicationSetAnglesResponse"]

--- @class Ros1Mycobot_communicationSetCoordsRequest
--- @brief Complete ROS1 mycobot_communication/SetCoordsRequest value and codec.
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
--- @brief Ros1Mycobot_communicationSetCoordsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationSetCoordsRequest.NATIVE_TYPE: Exact normalized native type name mycobot_communication/SetCoordsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/SetCoordsRequest.
--- @brief Ros1Mycobot_communicationSetCoordsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationSetCoordsRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationSetCoordsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 26 bytes.
--- @brief Ros1Mycobot_communicationSetCoordsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 26 bytes.
--- @brief Construct Ros1Mycobot_communicationSetCoordsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationSetCoordsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationSetCoordsRequest.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationSetCoordsRequest
--- @brief Encode a complete Ros1Mycobot_communicationSetCoordsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationSetCoordsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 26..26 bytes.
--- @see Ros1Mycobot_communicationSetCoordsRequest.decode
--- @field encode fun(value: Ros1Mycobot_communicationSetCoordsRequest): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationSetCoordsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationSetCoordsRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationSetCoordsRequest.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationSetCoordsRequest
local Ros1Mycobot_communicationSetCoordsRequest = classes["Ros1Mycobot_communicationSetCoordsRequest"]

--- @class Ros1Mycobot_communicationSetCoordsResponse
--- @brief Complete ROS1 mycobot_communication/SetCoordsResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mycobot_communicationSetCoordsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationSetCoordsResponse.NATIVE_TYPE: Exact normalized native type name mycobot_communication/SetCoordsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/SetCoordsResponse.
--- @brief Ros1Mycobot_communicationSetCoordsResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationSetCoordsResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationSetCoordsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mycobot_communicationSetCoordsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mycobot_communicationSetCoordsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationSetCoordsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationSetCoordsResponse.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationSetCoordsResponse
--- @brief Encode a complete Ros1Mycobot_communicationSetCoordsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationSetCoordsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mycobot_communicationSetCoordsResponse.decode
--- @field encode fun(value: Ros1Mycobot_communicationSetCoordsResponse): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationSetCoordsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationSetCoordsResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationSetCoordsResponse.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationSetCoordsResponse
local Ros1Mycobot_communicationSetCoordsResponse = classes["Ros1Mycobot_communicationSetCoordsResponse"]

--- @class Ros1Mypalletizer_communicationMypalAngles
--- @brief Complete ROS1 mypalletizer_communication/MypalAngles value and codec.
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
--- @brief Ros1Mypalletizer_communicationMypalAngles.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationMypalAngles.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/MypalAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/MypalAngles.
--- @brief Ros1Mypalletizer_communicationMypalAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationMypalAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationMypalAngles.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Mypalletizer_communicationMypalAngles.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros1Mypalletizer_communicationMypalAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationMypalAngles value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationMypalAngles.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationMypalAngles
--- @brief Encode a complete Ros1Mypalletizer_communicationMypalAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationMypalAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros1Mypalletizer_communicationMypalAngles.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationMypalAngles): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationMypalAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationMypalAngles value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationMypalAngles.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationMypalAngles
local Ros1Mypalletizer_communicationMypalAngles = classes["Ros1Mypalletizer_communicationMypalAngles"]

--- @class Ros1Mypalletizer_communicationMypalCoords
--- @brief Complete ROS1 mypalletizer_communication/MypalCoords value and codec.
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
--- @brief Ros1Mypalletizer_communicationMypalCoords.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationMypalCoords.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/MypalCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/MypalCoords.
--- @brief Ros1Mypalletizer_communicationMypalCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationMypalCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationMypalCoords.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Mypalletizer_communicationMypalCoords.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros1Mypalletizer_communicationMypalCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationMypalCoords value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationMypalCoords.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationMypalCoords
--- @brief Encode a complete Ros1Mypalletizer_communicationMypalCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationMypalCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros1Mypalletizer_communicationMypalCoords.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationMypalCoords): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationMypalCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationMypalCoords value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationMypalCoords.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationMypalCoords
local Ros1Mypalletizer_communicationMypalCoords = classes["Ros1Mypalletizer_communicationMypalCoords"]

--- @class Ros1Mypalletizer_communicationMypalGripperStatus
--- @brief Complete ROS1 mypalletizer_communication/MypalGripperStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mypalletizer_communicationMypalGripperStatus.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalGripperStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationMypalGripperStatus.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/MypalGripperStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalGripperStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/MypalGripperStatus.
--- @brief Ros1Mypalletizer_communicationMypalGripperStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalGripperStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationMypalGripperStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalGripperStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationMypalGripperStatus.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalGripperStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mypalletizer_communicationMypalGripperStatus.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalGripperStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mypalletizer_communicationMypalGripperStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationMypalGripperStatus value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationMypalGripperStatus.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationMypalGripperStatus
--- @brief Encode a complete Ros1Mypalletizer_communicationMypalGripperStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationMypalGripperStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mypalletizer_communicationMypalGripperStatus.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationMypalGripperStatus): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationMypalGripperStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationMypalGripperStatus value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationMypalGripperStatus.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationMypalGripperStatus
local Ros1Mypalletizer_communicationMypalGripperStatus = classes["Ros1Mypalletizer_communicationMypalGripperStatus"]

--- @class Ros1Mypalletizer_communicationMypalPumpStatus
--- @brief Complete ROS1 mypalletizer_communication/MypalPumpStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @field Pin1 integer Exact int8 range -128..127.
--- @field Pin2 integer Exact int8 range -128..127.
--- @brief Ros1Mypalletizer_communicationMypalPumpStatus.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalPumpStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationMypalPumpStatus.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/MypalPumpStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalPumpStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/MypalPumpStatus.
--- @brief Ros1Mypalletizer_communicationMypalPumpStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalPumpStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationMypalPumpStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalPumpStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationMypalPumpStatus.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalPumpStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros1Mypalletizer_communicationMypalPumpStatus.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalPumpStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros1Mypalletizer_communicationMypalPumpStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationMypalPumpStatus value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationMypalPumpStatus.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationMypalPumpStatus
--- @brief Encode a complete Ros1Mypalletizer_communicationMypalPumpStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationMypalPumpStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros1Mypalletizer_communicationMypalPumpStatus.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationMypalPumpStatus): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationMypalPumpStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationMypalPumpStatus value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationMypalPumpStatus.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationMypalPumpStatus
local Ros1Mypalletizer_communicationMypalPumpStatus = classes["Ros1Mypalletizer_communicationMypalPumpStatus"]

--- @class Ros1Mypalletizer_communicationMypalSetAngles
--- @brief Complete ROS1 mypalletizer_communication/MypalSetAngles value and codec.
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
--- @brief Ros1Mypalletizer_communicationMypalSetAngles.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationMypalSetAngles.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/MypalSetAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/MypalSetAngles.
--- @brief Ros1Mypalletizer_communicationMypalSetAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationMypalSetAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationMypalSetAngles.MIN_WIRE_BYTES: Inclusive complete minimum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 17 bytes.
--- @brief Ros1Mypalletizer_communicationMypalSetAngles.MAX_WIRE_BYTES: Inclusive complete maximum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 17 bytes.
--- @brief Construct Ros1Mypalletizer_communicationMypalSetAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationMypalSetAngles value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationMypalSetAngles.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationMypalSetAngles
--- @brief Encode a complete Ros1Mypalletizer_communicationMypalSetAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationMypalSetAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 17..17 bytes.
--- @see Ros1Mypalletizer_communicationMypalSetAngles.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationMypalSetAngles): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationMypalSetAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationMypalSetAngles value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationMypalSetAngles.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationMypalSetAngles
local Ros1Mypalletizer_communicationMypalSetAngles = classes["Ros1Mypalletizer_communicationMypalSetAngles"]

--- @class Ros1Mypalletizer_communicationMypalSetCoords
--- @brief Complete ROS1 mypalletizer_communication/MypalSetCoords value and codec.
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
--- @field model integer Exact int8 range -128..127.
--- @brief Ros1Mypalletizer_communicationMypalSetCoords.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationMypalSetCoords.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/MypalSetCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/MypalSetCoords.
--- @brief Ros1Mypalletizer_communicationMypalSetCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationMypalSetCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationMypalSetCoords.MIN_WIRE_BYTES: Inclusive complete minimum 18 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 18 bytes.
--- @brief Ros1Mypalletizer_communicationMypalSetCoords.MAX_WIRE_BYTES: Inclusive complete maximum 18 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 18 bytes.
--- @brief Construct Ros1Mypalletizer_communicationMypalSetCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationMypalSetCoords value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationMypalSetCoords.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationMypalSetCoords
--- @brief Encode a complete Ros1Mypalletizer_communicationMypalSetCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationMypalSetCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 18..18 bytes.
--- @see Ros1Mypalletizer_communicationMypalSetCoords.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationMypalSetCoords): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationMypalSetCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationMypalSetCoords value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationMypalSetCoords.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationMypalSetCoords
local Ros1Mypalletizer_communicationMypalSetCoords = classes["Ros1Mypalletizer_communicationMypalSetCoords"]

--- @class Ros1Mypalletizer_communicationGetAnglesRequest
--- @brief Complete ROS1 mypalletizer_communication/GetAnglesRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Mypalletizer_communicationGetAnglesRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationGetAnglesRequest.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/GetAnglesRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/GetAnglesRequest.
--- @brief Ros1Mypalletizer_communicationGetAnglesRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationGetAnglesRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationGetAnglesRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Mypalletizer_communicationGetAnglesRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Mypalletizer_communicationGetAnglesRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationGetAnglesRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationGetAnglesRequest.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationGetAnglesRequest
--- @brief Encode a complete Ros1Mypalletizer_communicationGetAnglesRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationGetAnglesRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Mypalletizer_communicationGetAnglesRequest.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationGetAnglesRequest): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationGetAnglesRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationGetAnglesRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationGetAnglesRequest.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationGetAnglesRequest
local Ros1Mypalletizer_communicationGetAnglesRequest = classes["Ros1Mypalletizer_communicationGetAnglesRequest"]

--- @class Ros1Mypalletizer_communicationGetAnglesResponse
--- @brief Complete ROS1 mypalletizer_communication/GetAnglesResponse value and codec.
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
--- @brief Ros1Mypalletizer_communicationGetAnglesResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationGetAnglesResponse.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/GetAnglesResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/GetAnglesResponse.
--- @brief Ros1Mypalletizer_communicationGetAnglesResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationGetAnglesResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationGetAnglesResponse.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Mypalletizer_communicationGetAnglesResponse.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros1Mypalletizer_communicationGetAnglesResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationGetAnglesResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationGetAnglesResponse.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationGetAnglesResponse
--- @brief Encode a complete Ros1Mypalletizer_communicationGetAnglesResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationGetAnglesResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros1Mypalletizer_communicationGetAnglesResponse.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationGetAnglesResponse): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationGetAnglesResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationGetAnglesResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationGetAnglesResponse.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationGetAnglesResponse
local Ros1Mypalletizer_communicationGetAnglesResponse = classes["Ros1Mypalletizer_communicationGetAnglesResponse"]

--- @class Ros1Mypalletizer_communicationGetCoordsRequest
--- @brief Complete ROS1 mypalletizer_communication/GetCoordsRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Mypalletizer_communicationGetCoordsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationGetCoordsRequest.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/GetCoordsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/GetCoordsRequest.
--- @brief Ros1Mypalletizer_communicationGetCoordsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationGetCoordsRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationGetCoordsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Mypalletizer_communicationGetCoordsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Mypalletizer_communicationGetCoordsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationGetCoordsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationGetCoordsRequest.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationGetCoordsRequest
--- @brief Encode a complete Ros1Mypalletizer_communicationGetCoordsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationGetCoordsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Mypalletizer_communicationGetCoordsRequest.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationGetCoordsRequest): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationGetCoordsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationGetCoordsRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationGetCoordsRequest.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationGetCoordsRequest
local Ros1Mypalletizer_communicationGetCoordsRequest = classes["Ros1Mypalletizer_communicationGetCoordsRequest"]

--- @class Ros1Mypalletizer_communicationGetCoordsResponse
--- @brief Complete ROS1 mypalletizer_communication/GetCoordsResponse value and codec.
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
--- @brief Ros1Mypalletizer_communicationGetCoordsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationGetCoordsResponse.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/GetCoordsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/GetCoordsResponse.
--- @brief Ros1Mypalletizer_communicationGetCoordsResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationGetCoordsResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationGetCoordsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Mypalletizer_communicationGetCoordsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros1Mypalletizer_communicationGetCoordsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationGetCoordsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationGetCoordsResponse.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationGetCoordsResponse
--- @brief Encode a complete Ros1Mypalletizer_communicationGetCoordsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationGetCoordsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros1Mypalletizer_communicationGetCoordsResponse.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationGetCoordsResponse): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationGetCoordsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationGetCoordsResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationGetCoordsResponse.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationGetCoordsResponse
local Ros1Mypalletizer_communicationGetCoordsResponse = classes["Ros1Mypalletizer_communicationGetCoordsResponse"]

--- @class Ros1Mypalletizer_communicationGripperStatusRequest
--- @brief Complete ROS1 mypalletizer_communication/GripperStatusRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mypalletizer_communicationGripperStatusRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationGripperStatusRequest.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/GripperStatusRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/GripperStatusRequest.
--- @brief Ros1Mypalletizer_communicationGripperStatusRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationGripperStatusRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationGripperStatusRequest.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mypalletizer_communicationGripperStatusRequest.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mypalletizer_communicationGripperStatusRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationGripperStatusRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationGripperStatusRequest.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationGripperStatusRequest
--- @brief Encode a complete Ros1Mypalletizer_communicationGripperStatusRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationGripperStatusRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mypalletizer_communicationGripperStatusRequest.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationGripperStatusRequest): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationGripperStatusRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationGripperStatusRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationGripperStatusRequest.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationGripperStatusRequest
local Ros1Mypalletizer_communicationGripperStatusRequest = classes["Ros1Mypalletizer_communicationGripperStatusRequest"]

--- @class Ros1Mypalletizer_communicationGripperStatusResponse
--- @brief Complete ROS1 mypalletizer_communication/GripperStatusResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mypalletizer_communicationGripperStatusResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationGripperStatusResponse.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/GripperStatusResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/GripperStatusResponse.
--- @brief Ros1Mypalletizer_communicationGripperStatusResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationGripperStatusResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationGripperStatusResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mypalletizer_communicationGripperStatusResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mypalletizer_communicationGripperStatusResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationGripperStatusResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationGripperStatusResponse.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationGripperStatusResponse
--- @brief Encode a complete Ros1Mypalletizer_communicationGripperStatusResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationGripperStatusResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mypalletizer_communicationGripperStatusResponse.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationGripperStatusResponse): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationGripperStatusResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationGripperStatusResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationGripperStatusResponse.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationGripperStatusResponse
local Ros1Mypalletizer_communicationGripperStatusResponse = classes["Ros1Mypalletizer_communicationGripperStatusResponse"]

--- @class Ros1Mypalletizer_communicationPumpStatusRequest
--- @brief Complete ROS1 mypalletizer_communication/PumpStatusRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @field Pin1 integer Exact int8 range -128..127.
--- @field Pin2 integer Exact int8 range -128..127.
--- @brief Ros1Mypalletizer_communicationPumpStatusRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationPumpStatusRequest.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/PumpStatusRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/PumpStatusRequest.
--- @brief Ros1Mypalletizer_communicationPumpStatusRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationPumpStatusRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationPumpStatusRequest.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros1Mypalletizer_communicationPumpStatusRequest.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros1Mypalletizer_communicationPumpStatusRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationPumpStatusRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationPumpStatusRequest.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationPumpStatusRequest
--- @brief Encode a complete Ros1Mypalletizer_communicationPumpStatusRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationPumpStatusRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros1Mypalletizer_communicationPumpStatusRequest.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationPumpStatusRequest): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationPumpStatusRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationPumpStatusRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationPumpStatusRequest.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationPumpStatusRequest
local Ros1Mypalletizer_communicationPumpStatusRequest = classes["Ros1Mypalletizer_communicationPumpStatusRequest"]

--- @class Ros1Mypalletizer_communicationPumpStatusResponse
--- @brief Complete ROS1 mypalletizer_communication/PumpStatusResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mypalletizer_communicationPumpStatusResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationPumpStatusResponse.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/PumpStatusResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/PumpStatusResponse.
--- @brief Ros1Mypalletizer_communicationPumpStatusResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationPumpStatusResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationPumpStatusResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mypalletizer_communicationPumpStatusResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mypalletizer_communicationPumpStatusResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationPumpStatusResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationPumpStatusResponse.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationPumpStatusResponse
--- @brief Encode a complete Ros1Mypalletizer_communicationPumpStatusResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationPumpStatusResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mypalletizer_communicationPumpStatusResponse.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationPumpStatusResponse): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationPumpStatusResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationPumpStatusResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationPumpStatusResponse.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationPumpStatusResponse
local Ros1Mypalletizer_communicationPumpStatusResponse = classes["Ros1Mypalletizer_communicationPumpStatusResponse"]

--- @class Ros1Mypalletizer_communicationSetAnglesRequest
--- @brief Complete ROS1 mypalletizer_communication/SetAnglesRequest value and codec.
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
--- @brief Ros1Mypalletizer_communicationSetAnglesRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationSetAnglesRequest.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/SetAnglesRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/SetAnglesRequest.
--- @brief Ros1Mypalletizer_communicationSetAnglesRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationSetAnglesRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationSetAnglesRequest.MIN_WIRE_BYTES: Inclusive complete minimum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 17 bytes.
--- @brief Ros1Mypalletizer_communicationSetAnglesRequest.MAX_WIRE_BYTES: Inclusive complete maximum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 17 bytes.
--- @brief Construct Ros1Mypalletizer_communicationSetAnglesRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationSetAnglesRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationSetAnglesRequest.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationSetAnglesRequest
--- @brief Encode a complete Ros1Mypalletizer_communicationSetAnglesRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationSetAnglesRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 17..17 bytes.
--- @see Ros1Mypalletizer_communicationSetAnglesRequest.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationSetAnglesRequest): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationSetAnglesRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationSetAnglesRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationSetAnglesRequest.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationSetAnglesRequest
local Ros1Mypalletizer_communicationSetAnglesRequest = classes["Ros1Mypalletizer_communicationSetAnglesRequest"]

--- @class Ros1Mypalletizer_communicationSetAnglesResponse
--- @brief Complete ROS1 mypalletizer_communication/SetAnglesResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mypalletizer_communicationSetAnglesResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationSetAnglesResponse.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/SetAnglesResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/SetAnglesResponse.
--- @brief Ros1Mypalletizer_communicationSetAnglesResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationSetAnglesResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationSetAnglesResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mypalletizer_communicationSetAnglesResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mypalletizer_communicationSetAnglesResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationSetAnglesResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationSetAnglesResponse.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationSetAnglesResponse
--- @brief Encode a complete Ros1Mypalletizer_communicationSetAnglesResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationSetAnglesResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mypalletizer_communicationSetAnglesResponse.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationSetAnglesResponse): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationSetAnglesResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationSetAnglesResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationSetAnglesResponse.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationSetAnglesResponse
local Ros1Mypalletizer_communicationSetAnglesResponse = classes["Ros1Mypalletizer_communicationSetAnglesResponse"]

--- @class Ros1Mypalletizer_communicationSetCoordsRequest
--- @brief Complete ROS1 mypalletizer_communication/SetCoordsRequest value and codec.
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
--- @field model integer Exact int8 range -128..127.
--- @brief Ros1Mypalletizer_communicationSetCoordsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationSetCoordsRequest.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/SetCoordsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/SetCoordsRequest.
--- @brief Ros1Mypalletizer_communicationSetCoordsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationSetCoordsRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationSetCoordsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 18 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 18 bytes.
--- @brief Ros1Mypalletizer_communicationSetCoordsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 18 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 18 bytes.
--- @brief Construct Ros1Mypalletizer_communicationSetCoordsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationSetCoordsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationSetCoordsRequest.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationSetCoordsRequest
--- @brief Encode a complete Ros1Mypalletizer_communicationSetCoordsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationSetCoordsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 18..18 bytes.
--- @see Ros1Mypalletizer_communicationSetCoordsRequest.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationSetCoordsRequest): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationSetCoordsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationSetCoordsRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationSetCoordsRequest.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationSetCoordsRequest
local Ros1Mypalletizer_communicationSetCoordsRequest = classes["Ros1Mypalletizer_communicationSetCoordsRequest"]

--- @class Ros1Mypalletizer_communicationSetCoordsResponse
--- @brief Complete ROS1 mypalletizer_communication/SetCoordsResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mypalletizer_communicationSetCoordsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationSetCoordsResponse.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/SetCoordsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/SetCoordsResponse.
--- @brief Ros1Mypalletizer_communicationSetCoordsResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationSetCoordsResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationSetCoordsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mypalletizer_communicationSetCoordsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mypalletizer_communicationSetCoordsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationSetCoordsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationSetCoordsResponse.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationSetCoordsResponse
--- @brief Encode a complete Ros1Mypalletizer_communicationSetCoordsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationSetCoordsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mypalletizer_communicationSetCoordsResponse.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationSetCoordsResponse): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationSetCoordsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationSetCoordsResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationSetCoordsResponse.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationSetCoordsResponse
local Ros1Mypalletizer_communicationSetCoordsResponse = classes["Ros1Mypalletizer_communicationSetCoordsResponse"]

--- @class Ros1Ultraarm_communicationUltraArmAngles
--- @brief Complete ROS1 ultraarm_communication/ultraArmAngles value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Ultraarm_communicationUltraArmAngles.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Ultraarm_communicationUltraArmAngles.NATIVE_TYPE: Exact normalized native type name ultraarm_communication/ultraArmAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_communication/ultraArmAngles.
--- @brief Ros1Ultraarm_communicationUltraArmAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Ultraarm_communicationUltraArmAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Ultraarm_communicationUltraArmAngles.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros1Ultraarm_communicationUltraArmAngles.MAX_WIRE_BYTES: Inclusive complete maximum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 12 bytes.
--- @brief Construct Ros1Ultraarm_communicationUltraArmAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Ultraarm_communicationUltraArmAngles value New mutable complete value; no ROS resource.
--- @see Ros1Ultraarm_communicationUltraArmAngles.encode
--- @field new fun(values?: table): Ros1Ultraarm_communicationUltraArmAngles
--- @brief Encode a complete Ros1Ultraarm_communicationUltraArmAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Ultraarm_communicationUltraArmAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..12 bytes.
--- @see Ros1Ultraarm_communicationUltraArmAngles.decode
--- @field encode fun(value: Ros1Ultraarm_communicationUltraArmAngles): string
--- @brief Decode exactly one complete Ros1Ultraarm_communicationUltraArmAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Ultraarm_communicationUltraArmAngles value New complete value; failures raise Lua errors.
--- @see Ros1Ultraarm_communicationUltraArmAngles.encode
--- @field decode fun(bytes: string): Ros1Ultraarm_communicationUltraArmAngles
local Ros1Ultraarm_communicationUltraArmAngles = classes["Ros1Ultraarm_communicationUltraArmAngles"]

--- @class Ros1Ultraarm_communicationUltraArmCoords
--- @brief Complete ROS1 ultraarm_communication/ultraArmCoords value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Ultraarm_communicationUltraArmCoords.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Ultraarm_communicationUltraArmCoords.NATIVE_TYPE: Exact normalized native type name ultraarm_communication/ultraArmCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_communication/ultraArmCoords.
--- @brief Ros1Ultraarm_communicationUltraArmCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Ultraarm_communicationUltraArmCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Ultraarm_communicationUltraArmCoords.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros1Ultraarm_communicationUltraArmCoords.MAX_WIRE_BYTES: Inclusive complete maximum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 12 bytes.
--- @brief Construct Ros1Ultraarm_communicationUltraArmCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Ultraarm_communicationUltraArmCoords value New mutable complete value; no ROS resource.
--- @see Ros1Ultraarm_communicationUltraArmCoords.encode
--- @field new fun(values?: table): Ros1Ultraarm_communicationUltraArmCoords
--- @brief Encode a complete Ros1Ultraarm_communicationUltraArmCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Ultraarm_communicationUltraArmCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..12 bytes.
--- @see Ros1Ultraarm_communicationUltraArmCoords.decode
--- @field encode fun(value: Ros1Ultraarm_communicationUltraArmCoords): string
--- @brief Decode exactly one complete Ros1Ultraarm_communicationUltraArmCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Ultraarm_communicationUltraArmCoords value New complete value; failures raise Lua errors.
--- @see Ros1Ultraarm_communicationUltraArmCoords.encode
--- @field decode fun(bytes: string): Ros1Ultraarm_communicationUltraArmCoords
local Ros1Ultraarm_communicationUltraArmCoords = classes["Ros1Ultraarm_communicationUltraArmCoords"]

--- @class Ros1Ultraarm_communicationUltraArmGripperStatus
--- @brief Complete ROS1 ultraarm_communication/ultraArmGripperStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Ultraarm_communicationUltraArmGripperStatus.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmGripperStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Ultraarm_communicationUltraArmGripperStatus.NATIVE_TYPE: Exact normalized native type name ultraarm_communication/ultraArmGripperStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmGripperStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_communication/ultraArmGripperStatus.
--- @brief Ros1Ultraarm_communicationUltraArmGripperStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmGripperStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Ultraarm_communicationUltraArmGripperStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmGripperStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Ultraarm_communicationUltraArmGripperStatus.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmGripperStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Ultraarm_communicationUltraArmGripperStatus.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmGripperStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Ultraarm_communicationUltraArmGripperStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Ultraarm_communicationUltraArmGripperStatus value New mutable complete value; no ROS resource.
--- @see Ros1Ultraarm_communicationUltraArmGripperStatus.encode
--- @field new fun(values?: table): Ros1Ultraarm_communicationUltraArmGripperStatus
--- @brief Encode a complete Ros1Ultraarm_communicationUltraArmGripperStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Ultraarm_communicationUltraArmGripperStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Ultraarm_communicationUltraArmGripperStatus.decode
--- @field encode fun(value: Ros1Ultraarm_communicationUltraArmGripperStatus): string
--- @brief Decode exactly one complete Ros1Ultraarm_communicationUltraArmGripperStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Ultraarm_communicationUltraArmGripperStatus value New complete value; failures raise Lua errors.
--- @see Ros1Ultraarm_communicationUltraArmGripperStatus.encode
--- @field decode fun(bytes: string): Ros1Ultraarm_communicationUltraArmGripperStatus
local Ros1Ultraarm_communicationUltraArmGripperStatus = classes["Ros1Ultraarm_communicationUltraArmGripperStatus"]

--- @class Ros1Ultraarm_communicationUltraArmPumpStatus
--- @brief Complete ROS1 ultraarm_communication/ultraArmPumpStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Ultraarm_communicationUltraArmPumpStatus.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmPumpStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Ultraarm_communicationUltraArmPumpStatus.NATIVE_TYPE: Exact normalized native type name ultraarm_communication/ultraArmPumpStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmPumpStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_communication/ultraArmPumpStatus.
--- @brief Ros1Ultraarm_communicationUltraArmPumpStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmPumpStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Ultraarm_communicationUltraArmPumpStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmPumpStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Ultraarm_communicationUltraArmPumpStatus.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmPumpStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Ultraarm_communicationUltraArmPumpStatus.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmPumpStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Ultraarm_communicationUltraArmPumpStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Ultraarm_communicationUltraArmPumpStatus value New mutable complete value; no ROS resource.
--- @see Ros1Ultraarm_communicationUltraArmPumpStatus.encode
--- @field new fun(values?: table): Ros1Ultraarm_communicationUltraArmPumpStatus
--- @brief Encode a complete Ros1Ultraarm_communicationUltraArmPumpStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Ultraarm_communicationUltraArmPumpStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Ultraarm_communicationUltraArmPumpStatus.decode
--- @field encode fun(value: Ros1Ultraarm_communicationUltraArmPumpStatus): string
--- @brief Decode exactly one complete Ros1Ultraarm_communicationUltraArmPumpStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Ultraarm_communicationUltraArmPumpStatus value New complete value; failures raise Lua errors.
--- @see Ros1Ultraarm_communicationUltraArmPumpStatus.encode
--- @field decode fun(bytes: string): Ros1Ultraarm_communicationUltraArmPumpStatus
local Ros1Ultraarm_communicationUltraArmPumpStatus = classes["Ros1Ultraarm_communicationUltraArmPumpStatus"]

--- @class Ros1Ultraarm_communicationUltraArmSetAngles
--- @brief Complete ROS1 ultraarm_communication/ultraArmSetAngles value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros1Ultraarm_communicationUltraArmSetAngles.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmSetAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Ultraarm_communicationUltraArmSetAngles.NATIVE_TYPE: Exact normalized native type name ultraarm_communication/ultraArmSetAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmSetAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_communication/ultraArmSetAngles.
--- @brief Ros1Ultraarm_communicationUltraArmSetAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmSetAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Ultraarm_communicationUltraArmSetAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmSetAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Ultraarm_communicationUltraArmSetAngles.MIN_WIRE_BYTES: Inclusive complete minimum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmSetAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 13 bytes.
--- @brief Ros1Ultraarm_communicationUltraArmSetAngles.MAX_WIRE_BYTES: Inclusive complete maximum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmSetAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 13 bytes.
--- @brief Construct Ros1Ultraarm_communicationUltraArmSetAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Ultraarm_communicationUltraArmSetAngles value New mutable complete value; no ROS resource.
--- @see Ros1Ultraarm_communicationUltraArmSetAngles.encode
--- @field new fun(values?: table): Ros1Ultraarm_communicationUltraArmSetAngles
--- @brief Encode a complete Ros1Ultraarm_communicationUltraArmSetAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Ultraarm_communicationUltraArmSetAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 13..13 bytes.
--- @see Ros1Ultraarm_communicationUltraArmSetAngles.decode
--- @field encode fun(value: Ros1Ultraarm_communicationUltraArmSetAngles): string
--- @brief Decode exactly one complete Ros1Ultraarm_communicationUltraArmSetAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Ultraarm_communicationUltraArmSetAngles value New complete value; failures raise Lua errors.
--- @see Ros1Ultraarm_communicationUltraArmSetAngles.encode
--- @field decode fun(bytes: string): Ros1Ultraarm_communicationUltraArmSetAngles
local Ros1Ultraarm_communicationUltraArmSetAngles = classes["Ros1Ultraarm_communicationUltraArmSetAngles"]

--- @class Ros1Ultraarm_communicationUltraArmSetCoords
--- @brief Complete ROS1 ultraarm_communication/ultraArmSetCoords value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros1Ultraarm_communicationUltraArmSetCoords.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmSetCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Ultraarm_communicationUltraArmSetCoords.NATIVE_TYPE: Exact normalized native type name ultraarm_communication/ultraArmSetCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmSetCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_communication/ultraArmSetCoords.
--- @brief Ros1Ultraarm_communicationUltraArmSetCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmSetCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Ultraarm_communicationUltraArmSetCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmSetCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Ultraarm_communicationUltraArmSetCoords.MIN_WIRE_BYTES: Inclusive complete minimum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmSetCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 13 bytes.
--- @brief Ros1Ultraarm_communicationUltraArmSetCoords.MAX_WIRE_BYTES: Inclusive complete maximum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationUltraArmSetCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 13 bytes.
--- @brief Construct Ros1Ultraarm_communicationUltraArmSetCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Ultraarm_communicationUltraArmSetCoords value New mutable complete value; no ROS resource.
--- @see Ros1Ultraarm_communicationUltraArmSetCoords.encode
--- @field new fun(values?: table): Ros1Ultraarm_communicationUltraArmSetCoords
--- @brief Encode a complete Ros1Ultraarm_communicationUltraArmSetCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Ultraarm_communicationUltraArmSetCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 13..13 bytes.
--- @see Ros1Ultraarm_communicationUltraArmSetCoords.decode
--- @field encode fun(value: Ros1Ultraarm_communicationUltraArmSetCoords): string
--- @brief Decode exactly one complete Ros1Ultraarm_communicationUltraArmSetCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Ultraarm_communicationUltraArmSetCoords value New complete value; failures raise Lua errors.
--- @see Ros1Ultraarm_communicationUltraArmSetCoords.encode
--- @field decode fun(bytes: string): Ros1Ultraarm_communicationUltraArmSetCoords
local Ros1Ultraarm_communicationUltraArmSetCoords = classes["Ros1Ultraarm_communicationUltraArmSetCoords"]

--- @class Ros1Ultraarm_communicationGetAnglesRequest
--- @brief Complete ROS1 ultraarm_communication/GetAnglesRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Ultraarm_communicationGetAnglesRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetAnglesRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Ultraarm_communicationGetAnglesRequest.NATIVE_TYPE: Exact normalized native type name ultraarm_communication/GetAnglesRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetAnglesRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_communication/GetAnglesRequest.
--- @brief Ros1Ultraarm_communicationGetAnglesRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetAnglesRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Ultraarm_communicationGetAnglesRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetAnglesRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Ultraarm_communicationGetAnglesRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetAnglesRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Ultraarm_communicationGetAnglesRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetAnglesRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Ultraarm_communicationGetAnglesRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Ultraarm_communicationGetAnglesRequest value New mutable complete value; no ROS resource.
--- @see Ros1Ultraarm_communicationGetAnglesRequest.encode
--- @field new fun(values?: table): Ros1Ultraarm_communicationGetAnglesRequest
--- @brief Encode a complete Ros1Ultraarm_communicationGetAnglesRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Ultraarm_communicationGetAnglesRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Ultraarm_communicationGetAnglesRequest.decode
--- @field encode fun(value: Ros1Ultraarm_communicationGetAnglesRequest): string
--- @brief Decode exactly one complete Ros1Ultraarm_communicationGetAnglesRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Ultraarm_communicationGetAnglesRequest value New complete value; failures raise Lua errors.
--- @see Ros1Ultraarm_communicationGetAnglesRequest.encode
--- @field decode fun(bytes: string): Ros1Ultraarm_communicationGetAnglesRequest
local Ros1Ultraarm_communicationGetAnglesRequest = classes["Ros1Ultraarm_communicationGetAnglesRequest"]

--- @class Ros1Ultraarm_communicationGetAnglesResponse
--- @brief Complete ROS1 ultraarm_communication/GetAnglesResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Ultraarm_communicationGetAnglesResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetAnglesResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Ultraarm_communicationGetAnglesResponse.NATIVE_TYPE: Exact normalized native type name ultraarm_communication/GetAnglesResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetAnglesResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_communication/GetAnglesResponse.
--- @brief Ros1Ultraarm_communicationGetAnglesResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetAnglesResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Ultraarm_communicationGetAnglesResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetAnglesResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Ultraarm_communicationGetAnglesResponse.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetAnglesResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros1Ultraarm_communicationGetAnglesResponse.MAX_WIRE_BYTES: Inclusive complete maximum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetAnglesResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 12 bytes.
--- @brief Construct Ros1Ultraarm_communicationGetAnglesResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Ultraarm_communicationGetAnglesResponse value New mutable complete value; no ROS resource.
--- @see Ros1Ultraarm_communicationGetAnglesResponse.encode
--- @field new fun(values?: table): Ros1Ultraarm_communicationGetAnglesResponse
--- @brief Encode a complete Ros1Ultraarm_communicationGetAnglesResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Ultraarm_communicationGetAnglesResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..12 bytes.
--- @see Ros1Ultraarm_communicationGetAnglesResponse.decode
--- @field encode fun(value: Ros1Ultraarm_communicationGetAnglesResponse): string
--- @brief Decode exactly one complete Ros1Ultraarm_communicationGetAnglesResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Ultraarm_communicationGetAnglesResponse value New complete value; failures raise Lua errors.
--- @see Ros1Ultraarm_communicationGetAnglesResponse.encode
--- @field decode fun(bytes: string): Ros1Ultraarm_communicationGetAnglesResponse
local Ros1Ultraarm_communicationGetAnglesResponse = classes["Ros1Ultraarm_communicationGetAnglesResponse"]

--- @class Ros1Ultraarm_communicationGetCoordsRequest
--- @brief Complete ROS1 ultraarm_communication/GetCoordsRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Ultraarm_communicationGetCoordsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetCoordsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Ultraarm_communicationGetCoordsRequest.NATIVE_TYPE: Exact normalized native type name ultraarm_communication/GetCoordsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetCoordsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_communication/GetCoordsRequest.
--- @brief Ros1Ultraarm_communicationGetCoordsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetCoordsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Ultraarm_communicationGetCoordsRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetCoordsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Ultraarm_communicationGetCoordsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetCoordsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Ultraarm_communicationGetCoordsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetCoordsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Ultraarm_communicationGetCoordsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Ultraarm_communicationGetCoordsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Ultraarm_communicationGetCoordsRequest.encode
--- @field new fun(values?: table): Ros1Ultraarm_communicationGetCoordsRequest
--- @brief Encode a complete Ros1Ultraarm_communicationGetCoordsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Ultraarm_communicationGetCoordsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Ultraarm_communicationGetCoordsRequest.decode
--- @field encode fun(value: Ros1Ultraarm_communicationGetCoordsRequest): string
--- @brief Decode exactly one complete Ros1Ultraarm_communicationGetCoordsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Ultraarm_communicationGetCoordsRequest value New complete value; failures raise Lua errors.
--- @see Ros1Ultraarm_communicationGetCoordsRequest.encode
--- @field decode fun(bytes: string): Ros1Ultraarm_communicationGetCoordsRequest
local Ros1Ultraarm_communicationGetCoordsRequest = classes["Ros1Ultraarm_communicationGetCoordsRequest"]

--- @class Ros1Ultraarm_communicationGetCoordsResponse
--- @brief Complete ROS1 ultraarm_communication/GetCoordsResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Ultraarm_communicationGetCoordsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetCoordsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Ultraarm_communicationGetCoordsResponse.NATIVE_TYPE: Exact normalized native type name ultraarm_communication/GetCoordsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetCoordsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_communication/GetCoordsResponse.
--- @brief Ros1Ultraarm_communicationGetCoordsResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetCoordsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Ultraarm_communicationGetCoordsResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetCoordsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Ultraarm_communicationGetCoordsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetCoordsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros1Ultraarm_communicationGetCoordsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGetCoordsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 12 bytes.
--- @brief Construct Ros1Ultraarm_communicationGetCoordsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Ultraarm_communicationGetCoordsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Ultraarm_communicationGetCoordsResponse.encode
--- @field new fun(values?: table): Ros1Ultraarm_communicationGetCoordsResponse
--- @brief Encode a complete Ros1Ultraarm_communicationGetCoordsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Ultraarm_communicationGetCoordsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..12 bytes.
--- @see Ros1Ultraarm_communicationGetCoordsResponse.decode
--- @field encode fun(value: Ros1Ultraarm_communicationGetCoordsResponse): string
--- @brief Decode exactly one complete Ros1Ultraarm_communicationGetCoordsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Ultraarm_communicationGetCoordsResponse value New complete value; failures raise Lua errors.
--- @see Ros1Ultraarm_communicationGetCoordsResponse.encode
--- @field decode fun(bytes: string): Ros1Ultraarm_communicationGetCoordsResponse
local Ros1Ultraarm_communicationGetCoordsResponse = classes["Ros1Ultraarm_communicationGetCoordsResponse"]

--- @class Ros1Ultraarm_communicationGripperStatusRequest
--- @brief Complete ROS1 ultraarm_communication/GripperStatusRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Ultraarm_communicationGripperStatusRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGripperStatusRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Ultraarm_communicationGripperStatusRequest.NATIVE_TYPE: Exact normalized native type name ultraarm_communication/GripperStatusRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGripperStatusRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_communication/GripperStatusRequest.
--- @brief Ros1Ultraarm_communicationGripperStatusRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGripperStatusRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Ultraarm_communicationGripperStatusRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGripperStatusRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Ultraarm_communicationGripperStatusRequest.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGripperStatusRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Ultraarm_communicationGripperStatusRequest.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGripperStatusRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Ultraarm_communicationGripperStatusRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Ultraarm_communicationGripperStatusRequest value New mutable complete value; no ROS resource.
--- @see Ros1Ultraarm_communicationGripperStatusRequest.encode
--- @field new fun(values?: table): Ros1Ultraarm_communicationGripperStatusRequest
--- @brief Encode a complete Ros1Ultraarm_communicationGripperStatusRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Ultraarm_communicationGripperStatusRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Ultraarm_communicationGripperStatusRequest.decode
--- @field encode fun(value: Ros1Ultraarm_communicationGripperStatusRequest): string
--- @brief Decode exactly one complete Ros1Ultraarm_communicationGripperStatusRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Ultraarm_communicationGripperStatusRequest value New complete value; failures raise Lua errors.
--- @see Ros1Ultraarm_communicationGripperStatusRequest.encode
--- @field decode fun(bytes: string): Ros1Ultraarm_communicationGripperStatusRequest
local Ros1Ultraarm_communicationGripperStatusRequest = classes["Ros1Ultraarm_communicationGripperStatusRequest"]

--- @class Ros1Ultraarm_communicationGripperStatusResponse
--- @brief Complete ROS1 ultraarm_communication/GripperStatusResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Ultraarm_communicationGripperStatusResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGripperStatusResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Ultraarm_communicationGripperStatusResponse.NATIVE_TYPE: Exact normalized native type name ultraarm_communication/GripperStatusResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGripperStatusResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_communication/GripperStatusResponse.
--- @brief Ros1Ultraarm_communicationGripperStatusResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGripperStatusResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Ultraarm_communicationGripperStatusResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGripperStatusResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Ultraarm_communicationGripperStatusResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGripperStatusResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Ultraarm_communicationGripperStatusResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationGripperStatusResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Ultraarm_communicationGripperStatusResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Ultraarm_communicationGripperStatusResponse value New mutable complete value; no ROS resource.
--- @see Ros1Ultraarm_communicationGripperStatusResponse.encode
--- @field new fun(values?: table): Ros1Ultraarm_communicationGripperStatusResponse
--- @brief Encode a complete Ros1Ultraarm_communicationGripperStatusResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Ultraarm_communicationGripperStatusResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Ultraarm_communicationGripperStatusResponse.decode
--- @field encode fun(value: Ros1Ultraarm_communicationGripperStatusResponse): string
--- @brief Decode exactly one complete Ros1Ultraarm_communicationGripperStatusResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Ultraarm_communicationGripperStatusResponse value New complete value; failures raise Lua errors.
--- @see Ros1Ultraarm_communicationGripperStatusResponse.encode
--- @field decode fun(bytes: string): Ros1Ultraarm_communicationGripperStatusResponse
local Ros1Ultraarm_communicationGripperStatusResponse = classes["Ros1Ultraarm_communicationGripperStatusResponse"]

--- @class Ros1Ultraarm_communicationPumpStatusRequest
--- @brief Complete ROS1 ultraarm_communication/PumpStatusRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Ultraarm_communicationPumpStatusRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationPumpStatusRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Ultraarm_communicationPumpStatusRequest.NATIVE_TYPE: Exact normalized native type name ultraarm_communication/PumpStatusRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationPumpStatusRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_communication/PumpStatusRequest.
--- @brief Ros1Ultraarm_communicationPumpStatusRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationPumpStatusRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Ultraarm_communicationPumpStatusRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationPumpStatusRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Ultraarm_communicationPumpStatusRequest.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationPumpStatusRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Ultraarm_communicationPumpStatusRequest.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationPumpStatusRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Ultraarm_communicationPumpStatusRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Ultraarm_communicationPumpStatusRequest value New mutable complete value; no ROS resource.
--- @see Ros1Ultraarm_communicationPumpStatusRequest.encode
--- @field new fun(values?: table): Ros1Ultraarm_communicationPumpStatusRequest
--- @brief Encode a complete Ros1Ultraarm_communicationPumpStatusRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Ultraarm_communicationPumpStatusRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Ultraarm_communicationPumpStatusRequest.decode
--- @field encode fun(value: Ros1Ultraarm_communicationPumpStatusRequest): string
--- @brief Decode exactly one complete Ros1Ultraarm_communicationPumpStatusRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Ultraarm_communicationPumpStatusRequest value New complete value; failures raise Lua errors.
--- @see Ros1Ultraarm_communicationPumpStatusRequest.encode
--- @field decode fun(bytes: string): Ros1Ultraarm_communicationPumpStatusRequest
local Ros1Ultraarm_communicationPumpStatusRequest = classes["Ros1Ultraarm_communicationPumpStatusRequest"]

--- @class Ros1Ultraarm_communicationPumpStatusResponse
--- @brief Complete ROS1 ultraarm_communication/PumpStatusResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Ultraarm_communicationPumpStatusResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationPumpStatusResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Ultraarm_communicationPumpStatusResponse.NATIVE_TYPE: Exact normalized native type name ultraarm_communication/PumpStatusResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationPumpStatusResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_communication/PumpStatusResponse.
--- @brief Ros1Ultraarm_communicationPumpStatusResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationPumpStatusResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Ultraarm_communicationPumpStatusResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationPumpStatusResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Ultraarm_communicationPumpStatusResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationPumpStatusResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Ultraarm_communicationPumpStatusResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationPumpStatusResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Ultraarm_communicationPumpStatusResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Ultraarm_communicationPumpStatusResponse value New mutable complete value; no ROS resource.
--- @see Ros1Ultraarm_communicationPumpStatusResponse.encode
--- @field new fun(values?: table): Ros1Ultraarm_communicationPumpStatusResponse
--- @brief Encode a complete Ros1Ultraarm_communicationPumpStatusResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Ultraarm_communicationPumpStatusResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Ultraarm_communicationPumpStatusResponse.decode
--- @field encode fun(value: Ros1Ultraarm_communicationPumpStatusResponse): string
--- @brief Decode exactly one complete Ros1Ultraarm_communicationPumpStatusResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Ultraarm_communicationPumpStatusResponse value New complete value; failures raise Lua errors.
--- @see Ros1Ultraarm_communicationPumpStatusResponse.encode
--- @field decode fun(bytes: string): Ros1Ultraarm_communicationPumpStatusResponse
local Ros1Ultraarm_communicationPumpStatusResponse = classes["Ros1Ultraarm_communicationPumpStatusResponse"]

--- @class Ros1Ultraarm_communicationSetAnglesRequest
--- @brief Complete ROS1 ultraarm_communication/SetAnglesRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros1Ultraarm_communicationSetAnglesRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetAnglesRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Ultraarm_communicationSetAnglesRequest.NATIVE_TYPE: Exact normalized native type name ultraarm_communication/SetAnglesRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetAnglesRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_communication/SetAnglesRequest.
--- @brief Ros1Ultraarm_communicationSetAnglesRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetAnglesRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Ultraarm_communicationSetAnglesRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetAnglesRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Ultraarm_communicationSetAnglesRequest.MIN_WIRE_BYTES: Inclusive complete minimum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetAnglesRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 13 bytes.
--- @brief Ros1Ultraarm_communicationSetAnglesRequest.MAX_WIRE_BYTES: Inclusive complete maximum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetAnglesRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 13 bytes.
--- @brief Construct Ros1Ultraarm_communicationSetAnglesRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Ultraarm_communicationSetAnglesRequest value New mutable complete value; no ROS resource.
--- @see Ros1Ultraarm_communicationSetAnglesRequest.encode
--- @field new fun(values?: table): Ros1Ultraarm_communicationSetAnglesRequest
--- @brief Encode a complete Ros1Ultraarm_communicationSetAnglesRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Ultraarm_communicationSetAnglesRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 13..13 bytes.
--- @see Ros1Ultraarm_communicationSetAnglesRequest.decode
--- @field encode fun(value: Ros1Ultraarm_communicationSetAnglesRequest): string
--- @brief Decode exactly one complete Ros1Ultraarm_communicationSetAnglesRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Ultraarm_communicationSetAnglesRequest value New complete value; failures raise Lua errors.
--- @see Ros1Ultraarm_communicationSetAnglesRequest.encode
--- @field decode fun(bytes: string): Ros1Ultraarm_communicationSetAnglesRequest
local Ros1Ultraarm_communicationSetAnglesRequest = classes["Ros1Ultraarm_communicationSetAnglesRequest"]

--- @class Ros1Ultraarm_communicationSetAnglesResponse
--- @brief Complete ROS1 ultraarm_communication/SetAnglesResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Ultraarm_communicationSetAnglesResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetAnglesResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Ultraarm_communicationSetAnglesResponse.NATIVE_TYPE: Exact normalized native type name ultraarm_communication/SetAnglesResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetAnglesResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_communication/SetAnglesResponse.
--- @brief Ros1Ultraarm_communicationSetAnglesResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetAnglesResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Ultraarm_communicationSetAnglesResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetAnglesResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Ultraarm_communicationSetAnglesResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetAnglesResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Ultraarm_communicationSetAnglesResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetAnglesResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Ultraarm_communicationSetAnglesResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Ultraarm_communicationSetAnglesResponse value New mutable complete value; no ROS resource.
--- @see Ros1Ultraarm_communicationSetAnglesResponse.encode
--- @field new fun(values?: table): Ros1Ultraarm_communicationSetAnglesResponse
--- @brief Encode a complete Ros1Ultraarm_communicationSetAnglesResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Ultraarm_communicationSetAnglesResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Ultraarm_communicationSetAnglesResponse.decode
--- @field encode fun(value: Ros1Ultraarm_communicationSetAnglesResponse): string
--- @brief Decode exactly one complete Ros1Ultraarm_communicationSetAnglesResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Ultraarm_communicationSetAnglesResponse value New complete value; failures raise Lua errors.
--- @see Ros1Ultraarm_communicationSetAnglesResponse.encode
--- @field decode fun(bytes: string): Ros1Ultraarm_communicationSetAnglesResponse
local Ros1Ultraarm_communicationSetAnglesResponse = classes["Ros1Ultraarm_communicationSetAnglesResponse"]

--- @class Ros1Ultraarm_communicationSetCoordsRequest
--- @brief Complete ROS1 ultraarm_communication/SetCoordsRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros1Ultraarm_communicationSetCoordsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetCoordsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Ultraarm_communicationSetCoordsRequest.NATIVE_TYPE: Exact normalized native type name ultraarm_communication/SetCoordsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetCoordsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_communication/SetCoordsRequest.
--- @brief Ros1Ultraarm_communicationSetCoordsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetCoordsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Ultraarm_communicationSetCoordsRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetCoordsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Ultraarm_communicationSetCoordsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetCoordsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 13 bytes.
--- @brief Ros1Ultraarm_communicationSetCoordsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetCoordsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 13 bytes.
--- @brief Construct Ros1Ultraarm_communicationSetCoordsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Ultraarm_communicationSetCoordsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Ultraarm_communicationSetCoordsRequest.encode
--- @field new fun(values?: table): Ros1Ultraarm_communicationSetCoordsRequest
--- @brief Encode a complete Ros1Ultraarm_communicationSetCoordsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Ultraarm_communicationSetCoordsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 13..13 bytes.
--- @see Ros1Ultraarm_communicationSetCoordsRequest.decode
--- @field encode fun(value: Ros1Ultraarm_communicationSetCoordsRequest): string
--- @brief Decode exactly one complete Ros1Ultraarm_communicationSetCoordsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Ultraarm_communicationSetCoordsRequest value New complete value; failures raise Lua errors.
--- @see Ros1Ultraarm_communicationSetCoordsRequest.encode
--- @field decode fun(bytes: string): Ros1Ultraarm_communicationSetCoordsRequest
local Ros1Ultraarm_communicationSetCoordsRequest = classes["Ros1Ultraarm_communicationSetCoordsRequest"]

--- @class Ros1Ultraarm_communicationSetCoordsResponse
--- @brief Complete ROS1 ultraarm_communication/SetCoordsResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Ultraarm_communicationSetCoordsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetCoordsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Ultraarm_communicationSetCoordsResponse.NATIVE_TYPE: Exact normalized native type name ultraarm_communication/SetCoordsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetCoordsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name ultraarm_communication/SetCoordsResponse.
--- @brief Ros1Ultraarm_communicationSetCoordsResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetCoordsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Ultraarm_communicationSetCoordsResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetCoordsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Ultraarm_communicationSetCoordsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetCoordsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Ultraarm_communicationSetCoordsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Ultraarm_communicationSetCoordsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Ultraarm_communicationSetCoordsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Ultraarm_communicationSetCoordsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Ultraarm_communicationSetCoordsResponse.encode
--- @field new fun(values?: table): Ros1Ultraarm_communicationSetCoordsResponse
--- @brief Encode a complete Ros1Ultraarm_communicationSetCoordsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Ultraarm_communicationSetCoordsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Ultraarm_communicationSetCoordsResponse.decode
--- @field encode fun(value: Ros1Ultraarm_communicationSetCoordsResponse): string
--- @brief Decode exactly one complete Ros1Ultraarm_communicationSetCoordsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Ultraarm_communicationSetCoordsResponse value New complete value; failures raise Lua errors.
--- @see Ros1Ultraarm_communicationSetCoordsResponse.encode
--- @field decode fun(bytes: string): Ros1Ultraarm_communicationSetCoordsResponse
local Ros1Ultraarm_communicationSetCoordsResponse = classes["Ros1Ultraarm_communicationSetCoordsResponse"]

return classes, by_name
