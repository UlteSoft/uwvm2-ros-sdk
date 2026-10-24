# @file records.R
# @brief All 17 complete original ROS 1 vendor values.
# @details The module exposes only an ordinary owned namespace list.
UwvmLejuRos1BetaPackagedIk <- local({
    schemas <- list(
        list(
            `symbol` = "Ros1Motion_capture_ikArmHandPose",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_7cc97650a6f0bedb8bdbc0cc534eb422e8585c69f5b0ae92b6d4f213a2d90f08",
            `minimum` = 136,
            `maximum` = 136,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "motion_capture_ik/armHandPose",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "pos_xyz",
                    `type` = "float64",
                    `array` = "array",
                    `count` = 3,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "quat_xyzw",
                    `type` = "float64",
                    `array` = "array",
                    `count` = 4,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "elbow_pos_xyz",
                    `type` = "float64",
                    `array` = "array",
                    `count` = 3,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "joint_angles",
                    `type` = "float64",
                    `array` = "array",
                    `count` = 7,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros1Motion_capture_ikArmHandPoseFree",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b46b274661ac382698a9bf1016ca647aecc41df8312020b740d73a87d2513caf",
            `minimum` = 84,
            `maximum` = 212,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "motion_capture_ik/armHandPoseFree",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "pos_xyz",
                    `type` = "float64",
                    `array` = "array",
                    `count` = 3,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "quat_xyzw",
                    `type` = "float64",
                    `array` = "array",
                    `count` = 4,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "elbow_pos_xyz",
                    `type` = "float64",
                    `array` = "array",
                    `count` = 3,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "joint_angles",
                    `type` = "float64",
                    `array` = "sequence",
                    `count` = 16,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros1Motion_capture_ikChangeArmCtrlModeRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b73d3ed01f402673124afd1c6677ced89b5b55d207a1e8c4ff1312941fc00bbd",
            `minimum` = 1,
            `maximum` = 1,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "motion_capture_ik/changeArmCtrlModeRequest",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "control_mode",
                    `type` = "bool",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                )
            )
        ),
        list(
            `symbol` = "Ros1Motion_capture_ikChangeArmCtrlModeResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_aee11b3bf042b1e989f7ed00d2f8e72821cfd8b6ee8232e14848ccf8ee754aac",
            `minimum` = 1,
            `maximum` = 1,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "motion_capture_ik/changeArmCtrlModeResponse",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "result",
                    `type` = "bool",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                )
            )
        ),
        list(
            `symbol` = "Ros1Motion_capture_ikHandPose",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_dc924e15f38aa45188532c325292b2f9e3827f3dfa94ff946e30aa51f4fbee5f",
            `minimum` = 48,
            `maximum` = 48,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "motion_capture_ik/handPose",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "x",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "y",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "z",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "roll",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "pitch",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "yaw",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros1Motion_capture_ikIkSolveError",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_a20039cf8bf301a7ef643884130619c2ceb96c1c91ed15482dd6f582917e1e94",
            `minimum` = 100,
            `maximum` = 356,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "motion_capture_ik/ikSolveError",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "ik_type",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 256,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "left_pose_error",
                    `type` = "Ros1Motion_capture_ikHandPose",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 48
                ),
                list(
                    `name` = "right_pose_error",
                    `type` = "Ros1Motion_capture_ikHandPose",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 48
                )
            )
        ),
        list(
            `symbol` = "Ros1Motion_capture_ikIkSolveParam",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_8058ba64ed6070b821470b5560062e78f2ef0fa09169e7a249b584d2d158d981",
            `minimum` = 56,
            `maximum` = 56,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "motion_capture_ik/ikSolveParam",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "major_optimality_tol",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "major_feasibility_tol",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "minor_feasibility_tol",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "major_iterations_limit",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "oritation_constraint_tol",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "pos_constraint_tol",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "pos_cost_weight",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros1Motion_capture_ikRecordArmHandPose",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_815baf88f4e7fdf82316c06aa2baacbc2f30160c53eb73de10dfcbc1ecda2b4a",
            `minimum` = 272,
            `maximum` = 272,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "motion_capture_ik/recordArmHandPose",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "left_pose",
                    `type` = "Ros1Motion_capture_ikArmHandPose",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 136
                ),
                list(
                    `name` = "right_pose",
                    `type` = "Ros1Motion_capture_ikArmHandPose",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 136
                )
            )
        ),
        list(
            `symbol` = "Ros1Motion_capture_ikRecordArmHandPoseFree",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_895dcfe228b573faa0911f4c5ca89094cae4497c06b57ba9b827356e62071811",
            `minimum` = 168,
            `maximum` = 424,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "motion_capture_ik/recordArmHandPoseFree",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "left_pose",
                    `type` = "Ros1Motion_capture_ikArmHandPoseFree",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 84
                ),
                list(
                    `name` = "right_pose",
                    `type` = "Ros1Motion_capture_ikArmHandPoseFree",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 84
                )
            )
        ),
        list(
            `symbol` = "Ros1Motion_capture_ikRobotArmQVVD",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_c5cfc8e6be023981b9b846a4e676e456a407479a9428f4fbe43e1af9df17fbbb",
            `minimum` = 12,
            `maximum` = 396,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "motion_capture_ik/robotArmQVVD",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "q",
                    `type` = "float64",
                    `array` = "sequence",
                    `count` = 16,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "v",
                    `type` = "float64",
                    `array` = "sequence",
                    `count` = 16,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "vd",
                    `type` = "float64",
                    `array` = "sequence",
                    `count` = 16,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros1Time",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "normalized-time",
            `ros_version` = 1,
            `native_type` = "time",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sec",
                    `type` = "uint32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "nsec",
                    `type` = "uint32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros1Std_msgsHeader",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7",
            `minimum` = 16,
            `maximum` = 272,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "std_msgs/Header",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "seq",
                    `type` = "uint32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "stamp",
                    `type` = "Ros1Time",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "frame_id",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 256,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros1Motion_capture_ikRobotHandPosition",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_16c4f8c128cde34eba2cf878bad0706916193ba3b54f02dcd1e4556128e3b0aa",
            `minimum` = 24,
            `maximum` = 792,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "motion_capture_ik/robotHandPosition",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros1Std_msgsHeader",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 16
                ),
                list(
                    `name` = "left_hand_position",
                    `type` = "uint8",
                    `array` = "sequence",
                    `count` = 256,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "right_hand_position",
                    `type` = "uint8",
                    `array` = "sequence",
                    `count` = 256,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                )
            )
        ),
        list(
            `symbol` = "Ros1Motion_capture_ikTwoArmHandPose",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_12c87f2d727015a1dd0d5c344812528ae43bfd48168fdaa68bac006fe0bbc181",
            `minimum` = 288,
            `maximum` = 544,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "motion_capture_ik/twoArmHandPose",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros1Std_msgsHeader",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 16
                ),
                list(
                    `name` = "left_pose",
                    `type` = "Ros1Motion_capture_ikArmHandPose",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 136
                ),
                list(
                    `name` = "right_pose",
                    `type` = "Ros1Motion_capture_ikArmHandPose",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 136
                )
            )
        ),
        list(
            `symbol` = "Ros1Motion_capture_ikTwoArmHandPoseCmd",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_aa53de9aca25b5e5ad518a3e3fd6a36f9501d620da4fbd56721a15b693ce6acc",
            `minimum` = 346,
            `maximum` = 602,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "motion_capture_ik/twoArmHandPoseCmd",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "hand_poses",
                    `type` = "Ros1Motion_capture_ikTwoArmHandPose",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 288
                ),
                list(
                    `name` = "use_custom_ik_param",
                    `type` = "bool",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "joint_angles_as_q0",
                    `type` = "bool",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "ik_param",
                    `type` = "Ros1Motion_capture_ikIkSolveParam",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 56
                )
            )
        ),
        list(
            `symbol` = "Ros1Motion_capture_ikTwoArmHandPoseFree",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_2b0e1aadf4405084b26888548a9c33bb9be57ec8f606122857a3b18c2a6f572c",
            `minimum` = 184,
            `maximum` = 696,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "motion_capture_ik/twoArmHandPoseFree",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros1Std_msgsHeader",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 16
                ),
                list(
                    `name` = "left_pose",
                    `type` = "Ros1Motion_capture_ikArmHandPoseFree",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 84
                ),
                list(
                    `name` = "right_pose",
                    `type` = "Ros1Motion_capture_ikArmHandPoseFree",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 84
                )
            )
        ),
        list(
            `symbol` = "Ros1Motion_capture_ikTwoArmHandPoseCmdFree",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_425b1b5b856ec8d0d019829cf48728723199ff79e2b6fa5aaa3f045f1c4f8773",
            `minimum` = 242,
            `maximum` = 754,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "motion_capture_ik/twoArmHandPoseCmdFree",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "hand_poses",
                    `type` = "Ros1Motion_capture_ikTwoArmHandPoseFree",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 184
                ),
                list(
                    `name` = "use_custom_ik_param",
                    `type` = "bool",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "joint_angles_as_q0",
                    `type` = "bool",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "ik_param",
                    `type` = "Ros1Motion_capture_ikIkSolveParam",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 56
                )
            )
        )
    )
    list(records = UwvmRos$records(schemas), interfaces = list(
        `motion_capture_ik/armHandPose` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_7cc97650a6f0bedb8bdbc0cc534eb422e8585c69f5b0ae92b6d4f213a2d90f08",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros1Motion_capture_ikArmHandPose"
            )
        ),
        `motion_capture_ik/armHandPoseFree` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b46b274661ac382698a9bf1016ca647aecc41df8312020b740d73a87d2513caf",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros1Motion_capture_ikArmHandPoseFree"
            )
        ),
        `motion_capture_ik/changeArmCtrlMode` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_cfc44e987ff1cabc9cfe440020c20d507741771d6d46380d542910d275b1925f",
            `registered` = FALSE,
            `components` = list(
                `request` = "Ros1Motion_capture_ikChangeArmCtrlModeRequest",
                `response` = "Ros1Motion_capture_ikChangeArmCtrlModeResponse"
            )
        ),
        `motion_capture_ik/handPose` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_dc924e15f38aa45188532c325292b2f9e3827f3dfa94ff946e30aa51f4fbee5f",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros1Motion_capture_ikHandPose"
            )
        ),
        `motion_capture_ik/ikSolveError` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_a20039cf8bf301a7ef643884130619c2ceb96c1c91ed15482dd6f582917e1e94",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros1Motion_capture_ikIkSolveError"
            )
        ),
        `motion_capture_ik/ikSolveParam` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_8058ba64ed6070b821470b5560062e78f2ef0fa09169e7a249b584d2d158d981",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros1Motion_capture_ikIkSolveParam"
            )
        ),
        `motion_capture_ik/recordArmHandPose` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_815baf88f4e7fdf82316c06aa2baacbc2f30160c53eb73de10dfcbc1ecda2b4a",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros1Motion_capture_ikRecordArmHandPose"
            )
        ),
        `motion_capture_ik/recordArmHandPoseFree` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_895dcfe228b573faa0911f4c5ca89094cae4497c06b57ba9b827356e62071811",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros1Motion_capture_ikRecordArmHandPoseFree"
            )
        ),
        `motion_capture_ik/robotArmQVVD` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_c5cfc8e6be023981b9b846a4e676e456a407479a9428f4fbe43e1af9df17fbbb",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros1Motion_capture_ikRobotArmQVVD"
            )
        ),
        `motion_capture_ik/robotHandPosition` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_16c4f8c128cde34eba2cf878bad0706916193ba3b54f02dcd1e4556128e3b0aa",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros1Motion_capture_ikRobotHandPosition"
            )
        ),
        `motion_capture_ik/twoArmHandPose` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_12c87f2d727015a1dd0d5c344812528ae43bfd48168fdaa68bac006fe0bbc181",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros1Motion_capture_ikTwoArmHandPose"
            )
        ),
        `motion_capture_ik/twoArmHandPoseCmd` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_aa53de9aca25b5e5ad518a3e3fd6a36f9501d620da4fbd56721a15b693ce6acc",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros1Motion_capture_ikTwoArmHandPoseCmd"
            )
        ),
        `motion_capture_ik/twoArmHandPoseCmdFree` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_425b1b5b856ec8d0d019829cf48728723199ff79e2b6fa5aaa3f045f1c4f8773",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros1Motion_capture_ikTwoArmHandPoseCmdFree"
            )
        ),
        `motion_capture_ik/twoArmHandPoseFree` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_2b0e1aadf4405084b26888548a9c33bb9be57ec8f606122857a3b18c2a6f572c",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros1Motion_capture_ikTwoArmHandPoseFree"
            )
        ),
        `std_msgs/Header` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros1Std_msgsHeader"
            )
        )
    ))
})
