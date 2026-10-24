/**
 * @file records.mjs
 * @brief Complete original agilex classes using the shared strict JavaScript codec.
 * @details Source-only identities grant no native ROS registration or permission.
 */
import {Record, Registry} from 'ros/js/wire';
export const REGISTRY = new Registry();

/**
 * @brief Own every original builtin_interfaces/msg/Time field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Builtin_interfacesMsgTime extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
        "minimum": 8,
        "maximum": 8,
        "semantics": "normalized-time",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "sec",
                    "type": "int32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                },
                {
                    "name" : "nanosec",
                    "type": "uint32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                }
            ],
        "type": "builtin_interfaces/msg/Time"
    };
}

REGISTRY.add(Ros2Builtin_interfacesMsgTime);

/**
 * @brief Own every original geometry_msgs/msg/Point field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Geometry_msgsMsgPoint extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616",
        "minimum": 24,
        "maximum": 24,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "x",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 8
                },
                {
                    "name" : "y",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 8
                },
                {
                    "name" : "z",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 8
                }
            ],
        "type": "geometry_msgs/msg/Point"
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgPoint);

/**
 * @brief Own every original geometry_msgs/msg/Quaternion field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Geometry_msgsMsgQuaternion extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
        "minimum": 32,
        "maximum": 32,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "x",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": "0.0",
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 8,
                    "default": 0.0
                },
                {
                    "name" : "y",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": "0.0",
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 8,
                    "default": 0.0
                },
                {
                    "name" : "z",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": "0.0",
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 8,
                    "default": 0.0
                },
                {
                    "name" : "w",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": "1.0",
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 8,
                    "default": 1.0
                }
            ],
        "type": "geometry_msgs/msg/Quaternion"
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgQuaternion);

/**
 * @brief Own every original geometry_msgs/msg/Pose field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Geometry_msgsMsgPose extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777",
        "minimum": 56,
        "maximum": 56,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "position",
                    "type": "geometry_msgs/msg/Point",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 24
                },
                {
                    "name" : "orientation",
                    "type": "geometry_msgs/msg/Quaternion",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 32
                }
            ],
        "type": "geometry_msgs/msg/Pose"
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgPose);

/**
 * @brief Own every original geometry_msgs/msg/PoseWithCovariance field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Geometry_msgsMsgPoseWithCovariance extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2",
        "minimum": 344,
        "maximum": 344,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "pose",
                    "type": "geometry_msgs/msg/Pose",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 56
                },
                {
                    "name" : "covariance",
                    "type": "float64",
                    "array": "array",
                    "count": 36,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 8
                }
            ],
        "type": "geometry_msgs/msg/PoseWithCovariance"
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgPoseWithCovariance);

/**
 * @brief Own every original geometry_msgs/msg/Vector3 field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Geometry_msgsMsgVector3 extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e",
        "minimum": 24,
        "maximum": 24,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "x",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 8
                },
                {
                    "name" : "y",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 8
                },
                {
                    "name" : "z",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 8
                }
            ],
        "type": "geometry_msgs/msg/Vector3"
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgVector3);

/**
 * @brief Own every original geometry_msgs/msg/Twist field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Geometry_msgsMsgTwist extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e",
        "minimum": 48,
        "maximum": 48,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "linear",
                    "type": "geometry_msgs/msg/Vector3",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 24
                },
                {
                    "name" : "angular",
                    "type": "geometry_msgs/msg/Vector3",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 24
                }
            ],
        "type": "geometry_msgs/msg/Twist"
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgTwist);

/**
 * @brief Own every original geometry_msgs/msg/TwistWithCovariance field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Geometry_msgsMsgTwistWithCovariance extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404",
        "minimum": 336,
        "maximum": 336,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "twist",
                    "type": "geometry_msgs/msg/Twist",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 48
                },
                {
                    "name" : "covariance",
                    "type": "float64",
                    "array": "array",
                    "count": 36,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 8
                }
            ],
        "type": "geometry_msgs/msg/TwistWithCovariance"
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgTwistWithCovariance);

/**
 * @brief Own every original std_msgs/msg/Header field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Std_msgsMsgHeader extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96",
        "minimum": 12,
        "maximum": 140,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "stamp",
                    "type": "builtin_interfaces/msg/Time",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 8
                },
                {
                    "name" : "frame_id",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                }
            ],
        "type": "std_msgs/msg/Header"
    };
}

REGISTRY.add(Ros2Std_msgsMsgHeader);

/**
 * @brief Own every original nav_msgs/msg/Odometry field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Nav_msgsMsgOdometry extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_fdfdd74c211c22bfd167c3e33a098fe21198cb095bbd0313fc765f38b1f334ec",
        "minimum": 696,
        "maximum": 952,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "header",
                    "type": "std_msgs/msg/Header",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 12
                },
                {
                    "name" : "child_frame_id",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                },
                {
                    "name" : "pose",
                    "type": "geometry_msgs/msg/PoseWithCovariance",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 344
                },
                {
                    "name" : "twist",
                    "type": "geometry_msgs/msg/TwistWithCovariance",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 336
                }
            ],
        "type": "nav_msgs/msg/Odometry"
    };
}

REGISTRY.add(Ros2Nav_msgsMsgOdometry);

/**
 * @brief Own every original scout_msgs/msg/ScoutActuatorState field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Scout_msgsMsgScoutActuatorState extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_e7955c07aedaf42f8d97f873d60ae5c0dfc562faa1d64848f11b333f797350c6",
        "minimum": 19,
        "maximum": 19,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "rpm",
                    "type": "int16",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 2
                },
                {
                    "name" : "current",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 8
                },
                {
                    "name" : "driver_voltage",
                    "type": "float32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                },
                {
                    "name" : "driver_temperature",
                    "type": "float32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 4
                },
                {
                    "name" : "motor_temperature",
                    "type": "int8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                }
            ],
        "type": "scout_msgs/msg/ScoutActuatorState"
    };
}

REGISTRY.add(Ros2Scout_msgsMsgScoutActuatorState);

/**
 * @brief Own every original scout_msgs/msg/ScoutLightCmd field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Scout_msgsMsgScoutLightCmd extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_a82206813682fbf1a6b41009c12191ad9ce47c98444d8ea9792e7b212ee602d7",
        "minimum": 5,
        "maximum": 5,
        "semantics": "",
        "ros_version": 2,
        "constants": {"LIGHT_CONST_OFF": 0, "LIGHT_CONST_ON": 1, "LIGHT_BREATH": 2, "LIGHT_CUSTOM": 3},
        "fields":
            [
                {
                      "name" : "cmd_ctrl_allowed",
                      "type": "bool",
                      "array": "",
                      "count": 0,
                      "string_bound": 0,
                      "native_string_bound": 0,
                      "native_sequence_bound": 0,
                      "native_default": null,
                      "native_scalar": "",
                      "string_encoding": "utf8",
                      "float_policy": "finite",
                      "raw": false,
                      "element_minimum": 1
                },
                {
                      "name" : "front_mode",
                      "type": "uint8",
                      "array": "",
                      "count": 0,
                      "string_bound": 0,
                      "native_string_bound": 0,
                      "native_sequence_bound": 0,
                      "native_default": null,
                      "native_scalar": "",
                      "string_encoding": "utf8",
                      "float_policy": "finite",
                      "raw": false,
                      "element_minimum": 1
                },
                {
                      "name" : "front_custom_value",
                      "type": "uint8",
                      "array": "",
                      "count": 0,
                      "string_bound": 0,
                      "native_string_bound": 0,
                      "native_sequence_bound": 0,
                      "native_default": null,
                      "native_scalar": "",
                      "string_encoding": "utf8",
                      "float_policy": "finite",
                      "raw": false,
                      "element_minimum": 1
                },
                {
                      "name" : "rear_mode",
                      "type": "uint8",
                      "array": "",
                      "count": 0,
                      "string_bound": 0,
                      "native_string_bound": 0,
                      "native_sequence_bound": 0,
                      "native_default": null,
                      "native_scalar": "",
                      "string_encoding": "utf8",
                      "float_policy": "finite",
                      "raw": false,
                      "element_minimum": 1
                },
                {
                      "name" : "rear_custom_value",
                      "type": "uint8",
                      "array": "",
                      "count": 0,
                      "string_bound": 0,
                      "native_string_bound": 0,
                      "native_sequence_bound": 0,
                      "native_default": null,
                      "native_scalar": "",
                      "string_encoding": "utf8",
                      "float_policy": "finite",
                      "raw": false,
                      "element_minimum": 1
                }
            ],
        "type": "scout_msgs/msg/ScoutLightCmd"
    };
}

REGISTRY.add(Ros2Scout_msgsMsgScoutLightCmd);

/**
 * @brief Own every original scout_msgs/msg/ScoutLightState field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Scout_msgsMsgScoutLightState extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_4f42b9365cc76673b156e725aac9448e0f0d806105d3717cdb2628c384a6d76a",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "mode",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                },
                {
                    "name" : "custom_value",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                }
            ],
        "type": "scout_msgs/msg/ScoutLightState"
    };
}

REGISTRY.add(Ros2Scout_msgsMsgScoutLightState);

/**
 * @brief Own every original scout_msgs/msg/ScoutRCState field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Scout_msgsMsgScoutRCState extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_ba13e4c728041d14352c021fe5c1c5eee5d531c84ac64c61d944d6192dcd4298",
        "minimum": 9,
        "maximum": 9,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields":
            [
                {
                    "name" : "swa",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                },
                {
                    "name" : "swb",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                },
                {
                    "name" : "swc",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                },
                {
                    "name" : "swd",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                },
                {
                    "name" : "stick_right_v",
                    "type": "int8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                },
                {
                    "name" : "stick_right_h",
                    "type": "int8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                },
                {
                    "name" : "stick_left_v",
                    "type": "int8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                },
                {
                    "name" : "stick_left_h",
                    "type": "int8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                },
                {
                    "name" : "var_a",
                    "type": "int8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "raw": false,
                    "element_minimum": 1
                }
            ],
        "type": "scout_msgs/msg/ScoutRCState"
    };
}

REGISTRY.add(Ros2Scout_msgsMsgScoutRCState);

/**
 * @brief Own every original scout_msgs/msg/ScoutStatus field.
 * @details Full encode/decode retain all widths, source constants and finite quotas.
 */
