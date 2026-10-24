/**
 * @file records.mjs
 * @brief All original records over the shared genuine JavaScript codec.
 * @details No native resource or permission is acquired by a schema.
 */
import {Record, Registry} from "ros/js/wire";

export const REGISTRY = new Registry();

/** @brief Complete builtin_interfaces/msg/Time owning value. */
export class Ros2Builtin_interfacesMsgTime extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "normalized-time",
        "native_identity": null,
        "codec_identity": "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
        "type": "builtin_interfaces/msg/Time",
        "ros_version": 2,
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
                    "default": null,
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
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
}

REGISTRY.add(Ros2Builtin_interfacesMsgTime);

/** @brief Complete geometry_msgs/msg/Point owning value. */
export class Ros2Geometry_msgsMsgPoint extends Record
{
    static schema = {
        "minimum" : 24,
        "maximum": 24,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616",
        "type": "geometry_msgs/msg/Point",
        "ros_version": 2,
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
                    "default": null,
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
                    "default": null,
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
                    "default": null,
                    "element_minimum": 8
                }
            ]
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgPoint);

/** @brief Complete geometry_msgs/msg/Quaternion owning value. */
export class Ros2Geometry_msgsMsgQuaternion extends Record
{
    static schema = {
        "minimum" : 32,
        "maximum": 32,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
        "type": "geometry_msgs/msg/Quaternion",
        "ros_version": 2,
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
                    "default": 0.0,
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
                    "native_default": "0.0",
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": 0.0,
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
                    "native_default": "0.0",
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": 0.0,
                    "element_minimum": 8
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
                    "default": 1.0,
                    "element_minimum": 8
                }
            ]
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgQuaternion);

/** @brief Complete geometry_msgs/msg/Pose owning value. */
export class Ros2Geometry_msgsMsgPose extends Record
{
    static schema = {
        "minimum" : 56,
        "maximum": 56,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777",
        "type": "geometry_msgs/msg/Pose",
        "ros_version": 2,
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
                    "default": null,
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
                    "default": null,
                    "element_minimum": 32
                }
            ]
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgPose);

/** @brief Complete std_msgs/msg/Header owning value. */
export class Ros2Std_msgsMsgHeader extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 140,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96",
        "type": "std_msgs/msg/Header",
        "ros_version": 2,
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
                    "default": null,
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
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
}

REGISTRY.add(Ros2Std_msgsMsgHeader);

/** @brief Complete geometry_msgs/msg/PoseStamped owning value. */
export class Ros2Geometry_msgsMsgPoseStamped extends Record
{
    static schema = {
        "minimum" : 68,
        "maximum": 196,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2",
        "type": "geometry_msgs/msg/PoseStamped",
        "ros_version": 2,
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
                    "default": null,
                    "element_minimum": 12
                },
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
                    "default": null,
                    "element_minimum": 56
                }
            ]
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgPoseStamped);

/** @brief Complete grab_demo_msgs/msg/GraspCandidate owning value. */
export class Ros2Grab_demo_msgsMsgGraspCandidate extends Record
{
    static schema = {
        "minimum" : 92,
        "maximum": 604,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_5dfe34bfcc75bea067c1c30082a8c462575b2790a7326f85f90e7f913600bf37",
        "type": "grab_demo_msgs/msg/GraspCandidate",
        "ros_version": 2,
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
                    "default": null,
                    "element_minimum": 12
                },
                {
                    "name" : "pose",
                    "type": "geometry_msgs/msg/PoseStamped",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 68
                },
                {
                    "name" : "group_name",
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
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "confidence",
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
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "object_class",
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
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
}

REGISTRY.add(Ros2Grab_demo_msgsMsgGraspCandidate);

/** @brief Complete grab_demo_msgs/msg/IKRequest owning value. */
export class Ros2Grab_demo_msgsMsgIKRequest extends Record
{
    static schema = {
        "minimum" : 64,
        "maximum": 320,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b438f80854b2fee423938302dc415e1ef68a3988675998c427eab62a5ecc39fa",
        "type": "grab_demo_msgs/msg/IKRequest",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "group_name",
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
                    "default": null,
                    "element_minimum": 4
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
                    "default": null,
                    "element_minimum": 4
                },
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
                    "default": null,
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
                    "default": null,
                    "element_minimum": 32
                }
            ]
    };
}

REGISTRY.add(Ros2Grab_demo_msgsMsgIKRequest);

