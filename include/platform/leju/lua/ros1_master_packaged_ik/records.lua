--- @file records.lua
--- @brief Preserve every original vendor record, field and complete canonical identity.
--- @details Requires the one shared genuine Lua 5.4 engine and common wire module.
--- Values are caller-owned; no schema creates a resource or grants authority.
local wire = require("roswasm/wire")
local schemas = {
    {
        ["symbol"] = "Ros1Motion_capture_ikArmHandPose",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7cc97650a6f0bedb8bdbc0cc534eb422e8585c69f5b0ae92b6d4f213a2d90f08",
        ["minimum"] = 136,
        ["maximum"] = 136,
        ["semantics"] = "",
        ["ros_version"] = 1,
        ["native_type"] = "motion_capture_ik/armHandPose",
        ["constants"] = {

        },
        ["fields"] = {
            {
                ["name"] = "pos_xyz",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 3,
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
                ["name"] = "quat_xyzw",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 4,
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
                ["name"] = "elbow_pos_xyz",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 3,
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
                ["name"] = "joint_angles",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
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
        }
    },
    {
        ["symbol"] = "Ros1Motion_capture_ikArmHandPoseFree",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b46b274661ac382698a9bf1016ca647aecc41df8312020b740d73a87d2513caf",
        ["minimum"] = 84,
        ["maximum"] = 212,
        ["semantics"] = "",
        ["ros_version"] = 1,
        ["native_type"] = "motion_capture_ik/armHandPoseFree",
        ["constants"] = {

        },
        ["fields"] = {
            {
                ["name"] = "pos_xyz",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 3,
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
                ["name"] = "quat_xyzw",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 4,
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
                ["name"] = "elbow_pos_xyz",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 3,
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
                ["name"] = "joint_angles",
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
        }
    },
    {
        ["symbol"] = "Ros1Motion_capture_ikChangeArmCtrlModeRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b73d3ed01f402673124afd1c6677ced89b5b55d207a1e8c4ff1312941fc00bbd",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["ros_version"] = 1,
        ["native_type"] = "motion_capture_ik/changeArmCtrlModeRequest",
        ["constants"] = {

        },
        ["fields"] = {
            {
                ["name"] = "control_mode",
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
        }
    },
    {
        ["symbol"] = "Ros1Motion_capture_ikChangeArmCtrlModeResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_aee11b3bf042b1e989f7ed00d2f8e72821cfd8b6ee8232e14848ccf8ee754aac",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["ros_version"] = 1,
        ["native_type"] = "motion_capture_ik/changeArmCtrlModeResponse",
        ["constants"] = {

        },
        ["fields"] = {
            {
                ["name"] = "result",
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
        }
    },
    {
        ["symbol"] = "Ros1Motion_capture_ikHandPose",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_dc924e15f38aa45188532c325292b2f9e3827f3dfa94ff946e30aa51f4fbee5f",
        ["minimum"] = 48,
        ["maximum"] = 48,
        ["semantics"] = "",
        ["ros_version"] = 1,
        ["native_type"] = "motion_capture_ik/handPose",
        ["constants"] = {

        },
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
                ["name"] = "roll",
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
                ["name"] = "pitch",
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
                ["name"] = "yaw",
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
        }
    },
    {
        ["symbol"] = "Ros1Motion_capture_ikIkSolveError",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a20039cf8bf301a7ef643884130619c2ceb96c1c91ed15482dd6f582917e1e94",
        ["minimum"] = 100,
        ["maximum"] = 356,
        ["semantics"] = "",
        ["ros_version"] = 1,
        ["native_type"] = "motion_capture_ik/ikSolveError",
        ["constants"] = {

        },
        ["fields"] = {
            {
                ["name"] = "ik_type",
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
                ["name"] = "left_pose_error",
                ["type"] = "Ros1Motion_capture_ikHandPose",
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
                ["name"] = "right_pose_error",
                ["type"] = "Ros1Motion_capture_ikHandPose",
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
        }
    },
    {
        ["symbol"] = "Ros1Motion_capture_ikIkSolveParam",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8058ba64ed6070b821470b5560062e78f2ef0fa09169e7a249b584d2d158d981",
        ["minimum"] = 56,
        ["maximum"] = 56,
        ["semantics"] = "",
        ["ros_version"] = 1,
        ["native_type"] = "motion_capture_ik/ikSolveParam",
        ["constants"] = {

        },
        ["fields"] = {
            {
                ["name"] = "major_optimality_tol",
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
                ["name"] = "major_feasibility_tol",
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
                ["name"] = "minor_feasibility_tol",
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
                ["name"] = "major_iterations_limit",
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
                ["name"] = "oritation_constraint_tol",
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
                ["name"] = "pos_constraint_tol",
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
                ["name"] = "pos_cost_weight",
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
        }
    },
    {
        ["symbol"] = "Ros1Motion_capture_ikRecordArmHandPose",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_815baf88f4e7fdf82316c06aa2baacbc2f30160c53eb73de10dfcbc1ecda2b4a",
        ["minimum"] = 272,
        ["maximum"] = 272,
        ["semantics"] = "",
        ["ros_version"] = 1,
        ["native_type"] = "motion_capture_ik/recordArmHandPose",
        ["constants"] = {

        },
        ["fields"] = {
            {
                ["name"] = "left_pose",
                ["type"] = "Ros1Motion_capture_ikArmHandPose",
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
                ["element_minimum"] = 136
            },
            {
                ["name"] = "right_pose",
                ["type"] = "Ros1Motion_capture_ikArmHandPose",
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
                ["element_minimum"] = 136
            }
        }
    },
    {
        ["symbol"] = "Ros1Motion_capture_ikRecordArmHandPoseFree",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_895dcfe228b573faa0911f4c5ca89094cae4497c06b57ba9b827356e62071811",
        ["minimum"] = 168,
        ["maximum"] = 424,
        ["semantics"] = "",
        ["ros_version"] = 1,
        ["native_type"] = "motion_capture_ik/recordArmHandPoseFree",
        ["constants"] = {

        },
        ["fields"] = {
            {
                ["name"] = "left_pose",
                ["type"] = "Ros1Motion_capture_ikArmHandPoseFree",
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
                ["element_minimum"] = 84
            },
            {
                ["name"] = "right_pose",
                ["type"] = "Ros1Motion_capture_ikArmHandPoseFree",
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
                ["element_minimum"] = 84
            }
        }
    },
    {
        ["symbol"] = "Ros1Motion_capture_ikRobotArmQVVD",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c5cfc8e6be023981b9b846a4e676e456a407479a9428f4fbe43e1af9df17fbbb",
        ["minimum"] = 12,
        ["maximum"] = 396,
        ["semantics"] = "",
        ["ros_version"] = 1,
        ["native_type"] = "motion_capture_ik/robotArmQVVD",
        ["constants"] = {

        },
        ["fields"] = {
            {
                ["name"] = "q",
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
            },
            {
                ["name"] = "v",
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
            },
            {
                ["name"] = "vd",
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
        }
    },
    {
        ["symbol"] = "Ros1Time",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "normalized-time",
        ["ros_version"] = 1,
        ["native_type"] = "time",
        ["constants"] = {

        },
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
        }
    },
    {
        ["symbol"] = "Ros1Std_msgsHeader",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7",
        ["minimum"] = 16,
        ["maximum"] = 272,
        ["semantics"] = "",
        ["ros_version"] = 1,
        ["native_type"] = "std_msgs/Header",
        ["constants"] = {

        },
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
        }
    },
    {
        ["symbol"] = "Ros1Motion_capture_ikRobotHandPosition",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_16c4f8c128cde34eba2cf878bad0706916193ba3b54f02dcd1e4556128e3b0aa",
        ["minimum"] = 24,
        ["maximum"] = 792,
        ["semantics"] = "",
        ["ros_version"] = 1,
        ["native_type"] = "motion_capture_ik/robotHandPosition",
        ["constants"] = {

        },
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
                ["name"] = "left_hand_position",
                ["type"] = "uint8",
                ["array"] = "sequence",
                ["count"] = 256,
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
                ["name"] = "right_hand_position",
                ["type"] = "uint8",
                ["array"] = "sequence",
                ["count"] = 256,
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
        }
    },
    {
        ["symbol"] = "Ros1Motion_capture_ikTwoArmHandPose",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_12c87f2d727015a1dd0d5c344812528ae43bfd48168fdaa68bac006fe0bbc181",
        ["minimum"] = 288,
        ["maximum"] = 544,
        ["semantics"] = "",
        ["ros_version"] = 1,
        ["native_type"] = "motion_capture_ik/twoArmHandPose",
        ["constants"] = {

        },
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
                ["name"] = "left_pose",
                ["type"] = "Ros1Motion_capture_ikArmHandPose",
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
                ["element_minimum"] = 136
            },
            {
                ["name"] = "right_pose",
                ["type"] = "Ros1Motion_capture_ikArmHandPose",
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
                ["element_minimum"] = 136
            }
        }
    },
    {
        ["symbol"] = "Ros1Motion_capture_ikTwoArmHandPoseCmd",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_aa53de9aca25b5e5ad518a3e3fd6a36f9501d620da4fbd56721a15b693ce6acc",
        ["minimum"] = 346,
        ["maximum"] = 602,
        ["semantics"] = "",
        ["ros_version"] = 1,
        ["native_type"] = "motion_capture_ik/twoArmHandPoseCmd",
        ["constants"] = {

        },
        ["fields"] = {
            {
                ["name"] = "hand_poses",
                ["type"] = "Ros1Motion_capture_ikTwoArmHandPose",
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
                ["element_minimum"] = 288
            },
            {
                ["name"] = "use_custom_ik_param",
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
                ["name"] = "joint_angles_as_q0",
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
                ["name"] = "ik_param",
                ["type"] = "Ros1Motion_capture_ikIkSolveParam",
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
        }
    },
    {
        ["symbol"] = "Ros1Motion_capture_ikTwoArmHandPoseFree",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2b0e1aadf4405084b26888548a9c33bb9be57ec8f606122857a3b18c2a6f572c",
        ["minimum"] = 184,
        ["maximum"] = 696,
        ["semantics"] = "",
        ["ros_version"] = 1,
        ["native_type"] = "motion_capture_ik/twoArmHandPoseFree",
        ["constants"] = {

        },
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
                ["name"] = "left_pose",
                ["type"] = "Ros1Motion_capture_ikArmHandPoseFree",
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
                ["element_minimum"] = 84
            },
            {
                ["name"] = "right_pose",
                ["type"] = "Ros1Motion_capture_ikArmHandPoseFree",
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
                ["element_minimum"] = 84
            }
        }
    },
    {
        ["symbol"] = "Ros1Motion_capture_ikTwoArmHandPoseCmdFree",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_425b1b5b856ec8d0d019829cf48728723199ff79e2b6fa5aaa3f045f1c4f8773",
        ["minimum"] = 242,
        ["maximum"] = 754,
        ["semantics"] = "",
        ["ros_version"] = 1,
        ["native_type"] = "motion_capture_ik/twoArmHandPoseCmdFree",
        ["constants"] = {

        },
        ["fields"] = {
            {
                ["name"] = "hand_poses",
                ["type"] = "Ros1Motion_capture_ikTwoArmHandPoseFree",
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
                ["element_minimum"] = 184
            },
            {
                ["name"] = "use_custom_ik_param",
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
                ["name"] = "joint_angles_as_q0",
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
                ["name"] = "ik_param",
                ["type"] = "Ros1Motion_capture_ikIkSolveParam",
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
        }
    }
}
local records = wire.records(schemas)
return records