export class Ros2Scout_msgsMsgScoutStatus extends Record
{
    static schema = {
        "native_identity" : null,
        "codec_identity": "UWVMROS1_75db4db1dcc07210d543b8e6bd6b6a7aadbf23db8043ff372a3b224c5c235b86",
        "minimum": 121,
        "maximum": 249,
        "semantics": "",
        "ros_version": 2,
        "constants":
            {"MOTOR_ID_FRONT_RIGHT": 0, "MOTOR_ID_FRONT_LEFT": 1, "MOTOR_ID_REAR_RIGHT": 2, "MOTOR_ID_REAR_LEFT": 3, "LIGHT_ID_FRONT": 0, "LIGHT_ID_REAR": 1},
        "fields":
            [
                {
              "name" : "header",
              "type": "std_msgs/msg/Header",
              "array": "",
              "count": 0,
              "string_bound": 0,
              "native_string_bound": 0,
              "native_sequence_bound": 0,
              "native_default": null,
              "native_scalar": "",
              "string_encoding": "utf8",
              "float_policy": "finite",
              "raw": false,
              "element_minimum": 12
                },
                {
              "name" : "linear_velocity",
              "type": "float64",
              "array": "",
              "count": 0,
              "string_bound": 0,
              "native_string_bound": 0,
              "native_sequence_bound": 0,
              "native_default": null,
              "native_scalar": "",
              "string_encoding": "utf8",
              "float_policy": "finite",
              "raw": false,
              "element_minimum": 8
                },
                {
              "name" : "angular_velocity",
              "type": "float64",
              "array": "",
              "count": 0,
              "string_bound": 0,
              "native_string_bound": 0,
              "native_sequence_bound": 0,
              "native_default": null,
              "native_scalar": "",
              "string_encoding": "utf8",
              "float_policy": "finite",
              "raw": false,
              "element_minimum": 8
                },
                {
              "name" : "vehicle_state",
              "type": "uint8",
              "array": "",
              "count": 0,
              "string_bound": 0,
              "native_string_bound": 0,
              "native_sequence_bound": 0,
              "native_default": null,
              "native_scalar": "",
              "string_encoding": "utf8",
              "float_policy": "finite",
              "raw": false,
              "element_minimum": 1
                },
                {
              "name" : "control_mode",
              "type": "uint8",
              "array": "",
              "count": 0,
              "string_bound": 0,
              "native_string_bound": 0,
              "native_sequence_bound": 0,
              "native_default": null,
              "native_scalar": "",
              "string_encoding": "utf8",
              "float_policy": "finite",
              "raw": false,
              "element_minimum": 1
                },
                {
              "name" : "error_code",
              "type": "uint16",
              "array": "",
              "count": 0,
              "string_bound": 0,
              "native_string_bound": 0,
              "native_sequence_bound": 0,
              "native_default": null,
              "native_scalar": "",
              "string_encoding": "utf8",
              "float_policy": "finite",
              "raw": false,
              "element_minimum": 2
                },
                {
              "name" : "battery_voltage",
              "type": "float64",
              "array": "",
              "count": 0,
              "string_bound": 0,
              "native_string_bound": 0,
              "native_sequence_bound": 0,
              "native_default": null,
              "native_scalar": "",
              "string_encoding": "utf8",
              "float_policy": "finite",
              "raw": false,
              "element_minimum": 8
                },
                {
              "name" : "actuator_states",
              "type": "scout_msgs/msg/ScoutActuatorState",
              "array": "array",
              "count": 4,
              "string_bound": 0,
              "native_string_bound": 0,
              "native_sequence_bound": 0,
              "native_default": null,
              "native_scalar": "",
              "string_encoding": "utf8",
              "float_policy": "finite",
              "raw": false,
              "element_minimum": 19
                },
                {
              "name" : "light_control_enabled",
              "type": "bool",
              "array": "",
              "count": 0,
              "string_bound": 0,
              "native_string_bound": 0,
              "native_sequence_bound": 0,
              "native_default": null,
              "native_scalar": "",
              "string_encoding": "utf8",
              "float_policy": "finite",
              "raw": false,
              "element_minimum": 1
                },
                {
              "name" : "front_light_state",
              "type": "scout_msgs/msg/ScoutLightState",
              "array": "",
              "count": 0,
              "string_bound": 0,
              "native_string_bound": 0,
              "native_sequence_bound": 0,
              "native_default": null,
              "native_scalar": "",
              "string_encoding": "utf8",
              "float_policy": "finite",
              "raw": false,
              "element_minimum": 2
                },
                {
              "name" : "rear_light_state",
              "type": "scout_msgs/msg/ScoutLightState",
              "array": "",
              "count": 0,
              "string_bound": 0,
              "native_string_bound": 0,
              "native_sequence_bound": 0,
              "native_default": null,
              "native_scalar": "",
              "string_encoding": "utf8",
              "float_policy": "finite",
              "raw": false,
              "element_minimum": 2
                }
            ],
        "type": "scout_msgs/msg/ScoutStatus"
    };
}

REGISTRY.add(Ros2Scout_msgsMsgScoutStatus);
