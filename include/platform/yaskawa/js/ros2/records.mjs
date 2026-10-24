/**
 * @file records.mjs
 * @brief Complete original YASKAWA ROS 2 values, codecs and interface catalog.
 * @details Preserve all 74 records and 52 interfaces.
 * Absent native identities remain null; values grant no ROS authority.
 */
import {Record, Registry} from "ros/js/wire";

export const REGISTRY = new Registry();

/**
 * @brief Complete builtin_interfaces/msg/Duration value.
 * @details All 2 fields and 0 constants; extent 8..8 bytes.
 */
export class Ros2Builtin_interfacesMsgDuration extends Record
{
    /**
     * @brief Original builtin_interfaces/msg/Duration.sec field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original builtin_interfaces/msg/Duration.nanosec field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "builtin_interfaces/msg/Duration",
        "native_identity": null,
        "codec_identity": "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4",
        "minimum": 8,
        "maximum": 8,
        "semantics": "normalized-time",
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
                    "default": null
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Builtin_interfacesMsgDuration);

/**
 * @brief Complete builtin_interfaces/msg/Time value.
 * @details All 2 fields and 0 constants; extent 8..8 bytes.
 */
export class Ros2Builtin_interfacesMsgTime extends Record
{
    /**
     * @brief Original builtin_interfaces/msg/Time.sec field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original builtin_interfaces/msg/Time.nanosec field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "builtin_interfaces/msg/Time",
        "native_identity": null,
        "codec_identity": "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
        "minimum": 8,
        "maximum": 8,
        "semantics": "normalized-time",
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
                    "default": null
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Builtin_interfacesMsgTime);

/**
 * @brief Complete std_msgs/msg/Header value.
 * @details All 2 fields and 0 constants; extent 12..76 bytes.
 */
export class Ros2Std_msgsMsgHeader extends Record
{
    /**
     * @brief Original std_msgs/msg/Header.stamp field.
     * @details Type builtin_interfaces/msg/Time; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original std_msgs/msg/Header.frame_id field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    static schema = {
        "type" : "std_msgs/msg/Header",
        "native_identity": null,
        "codec_identity": "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396",
        "minimum": 12,
        "maximum": 76,
        "semantics": "",
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
                    "default": null
                },
                {
                    "name" : "frame_id",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Std_msgsMsgHeader);

/**
 * @brief Complete trajectory_msgs/msg/JointTrajectoryPoint value.
 * @details All 5 fields and 0 constants; extent 24..408 bytes.
 */
export class Ros2Trajectory_msgsMsgJointTrajectoryPoint extends Record
{
    /**
     * @brief Original trajectory_msgs/msg/JointTrajectoryPoint.positions field.
     * @details Type float64; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/JointTrajectoryPoint.velocities field.
     * @details Type float64; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations field.
     * @details Type float64; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/JointTrajectoryPoint.effort field.
     * @details Type float64; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/JointTrajectoryPoint.time_from_start field.
     * @details Type builtin_interfaces/msg/Duration; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "trajectory_msgs/msg/JointTrajectoryPoint",
        "native_identity": null,
        "codec_identity": "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5",
        "minimum": 24,
        "maximum": 408,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "positions",
                    "type": "float64",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "velocities",
                    "type": "float64",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "accelerations",
                    "type": "float64",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "effort",
                    "type": "float64",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "time_from_start",
                    "type": "builtin_interfaces/msg/Duration",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Trajectory_msgsMsgJointTrajectoryPoint);

/**
 * @brief Complete trajectory_msgs/msg/JointTrajectory value.
 * @details All 3 fields and 0 constants; extent 20..4164 bytes.
 */
export class Ros2Trajectory_msgsMsgJointTrajectory extends Record
{
    /**
     * @brief Original trajectory_msgs/msg/JointTrajectory.header field.
     * @details Type std_msgs/msg/Header; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/JointTrajectory.joint_names field.
     * @details Type string; shape sequence; count/bound 12; text bound 64 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/JointTrajectory.points field.
     * @details Type trajectory_msgs/msg/JointTrajectoryPoint; shape sequence; count/bound 8; text bound 0 bytes.
     */
    static schema = {
        "type" : "trajectory_msgs/msg/JointTrajectory",
        "native_identity": null,
        "codec_identity": "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0",
        "minimum": 20,
        "maximum": 4164,
        "semantics": "",
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
                    "default": null
                },
                {
                    "name" : "joint_names",
                    "type": "string",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "points",
                    "type": "trajectory_msgs/msg/JointTrajectoryPoint",
                    "array": "sequence",
                    "count": 8,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Trajectory_msgsMsgJointTrajectory);

/**
 * @brief Complete geometry_msgs/msg/Vector3 value.
 * @details All 3 fields and 0 constants; extent 24..24 bytes.
 */
export class Ros2Geometry_msgsMsgVector3 extends Record
{
    /**
     * @brief Original geometry_msgs/msg/Vector3.x field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original geometry_msgs/msg/Vector3.y field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original geometry_msgs/msg/Vector3.z field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "geometry_msgs/msg/Vector3",
        "native_identity": null,
        "codec_identity": "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e",
        "minimum": 24,
        "maximum": 24,
        "semantics": "",
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
                    "default": null
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
                    "default": null
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgVector3);

/**
 * @brief Complete geometry_msgs/msg/Quaternion value.
 * @details All 4 fields and 0 constants; extent 32..32 bytes.
 */
export class Ros2Geometry_msgsMsgQuaternion extends Record
{
    /**
     * @brief Original geometry_msgs/msg/Quaternion.x field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original geometry_msgs/msg/Quaternion.y field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original geometry_msgs/msg/Quaternion.z field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original geometry_msgs/msg/Quaternion.w field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "geometry_msgs/msg/Quaternion",
        "native_identity": null,
        "codec_identity": "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
        "minimum": 32,
        "maximum": 32,
        "semantics": "",
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
                    "default": 1.0
                }
            ]
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgQuaternion);

/**
 * @brief Complete geometry_msgs/msg/Transform value.
 * @details All 2 fields and 0 constants; extent 56..56 bytes.
 */
export class Ros2Geometry_msgsMsgTransform extends Record
{
    /**
     * @brief Original geometry_msgs/msg/Transform.translation field.
     * @details Type geometry_msgs/msg/Vector3; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original geometry_msgs/msg/Transform.rotation field.
     * @details Type geometry_msgs/msg/Quaternion; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "geometry_msgs/msg/Transform",
        "native_identity": null,
        "codec_identity": "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b",
        "minimum": 56,
        "maximum": 56,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "translation",
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
                    "default": null
                },
                {
                    "name" : "rotation",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgTransform);

/**
 * @brief Complete geometry_msgs/msg/Twist value.
 * @details All 2 fields and 0 constants; extent 48..48 bytes.
 */
export class Ros2Geometry_msgsMsgTwist extends Record
{
    /**
     * @brief Original geometry_msgs/msg/Twist.linear field.
     * @details Type geometry_msgs/msg/Vector3; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original geometry_msgs/msg/Twist.angular field.
     * @details Type geometry_msgs/msg/Vector3; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "geometry_msgs/msg/Twist",
        "native_identity": null,
        "codec_identity": "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e",
        "minimum": 48,
        "maximum": 48,
        "semantics": "",
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
                    "default": null
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgTwist);

/**
 * @brief Complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
 * @details All 4 fields and 0 constants; extent 20..324 bytes.
 */
export class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint extends Record
{
    /**
     * @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.transforms field.
     * @details Type geometry_msgs/msg/Transform; shape sequence; count/bound 2; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.velocities field.
     * @details Type geometry_msgs/msg/Twist; shape sequence; count/bound 2; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.accelerations field.
     * @details Type geometry_msgs/msg/Twist; shape sequence; count/bound 2; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.time_from_start field.
     * @details Type builtin_interfaces/msg/Duration; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
        "native_identity": null,
        "codec_identity": "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242",
        "minimum": 20,
        "maximum": 324,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "transforms",
                    "type": "geometry_msgs/msg/Transform",
                    "array": "sequence",
                    "count": 2,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "velocities",
                    "type": "geometry_msgs/msg/Twist",
                    "array": "sequence",
                    "count": 2,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "accelerations",
                    "type": "geometry_msgs/msg/Twist",
                    "array": "sequence",
                    "count": 2,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "time_from_start",
                    "type": "builtin_interfaces/msg/Duration",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint);

/**
 * @brief Complete trajectory_msgs/msg/MultiDOFJointTrajectory value.
 * @details All 3 fields and 0 constants; extent 20..1516 bytes.
 */
export class Ros2Trajectory_msgsMsgMultiDOFJointTrajectory extends Record
{
    /**
     * @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.header field.
     * @details Type std_msgs/msg/Header; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names field.
     * @details Type string; shape sequence; count/bound 2; text bound 64 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.points field.
     * @details Type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint; shape sequence; count/bound 4; text bound 0
     * bytes.
     */
    static schema = {
        "type" : "trajectory_msgs/msg/MultiDOFJointTrajectory",
        "native_identity": null,
        "codec_identity": "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401",
        "minimum": 20,
        "maximum": 1516,
        "semantics": "",
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
                    "default": null
                },
                {
                    "name" : "joint_names",
                    "type": "string",
                    "array": "sequence",
                    "count": 2,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "points",
                    "type": "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
                    "array": "sequence",
                    "count": 4,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Trajectory_msgsMsgMultiDOFJointTrajectory);

/**
 * @brief Complete control_msgs/msg/JointTolerance value.
 * @details All 4 fields and 0 constants; extent 28..92 bytes.
 */
export class Ros2Control_msgsMsgJointTolerance extends Record
{
    /**
     * @brief Original control_msgs/msg/JointTolerance.name field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    /**
     * @brief Original control_msgs/msg/JointTolerance.position field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/msg/JointTolerance.velocity field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/msg/JointTolerance.acceleration field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "control_msgs/msg/JointTolerance",
        "native_identity": null,
        "codec_identity": "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2",
        "minimum": 28,
        "maximum": 92,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "name",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "position",
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
                    "default": null
                },
                {
                    "name" : "velocity",
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
                    "default": null
                },
                {
                    "name" : "acceleration",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Control_msgsMsgJointTolerance);

/**
 * @brief Complete control_msgs/msg/JointComponentTolerance value.
 * @details All 5 fields and 5 constants; extent 30..542 bytes.
 */
export class Ros2Control_msgsMsgJointComponentTolerance extends Record
{
    /**
     * @brief Original control_msgs/msg/JointComponentTolerance.joint_name field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original control_msgs/msg/JointComponentTolerance.component field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/msg/JointComponentTolerance.position field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/msg/JointComponentTolerance.velocity field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/msg/JointComponentTolerance.acceleration field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "control_msgs/msg/JointComponentTolerance",
        "native_identity": null,
        "codec_identity": "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342",
        "minimum": 30,
        "maximum": 542,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "joint_name",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "component",
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
                    "default": null
                },
                {
                    "name" : "position",
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
                    "default": null
                },
                {
                    "name" : "velocity",
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
                    "default": null
                },
                {
                    "name" : "acceleration",
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
                    "default": null
                }
            ]
    };
    /** @brief Original control_msgs/msg/JointComponentTolerance.X_AXIS constant; no instance bytes. */
    static X_AXIS = 1;
    /** @brief Original control_msgs/msg/JointComponentTolerance.Y_AXIS constant; no instance bytes. */
    static Y_AXIS = 2;
    /** @brief Original control_msgs/msg/JointComponentTolerance.Z_AXIS constant; no instance bytes. */
    static Z_AXIS = 3;
    /** @brief Original control_msgs/msg/JointComponentTolerance.TRANSLATION constant; no instance bytes. */
    static TRANSLATION = 4;
    /** @brief Original control_msgs/msg/JointComponentTolerance.ROTATION constant; no instance bytes. */
    static ROTATION = 5;
}

REGISTRY.add(Ros2Control_msgsMsgJointComponentTolerance);

/**
 * @brief Complete control_msgs/action/FollowJointTrajectory_Goal value.
 * @details All 7 fields and 0 constants; extent 64..20920 bytes.
 */
export class Ros2Control_msgsActionFollowJointTrajectory_Goal extends Record
{
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Goal.trajectory field.
     * @details Type trajectory_msgs/msg/JointTrajectory; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Goal.multi_dof_trajectory field.
     * @details Type trajectory_msgs/msg/MultiDOFJointTrajectory; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Goal.path_tolerance field.
     * @details Type control_msgs/msg/JointTolerance; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Goal.component_path_tolerance field.
     * @details Type control_msgs/msg/JointComponentTolerance; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Goal.goal_tolerance field.
     * @details Type control_msgs/msg/JointTolerance; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Goal.component_goal_tolerance field.
     * @details Type control_msgs/msg/JointComponentTolerance; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Goal.goal_time_tolerance field.
     * @details Type builtin_interfaces/msg/Duration; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "control_msgs/action/FollowJointTrajectory_Goal",
        "native_identity": null,
        "codec_identity": "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16",
        "minimum": 64,
        "maximum": 20920,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "trajectory",
                    "type": "trajectory_msgs/msg/JointTrajectory",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "multi_dof_trajectory",
                    "type": "trajectory_msgs/msg/MultiDOFJointTrajectory",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "path_tolerance",
                    "type": "control_msgs/msg/JointTolerance",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "component_path_tolerance",
                    "type": "control_msgs/msg/JointComponentTolerance",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "goal_tolerance",
                    "type": "control_msgs/msg/JointTolerance",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "component_goal_tolerance",
                    "type": "control_msgs/msg/JointComponentTolerance",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "goal_time_tolerance",
                    "type": "builtin_interfaces/msg/Duration",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Control_msgsActionFollowJointTrajectory_Goal);

/**
 * @brief Complete control_msgs/action/FollowJointTrajectory_Result value.
 * @details All 2 fields and 6 constants; extent 8..4104 bytes.
 */
export class Ros2Control_msgsActionFollowJointTrajectory_Result extends Record
{
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Result.error_code field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Result.error_string field.
     * @details Type string; shape scalar; count/bound 0; text bound 4096 bytes.
     */
    static schema = {
        "type" : "control_msgs/action/FollowJointTrajectory_Result",
        "native_identity": null,
        "codec_identity": "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70",
        "minimum": 8,
        "maximum": 4104,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "error_code",
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
                    "default": null
                },
                {
                    "name" : "error_string",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 4096,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
    /** @brief Original control_msgs/action/FollowJointTrajectory_Result.SUCCESSFUL constant; no instance bytes. */
    static SUCCESSFUL = 0;
    /** @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_GOAL constant; no instance bytes. */
    static INVALID_GOAL = -1;
    /** @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_JOINTS constant; no instance bytes. */
    static INVALID_JOINTS = -2;
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Result.OLD_HEADER_TIMESTAMP constant; no instance
     * bytes.
     */
    static OLD_HEADER_TIMESTAMP = -3;
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Result.PATH_TOLERANCE_VIOLATED constant; no instance
     * bytes.
     */
    static PATH_TOLERANCE_VIOLATED = -4;
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Result.GOAL_TOLERANCE_VIOLATED constant; no instance
     * bytes.
     */
    static GOAL_TOLERANCE_VIOLATED = -5;
}

REGISTRY.add(Ros2Control_msgsActionFollowJointTrajectory_Result);

/**
 * @brief Complete control_msgs/action/FollowJointTrajectory_Feedback value.
 * @details All 9 fields and 0 constants; extent 152..4128 bytes.
 */
export class Ros2Control_msgsActionFollowJointTrajectory_Feedback extends Record
{
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Feedback.header field.
     * @details Type std_msgs/msg/Header; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Feedback.joint_names field.
     * @details Type string; shape sequence; count/bound 12; text bound 64 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Feedback.desired field.
     * @details Type trajectory_msgs/msg/JointTrajectoryPoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Feedback.actual field.
     * @details Type trajectory_msgs/msg/JointTrajectoryPoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Feedback.error field.
     * @details Type trajectory_msgs/msg/JointTrajectoryPoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names field.
     * @details Type string; shape sequence; count/bound 2; text bound 512 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_desired field.
     * @details Type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_actual field.
     * @details Type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_error field.
     * @details Type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "control_msgs/action/FollowJointTrajectory_Feedback",
        "native_identity": null,
        "codec_identity": "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb",
        "minimum": 152,
        "maximum": 4128,
        "semantics": "",
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
                    "default": null
                },
                {
                    "name" : "joint_names",
                    "type": "string",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "desired",
                    "type": "trajectory_msgs/msg/JointTrajectoryPoint",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "actual",
                    "type": "trajectory_msgs/msg/JointTrajectoryPoint",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "error",
                    "type": "trajectory_msgs/msg/JointTrajectoryPoint",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "multi_dof_joint_names",
                    "type": "string",
                    "array": "sequence",
                    "count": 2,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "multi_dof_desired",
                    "type": "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "multi_dof_actual",
                    "type": "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "multi_dof_error",
                    "type": "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Control_msgsActionFollowJointTrajectory_Feedback);

/**
 * @brief Complete geometry_msgs/msg/TransformStamped value.
 * @details All 3 fields and 0 constants; extent 72..648 bytes.
 */
export class Ros2Geometry_msgsMsgTransformStamped extends Record
{
    /**
     * @brief Original geometry_msgs/msg/TransformStamped.header field.
     * @details Type std_msgs/msg/Header; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original geometry_msgs/msg/TransformStamped.child_frame_id field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original geometry_msgs/msg/TransformStamped.transform field.
     * @details Type geometry_msgs/msg/Transform; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "geometry_msgs/msg/TransformStamped",
        "native_identity": null,
        "codec_identity": "UWVMROS1_be553b5a9c73b687cde56ff1c381e3c67168fd2c0366830be3c65382c5bbd792",
        "minimum": 72,
        "maximum": 648,
        "semantics": "",
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
                    "default": null
                },
                {
                    "name" : "child_frame_id",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "transform",
                    "type": "geometry_msgs/msg/Transform",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgTransformStamped);

/**
 * @brief Complete industrial_msgs/msg/DebugLevel value.
 * @details All 1 fields and 6 constants; extent 1..1 bytes.
 */
export class Ros2Industrial_msgsMsgDebugLevel extends Record
{
    /**
     * @brief Original industrial_msgs/msg/DebugLevel.val field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "industrial_msgs/msg/DebugLevel",
        "native_identity": null,
        "codec_identity": "UWVMROS1_989475cc5d981d8c5ab91fb091235871f7a1c7d87d246eb2250086e6c3c37c79",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [ {
            "name" : "val",
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
            "default": null
        } ]
    };
    /** @brief Original industrial_msgs/msg/DebugLevel.DEBUG constant; no instance bytes. */
    static DEBUG = 5;
    /** @brief Original industrial_msgs/msg/DebugLevel.INFO constant; no instance bytes. */
    static INFO = 4;
    /** @brief Original industrial_msgs/msg/DebugLevel.WARN constant; no instance bytes. */
    static WARN = 3;
    /** @brief Original industrial_msgs/msg/DebugLevel.ERROR constant; no instance bytes. */
    static ERROR = 2;
    /** @brief Original industrial_msgs/msg/DebugLevel.FATAL constant; no instance bytes. */
    static FATAL = 1;
    /** @brief Original industrial_msgs/msg/DebugLevel.NONE constant; no instance bytes. */
    static NONE = 0;
}

REGISTRY.add(Ros2Industrial_msgsMsgDebugLevel);

/**
 * @brief Complete industrial_msgs/msg/DeviceInfo value.
 * @details All 5 fields and 0 constants; extent 20..2580 bytes.
 */
export class Ros2Industrial_msgsMsgDeviceInfo extends Record
{
    /**
     * @brief Original industrial_msgs/msg/DeviceInfo.model field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original industrial_msgs/msg/DeviceInfo.serial_number field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original industrial_msgs/msg/DeviceInfo.hw_version field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original industrial_msgs/msg/DeviceInfo.sw_version field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original industrial_msgs/msg/DeviceInfo.address field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "industrial_msgs/msg/DeviceInfo",
        "native_identity": null,
        "codec_identity": "UWVMROS1_f9a5962800e17495f34dbb73f37373df22f900e528c630497417f78cdecb283b",
        "minimum": 20,
        "maximum": 2580,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "model",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "serial_number",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "hw_version",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "sw_version",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "address",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Industrial_msgsMsgDeviceInfo);

/**
 * @brief Complete industrial_msgs/msg/RobotMode value.
 * @details All 1 fields and 3 constants; extent 1..1 bytes.
 */
export class Ros2Industrial_msgsMsgRobotMode extends Record
{
    /**
     * @brief Original industrial_msgs/msg/RobotMode.val field.
     * @details Type int8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "industrial_msgs/msg/RobotMode",
        "native_identity": null,
        "codec_identity": "UWVMROS1_4f9173c5e27815ca33be603b8645a22420bda3ab308962127060d2413d092c4c",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [ {
            "name" : "val",
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
            "default": null
        } ]
    };
    /** @brief Original industrial_msgs/msg/RobotMode.UNKNOWN constant; no instance bytes. */
    static UNKNOWN = -1;
    /** @brief Original industrial_msgs/msg/RobotMode.MANUAL constant; no instance bytes. */
    static MANUAL = 1;
    /** @brief Original industrial_msgs/msg/RobotMode.AUTO constant; no instance bytes. */
    static AUTO = 2;
}

REGISTRY.add(Ros2Industrial_msgsMsgRobotMode);

/**
 * @brief Complete industrial_msgs/msg/TriState value.
 * @details All 1 fields and 11 constants; extent 1..1 bytes.
 */
export class Ros2Industrial_msgsMsgTriState extends Record
{
    /**
     * @brief Original industrial_msgs/msg/TriState.val field.
     * @details Type int8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "industrial_msgs/msg/TriState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b7ae62ce19d642ad46e962ffb50cd76c43c96ac673ac36d690f99c1dd8d2a841",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [ {
            "name" : "val",
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
            "default": null
        } ]
    };
    /** @brief Original industrial_msgs/msg/TriState.UNKNOWN constant; no instance bytes. */
    static UNKNOWN = -1;
    /** @brief Original industrial_msgs/msg/TriState.TRUE constant; no instance bytes. */
    static TRUE = 1;
    /** @brief Original industrial_msgs/msg/TriState.ON constant; no instance bytes. */
    static ON = 1;
    /** @brief Original industrial_msgs/msg/TriState.ENABLED constant; no instance bytes. */
    static ENABLED = 1;
    /** @brief Original industrial_msgs/msg/TriState.HIGH constant; no instance bytes. */
    static HIGH = 1;
    /** @brief Original industrial_msgs/msg/TriState.CLOSED constant; no instance bytes. */
    static CLOSED = 1;
    /** @brief Original industrial_msgs/msg/TriState.FALSE constant; no instance bytes. */
    static FALSE = 0;
    /** @brief Original industrial_msgs/msg/TriState.OFF constant; no instance bytes. */
    static OFF = 0;
    /** @brief Original industrial_msgs/msg/TriState.DISABLED constant; no instance bytes. */
    static DISABLED = 0;
    /** @brief Original industrial_msgs/msg/TriState.LOW constant; no instance bytes. */
    static LOW = 0;
    /** @brief Original industrial_msgs/msg/TriState.OPEN constant; no instance bytes. */
    static OPEN = 0;
}

REGISTRY.add(Ros2Industrial_msgsMsgTriState);

/**
 * @brief Complete industrial_msgs/msg/RobotStatus value.
 * @details All 8 fields and 0 constants; extent 22..150 bytes.
 */
export class Ros2Industrial_msgsMsgRobotStatus extends Record
{
    /**
     * @brief Original industrial_msgs/msg/RobotStatus.header field.
     * @details Type std_msgs/msg/Header; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original industrial_msgs/msg/RobotStatus.mode field.
     * @details Type industrial_msgs/msg/RobotMode; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original industrial_msgs/msg/RobotStatus.e_stopped field.
     * @details Type industrial_msgs/msg/TriState; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original industrial_msgs/msg/RobotStatus.drives_powered field.
     * @details Type industrial_msgs/msg/TriState; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original industrial_msgs/msg/RobotStatus.motion_possible field.
     * @details Type industrial_msgs/msg/TriState; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original industrial_msgs/msg/RobotStatus.in_motion field.
     * @details Type industrial_msgs/msg/TriState; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original industrial_msgs/msg/RobotStatus.in_error field.
     * @details Type industrial_msgs/msg/TriState; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original industrial_msgs/msg/RobotStatus.error_codes field.
     * @details Type int32; shape sequence; count/bound 16; text bound 0 bytes.
     */
    static schema = {
        "type" : "industrial_msgs/msg/RobotStatus",
        "native_identity": null,
        "codec_identity": "UWVMROS1_1086f16ba5d614f3d87c3ab195240b5a0683ef490f2e92434e4ea3bdbe7554ba",
        "minimum": 22,
        "maximum": 150,
        "semantics": "",
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
                    "default": null
                },
                {
                    "name" : "mode",
                    "type": "industrial_msgs/msg/RobotMode",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "e_stopped",
                    "type": "industrial_msgs/msg/TriState",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "drives_powered",
                    "type": "industrial_msgs/msg/TriState",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "motion_possible",
                    "type": "industrial_msgs/msg/TriState",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "in_motion",
                    "type": "industrial_msgs/msg/TriState",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "in_error",
                    "type": "industrial_msgs/msg/TriState",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "error_codes",
                    "type": "int32",
                    "array": "sequence",
                    "count": 16,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Industrial_msgsMsgRobotStatus);

/**
 * @brief Complete industrial_msgs/msg/ServiceReturnCode value.
 * @details All 1 fields and 2 constants; extent 1..1 bytes.
 */
export class Ros2Industrial_msgsMsgServiceReturnCode extends Record
{
    /**
     * @brief Original industrial_msgs/msg/ServiceReturnCode.val field.
     * @details Type int8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "industrial_msgs/msg/ServiceReturnCode",
        "native_identity": null,
        "codec_identity": "UWVMROS1_62eb4415a63d7686f16ea343193238838c78aa8e9b9786a65c92fb227e03d3e5",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [ {
            "name" : "val",
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
            "default": null
        } ]
    };
    /** @brief Original industrial_msgs/msg/ServiceReturnCode.SUCCESS constant; no instance bytes. */
    static SUCCESS = 1;
    /** @brief Original industrial_msgs/msg/ServiceReturnCode.FAILURE constant; no instance bytes. */
    static FAILURE = -1;
}

REGISTRY.add(Ros2Industrial_msgsMsgServiceReturnCode);

/**
 * @brief Complete industrial_msgs/srv/CmdJointTrajectory_Request value.
 * @details All 1 fields and 0 constants; extent 20..4164 bytes.
 */
export class Ros2Industrial_msgsSrvCmdJointTrajectory_Request extends Record
{
    /**
     * @brief Original industrial_msgs/srv/CmdJointTrajectory_Request.trajectory field.
     * @details Type trajectory_msgs/msg/JointTrajectory; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "industrial_msgs/srv/CmdJointTrajectory_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_1def3934b243546a4591b7be1ef2eb27002fbd9d3725302016e3b1846805149d",
        "minimum": 20,
        "maximum": 4164,
        "semantics": "",
        "fields": [ {
            "name" : "trajectory",
            "type": "trajectory_msgs/msg/JointTrajectory",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Industrial_msgsSrvCmdJointTrajectory_Request);

/**
 * @brief Complete industrial_msgs/srv/CmdJointTrajectory_Response value.
 * @details All 1 fields and 0 constants; extent 1..1 bytes.
 */
export class Ros2Industrial_msgsSrvCmdJointTrajectory_Response extends Record
{
    /**
     * @brief Original industrial_msgs/srv/CmdJointTrajectory_Response.code field.
     * @details Type industrial_msgs/msg/ServiceReturnCode; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "industrial_msgs/srv/CmdJointTrajectory_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_1e4d064ef659e5d1cc73bdd90f82657a16087c96e0f75b632e2be2be884bca8b",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [ {
            "name" : "code",
            "type": "industrial_msgs/msg/ServiceReturnCode",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Industrial_msgsSrvCmdJointTrajectory_Response);

/**
 * @brief Complete industrial_msgs/srv/GetRobotInfo_Request value.
 * @details All 0 fields and 0 constants; extent 0..0 bytes.
 */
export class Ros2Industrial_msgsSrvGetRobotInfo_Request extends Record
{
    static schema = {
        "type" : "industrial_msgs/srv/GetRobotInfo_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_688a272f6ee39921013c6c39a7b0b0c4e2cda5119787088234103518ba25c1d2",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": []
    };
}

REGISTRY.add(Ros2Industrial_msgsSrvGetRobotInfo_Request);

/**
 * @brief Complete industrial_msgs/srv/GetRobotInfo_Response value.
 * @details All 3 fields and 0 constants; extent 25..32768 bytes.
 */
export class Ros2Industrial_msgsSrvGetRobotInfo_Response extends Record
{
    /**
     * @brief Original industrial_msgs/srv/GetRobotInfo_Response.controller field.
     * @details Type industrial_msgs/msg/DeviceInfo; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original industrial_msgs/srv/GetRobotInfo_Response.robots field.
     * @details Type industrial_msgs/msg/DeviceInfo; shape sequence; count/bound 16; text bound 0 bytes.
     */
    /**
     * @brief Original industrial_msgs/srv/GetRobotInfo_Response.code field.
     * @details Type industrial_msgs/msg/ServiceReturnCode; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "industrial_msgs/srv/GetRobotInfo_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_6d37cdcd8afc918329d7856e682d7fcdae2931832474a9194143c21079ed4152",
        "minimum": 25,
        "maximum": 32768,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "controller",
                    "type": "industrial_msgs/msg/DeviceInfo",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "robots",
                    "type": "industrial_msgs/msg/DeviceInfo",
                    "array": "sequence",
                    "count": 16,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "code",
                    "type": "industrial_msgs/msg/ServiceReturnCode",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Industrial_msgsSrvGetRobotInfo_Response);

/**
 * @brief Complete industrial_msgs/srv/SetDrivePower_Request value.
 * @details All 1 fields and 0 constants; extent 1..1 bytes.
 */
export class Ros2Industrial_msgsSrvSetDrivePower_Request extends Record
{
    /**
     * @brief Original industrial_msgs/srv/SetDrivePower_Request.drive_power field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "industrial_msgs/srv/SetDrivePower_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b4fc5e109e131a97820ab5856b34839c572ac0b0c256d70457c176e401844f96",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [ {
            "name" : "drive_power",
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
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Industrial_msgsSrvSetDrivePower_Request);

/**
 * @brief Complete industrial_msgs/srv/SetDrivePower_Response value.
 * @details All 1 fields and 0 constants; extent 1..1 bytes.
 */
export class Ros2Industrial_msgsSrvSetDrivePower_Response extends Record
{
    /**
     * @brief Original industrial_msgs/srv/SetDrivePower_Response.code field.
     * @details Type industrial_msgs/msg/ServiceReturnCode; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "industrial_msgs/srv/SetDrivePower_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_050fb9a727ebedd240e9023b9a2379a5d72e0d9fa335bead0c40d783abb22cff",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [ {
            "name" : "code",
            "type": "industrial_msgs/msg/ServiceReturnCode",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Industrial_msgsSrvSetDrivePower_Response);

/**
 * @brief Complete industrial_msgs/srv/SetRemoteLoggerLevel_Request value.
 * @details All 1 fields and 0 constants; extent 1..1 bytes.
 */
export class Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request extends Record
{
    /**
     * @brief Original industrial_msgs/srv/SetRemoteLoggerLevel_Request.level field.
     * @details Type industrial_msgs/msg/DebugLevel; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "industrial_msgs/srv/SetRemoteLoggerLevel_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_bbadd39c05cab90b14f4b1fad23ff05ac83325f6cc57810cd649e04fa29fe014",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [ {
            "name" : "level",
            "type": "industrial_msgs/msg/DebugLevel",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request);

/**
 * @brief Complete industrial_msgs/srv/SetRemoteLoggerLevel_Response value.
 * @details All 1 fields and 0 constants; extent 1..1 bytes.
 */
export class Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response extends Record
{
    /**
     * @brief Original industrial_msgs/srv/SetRemoteLoggerLevel_Response.code field.
     * @details Type industrial_msgs/msg/ServiceReturnCode; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "industrial_msgs/srv/SetRemoteLoggerLevel_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b8681d031a4bb5a67b842277af2e2156e8339bdef23be88d2b64e296a7e3d63b",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [ {
            "name" : "code",
            "type": "industrial_msgs/msg/ServiceReturnCode",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response);

/**
 * @brief Complete industrial_msgs/srv/StartMotion_Request value.
 * @details All 0 fields and 0 constants; extent 0..0 bytes.
 */
export class Ros2Industrial_msgsSrvStartMotion_Request extends Record
{
    static schema = {
        "type" : "industrial_msgs/srv/StartMotion_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_0a96fb9489f863612a91bf82f995f2f28bcb7fb403bde74c617925c789e4dcd8",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": []
    };
}

REGISTRY.add(Ros2Industrial_msgsSrvStartMotion_Request);

/**
 * @brief Complete industrial_msgs/srv/StartMotion_Response value.
 * @details All 1 fields and 0 constants; extent 1..1 bytes.
 */
export class Ros2Industrial_msgsSrvStartMotion_Response extends Record
{
    /**
     * @brief Original industrial_msgs/srv/StartMotion_Response.code field.
     * @details Type industrial_msgs/msg/ServiceReturnCode; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "industrial_msgs/srv/StartMotion_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_3bb3650fbe638a6d300bcd9fcd5acf574bd54d00a7368edd3014bf44dcf66c16",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [ {
            "name" : "code",
            "type": "industrial_msgs/msg/ServiceReturnCode",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Industrial_msgsSrvStartMotion_Response);

/**
 * @brief Complete industrial_msgs/srv/StopMotion_Request value.
 * @details All 0 fields and 0 constants; extent 0..0 bytes.
 */
export class Ros2Industrial_msgsSrvStopMotion_Request extends Record
{
    static schema = {
        "type" : "industrial_msgs/srv/StopMotion_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_fe5a7cf0da30270eab5cfb1ab8c1fbd37d2b4c4f91ef29662a0ddcac39e6ef49",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": []
    };
}

REGISTRY.add(Ros2Industrial_msgsSrvStopMotion_Request);

/**
 * @brief Complete industrial_msgs/srv/StopMotion_Response value.
 * @details All 1 fields and 0 constants; extent 1..1 bytes.
 */
export class Ros2Industrial_msgsSrvStopMotion_Response extends Record
{
    /**
     * @brief Original industrial_msgs/srv/StopMotion_Response.code field.
     * @details Type industrial_msgs/msg/ServiceReturnCode; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "industrial_msgs/srv/StopMotion_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_c26bda240d86becc5b8b4ea80380eba3602092a5ec4a06818dbfbd38c24015b5",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [ {
            "name" : "code",
            "type": "industrial_msgs/msg/ServiceReturnCode",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Industrial_msgsSrvStopMotion_Response);

/**
 * @brief Complete motoros2_interfaces/msg/AlarmCauseRemedy value.
 * @details All 2 fields and 0 constants; extent 8..1032 bytes.
 */
export class Ros2Motoros2_interfacesMsgAlarmCauseRemedy extends Record
{
    /**
     * @brief Original motoros2_interfaces/msg/AlarmCauseRemedy.cause field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/msg/AlarmCauseRemedy.remedy field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/msg/AlarmCauseRemedy",
        "native_identity": null,
        "codec_identity": "UWVMROS1_f977609022f4ca593b9089d0038d1c28d1bc4b533e272f38c3379495f326ddf5",
        "minimum": 8,
        "maximum": 1032,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "cause",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "remedy",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesMsgAlarmCauseRemedy);

/**
 * @brief Complete motoros2_interfaces/msg/AlarmInfo value.
 * @details All 7 fields and 0 constants; extent 32..25248 bytes.
 */
export class Ros2Motoros2_interfacesMsgAlarmInfo extends Record
{
    /**
     * @brief Original motoros2_interfaces/msg/AlarmInfo.number field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/msg/AlarmInfo.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/msg/AlarmInfo.sub_code field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/msg/AlarmInfo.datetime field.
     * @details Type builtin_interfaces/msg/Time; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/msg/AlarmInfo.contents field.
     * @details Type string; shape scalar; count/bound 0; text bound 4096 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/msg/AlarmInfo.description field.
     * @details Type string; shape scalar; count/bound 0; text bound 4096 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/msg/AlarmInfo.help field.
     * @details Type motoros2_interfaces/msg/AlarmCauseRemedy; shape sequence; count/bound 16; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/msg/AlarmInfo",
        "native_identity": null,
        "codec_identity": "UWVMROS1_7cf3fa3037f28f295dd62009e708ea3e46a80f83471d0a0f9fb55af125c0c27f",
        "minimum": 32,
        "maximum": 25248,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "number",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "sub_code",
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
                    "default": null
                },
                {
                    "name" : "datetime",
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
                    "default": null
                },
                {
                    "name" : "contents",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 4096,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "description",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 4096,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "help",
                    "type": "motoros2_interfaces/msg/AlarmCauseRemedy",
                    "array": "sequence",
                    "count": 16,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesMsgAlarmInfo);

/**
 * @brief Complete motoros2_interfaces/msg/ErrorInfo value.
 * @details All 4 fields and 0 constants; extent 20..532 bytes.
 */
export class Ros2Motoros2_interfacesMsgErrorInfo extends Record
{
    /**
     * @brief Original motoros2_interfaces/msg/ErrorInfo.number field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/msg/ErrorInfo.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/msg/ErrorInfo.sub_code field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/msg/ErrorInfo.datetime field.
     * @details Type builtin_interfaces/msg/Time; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/msg/ErrorInfo",
        "native_identity": null,
        "codec_identity": "UWVMROS1_1cfe60c0af6bc157db84c4d9e0b20a8f2e5c78fd4afd6908d32b3217f3734b67",
        "minimum": 20,
        "maximum": 532,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "number",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "sub_code",
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
                    "default": null
                },
                {
                    "name" : "datetime",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesMsgErrorInfo);

/**
 * @brief Complete motoros2_interfaces/msg/InformJobCrudResultCodes value.
 * @details All 0 fields and 12 constants; extent 0..0 bytes.
 */
export class Ros2Motoros2_interfacesMsgInformJobCrudResultCodes extends Record
{
    static schema = {
        "type" : "motoros2_interfaces/msg/InformJobCrudResultCodes",
        "native_identity": null,
        "codec_identity": "UWVMROS1_f5ed037b83926b48a88fa486ed8db5f5d3e39e4a486d4a90190ffd6a70452613",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": []
    };
    /** @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_OK constant; no instance bytes. */
    static RC_OK = 1;
    /** @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_OK constant; no instance bytes. */
    static STR_OK = "Success";
    /**
     * @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_REFRESHING_JOB_LIST constant; no
     * instance bytes.
     */
    static RC_ERR_REFRESHING_JOB_LIST = 10;
    /**
     * @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_REFRESHING_JOB_LIST constant; no
     * instance bytes.
     */
    static STR_ERR_REFRESHING_JOB_LIST = "Error refreshing job list";
    /**
     * @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_RETRIEVING_FILE_COUNT constant; no
     * instance bytes.
     */
    static RC_ERR_RETRIEVING_FILE_COUNT = 11;
    /**
     * @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_RETRIEVING_FILE_COUNT constant; no
     * instance bytes.
     */
    static STR_ERR_RETRIEVING_FILE_COUNT = "Error retrieving file count";
    /**
     * @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_TOO_MANY_JOBS constant; no instance
     * bytes.
     */
    static RC_ERR_TOO_MANY_JOBS = 12;
    /**
     * @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_TOO_MANY_JOBS constant; no instance
     * bytes.
     */
    static STR_ERR_TOO_MANY_JOBS = "Too many jobs";
    /**
     * @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST constant;
     * no instance bytes.
     */
    static RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST = 13;
    /**
     * @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST constant;
     * no instance bytes.
     */
    static STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST = "Failed retrieving job name from list";
    /**
     * @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE
     * constant; no instance bytes.
     */
    static RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE = 14;
    /**
     * @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE
     * constant; no instance bytes.
     */
    static STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE = "Error adding job name to service response";
}

REGISTRY.add(Ros2Motoros2_interfacesMsgInformJobCrudResultCodes);

/**
 * @brief Complete motoros2_interfaces/msg/InitTrajEnum value.
 * @details All 1 fields and 34 constants; extent 2..2 bytes.
 */
export class Ros2Motoros2_interfacesMsgInitTrajEnum extends Record
{
    /**
     * @brief Original motoros2_interfaces/msg/InitTrajEnum.value field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/msg/InitTrajEnum",
        "native_identity": null,
        "codec_identity": "UWVMROS1_9279979f9e3570f48d6e23bf812a4680e3deed9af3309019efdff5464d7b7763",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [ {
            "name" : "value",
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
            "default": null
        } ]
    };
    /** @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_OK constant; no instance bytes. */
    static INIT_TRAJ_OK = 0;
    /** @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_OK_STR constant; no instance bytes. */
    static INIT_TRAJ_OK_STR = "OK";
    /** @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_UNSPECIFIED constant; no instance bytes. */
    static INIT_TRAJ_UNSPECIFIED = 200;
    /** @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_UNSPECIFIED_STR constant; no instance bytes. */
    static INIT_TRAJ_UNSPECIFIED_STR = "Unspecified failure";
    /** @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_SMALL constant; no instance bytes. */
    static INIT_TRAJ_TOO_SMALL = 201;
    /** @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_SMALL_STR constant; no instance bytes. */
    static INIT_TRAJ_TOO_SMALL_STR = "Trajectory must contain at least two points.";
    /** @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_BIG constant; no instance bytes. */
    static INIT_TRAJ_TOO_BIG = 202;
    /** @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_BIG_STR constant; no instance bytes. */
    static INIT_TRAJ_TOO_BIG_STR = "Trajectory contains too many points (Not enough memory).";
    /** @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_ALREADY_IN_MOTION constant; no instance bytes. */
    static INIT_TRAJ_ALREADY_IN_MOTION = 203;
    /**
     * @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_ALREADY_IN_MOTION_STR constant; no instance
     * bytes.
     */
    static INIT_TRAJ_ALREADY_IN_MOTION_STR = "Already running a trajectory.";
    /**
     * @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_STARTING_POS constant; no instance bytes.
     */
    static INIT_TRAJ_INVALID_STARTING_POS = 204;
    /**
     * @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_STARTING_POS_STR constant; no instance
     * bytes.
     */
    static INIT_TRAJ_INVALID_STARTING_POS_STR = "The first point must match the robot's current position.";
    /** @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_VELOCITY constant; no instance bytes. */
    static INIT_TRAJ_INVALID_VELOCITY = 205;
    /**
     * @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_VELOCITY_STR constant; no instance bytes.
     */
    static INIT_TRAJ_INVALID_VELOCITY_STR = "The commanded velocity is too high.";
    /** @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_JOINTNAME constant; no instance bytes. */
    static INIT_TRAJ_INVALID_JOINTNAME = 206;
    /**
     * @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_JOINTNAME_STR constant; no instance
     * bytes.
     */
    static INIT_TRAJ_INVALID_JOINTNAME_STR = "Invalid joint name specified. Check motoros2_config.yaml.";
    /**
     * @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INCOMPLETE_JOINTLIST constant; no instance bytes.
     */
    static INIT_TRAJ_INCOMPLETE_JOINTLIST = 207;
    /**
     * @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INCOMPLETE_JOINTLIST_STR constant; no instance
     * bytes.
     */
    static INIT_TRAJ_INCOMPLETE_JOINTLIST_STR = "Trajectory must contain data for all joints.";
    /** @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_TIME constant; no instance bytes. */
    static INIT_TRAJ_INVALID_TIME = 208;
    /** @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_TIME_STR constant; no instance bytes. */
    static INIT_TRAJ_INVALID_TIME_STR = "Invalid time in trajectory.";
    /** @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_MODE constant; no instance bytes. */
    static INIT_TRAJ_WRONG_MODE = 209;
    /** @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_MODE_STR constant; no instance bytes. */
    static INIT_TRAJ_WRONG_MODE_STR = "Must call start_traj_mode service";
    /** @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_BACKWARD_TIME constant; no instance bytes. */
    static INIT_TRAJ_BACKWARD_TIME = 210;
    /** @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_BACKWARD_TIME_STR constant; no instance bytes. */
    static INIT_TRAJ_BACKWARD_TIME_STR = "Trajectory message contains waypoints that are not strictly increasing in time.";
    /**
     * @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS constant; no instance
     * bytes.
     */
    static INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS = 211;
    /**
     * @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR constant; no
     * instance bytes.
     */
    static INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR = "Trajectory did not contain position data for all axes.";
    /**
     * @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES constant; no instance
     * bytes.
     */
    static INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES = 212;
    /**
     * @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR constant; no
     * instance bytes.
     */
    static INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR = "Trajectory did not contain velocity data for all axes.";
    /**
     * @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_VELOCITY constant; no instance
     * bytes.
     */
    static INIT_TRAJ_INVALID_ENDING_VELOCITY = 213;
    /**
     * @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_VELOCITY_STR constant; no instance
     * bytes.
     */
    static INIT_TRAJ_INVALID_ENDING_VELOCITY_STR = "The final point in the trajectory must have zero velocity.";
    /**
     * @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_ACCELERATION constant; no instance
     * bytes.
     */
    static INIT_TRAJ_INVALID_ENDING_ACCELERATION = 214;
    /**
     * @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR constant; no
     * instance bytes.
     */
    static INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR = "The final point in the trajectory must have zero acceleration.";
    /**
     * @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_DUPLICATE_JOINT_NAME constant; no instance bytes.
     */
    static INIT_TRAJ_DUPLICATE_JOINT_NAME = 215;
    /**
     * @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_DUPLICATE_JOINT_NAME_STR constant; no instance
     * bytes.
     */
    static INIT_TRAJ_DUPLICATE_JOINT_NAME_STR = "The trajectory contains duplicate joint names.";
}

REGISTRY.add(Ros2Motoros2_interfacesMsgInitTrajEnum);

/**
 * @brief Complete motoros2_interfaces/msg/IoResultCodes value.
 * @details All 0 fields and 13 constants; extent 0..0 bytes.
 */
export class Ros2Motoros2_interfacesMsgIoResultCodes extends Record
{
    static schema = {
        "type" : "motoros2_interfaces/msg/IoResultCodes",
        "native_identity": null,
        "codec_identity": "UWVMROS1_ef9ab829ae79d4e58336a56259b6beb2ad26a8b1b4070013d9004ac4ab269915",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": []
    };
    /** @brief Original motoros2_interfaces/msg/IoResultCodes.OK constant; no instance bytes. */
    static OK = 0;
    /** @brief Original motoros2_interfaces/msg/IoResultCodes.OK_STR constant; no instance bytes. */
    static OK_STR = "Success";
    /** @brief Original motoros2_interfaces/msg/IoResultCodes.READ_ADDRESS_INVALID constant; no instance bytes. */
    static READ_ADDRESS_INVALID = 1001;
    /** @brief Original motoros2_interfaces/msg/IoResultCodes.READ_ADDRESS_INVALID_STR constant; no instance bytes. */
    static READ_ADDRESS_INVALID_STR = "Address cannot be read from (out of readable range)";
    /** @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_ADDRESS_INVALID constant; no instance bytes. */
    static WRITE_ADDRESS_INVALID = 1002;
    /** @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_ADDRESS_INVALID_STR constant; no instance bytes. */
    static WRITE_ADDRESS_INVALID_STR = "Address cannot be written to (out of writable range)";
    /** @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_VALUE_INVALID constant; no instance bytes. */
    static WRITE_VALUE_INVALID = 1003;
    /** @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_VALUE_INVALID_STR constant; no instance bytes. */
    static WRITE_VALUE_INVALID_STR = "Illegal value for the type of IO element addressed";
    /** @brief Original motoros2_interfaces/msg/IoResultCodes.READ_API_ERROR constant; no instance bytes. */
    static READ_API_ERROR = 1004;
    /** @brief Original motoros2_interfaces/msg/IoResultCodes.READ_API_ERROR_STR constant; no instance bytes. */
    static READ_API_ERROR_STR = "The MotoPlus function mpReadIO returned -1. No further information is available";
    /** @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_API_ERROR constant; no instance bytes. */
    static WRITE_API_ERROR = 1005;
    /** @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_API_ERROR_STR constant; no instance bytes. */
    static WRITE_API_ERROR_STR = "The MotoPlus function mpWriteIO returned -1. No further information is available";
    /** @brief Original motoros2_interfaces/msg/IoResultCodes.UNKNOWN_API_ERROR_STR constant; no instance bytes. */
    static UNKNOWN_API_ERROR_STR = "Unknown error accessing I/O. No further information is available";
}

REGISTRY.add(Ros2Motoros2_interfacesMsgIoResultCodes);

/**
 * @brief Complete motoros2_interfaces/msg/MotionReadyEnum value.
 * @details All 1 fields and 38 constants; extent 2..2 bytes.
 */
export class Ros2Motoros2_interfacesMsgMotionReadyEnum extends Record
{
    /**
     * @brief Original motoros2_interfaces/msg/MotionReadyEnum.value field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/msg/MotionReadyEnum",
        "native_identity": null,
        "codec_identity": "UWVMROS1_c8d4c2b0eba665e01cddc730421a3a42c5b344f4de35ae0a32204891603326d6",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [ {
            "name" : "value",
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
            "default": null
        } ]
    };
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.READY constant; no instance bytes. */
    static READY = 1;
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.READY_STR constant; no instance bytes. */
    static READY_STR = "Ready";
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_UNSPECIFIED constant; no instance bytes. */
    static NOT_READY_UNSPECIFIED = 100;
    /**
     * @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_UNSPECIFIED_STR constant; no instance bytes.
     */
    static NOT_READY_UNSPECIFIED_STR = "Unspecified";
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ALARM constant; no instance bytes. */
    static NOT_READY_ALARM = 101;
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ALARM_STR constant; no instance bytes. */
    static NOT_READY_ALARM_STR = "The controller has an active Alarm";
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ERROR constant; no instance bytes. */
    static NOT_READY_ERROR = 102;
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ERROR_STR constant; no instance bytes. */
    static NOT_READY_ERROR_STR = "The controller has an active Error";
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ESTOP constant; no instance bytes. */
    static NOT_READY_ESTOP = 103;
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ESTOP_STR constant; no instance bytes. */
    static NOT_READY_ESTOP_STR = "The controller is in E-Stop";
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_PLAY constant; no instance bytes. */
    static NOT_READY_NOT_PLAY = 104;
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_PLAY_STR constant; no instance bytes. */
    static NOT_READY_NOT_PLAY_STR = "The teach pendant must not be in TEACH mode";
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_REMOTE constant; no instance bytes. */
    static NOT_READY_NOT_REMOTE = 105;
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_REMOTE_STR constant; no instance bytes. */
    static NOT_READY_NOT_REMOTE_STR = "The teach pendant must be in REMOTE mode";
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_OFF constant; no instance bytes. */
    static NOT_READY_SERVO_OFF = 106;
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_OFF_STR constant; no instance bytes. */
    static NOT_READY_SERVO_OFF_STR = "Servo power is OFF. Please call start_traj_mode or start_point_queue_mode service";
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_HOLD constant; no instance bytes. */
    static NOT_READY_HOLD = 107;
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_HOLD_STR constant; no instance bytes. */
    static NOT_READY_HOLD_STR = "The controller is in HOLD";
    /**
     * @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_JOB_NOT_STARTED constant; no instance bytes.
     */
    static NOT_READY_JOB_NOT_STARTED = 108;
    /**
     * @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_JOB_NOT_STARTED_STR constant; no instance
     * bytes.
     */
    static NOT_READY_JOB_NOT_STARTED_STR = "The INIT_ROS job has not started. Please call start_traj_mode or start_point_queue_mode service";
    /**
     * @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_ON_WAIT_CMD constant; no instance bytes.
     */
    static NOT_READY_NOT_ON_WAIT_CMD = 109;
    /**
     * @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_ON_WAIT_CMD_STR constant; no instance
     * bytes.
     */
    static NOT_READY_NOT_ON_WAIT_CMD_STR = "INFORM job is not on a WAIT command. Check the format of INIT_ROS";
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_PFL_ACTIVE constant; no instance bytes. */
    static NOT_READY_PFL_ACTIVE = 111;
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_PFL_ACTIVE_STR constant; no instance bytes. */
    static NOT_READY_PFL_ACTIVE_STR = "A PFL event has occurred. Please return the robot to a safe state";
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_INC_MOVE_ERROR constant; no instance bytes. */
    static NOT_READY_INC_MOVE_ERROR = 112;
    /**
     * @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_INC_MOVE_ERROR_STR constant; no instance
     * bytes.
     */
    static NOT_READY_INC_MOVE_ERROR_STR = "The controller is in an error state. Please call reset_error to attempt to clear the error";
    /**
     * @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_PROGRAM_RUNNING constant; no instance
     * bytes.
     */
    static NOT_READY_OTHER_PROGRAM_RUNNING = 113;
    /**
     * @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_PROGRAM_RUNNING_STR constant; no
     * instance bytes.
     */
    static NOT_READY_OTHER_PROGRAM_RUNNING_STR = "Controller is running another job";
    /**
     * @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_TRAJ_MODE_ACTIVE constant; no instance
     * bytes.
     */
    static NOT_READY_OTHER_TRAJ_MODE_ACTIVE = 114;
    /**
     * @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR constant; no
     * instance bytes.
     */
    static NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR = "Another trajectory mode is already active. Please call stop_traj_mode service";
    /**
     * @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_CONT_CYCLE_MODE constant; no instance
     * bytes.
     */
    static NOT_READY_NOT_CONT_CYCLE_MODE = 115;
    /**
     * @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_CONT_CYCLE_MODE_STR constant; no instance
     * bytes.
     */
    static NOT_READY_NOT_CONT_CYCLE_MODE_STR = "AUTO cycle mode not set. Please set the cycle mode to AUTO";
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_MAJOR_ALARM constant; no instance bytes. */
    static NOT_READY_MAJOR_ALARM = 116;
    /**
     * @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_MAJOR_ALARM_STR constant; no instance bytes.
     */
    static NOT_READY_MAJOR_ALARM_STR = "Major Alarms can't be reset. Please check the teach pendant";
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ECO_MODE constant; no instance bytes. */
    static NOT_READY_ECO_MODE = 117;
    /** @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ECO_MODE_STR constant; no instance bytes. */
    static NOT_READY_ECO_MODE_STR = "Couldn't disable eco mode";
    /**
     * @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_ON_TIMEOUT constant; no instance bytes.
     */
    static NOT_READY_SERVO_ON_TIMEOUT = 118;
    /**
     * @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_ON_TIMEOUT_STR constant; no instance
     * bytes.
     */
    static NOT_READY_SERVO_ON_TIMEOUT_STR = "Timed out while waiting for servo on";
}

REGISTRY.add(Ros2Motoros2_interfacesMsgMotionReadyEnum);

/**
 * @brief Complete motoros2_interfaces/msg/QueueResultEnum value.
 * @details All 1 fields and 12 constants; extent 2..2 bytes.
 */
export class Ros2Motoros2_interfacesMsgQueueResultEnum extends Record
{
    /**
     * @brief Original motoros2_interfaces/msg/QueueResultEnum.value field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/msg/QueueResultEnum",
        "native_identity": null,
        "codec_identity": "UWVMROS1_146c6ce3f275b9e4a81622d73cca3d2298cf9f7bb95a783c0dea6279cb5b4f23",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [ {
            "name" : "value",
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
            "default": null
        } ]
    };
    /** @brief Original motoros2_interfaces/msg/QueueResultEnum.SUCCESS constant; no instance bytes. */
    static SUCCESS = 1;
    /** @brief Original motoros2_interfaces/msg/QueueResultEnum.SUCCESS_STR constant; no instance bytes. */
    static SUCCESS_STR = "";
    /** @brief Original motoros2_interfaces/msg/QueueResultEnum.WRONG_MODE constant; no instance bytes. */
    static WRONG_MODE = 2;
    /** @brief Original motoros2_interfaces/msg/QueueResultEnum.WRONG_MODE_STR constant; no instance bytes. */
    static WRONG_MODE_STR = "Must call start_point_queue_mode service";
    /** @brief Original motoros2_interfaces/msg/QueueResultEnum.INIT_FAILURE constant; no instance bytes. */
    static INIT_FAILURE = 3;
    /** @brief Original motoros2_interfaces/msg/QueueResultEnum.INIT_FAILURE_STR constant; no instance bytes. */
    static INIT_FAILURE_STR = "Failed to initialize the streaming trajectory";
    /** @brief Original motoros2_interfaces/msg/QueueResultEnum.BUSY constant; no instance bytes. */
    static BUSY = 4;
    /** @brief Original motoros2_interfaces/msg/QueueResultEnum.BUSY_STR constant; no instance bytes. */
    static BUSY_STR = "Busy processing the previous trajectory point. Please resend the next point shortly";
    /** @brief Original motoros2_interfaces/msg/QueueResultEnum.INVALID_JOINT_LIST constant; no instance bytes. */
    static INVALID_JOINT_LIST = 5;
    /** @brief Original motoros2_interfaces/msg/QueueResultEnum.INVALID_JOINT_LIST_STR constant; no instance bytes. */
    static INVALID_JOINT_LIST_STR = "Point must contain data for all joints";
    /** @brief Original motoros2_interfaces/msg/QueueResultEnum.UNABLE_TO_PROCESS_POINT constant; no instance bytes. */
    static UNABLE_TO_PROCESS_POINT = 6;
    /**
     * @brief Original motoros2_interfaces/msg/QueueResultEnum.UNABLE_TO_PROCESS_POINT_STR constant; no instance bytes.
     */
    static UNABLE_TO_PROCESS_POINT_STR = "Error while processing the trajectory point. Check debug log for more details";
}

REGISTRY.add(Ros2Motoros2_interfacesMsgQueueResultEnum);

/**
 * @brief Complete motoros2_interfaces/msg/SelectionResultCodes value.
 * @details All 1 fields and 8 constants; extent 4..4 bytes.
 */
export class Ros2Motoros2_interfacesMsgSelectionResultCodes extends Record
{
    /**
     * @brief Original motoros2_interfaces/msg/SelectionResultCodes.value field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/msg/SelectionResultCodes",
        "native_identity": null,
        "codec_identity": "UWVMROS1_46168b1f851163985e75842d9d795c5715160864a7736e7f92f95818c9435602",
        "minimum": 4,
        "maximum": 4,
        "semantics": "",
        "fields": [ {
            "name" : "value",
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
            "default": null
        } ]
    };
    /** @brief Original motoros2_interfaces/msg/SelectionResultCodes.OK constant; no instance bytes. */
    static OK = 0;
    /** @brief Original motoros2_interfaces/msg/SelectionResultCodes.OK_STR constant; no instance bytes. */
    static OK_STR = "";
    /**
     * @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROLLER_STATE constant; no instance
     * bytes.
     */
    static INVALID_CONTROLLER_STATE = 400;
    /**
     * @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROLLER_STATE_STR constant; no instance
     * bytes.
     */
    static INVALID_CONTROLLER_STATE_STR = "Pendant is not in REMOTE mode";
    /**
     * @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROL_GROUP constant; no instance bytes.
     */
    static INVALID_CONTROL_GROUP = 401;
    /**
     * @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROL_GROUP_STR constant; no instance
     * bytes.
     */
    static INVALID_CONTROL_GROUP_STR = "Invalid control group";
    /**
     * @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_SELECTION_INDEX constant; no instance
     * bytes.
     */
    static INVALID_SELECTION_INDEX = 402;
    /**
     * @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_SELECTION_INDEX_STR constant; no instance
     * bytes.
     */
    static INVALID_SELECTION_INDEX_STR = "Invalid tool selection";
}

REGISTRY.add(Ros2Motoros2_interfacesMsgSelectionResultCodes);

/**
 * @brief Complete motoros2_interfaces/srv/GetActiveAlarmInfo_Request value.
 * @details All 0 fields and 0 constants; extent 0..0 bytes.
 */
export class Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request extends Record
{
    static schema = {
        "type" : "motoros2_interfaces/srv/GetActiveAlarmInfo_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_aadcd63f3bc47424c38767afdc1589561e3c90e8aeae9bdceef88b1033d57a7e",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": []
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request);

/**
 * @brief Complete motoros2_interfaces/srv/GetActiveAlarmInfo_Response value.
 * @details All 4 fields and 0 constants; extent 16..32768 bytes.
 */
export class Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response extends Record
{
    /**
     * @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.result_code field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.result_message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.alarms field.
     * @details Type motoros2_interfaces/msg/AlarmInfo; shape sequence; count/bound 16; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.errors field.
     * @details Type motoros2_interfaces/msg/ErrorInfo; shape sequence; count/bound 16; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/srv/GetActiveAlarmInfo_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e11bdbb95b6ded88d035696260c58dad32bcf3604aa4e89dd41c0dab26541567",
        "minimum": 16,
        "maximum": 32768,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "result_message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "alarms",
                    "type": "motoros2_interfaces/msg/AlarmInfo",
                    "array": "sequence",
                    "count": 16,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "errors",
                    "type": "motoros2_interfaces/msg/ErrorInfo",
                    "array": "sequence",
                    "count": 16,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response);

/**
 * @brief Complete motoros2_interfaces/srv/ListInformJobs_Request value.
 * @details All 0 fields and 0 constants; extent 0..0 bytes.
 */
export class Ros2Motoros2_interfacesSrvListInformJobs_Request extends Record
{
    static schema = {
        "type" : "motoros2_interfaces/srv/ListInformJobs_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e77eedadef98d98321b1757b88284022afcdb1ffef52b98820b0c4ba596d643c",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": []
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvListInformJobs_Request);

/**
 * @brief Complete motoros2_interfaces/srv/ListInformJobs_Response value.
 * @details All 3 fields and 0 constants; extent 12..8780 bytes.
 */
export class Ros2Motoros2_interfacesSrvListInformJobs_Response extends Record
{
    /**
     * @brief Original motoros2_interfaces/srv/ListInformJobs_Response.result_code field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/ListInformJobs_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/ListInformJobs_Response.names field.
     * @details Type string; shape sequence; count/bound 16; text bound 512 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/srv/ListInformJobs_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_49021f0abc00f8df1ef49605a244cb6bba8d8b45ece5365ae35d747d2506eadc",
        "minimum": 12,
        "maximum": 8780,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "names",
                    "type": "string",
                    "array": "sequence",
                    "count": 16,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvListInformJobs_Response);

/**
 * @brief Complete motoros2_interfaces/srv/QueueTrajPoint_Request value.
 * @details All 2 fields and 0 constants; extent 28..1228 bytes.
 */
export class Ros2Motoros2_interfacesSrvQueueTrajPoint_Request extends Record
{
    /**
     * @brief Original motoros2_interfaces/srv/QueueTrajPoint_Request.joint_names field.
     * @details Type string; shape sequence; count/bound 12; text bound 64 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/QueueTrajPoint_Request.point field.
     * @details Type trajectory_msgs/msg/JointTrajectoryPoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/srv/QueueTrajPoint_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_3d37f9981d6abaca33ec0b5378fa3a1ac301791cc9be94d5bdcf4ea6aa81b8d0",
        "minimum": 28,
        "maximum": 1228,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "joint_names",
                    "type": "string",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "point",
                    "type": "trajectory_msgs/msg/JointTrajectoryPoint",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvQueueTrajPoint_Request);

/**
 * @brief Complete motoros2_interfaces/srv/QueueTrajPoint_Response value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros2Motoros2_interfacesSrvQueueTrajPoint_Response extends Record
{
    /**
     * @brief Original motoros2_interfaces/srv/QueueTrajPoint_Response.result_code field.
     * @details Type motoros2_interfaces/msg/QueueResultEnum; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/QueueTrajPoint_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/srv/QueueTrajPoint_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_d4887ed24d39332a5ccfd4a3d072004dd8f314fe5c166bf0bd57520a826cbccd",
        "minimum": 6,
        "maximum": 518,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
                    "type": "motoros2_interfaces/msg/QueueResultEnum",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvQueueTrajPoint_Response);

/**
 * @brief Complete motoros2_interfaces/srv/ReadGroupIO_Request value.
 * @details All 1 fields and 0 constants; extent 4..4 bytes.
 */
export class Ros2Motoros2_interfacesSrvReadGroupIO_Request extends Record
{
    /**
     * @brief Original motoros2_interfaces/srv/ReadGroupIO_Request.address field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/srv/ReadGroupIO_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_6ee09ac379e169fc23b81a551e9a9ed21c3f82b5010859984e911b17152beb7f",
        "minimum": 4,
        "maximum": 4,
        "semantics": "",
        "fields": [ {
            "name" : "address",
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
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvReadGroupIO_Request);

/**
 * @brief Complete motoros2_interfaces/srv/ReadGroupIO_Response value.
 * @details All 4 fields and 0 constants; extent 10..522 bytes.
 */
export class Ros2Motoros2_interfacesSrvReadGroupIO_Response extends Record
{
    /**
     * @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.result_code field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.success field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.value field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/srv/ReadGroupIO_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_292fcf6e8c46a2509ee4cc5238d443157f37fed0de898367248b967e9001ea0d",
        "minimum": 10,
        "maximum": 522,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "success",
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
                    "default": null
                },
                {
                    "name" : "value",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvReadGroupIO_Response);

/**
 * @brief Complete motoros2_interfaces/srv/ReadMRegister_Request value.
 * @details All 1 fields and 0 constants; extent 4..4 bytes.
 */
export class Ros2Motoros2_interfacesSrvReadMRegister_Request extends Record
{
    /**
     * @brief Original motoros2_interfaces/srv/ReadMRegister_Request.address field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/srv/ReadMRegister_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_f31f0983466054f5ac5dcb2ab80ab7721d606a681b833ebb376cc87f96054f6f",
        "minimum": 4,
        "maximum": 4,
        "semantics": "",
        "fields": [ {
            "name" : "address",
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
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvReadMRegister_Request);

/**
 * @brief Complete motoros2_interfaces/srv/ReadMRegister_Response value.
 * @details All 4 fields and 0 constants; extent 11..523 bytes.
 */
export class Ros2Motoros2_interfacesSrvReadMRegister_Response extends Record
{
    /**
     * @brief Original motoros2_interfaces/srv/ReadMRegister_Response.result_code field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/ReadMRegister_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/ReadMRegister_Response.success field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/ReadMRegister_Response.value field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/srv/ReadMRegister_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_8d6ded2876adfa2079711205cb0110a82ead6f51db05f266bf285308cd815a04",
        "minimum": 11,
        "maximum": 523,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "success",
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
                    "default": null
                },
                {
                    "name" : "value",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvReadMRegister_Response);

/**
 * @brief Complete motoros2_interfaces/srv/ReadSingleIO_Request value.
 * @details All 1 fields and 0 constants; extent 4..4 bytes.
 */
export class Ros2Motoros2_interfacesSrvReadSingleIO_Request extends Record
{
    /**
     * @brief Original motoros2_interfaces/srv/ReadSingleIO_Request.address field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/srv/ReadSingleIO_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_30e28db303b772f26b2b3cf6165a0ff79037d037d60e8115b4ee8e177f17e8bb",
        "minimum": 4,
        "maximum": 4,
        "semantics": "",
        "fields": [ {
            "name" : "address",
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
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvReadSingleIO_Request);

/**
 * @brief Complete motoros2_interfaces/srv/ReadSingleIO_Response value.
 * @details All 4 fields and 0 constants; extent 13..525 bytes.
 */
export class Ros2Motoros2_interfacesSrvReadSingleIO_Response extends Record
{
    /**
     * @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.result_code field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.success field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.value field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/srv/ReadSingleIO_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b42013571274e85769ffac4d47129de8b76e4a675bdef3efefebc9ee19e92082",
        "minimum": 13,
        "maximum": 525,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "success",
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
                    "default": null
                },
                {
                    "name" : "value",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvReadSingleIO_Response);

/**
 * @brief Complete motoros2_interfaces/srv/ResetError_Request value.
 * @details All 0 fields and 0 constants; extent 0..0 bytes.
 */
export class Ros2Motoros2_interfacesSrvResetError_Request extends Record
{
    static schema = {
        "type" : "motoros2_interfaces/srv/ResetError_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_2737855d0608478946e2d9ab7f06c92585199c1082ec8406a012f50ad56beae3",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": []
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvResetError_Request);

/**
 * @brief Complete motoros2_interfaces/srv/ResetError_Response value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros2Motoros2_interfacesSrvResetError_Response extends Record
{
    /**
     * @brief Original motoros2_interfaces/srv/ResetError_Response.result_code field.
     * @details Type motoros2_interfaces/msg/MotionReadyEnum; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/ResetError_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/srv/ResetError_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_0af14ee02c157ecc39b143225a580e475473306389ccc3ba198cf22ca47d82f3",
        "minimum": 6,
        "maximum": 518,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
                    "type": "motoros2_interfaces/msg/MotionReadyEnum",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvResetError_Response);

/**
 * @brief Complete motoros2_interfaces/srv/SelectMotionTool_Request value.
 * @details All 2 fields and 0 constants; extent 8..8 bytes.
 */
export class Ros2Motoros2_interfacesSrvSelectMotionTool_Request extends Record
{
    /**
     * @brief Original motoros2_interfaces/srv/SelectMotionTool_Request.group_number field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/SelectMotionTool_Request.tool_number field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/srv/SelectMotionTool_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e6c884ae0a97337c1e441efe099b7869dc95205fcbca0a8082d4d9b06f5b438c",
        "minimum": 8,
        "maximum": 8,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "group_number",
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
                    "default": null
                },
                {
                    "name" : "tool_number",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvSelectMotionTool_Request);

/**
 * @brief Complete motoros2_interfaces/srv/SelectMotionTool_Response value.
 * @details All 3 fields and 0 constants; extent 9..521 bytes.
 */
export class Ros2Motoros2_interfacesSrvSelectMotionTool_Response extends Record
{
    /**
     * @brief Original motoros2_interfaces/srv/SelectMotionTool_Response.result_code field.
     * @details Type motoros2_interfaces/msg/SelectionResultCodes; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/SelectMotionTool_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/SelectMotionTool_Response.success field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/srv/SelectMotionTool_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_088349a49c14c52282c25b428628462c48618c3b5202df560dcc5c9bed742640",
        "minimum": 9,
        "maximum": 521,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
                    "type": "motoros2_interfaces/msg/SelectionResultCodes",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "success",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvSelectMotionTool_Response);

/**
 * @brief Complete motoros2_interfaces/srv/StartPointQueueMode_Request value.
 * @details All 0 fields and 0 constants; extent 0..0 bytes.
 */
export class Ros2Motoros2_interfacesSrvStartPointQueueMode_Request extends Record
{
    static schema = {
        "type" : "motoros2_interfaces/srv/StartPointQueueMode_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_58a4827fc6535ef0ffc64ee25c5c4af75aa0fe199fa0350a88a95d2e991164a1",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": []
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvStartPointQueueMode_Request);

/**
 * @brief Complete motoros2_interfaces/srv/StartPointQueueMode_Response value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros2Motoros2_interfacesSrvStartPointQueueMode_Response extends Record
{
    /**
     * @brief Original motoros2_interfaces/srv/StartPointQueueMode_Response.result_code field.
     * @details Type motoros2_interfaces/msg/MotionReadyEnum; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/StartPointQueueMode_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/srv/StartPointQueueMode_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_bc553d5640e1c4644a5d5bdc2dfcefc9dbe789ef1e2a23dd620f08963467b6ff",
        "minimum": 6,
        "maximum": 518,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
                    "type": "motoros2_interfaces/msg/MotionReadyEnum",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvStartPointQueueMode_Response);

/**
 * @brief Complete motoros2_interfaces/srv/StartTrajMode_Request value.
 * @details All 0 fields and 0 constants; extent 0..0 bytes.
 */
export class Ros2Motoros2_interfacesSrvStartTrajMode_Request extends Record
{
    static schema = {
        "type" : "motoros2_interfaces/srv/StartTrajMode_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_0b8b2ad5db5901047035e1070b675618afc516a1ae8c3308cfdcad1174d34789",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": []
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvStartTrajMode_Request);

/**
 * @brief Complete motoros2_interfaces/srv/StartTrajMode_Response value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros2Motoros2_interfacesSrvStartTrajMode_Response extends Record
{
    /**
     * @brief Original motoros2_interfaces/srv/StartTrajMode_Response.result_code field.
     * @details Type motoros2_interfaces/msg/MotionReadyEnum; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/StartTrajMode_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/srv/StartTrajMode_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_170e25737e6a2b06f5d5d9f331d748c97cf0306284271757953a4a801c722939",
        "minimum": 6,
        "maximum": 518,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
                    "type": "motoros2_interfaces/msg/MotionReadyEnum",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvStartTrajMode_Response);

/**
 * @brief Complete motoros2_interfaces/srv/WriteGroupIO_Request value.
 * @details All 2 fields and 0 constants; extent 5..5 bytes.
 */
export class Ros2Motoros2_interfacesSrvWriteGroupIO_Request extends Record
{
    /**
     * @brief Original motoros2_interfaces/srv/WriteGroupIO_Request.address field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/WriteGroupIO_Request.value field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/srv/WriteGroupIO_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_2d348ed71408a0dd1dd28ee2ed2ca1db56bb07a14546d0fe13ccf64e8553d52c",
        "minimum": 5,
        "maximum": 5,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "address",
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
                    "default": null
                },
                {
                    "name" : "value",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvWriteGroupIO_Request);

/**
 * @brief Complete motoros2_interfaces/srv/WriteGroupIO_Response value.
 * @details All 3 fields and 0 constants; extent 9..521 bytes.
 */
export class Ros2Motoros2_interfacesSrvWriteGroupIO_Response extends Record
{
    /**
     * @brief Original motoros2_interfaces/srv/WriteGroupIO_Response.result_code field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/WriteGroupIO_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/WriteGroupIO_Response.success field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/srv/WriteGroupIO_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_06769934711b27fd32cdcbf849504e160189ee82ea32e0e71a2903af47c5d766",
        "minimum": 9,
        "maximum": 521,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "success",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvWriteGroupIO_Response);

/**
 * @brief Complete motoros2_interfaces/srv/WriteMRegister_Request value.
 * @details All 2 fields and 0 constants; extent 6..6 bytes.
 */
export class Ros2Motoros2_interfacesSrvWriteMRegister_Request extends Record
{
    /**
     * @brief Original motoros2_interfaces/srv/WriteMRegister_Request.address field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/WriteMRegister_Request.value field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/srv/WriteMRegister_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_8df4536be27f0632052725d5616fd5b047f49fc306fc7735854d9de4fb15d4ef",
        "minimum": 6,
        "maximum": 6,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "address",
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
                    "default": null
                },
                {
                    "name" : "value",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvWriteMRegister_Request);

/**
 * @brief Complete motoros2_interfaces/srv/WriteMRegister_Response value.
 * @details All 3 fields and 0 constants; extent 9..521 bytes.
 */
export class Ros2Motoros2_interfacesSrvWriteMRegister_Response extends Record
{
    /**
     * @brief Original motoros2_interfaces/srv/WriteMRegister_Response.result_code field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/WriteMRegister_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/WriteMRegister_Response.success field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/srv/WriteMRegister_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_a61cc0596a7545ef4836bdc64dc9d6b4ed99b0abd18a726eb37e6215f51c729a",
        "minimum": 9,
        "maximum": 521,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "success",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvWriteMRegister_Response);

/**
 * @brief Complete motoros2_interfaces/srv/WriteSingleIO_Request value.
 * @details All 2 fields and 0 constants; extent 8..8 bytes.
 */
export class Ros2Motoros2_interfacesSrvWriteSingleIO_Request extends Record
{
    /**
     * @brief Original motoros2_interfaces/srv/WriteSingleIO_Request.address field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/WriteSingleIO_Request.value field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/srv/WriteSingleIO_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_6361affcd8b7ebaaa1fe6b5806e64a7c18f7a96a1178614cfce487de813a6392",
        "minimum": 8,
        "maximum": 8,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "address",
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
                    "default": null
                },
                {
                    "name" : "value",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvWriteSingleIO_Request);

/**
 * @brief Complete motoros2_interfaces/srv/WriteSingleIO_Response value.
 * @details All 3 fields and 0 constants; extent 9..521 bytes.
 */
export class Ros2Motoros2_interfacesSrvWriteSingleIO_Response extends Record
{
    /**
     * @brief Original motoros2_interfaces/srv/WriteSingleIO_Response.result_code field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/WriteSingleIO_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original motoros2_interfaces/srv/WriteSingleIO_Response.success field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "motoros2_interfaces/srv/WriteSingleIO_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_12328db372a572fe9b0c7207331a7971d5d7c9033376e3be410db579b85fb794",
        "minimum": 9,
        "maximum": 521,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "success",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Motoros2_interfacesSrvWriteSingleIO_Response);

/**
 * @brief Complete sensor_msgs/msg/JointState value.
 * @details All 5 fields and 0 constants; extent 28..1196 bytes.
 */
export class Ros2Sensor_msgsMsgJointState extends Record
{
    /**
     * @brief Original sensor_msgs/msg/JointState.header field.
     * @details Type std_msgs/msg/Header; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original sensor_msgs/msg/JointState.name field.
     * @details Type string; shape sequence; count/bound 12; text bound 64 bytes.
     */
    /**
     * @brief Original sensor_msgs/msg/JointState.position field.
     * @details Type float64; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original sensor_msgs/msg/JointState.velocity field.
     * @details Type float64; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original sensor_msgs/msg/JointState.effort field.
     * @details Type float64; shape sequence; count/bound 12; text bound 0 bytes.
     */
    static schema = {
        "type" : "sensor_msgs/msg/JointState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884",
        "minimum": 28,
        "maximum": 1196,
        "semantics": "joint-state-optional-equal-length-arrays",
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
                    "default": null
                },
                {
                    "name" : "name",
                    "type": "string",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "position",
                    "type": "float64",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "velocity",
                    "type": "float64",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "effort",
                    "type": "float64",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Sensor_msgsMsgJointState);

/**
 * @brief Complete std_srvs/srv/Trigger_Request value.
 * @details All 0 fields and 0 constants; extent 0..0 bytes.
 */
export class Ros2Std_srvsSrvTrigger_Request extends Record
{
    static schema = {
        "type" : "std_srvs/srv/Trigger_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": []
    };
}

REGISTRY.add(Ros2Std_srvsSrvTrigger_Request);

/**
 * @brief Complete std_srvs/srv/Trigger_Response value.
 * @details All 2 fields and 0 constants; extent 5..517 bytes.
 */
export class Ros2Std_srvsSrvTrigger_Response extends Record
{
    /**
     * @brief Original std_srvs/srv/Trigger_Response.success field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original std_srvs/srv/Trigger_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "std_srvs/srv/Trigger_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d",
        "minimum": 5,
        "maximum": 517,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "success",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Std_srvsSrvTrigger_Response);

/**
 * @brief Complete tf2_msgs/msg/TFMessage value.
 * @details All 1 fields and 0 constants; extent 4..10372 bytes.
 */
export class Ros2Tf2_msgsMsgTFMessage extends Record
{
    /**
     * @brief Original tf2_msgs/msg/TFMessage.transforms field.
     * @details Type geometry_msgs/msg/TransformStamped; shape sequence; count/bound 16; text bound 0 bytes.
     */
    static schema = {
        "type" : "tf2_msgs/msg/TFMessage",
        "native_identity": null,
        "codec_identity": "UWVMROS1_4428597a9c2783fd8f0f083a16e8fd1b3d286487f4800c55fcc5571e7f79e65a",
        "minimum": 4,
        "maximum": 10372,
        "semantics": "",
        "fields": [ {
            "name" : "transforms",
            "type": "geometry_msgs/msg/TransformStamped",
            "array": "sequence",
            "count": 16,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Tf2_msgsMsgTFMessage);

/** @brief Complete original interface names, component roles and identities. */
export const INTERFACES = {
    "builtin_interfaces/msg/Duration" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4",
                                         "registered" : false,
                                         "components" : {"message" : "Ros2Builtin_interfacesMsgDuration"}
    },
    "builtin_interfaces/msg/Time" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
                                         "registered" : false,
                                         "components" : {"message" : "Ros2Builtin_interfacesMsgTime"}
    },
    "control_msgs/action/FollowJointTrajectory" : {
                                         "kind" : "action",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_bd40771444c5441b79e63bdf5f2d5829d2c8b7ea0ccfd285baba8867cdc43757",
                                         "registered" : true,
                                         "components" : {
            "goal" : "Ros2Control_msgsActionFollowJointTrajectory_Goal",
            "result" : "Ros2Control_msgsActionFollowJointTrajectory_Result",
            "feedback" : "Ros2Control_msgsActionFollowJointTrajectory_Feedback"
        }
    },
    "control_msgs/msg/JointComponentTolerance" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342",
                                         "registered" : false,
                                         "components" : {"message" : "Ros2Control_msgsMsgJointComponentTolerance"}
    },
    "control_msgs/msg/JointTolerance" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2",
                                         "registered" : false,
                                         "components" : {"message" : "Ros2Control_msgsMsgJointTolerance"}
    },
    "geometry_msgs/msg/Quaternion" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
                                         "registered" : false,
                                         "components" : {"message" : "Ros2Geometry_msgsMsgQuaternion"}
    },
    "geometry_msgs/msg/Transform" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b",
                                         "registered" : false,
                                         "components" : {"message" : "Ros2Geometry_msgsMsgTransform"}
    },
    "geometry_msgs/msg/TransformStamped" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_be553b5a9c73b687cde56ff1c381e3c67168fd2c0366830be3c65382c5bbd792",
                                         "registered" : false,
                                         "components" : {"message" : "Ros2Geometry_msgsMsgTransformStamped"}
    },
    "geometry_msgs/msg/Twist" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e",
                                         "registered" : false,
                                         "components" : {"message" : "Ros2Geometry_msgsMsgTwist"}
    },
    "geometry_msgs/msg/Vector3" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e",
                                         "registered" : false,
                                         "components" : {"message" : "Ros2Geometry_msgsMsgVector3"}
    },
    "industrial_msgs/msg/DebugLevel" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_989475cc5d981d8c5ab91fb091235871f7a1c7d87d246eb2250086e6c3c37c79",
                                         "registered" : true,
                                         "components" : {"message" : "Ros2Industrial_msgsMsgDebugLevel"}
    },
    "industrial_msgs/msg/DeviceInfo" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_f9a5962800e17495f34dbb73f37373df22f900e528c630497417f78cdecb283b",
                                         "registered" : true,
                                         "components" : {"message" : "Ros2Industrial_msgsMsgDeviceInfo"}
    },
    "industrial_msgs/msg/RobotMode" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_4f9173c5e27815ca33be603b8645a22420bda3ab308962127060d2413d092c4c",
                                         "registered" : true,
                                         "components" : {"message" : "Ros2Industrial_msgsMsgRobotMode"}
    },
    "industrial_msgs/msg/RobotStatus" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_1086f16ba5d614f3d87c3ab195240b5a0683ef490f2e92434e4ea3bdbe7554ba",
                                         "registered" : true,
                                         "components" : {"message" : "Ros2Industrial_msgsMsgRobotStatus"}
    },
    "industrial_msgs/msg/ServiceReturnCode" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_62eb4415a63d7686f16ea343193238838c78aa8e9b9786a65c92fb227e03d3e5",
                                         "registered" : true,
                                         "components" : {"message" : "Ros2Industrial_msgsMsgServiceReturnCode"}
    },
    "industrial_msgs/msg/TriState" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_b7ae62ce19d642ad46e962ffb50cd76c43c96ac673ac36d690f99c1dd8d2a841",
                                         "registered" : true,
                                         "components" : {"message" : "Ros2Industrial_msgsMsgTriState"}
    },
    "industrial_msgs/srv/CmdJointTrajectory" : {
                                         "kind" : "service",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_e8df4c16f0b40ccebce141f41beb199ffdfcace748f4bd57a8623c5aafe9d18f",
                                         "registered" : true,
                                         "components" : {"request" : "Ros2Industrial_msgsSrvCmdJointTrajectory_Request", "response" : "Ros2Industrial_msgsSrvCmdJointTrajectory_Response"}
    },
    "industrial_msgs/srv/GetRobotInfo" : {
                                         "kind" : "service",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_6e5a274d17ba3c1eadacdb354e10f3beb536bfb28fefa25c36d90e5b1a98a05d",
                                         "registered" : true,
                                         "components" : {"request" : "Ros2Industrial_msgsSrvGetRobotInfo_Request", "response" : "Ros2Industrial_msgsSrvGetRobotInfo_Response"}
    },
    "industrial_msgs/srv/SetDrivePower" : {
                                         "kind" : "service",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_139774184d22a01cdcaf17d2e4c73c56a9077bc40834f6c5912a8c08dee7109f",
                                         "registered" : true,
                                         "components" : {"request" : "Ros2Industrial_msgsSrvSetDrivePower_Request", "response" : "Ros2Industrial_msgsSrvSetDrivePower_Response"}
    },
    "industrial_msgs/srv/SetRemoteLoggerLevel" : {
                                         "kind" : "service",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_6aaca700956f41c06c20b8069e644cf04ad5fa01c5835623df3b8de946da1ad1",
                                         "registered" : true,
                                         "components" : {"request" : "Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request", "response" : "Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response"}
    },
    "industrial_msgs/srv/StartMotion" : {
                                         "kind" : "service",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_1cf62b342e5cc9b8a9fa463e1971d14bc73b6450e425a7fe9c16caa3529c67b0",
                                         "registered" : true,
                                         "components" : {"request" : "Ros2Industrial_msgsSrvStartMotion_Request", "response" : "Ros2Industrial_msgsSrvStartMotion_Response"}
    },
    "industrial_msgs/srv/StopMotion" : {
                                         "kind" : "service",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_ee44e3fdaf3b705212972d964e3210babaf941de4be14e94cdd33aa54aea49a0",
                                         "registered" : true,
                                         "components" : {"request" : "Ros2Industrial_msgsSrvStopMotion_Request", "response" : "Ros2Industrial_msgsSrvStopMotion_Response"}
    },
    "motoros2_interfaces/msg/AlarmCauseRemedy" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_f977609022f4ca593b9089d0038d1c28d1bc4b533e272f38c3379495f326ddf5",
                                         "registered" : true,
                                         "components" : {"message" : "Ros2Motoros2_interfacesMsgAlarmCauseRemedy"}
    },
    "motoros2_interfaces/msg/AlarmInfo" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_7cf3fa3037f28f295dd62009e708ea3e46a80f83471d0a0f9fb55af125c0c27f",
                                         "registered" : true,
                                         "components" : {"message" : "Ros2Motoros2_interfacesMsgAlarmInfo"}
    },
    "motoros2_interfaces/msg/ErrorInfo" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_1cfe60c0af6bc157db84c4d9e0b20a8f2e5c78fd4afd6908d32b3217f3734b67",
                                         "registered" : true,
                                         "components" : {"message" : "Ros2Motoros2_interfacesMsgErrorInfo"}
    },
    "motoros2_interfaces/msg/InformJobCrudResultCodes" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_f5ed037b83926b48a88fa486ed8db5f5d3e39e4a486d4a90190ffd6a70452613",
                                         "registered" : false,
                                         "components" : {"message" : "Ros2Motoros2_interfacesMsgInformJobCrudResultCodes"}
    },
    "motoros2_interfaces/msg/InitTrajEnum" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_9279979f9e3570f48d6e23bf812a4680e3deed9af3309019efdff5464d7b7763",
                                         "registered" : true,
                                         "components" : {"message" : "Ros2Motoros2_interfacesMsgInitTrajEnum"}
    },
    "motoros2_interfaces/msg/IoResultCodes" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_ef9ab829ae79d4e58336a56259b6beb2ad26a8b1b4070013d9004ac4ab269915",
                                         "registered" : false,
                                         "components" : {"message" : "Ros2Motoros2_interfacesMsgIoResultCodes"}
    },
    "motoros2_interfaces/msg/MotionReadyEnum" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_c8d4c2b0eba665e01cddc730421a3a42c5b344f4de35ae0a32204891603326d6",
                                         "registered" : true,
                                         "components" : {"message" : "Ros2Motoros2_interfacesMsgMotionReadyEnum"}
    },
    "motoros2_interfaces/msg/QueueResultEnum" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_146c6ce3f275b9e4a81622d73cca3d2298cf9f7bb95a783c0dea6279cb5b4f23",
                                         "registered" : true,
                                         "components" : {"message" : "Ros2Motoros2_interfacesMsgQueueResultEnum"}
    },
    "motoros2_interfaces/msg/SelectionResultCodes" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_46168b1f851163985e75842d9d795c5715160864a7736e7f92f95818c9435602",
                                         "registered" : true,
                                         "components" : {"message" : "Ros2Motoros2_interfacesMsgSelectionResultCodes"}
    },
    "motoros2_interfaces/srv/GetActiveAlarmInfo" : {
                                         "kind" : "service",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_0ba75d003a58f500c933d13af5e3adca9566d503393bda636febb84972f116c0",
                                         "registered" : true,
                                         "components" :
            {"request" : "Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request", "response" : "Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response"}
    },
    "motoros2_interfaces/srv/ListInformJobs" : {
                                         "kind" : "service",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_9954d2544fc3f6a93a863325ee37db0db935e34f785cb8dff1bbcdc6bed008ce",
                                         "registered" : true,
                                         "components" : {"request" : "Ros2Motoros2_interfacesSrvListInformJobs_Request", "response" : "Ros2Motoros2_interfacesSrvListInformJobs_Response"}
    },
    "motoros2_interfaces/srv/QueueTrajPoint" : {
                                         "kind" : "service",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_68502de019123622ff8db751ea9b1b026c92b0792e6349f4682320eee6dd34f7",
                                         "registered" : true,
                                         "components" : {"request" : "Ros2Motoros2_interfacesSrvQueueTrajPoint_Request", "response" : "Ros2Motoros2_interfacesSrvQueueTrajPoint_Response"}
    },
    "motoros2_interfaces/srv/ReadGroupIO" : {
                                         "kind" : "service",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_6660903dbabb303801f8ce21560ff9219dc39fcf07a3d2e0fb3e795efd295ce7",
                                         "registered" : true,
                                         "components" : {"request" : "Ros2Motoros2_interfacesSrvReadGroupIO_Request", "response" : "Ros2Motoros2_interfacesSrvReadGroupIO_Response"}
    },
    "motoros2_interfaces/srv/ReadMRegister" : {
                                         "kind" : "service",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_1a90ea4c10f6cf6101b226da050d17e3204f64fc4e7c34fda6a9c77a895268e4",
                                         "registered" : true,
                                         "components" : {"request" : "Ros2Motoros2_interfacesSrvReadMRegister_Request", "response" : "Ros2Motoros2_interfacesSrvReadMRegister_Response"}
    },
    "motoros2_interfaces/srv/ReadSingleIO" : {
                                         "kind" : "service",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_45367596a399144ccce710f19aec8e07af2b937f0358cc533f12454e63167ea4",
                                         "registered" : true,
                                         "components" : {"request" : "Ros2Motoros2_interfacesSrvReadSingleIO_Request", "response" : "Ros2Motoros2_interfacesSrvReadSingleIO_Response"}
    },
    "motoros2_interfaces/srv/ResetError" : {
                                         "kind" : "service",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_df40965a10883ee12932604f28fb1feebe7f0f1eb6515067b647ec90fae3951d",
                                         "registered" : true,
                                         "components" : {"request" : "Ros2Motoros2_interfacesSrvResetError_Request", "response" : "Ros2Motoros2_interfacesSrvResetError_Response"}
    },
    "motoros2_interfaces/srv/SelectMotionTool" : {
                                         "kind" : "service",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_021260e9311f4412bfdd8cf4a4cd6e6af113d82169e543103ae6acaab065b00e",
                                         "registered" : true,
                                         "components" : {"request" : "Ros2Motoros2_interfacesSrvSelectMotionTool_Request", "response" : "Ros2Motoros2_interfacesSrvSelectMotionTool_Response"}
    },
    "motoros2_interfaces/srv/StartPointQueueMode" : {
                                         "kind" : "service",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_4368b9861121806a833f5227574e33547fe20a4891c4d1f146236fbe09891ef7",
                                         "registered" : true,
                                         "components" :
            {"request" : "Ros2Motoros2_interfacesSrvStartPointQueueMode_Request", "response" : "Ros2Motoros2_interfacesSrvStartPointQueueMode_Response"}
    },
    "motoros2_interfaces/srv/StartTrajMode" : {
                                         "kind" : "service",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_d5c0a1821382852c10710973aa0214199a5e24a499972078db30fa8656c3edb8",
                                         "registered" : true,
                                         "components" : {"request" : "Ros2Motoros2_interfacesSrvStartTrajMode_Request", "response" : "Ros2Motoros2_interfacesSrvStartTrajMode_Response"}
    },
    "motoros2_interfaces/srv/WriteGroupIO" : {
                                         "kind" : "service",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_64fc54e69a98903782576a539df8311d1af2565893b6f87dfe0d59061565e834",
                                         "registered" : true,
                                         "components" : {"request" : "Ros2Motoros2_interfacesSrvWriteGroupIO_Request", "response" : "Ros2Motoros2_interfacesSrvWriteGroupIO_Response"}
    },
    "motoros2_interfaces/srv/WriteMRegister" : {
                                         "kind" : "service",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_2bfb27c3f17b05fe8b7121b65cb7d2a2f2c54ed2eb9d8f8334d8d3149192f4f4",
                                         "registered" : true,
                                         "components" : {"request" : "Ros2Motoros2_interfacesSrvWriteMRegister_Request", "response" : "Ros2Motoros2_interfacesSrvWriteMRegister_Response"}
    },
    "motoros2_interfaces/srv/WriteSingleIO" : {
                                         "kind" : "service",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_d9671caa86e0a7d249e3d7bea385898517595733fa6e5e0cd16c964d8d66691a",
                                         "registered" : true,
                                         "components" : {"request" : "Ros2Motoros2_interfacesSrvWriteSingleIO_Request", "response" : "Ros2Motoros2_interfacesSrvWriteSingleIO_Response"}
    },
    "sensor_msgs/msg/JointState" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884",
                                         "registered" : true,
                                         "components" : {"message" : "Ros2Sensor_msgsMsgJointState"}
    },
    "std_msgs/msg/Header" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396",
                                         "registered" : false,
                                         "components" : {"message" : "Ros2Std_msgsMsgHeader"}
    },
    "std_srvs/srv/Trigger" : {
                                         "kind" : "service",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_2bafba62f4b166a5e736d6b5f0a5db9a8f8c2f02dc21daa0779ff56f8b87e583",
                                         "registered" : false,
                                         "components" : {"request" : "Ros2Std_srvsSrvTrigger_Request", "response" : "Ros2Std_srvsSrvTrigger_Response"}
    },
    "tf2_msgs/msg/TFMessage" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_4428597a9c2783fd8f0f083a16e8fd1b3d286487f4800c55fcc5571e7f79e65a",
                                         "registered" : true,
                                         "components" : {"message" : "Ros2Tf2_msgsMsgTFMessage"}
    },
    "trajectory_msgs/msg/JointTrajectory" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0",
                                         "registered" : false,
                                         "components" : {"message" : "Ros2Trajectory_msgsMsgJointTrajectory"}
    },
    "trajectory_msgs/msg/JointTrajectoryPoint" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5",
                                         "registered" : false,
                                         "components" : {"message" : "Ros2Trajectory_msgsMsgJointTrajectoryPoint"}
    },
    "trajectory_msgs/msg/MultiDOFJointTrajectory" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401",
                                         "registered" : false,
                                         "components" : {"message" : "Ros2Trajectory_msgsMsgMultiDOFJointTrajectory"}
    },
    "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint" : {
                                         "kind" : "message",
                                         "native_identity" : null,
                                         "codec_identity" : "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242",
                                         "registered" : false,
                                         "components" : {"message" : "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint"}
    }
};
