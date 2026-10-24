<?php
// SPDX-License-Identifier: Apache-2.0
/**
 * @file aimdk_v1_1_0_main.php
 * @brief Describe the original Agibot v1.1.0 fields, constants and guest bounds.
 * @details This compatibility descriptor returns ordinary PHP arrays. It performs
 * no encoding, I/O, capability acquisition or native operation. Dedicated typed
 * records validate their complete values before exposing a canonical payload.
 * @return array Type-name map containing ordered fields, constants and bounds.
 */
function agibot_schema()
{
    return array(
        "aimdk_msgs/msg/CommonRequest" => array(
            "fields" => array(
                array(
                    "name" => "header",
                    "type" => "aimdk_msgs/msg/RequestHeader"
                )
            ),
            "constants" => array(

            )
        ),
        "aimdk_msgs/msg/CommonResponse" => array(
            "fields" => array(
                array(
                    "name" => "header",
                    "type" => "aimdk_msgs/msg/ResponseHeader"
                ),
                array(
                    "name" => "status",
                    "type" => "aimdk_msgs/msg/CommonState"
                ),
                array(
                    "name" => "message",
                    "type" => "string",
                    "string" => 128
                )
            ),
            "constants" => array(

            )
        ),
        "aimdk_msgs/msg/CommonState" => array(
            "fields" => array(
                array(
                    "name" => "value",
                    "type" => "int32"
                )
            ),
            "constants" => array(
                "UNKNOWN" => array(
                    "type" => "int32",
                    "literal" => "0"
                ),
                "SUCCESS" => array(
                    "type" => "int32",
                    "literal" => "1"
                ),
                "FAILURE" => array(
                    "type" => "int32",
                    "literal" => "2"
                ),
                "ABORTED" => array(
                    "type" => "int32",
                    "literal" => "3"
                ),
                "TIMEOUT" => array(
                    "type" => "int32",
                    "literal" => "4"
                ),
                "INVALID" => array(
                    "type" => "int32",
                    "literal" => "5"
                ),
                "IN_MANUAL" => array(
                    "type" => "int32",
                    "literal" => "6"
                ),
                "NOT_READY" => array(
                    "type" => "int32",
                    "literal" => "100"
                ),
                "PENDING" => array(
                    "type" => "int32",
                    "literal" => "200"
                ),
                "CREATED" => array(
                    "type" => "int32",
                    "literal" => "300"
                ),
                "RUNNING" => array(
                    "type" => "int32",
                    "literal" => "400"
                )
            )
        ),
        "aimdk_msgs/msg/CurrentVersion" => array(
            "fields" => array(
                array(
                    "name" => "version",
                    "type" => "string",
                    "string" => 128
                ),
                array(
                    "name" => "name",
                    "type" => "string",
                    "string" => 128
                ),
                array(
                    "name" => "files",
                    "type" => "string",
                    "sequence" => 16,
                    "string" => 128
                ),
                array(
                    "name" => "download_timestamp_seconds",
                    "type" => "uint64"
                )
            ),
            "constants" => array(

            )
        ),
        "aimdk_msgs/msg/McAction" => array(
            "fields" => array(
                array(
                    "name" => "value",
                    "type" => "int32"
                )
            ),
            "constants" => array(
                "PASSIVE_DEFAULT" => array(
                    "type" => "int32",
                    "literal" => "1"
                ),
                "SOFT_EMERGENCY_STOP" => array(
                    "type" => "int32",
                    "literal" => "2"
                ),
                "DAMPING_DEFAULT" => array(
                    "type" => "int32",
                    "literal" => "3"
                ),
                "ZERO_TORQUE_DEFAULT" => array(
                    "type" => "int32",
                    "literal" => "4"
                ),
                "JOINT_DEFAULT" => array(
                    "type" => "int32",
                    "literal" => "100"
                ),
                "JOINT_FREEZE" => array(
                    "type" => "int32",
                    "literal" => "101"
                ),
                "STAND_DEFAULT" => array(
                    "type" => "int32",
                    "literal" => "200"
                ),
                "STAND_BODY_CONTROL" => array(
                    "type" => "int32",
                    "literal" => "201"
                ),
                "LOCOMOTION_DEFAULT" => array(
                    "type" => "int32",
                    "literal" => "300"
                ),
                "RUN_DEFAULT" => array(
                    "type" => "int32",
                    "literal" => "301"
                ),
                "LOCOMOTION_STEP" => array(
                    "type" => "int32",
                    "literal" => "302"
                ),
                "VR_REMOTE_CONTROLLER" => array(
                    "type" => "int32",
                    "literal" => "400"
                ),
                "SIT_DOWN_DEFAULT" => array(
                    "type" => "int32",
                    "literal" => "2000"
                ),
                "CROUCH_DOWN_DEFAULT" => array(
                    "type" => "int32",
                    "literal" => "2002"
                ),
                "LIE_DOWN_DEFAULT" => array(
                    "type" => "int32",
                    "literal" => "2004"
                ),
                "STAND_UP_DEFAULT" => array(
                    "type" => "int32",
                    "literal" => "2005"
                ),
                "ASCEND_STAIRS" => array(
                    "type" => "int32",
                    "literal" => "2006"
                ),
                "DESCEND_STAIRS" => array(
                    "type" => "int32",
                    "literal" => "2008"
                )
            )
        ),
        "aimdk_msgs/msg/McActionInfo" => array(
            "fields" => array(
                array(
                    "name" => "current_action",
                    "type" => "aimdk_msgs/msg/McAction"
                ),
                array(
                    "name" => "action_desc",
                    "type" => "string",
                    "string" => 128
                ),
                array(
                    "name" => "status",
                    "type" => "aimdk_msgs/msg/McActionStatus"
                )
            ),
            "constants" => array(

            )
        ),
        "aimdk_msgs/msg/McActionStatus" => array(
            "fields" => array(
                array(
                    "name" => "value",
                    "type" => "int32"
                )
            ),
            "constants" => array(
                "IDLE" => array(
                    "type" => "int32",
                    "literal" => "0"
                ),
                "RUNNING" => array(
                    "type" => "int32",
                    "literal" => "100"
                ),
                "TRANSITION" => array(
                    "type" => "int32",
                    "literal" => "200"
                )
            )
        ),
        "aimdk_msgs/msg/McBodyPoseStatus" => array(
            "fields" => array(
                array(
                    "name" => "value",
                    "type" => "int32"
                )
            ),
            "constants" => array(
                "MC_BODY_POSE_UNKOWN" => array(
                    "type" => "int32",
                    "literal" => "0"
                ),
                "MC_BODY_POSE_STAND" => array(
                    "type" => "int32",
                    "literal" => "1"
                ),
                "MC_BODY_POSE_LIE_FACE_UP" => array(
                    "type" => "int32",
                    "literal" => "2"
                ),
                "MC_BODY_POSE_LIE_FACE_DOWN" => array(
                    "type" => "int32",
                    "literal" => "3"
                ),
                "MC_BODY_POSE_SIT" => array(
                    "type" => "int32",
                    "literal" => "4"
                ),
                "MC_BODY_POSE_SQUAT" => array(
                    "type" => "int32",
                    "literal" => "5"
                )
            )
        ),
        "aimdk_msgs/msg/McCommonState" => array(
            "fields" => array(
                array(
                    "name" => "header",
                    "type" => "aimdk_msgs/msg/MessageHeader"
                ),
                array(
                    "name" => "input_source",
                    "type" => "aimdk_msgs/msg/McInputSource"
                ),
                array(
                    "name" => "action_info",
                    "type" => "aimdk_msgs/msg/McActionInfo"
                ),
                array(
                    "name" => "runtime_model",
                    "type" => "aimdk_msgs/msg/McRuntimeModel"
                ),
                array(
                    "name" => "motion_status",
                    "type" => "aimdk_msgs/msg/McMotionStatus"
                ),
                array(
                    "name" => "servo_status",
                    "type" => "aimdk_msgs/msg/McServoStatus"
                ),
                array(
                    "name" => "fsm_state",
                    "type" => "aimdk_msgs/msg/McFsmState"
                ),
                array(
                    "name" => "body_status",
                    "type" => "aimdk_msgs/msg/McBodyPoseStatus"
                ),
                array(
                    "name" => "speed_status",
                    "type" => "aimdk_msgs/msg/McLocomotionSpeedStatus"
                )
            ),
            "constants" => array(

            )
        ),
        "aimdk_msgs/msg/McControlArea" => array(
            "fields" => array(
                array(
                    "name" => "value",
                    "type" => "int32"
                )
            ),
            "constants" => array(
                "NONE" => array(
                    "type" => "int32",
                    "literal" => "0"
                ),
                "LEFT_HAND" => array(
                    "type" => "int32",
                    "literal" => "1"
                ),
                "RIGHT_HAND" => array(
                    "type" => "int32",
                    "literal" => "2"
                ),
                "HEAD" => array(
                    "type" => "int32",
                    "literal" => "4"
                ),
                "WAIST" => array(
                    "type" => "int32",
                    "literal" => "8"
                )
            )
        ),
        "aimdk_msgs/msg/McFsmState" => array(
            "fields" => array(
                array(
                    "name" => "current_state",
                    "type" => "uint32"
                )
            ),
            "constants" => array(
                "UNKNOWN" => array(
                    "type" => "uint32",
                    "literal" => "0"
                ),
                "STARTING" => array(
                    "type" => "uint32",
                    "literal" => "1"
                ),
                "STABLE" => array(
                    "type" => "uint32",
                    "literal" => "2"
                ),
                "MOVING" => array(
                    "type" => "uint32",
                    "literal" => "3"
                ),
                "SAFE" => array(
                    "type" => "uint32",
                    "literal" => "4"
                ),
                "SPECIAL" => array(
                    "type" => "uint32",
                    "literal" => "5"
                ),
                "TEST" => array(
                    "type" => "uint32",
                    "literal" => "6"
                )
            )
        ),
        "aimdk_msgs/msg/McHandStatus" => array(
            "fields" => array(
                array(
                    "name" => "value",
                    "type" => "int32"
                )
            ),
            "constants" => array(
                "OMNI_HAND" => array(
                    "type" => "int32",
                    "literal" => "1000"
                ),
                "OMNI_PICKER" => array(
                    "type" => "int32",
                    "literal" => "2000"
                )
            )
        ),
        "aimdk_msgs/msg/McInputSource" => array(
            "fields" => array(
                array(
                    "name" => "name",
                    "type" => "string",
                    "string" => 128
                ),
                array(
                    "name" => "priority",
                    "type" => "int32"
                ),
                array(
                    "name" => "timeout",
                    "type" => "int32"
                )
            ),
            "constants" => array(

            )
        ),
        "aimdk_msgs/msg/McLocomotionSpeedBounds" => array(
            "fields" => array(
                array(
                    "name" => "min_value",
                    "type" => "float64"
                ),
                array(
                    "name" => "max_value",
                    "type" => "float64"
                )
            ),
            "constants" => array(

            )
        ),
        "aimdk_msgs/msg/McLocomotionSpeedMode" => array(
            "fields" => array(
                array(
                    "name" => "value",
                    "type" => "int32"
                )
            ),
            "constants" => array(
                "MC_LOCOMOTION_NONE_SPEED" => array(
                    "type" => "int32",
                    "literal" => "0"
                ),
                "MC_LOCOMOTION_LOW_SPEED" => array(
                    "type" => "int32",
                    "literal" => "1"
                ),
                "MC_LOCOMOTION_MEIDUM_SPEED" => array(
                    "type" => "int32",
                    "literal" => "2"
                ),
                "MC_LOCOMOTION_HIGH_SPEED" => array(
                    "type" => "int32",
                    "literal" => "3"
                )
            )
        ),
        "aimdk_msgs/msg/McLocomotionSpeedStatus" => array(
            "fields" => array(
                array(
                    "name" => "speed_mode",
                    "type" => "aimdk_msgs/msg/McLocomotionSpeedMode"
                ),
                array(
                    "name" => "forward_bounds",
                    "type" => "aimdk_msgs/msg/McLocomotionSpeedBounds"
                ),
                array(
                    "name" => "lateral_bounds",
                    "type" => "aimdk_msgs/msg/McLocomotionSpeedBounds"
                ),
                array(
                    "name" => "angular_bounds",
                    "type" => "aimdk_msgs/msg/McLocomotionSpeedBounds"
                )
            ),
            "constants" => array(

            )
        ),
        "aimdk_msgs/msg/McMotionStatus" => array(
            "fields" => array(
                array(
                    "name" => "player_state",
                    "type" => "aimdk_msgs/msg/McPlayerState"
                ),
                array(
                    "name" => "control_area",
                    "type" => "aimdk_msgs/msg/McControlArea"
                ),
                array(
                    "name" => "motion",
                    "type" => "string",
                    "string" => 128
                ),
                array(
                    "name" => "type",
                    "type" => "aimdk_msgs/msg/McMotionType"
                )
            ),
            "constants" => array(

            )
        ),
        "aimdk_msgs/msg/McMotionType" => array(
            "fields" => array(
                array(
                    "name" => "value",
                    "type" => "int32"
                )
            ),
            "constants" => array(
                "NONE" => array(
                    "type" => "int32",
                    "literal" => "0"
                ),
                "ANIMATION" => array(
                    "type" => "int32",
                    "literal" => "1"
                ),
                "MIMIC" => array(
                    "type" => "int32",
                    "literal" => "2"
                ),
                "FOUNDATION" => array(
                    "type" => "int32",
                    "literal" => "3"
                )
            )
        ),
        "aimdk_msgs/msg/McPlayerState" => array(
            "fields" => array(
                array(
                    "name" => "value",
                    "type" => "uint32"
                )
            ),
            "constants" => array(
                "IDLE" => array(
                    "type" => "uint32",
                    "literal" => "0"
                ),
                "PRE_PLAYING" => array(
                    "type" => "uint32",
                    "literal" => "1"
                ),
                "PLAYING" => array(
                    "type" => "uint32",
                    "literal" => "2"
                ),
                "INTERRUPTING" => array(
                    "type" => "uint32",
                    "literal" => "3"
                ),
                "ERROR" => array(
                    "type" => "uint32",
                    "literal" => "4"
                )
            )
        ),
        "aimdk_msgs/msg/McRuntimeModel" => array(
            "fields" => array(
                array(
                    "name" => "waist_status",
                    "type" => "bool"
                ),
                array(
                    "name" => "left_hand_status",
                    "type" => "aimdk_msgs/msg/McHandStatus"
                ),
                array(
                    "name" => "right_hand_status",
                    "type" => "aimdk_msgs/msg/McHandStatus"
                )
            ),
            "constants" => array(

            )
        ),
        "aimdk_msgs/msg/McServoStatus" => array(
            "fields" => array(
                array(
                    "name" => "squat_enable",
                    "type" => "bool"
                ),
                array(
                    "name" => "squat_offset",
                    "type" => "float64"
                ),
                array(
                    "name" => "squat_limit",
                    "type" => "uint32"
                ),
                array(
                    "name" => "head_yaw_offset",
                    "type" => "float64"
                ),
                array(
                    "name" => "head_pitch_offset",
                    "type" => "float64"
                ),
                array(
                    "name" => "waist_yaw_offset",
                    "type" => "float64"
                ),
                array(
                    "name" => "waist_pitch_offset",
                    "type" => "float64"
                ),
                array(
                    "name" => "waist_roll_offset",
                    "type" => "float64"
                )
            ),
            "constants" => array(
                "BEFORE_LIMIT" => array(
                    "type" => "uint32",
                    "literal" => "0"
                ),
                "LOWER_LIMIT" => array(
                    "type" => "uint32",
                    "literal" => "1"
                ),
                "UPPER_LIMIT" => array(
                    "type" => "uint32",
                    "literal" => "2"
                )
            )
        ),
        "aimdk_msgs/msg/MessageHeader" => array(
            "fields" => array(
                array(
                    "name" => "stamp",
                    "type" => "builtin_interfaces/msg/Time"
                ),
                array(
                    "name" => "frame_id",
                    "type" => "string",
                    "string" => 128
                ),
                array(
                    "name" => "sequence",
                    "type" => "uint32"
                ),
                array(
                    "name" => "meas_stamp",
                    "type" => "builtin_interfaces/msg/Time"
                )
            ),
            "constants" => array(

            )
        ),
        "aimdk_msgs/msg/RequestHeader" => array(
            "fields" => array(
                array(
                    "name" => "stamp",
                    "type" => "builtin_interfaces/msg/Time"
                )
            ),
            "constants" => array(

            )
        ),
        "aimdk_msgs/msg/ResponseHeader" => array(
            "fields" => array(
                array(
                    "name" => "stamp",
                    "type" => "builtin_interfaces/msg/Time"
                ),
                array(
                    "name" => "code",
                    "type" => "int64"
                )
            ),
            "constants" => array(

            )
        ),
        "aimdk_msgs/msg/RobotResource" => array(
            "fields" => array(
                array(
                    "name" => "resource_key",
                    "type" => "string",
                    "string" => 128
                ),
                array(
                    "name" => "current_version",
                    "type" => "aimdk_msgs/msg/CurrentVersion"
                )
            ),
            "constants" => array(

            )
        ),
        "aimdk_msgs/srv/GetMcAction_Request" => array(
            "fields" => array(
                array(
                    "name" => "request",
                    "type" => "aimdk_msgs/msg/CommonRequest"
                )
            ),
            "constants" => array(

            )
        ),
        "aimdk_msgs/srv/GetMcAction_Response" => array(
            "fields" => array(
                array(
                    "name" => "header",
                    "type" => "aimdk_msgs/msg/ResponseHeader"
                ),
                array(
                    "name" => "info",
                    "type" => "aimdk_msgs/msg/McActionInfo"
                )
            ),
            "constants" => array(

            )
        ),
        "aimdk_msgs/srv/GetRobotResources_Request" => array(
            "fields" => array(
                array(
                    "name" => "header",
                    "type" => "aimdk_msgs/msg/CommonRequest"
                )
            ),
            "constants" => array(

            )
        ),
        "aimdk_msgs/srv/GetRobotResources_Response" => array(
            "fields" => array(
                array(
                    "name" => "header",
                    "type" => "aimdk_msgs/msg/CommonResponse"
                ),
                array(
                    "name" => "robot_resources",
                    "type" => "aimdk_msgs/msg/RobotResource",
                    "sequence" => 4
                )
            ),
            "constants" => array(

            )
        ),
        "builtin_interfaces/msg/Time" => array(
            "fields" => array(
                array(
                    "name" => "sec",
                    "type" => "int32"
                ),
                array(
                    "name" => "nanosec",
                    "type" => "uint32"
                )
            ),
            "constants" => array(

            )
        )
    );
}
