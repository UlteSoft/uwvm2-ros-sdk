"""@file records.py
@brief Complete source-derived kuka values.
@details All fields, bounds and constants are retained. Pure codecs delegate to
the central Record/Registry implementation; this module opens no ROS resource.
"""

from ros.py.wire import Record, Registry

REGISTRY = Registry()


class Ros2Builtin_interfacesMsgDuration(Record):
    """@brief Own every builtin_interfaces/msg/Duration field.
    @details Canonical extent 8..8 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("sec", "nanosec")
    SCHEMA = {
        "type": "builtin_interfaces/msg/Duration",
        "native_identity": None,
        "codec_identity": "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4",
        "minimum": 8,
        "maximum": 8,
        "semantics": "normalized-time",
        "fields": [
            {
                "name": "sec",
                "type": "int32",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "nanosec",
                "type": "uint32",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Builtin_interfacesMsgDuration)


class Ros2Builtin_interfacesMsgTime(Record):
    """@brief Own every builtin_interfaces/msg/Time field.
    @details Canonical extent 8..8 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("sec", "nanosec")
    SCHEMA = {
        "type": "builtin_interfaces/msg/Time",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
        "minimum": 8,
        "maximum": 8,
        "semantics": "normalized-time",
        "fields": [
            {
                "name": "sec",
                "type": "int32",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "nanosec",
                "type": "uint32",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Builtin_interfacesMsgTime)


class Ros2Std_msgsMsgHeader(Record):
    """@brief Own every std_msgs/msg/Header field.
    @details Canonical extent 12..76 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("stamp", "frame_id")
    SCHEMA = {
        "type": "std_msgs/msg/Header",
        "native_identity": None,
        "codec_identity": "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396",
        "minimum": 12,
        "maximum": 76,
        "semantics": "",
        "fields": [
            {
                "name": "stamp",
                "type": "builtin_interfaces/msg/Time",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "frame_id",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 64,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Std_msgsMsgHeader)


class Ros2Trajectory_msgsMsgJointTrajectoryPoint(Record):
    """@brief Own every trajectory_msgs/msg/JointTrajectoryPoint field.
    @details Canonical extent 24..408 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("positions", "velocities", "accelerations", "effort", "time_from_start")
    SCHEMA = {
        "type": "trajectory_msgs/msg/JointTrajectoryPoint",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5",
        "minimum": 24,
        "maximum": 408,
        "semantics": "",
        "fields": [
            {
                "name": "positions",
                "type": "float64",
                "array": "sequence",
                "count": 12,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "velocities",
                "type": "float64",
                "array": "sequence",
                "count": 12,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "accelerations",
                "type": "float64",
                "array": "sequence",
                "count": 12,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "effort",
                "type": "float64",
                "array": "sequence",
                "count": 12,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "time_from_start",
                "type": "builtin_interfaces/msg/Duration",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Trajectory_msgsMsgJointTrajectoryPoint)


class Ros2Trajectory_msgsMsgJointTrajectory(Record):
    """@brief Own every trajectory_msgs/msg/JointTrajectory field.
    @details Canonical extent 20..4164 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "joint_names", "points")
    SCHEMA = {
        "type": "trajectory_msgs/msg/JointTrajectory",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0",
        "minimum": 20,
        "maximum": 4164,
        "semantics": "",
        "fields": [
            {
                "name": "header",
                "type": "std_msgs/msg/Header",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "joint_names",
                "type": "string",
                "array": "sequence",
                "count": 12,
                "string_bound": 64,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "points",
                "type": "trajectory_msgs/msg/JointTrajectoryPoint",
                "array": "sequence",
                "count": 8,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Trajectory_msgsMsgJointTrajectory)


class Ros2Geometry_msgsMsgVector3(Record):
    """@brief Own every geometry_msgs/msg/Vector3 field.
    @details Canonical extent 24..24 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("x", "y", "z")
    SCHEMA = {
        "type": "geometry_msgs/msg/Vector3",
        "native_identity": None,
        "codec_identity": "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e",
        "minimum": 24,
        "maximum": 24,
        "semantics": "",
        "fields": [
            {
                "name": "x",
                "type": "float64",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "y",
                "type": "float64",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "z",
                "type": "float64",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Geometry_msgsMsgVector3)


class Ros2Geometry_msgsMsgQuaternion(Record):
    """@brief Own every geometry_msgs/msg/Quaternion field.
    @details Canonical extent 32..32 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("x", "y", "z", "w")
    SCHEMA = {
        "type": "geometry_msgs/msg/Quaternion",
        "native_identity": None,
        "codec_identity": "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
        "minimum": 32,
        "maximum": 32,
        "semantics": "",
        "fields": [
            {
                "name": "x",
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
            },
            {
                "name": "y",
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
            },
            {
                "name": "z",
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
            },
            {
                "name": "w",
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
            },
        ],
    }


REGISTRY.add(Ros2Geometry_msgsMsgQuaternion)


class Ros2Geometry_msgsMsgTransform(Record):
    """@brief Own every geometry_msgs/msg/Transform field.
    @details Canonical extent 56..56 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("translation", "rotation")
    SCHEMA = {
        "type": "geometry_msgs/msg/Transform",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b",
        "minimum": 56,
        "maximum": 56,
        "semantics": "",
        "fields": [
            {
                "name": "translation",
                "type": "geometry_msgs/msg/Vector3",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "rotation",
                "type": "geometry_msgs/msg/Quaternion",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Geometry_msgsMsgTransform)


class Ros2Geometry_msgsMsgTwist(Record):
    """@brief Own every geometry_msgs/msg/Twist field.
    @details Canonical extent 48..48 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("linear", "angular")
    SCHEMA = {
        "type": "geometry_msgs/msg/Twist",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e",
        "minimum": 48,
        "maximum": 48,
        "semantics": "",
        "fields": [
            {
                "name": "linear",
                "type": "geometry_msgs/msg/Vector3",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "angular",
                "type": "geometry_msgs/msg/Vector3",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Geometry_msgsMsgTwist)


class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(Record):
    """@brief Own every trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
    @details Canonical extent 20..324 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("transforms", "velocities", "accelerations", "time_from_start")
    SCHEMA = {
        "type": "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242",
        "minimum": 20,
        "maximum": 324,
        "semantics": "",
        "fields": [
            {
                "name": "transforms",
                "type": "geometry_msgs/msg/Transform",
                "array": "sequence",
                "count": 2,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "velocities",
                "type": "geometry_msgs/msg/Twist",
                "array": "sequence",
                "count": 2,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "accelerations",
                "type": "geometry_msgs/msg/Twist",
                "array": "sequence",
                "count": 2,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "time_from_start",
                "type": "builtin_interfaces/msg/Duration",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint)


class Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(Record):
    """@brief Own every trajectory_msgs/msg/MultiDOFJointTrajectory field.
    @details Canonical extent 20..1516 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "joint_names", "points")
    SCHEMA = {
        "type": "trajectory_msgs/msg/MultiDOFJointTrajectory",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401",
        "minimum": 20,
        "maximum": 1516,
        "semantics": "",
        "fields": [
            {
                "name": "header",
                "type": "std_msgs/msg/Header",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "joint_names",
                "type": "string",
                "array": "sequence",
                "count": 2,
                "string_bound": 64,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "points",
                "type": "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
                "array": "sequence",
                "count": 4,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Trajectory_msgsMsgMultiDOFJointTrajectory)


class Ros2Control_msgsMsgJointTolerance(Record):
    """@brief Own every control_msgs/msg/JointTolerance field.
    @details Canonical extent 28..92 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name", "position", "velocity", "acceleration")
    SCHEMA = {
        "type": "control_msgs/msg/JointTolerance",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2",
        "minimum": 28,
        "maximum": 92,
        "semantics": "",
        "fields": [
            {
                "name": "name",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 64,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "position",
                "type": "float64",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "velocity",
                "type": "float64",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "acceleration",
                "type": "float64",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Control_msgsMsgJointTolerance)


class Ros2Control_msgsMsgJointComponentTolerance(Record):
    """@brief Own every control_msgs/msg/JointComponentTolerance field.
    @details Canonical extent 30..542 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("joint_name", "component", "position", "velocity", "acceleration")
    SCHEMA = {
        "type": "control_msgs/msg/JointComponentTolerance",
        "native_identity": None,
        "codec_identity": "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342",
        "minimum": 30,
        "maximum": 542,
        "semantics": "",
        "fields": [
            {
                "name": "joint_name",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 512,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "component",
                "type": "uint16",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "position",
                "type": "float64",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "velocity",
                "type": "float64",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "acceleration",
                "type": "float64",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }
    # @brief Exact original native constant; not a wire field.
    X_AXIS = 1
    # @brief Exact original native constant; not a wire field.
    Y_AXIS = 2
    # @brief Exact original native constant; not a wire field.
    Z_AXIS = 3
    # @brief Exact original native constant; not a wire field.
    TRANSLATION = 4
    # @brief Exact original native constant; not a wire field.
    ROTATION = 5


REGISTRY.add(Ros2Control_msgsMsgJointComponentTolerance)


class Ros2Control_msgsActionFollowJointTrajectory_Goal(Record):
    """@brief Own every control_msgs/action/FollowJointTrajectory_Goal field.
    @details Canonical extent 64..20920 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = (
        "trajectory",
        "multi_dof_trajectory",
        "path_tolerance",
        "component_path_tolerance",
        "goal_tolerance",
        "component_goal_tolerance",
        "goal_time_tolerance",
    )
    SCHEMA = {
        "type": "control_msgs/action/FollowJointTrajectory_Goal",
        "native_identity": None,
        "codec_identity": "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16",
        "minimum": 64,
        "maximum": 20920,
        "semantics": "",
        "fields": [
            {
                "name": "trajectory",
                "type": "trajectory_msgs/msg/JointTrajectory",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "multi_dof_trajectory",
                "type": "trajectory_msgs/msg/MultiDOFJointTrajectory",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "path_tolerance",
                "type": "control_msgs/msg/JointTolerance",
                "array": "sequence",
                "count": 12,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "component_path_tolerance",
                "type": "control_msgs/msg/JointComponentTolerance",
                "array": "sequence",
                "count": 12,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "goal_tolerance",
                "type": "control_msgs/msg/JointTolerance",
                "array": "sequence",
                "count": 12,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "component_goal_tolerance",
                "type": "control_msgs/msg/JointComponentTolerance",
                "array": "sequence",
                "count": 12,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "goal_time_tolerance",
                "type": "builtin_interfaces/msg/Duration",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Control_msgsActionFollowJointTrajectory_Goal)


class Ros2Control_msgsActionFollowJointTrajectory_Result(Record):
    """@brief Own every control_msgs/action/FollowJointTrajectory_Result field.
    @details Canonical extent 8..4104 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("error_code", "error_string")
    SCHEMA = {
        "type": "control_msgs/action/FollowJointTrajectory_Result",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70",
        "minimum": 8,
        "maximum": 4104,
        "semantics": "",
        "fields": [
            {
                "name": "error_code",
                "type": "int32",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "error_string",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 4096,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }
    # @brief Exact original native constant; not a wire field.
    SUCCESSFUL = 0
    # @brief Exact original native constant; not a wire field.
    INVALID_GOAL = -1
    # @brief Exact original native constant; not a wire field.
    INVALID_JOINTS = -2
    # @brief Exact original native constant; not a wire field.
    OLD_HEADER_TIMESTAMP = -3
    # @brief Exact original native constant; not a wire field.
    PATH_TOLERANCE_VIOLATED = -4
    # @brief Exact original native constant; not a wire field.
    GOAL_TOLERANCE_VIOLATED = -5


REGISTRY.add(Ros2Control_msgsActionFollowJointTrajectory_Result)


class Ros2Control_msgsActionFollowJointTrajectory_Feedback(Record):
    """@brief Own every control_msgs/action/FollowJointTrajectory_Feedback field.
    @details Canonical extent 152..4128 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = (
        "header",
        "joint_names",
        "desired",
        "actual",
        "error",
        "multi_dof_joint_names",
        "multi_dof_desired",
        "multi_dof_actual",
        "multi_dof_error",
    )
    SCHEMA = {
        "type": "control_msgs/action/FollowJointTrajectory_Feedback",
        "native_identity": None,
        "codec_identity": "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb",
        "minimum": 152,
        "maximum": 4128,
        "semantics": "",
        "fields": [
            {
                "name": "header",
                "type": "std_msgs/msg/Header",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "joint_names",
                "type": "string",
                "array": "sequence",
                "count": 12,
                "string_bound": 64,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "desired",
                "type": "trajectory_msgs/msg/JointTrajectoryPoint",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "actual",
                "type": "trajectory_msgs/msg/JointTrajectoryPoint",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "error",
                "type": "trajectory_msgs/msg/JointTrajectoryPoint",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "multi_dof_joint_names",
                "type": "string",
                "array": "sequence",
                "count": 2,
                "string_bound": 512,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "multi_dof_desired",
                "type": "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "multi_dof_actual",
                "type": "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "multi_dof_error",
                "type": "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Control_msgsActionFollowJointTrajectory_Feedback)


class Ros2Kuka_driver_interfacesMsgFRIState(Record):
    """@brief Own every kuka_driver_interfaces/msg/FRIState field.
    @details Canonical extent 40..40 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = (
        "session_state",
        "connection_quality",
        "safety_state",
        "command_mode",
        "control_mode",
        "operation_mode",
        "drive_state",
        "overlay_type",
        "tracking_performance",
    )
    SCHEMA = {
        "type": "kuka_driver_interfaces/msg/FRIState",
        "native_identity": None,
        "codec_identity": "UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716",
        "minimum": 40,
        "maximum": 40,
        "semantics": "",
        "fields": [
            {
                "name": "session_state",
                "type": "int32",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "connection_quality",
                "type": "int32",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "safety_state",
                "type": "int32",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "command_mode",
                "type": "int32",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "control_mode",
                "type": "int32",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "operation_mode",
                "type": "int32",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "drive_state",
                "type": "int32",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "overlay_type",
                "type": "int32",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "tracking_performance",
                "type": "float64",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Kuka_driver_interfacesMsgFRIState)


class Ros2Kuka_driver_interfacesMsgFRIStateArray(Record):
    """@brief Own every kuka_driver_interfaces/msg/FRIStateArray field.
    @details Canonical extent 8..1736 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("robot_names", "states")
    SCHEMA = {
        "type": "kuka_driver_interfaces/msg/FRIStateArray",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449",
        "minimum": 8,
        "maximum": 1736,
        "semantics": "",
        "fields": [
            {
                "name": "robot_names",
                "type": "string",
                "array": "sequence",
                "count": 16,
                "string_bound": 64,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "states",
                "type": "kuka_driver_interfaces/msg/FRIState",
                "array": "sequence",
                "count": 16,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Kuka_driver_interfacesMsgFRIStateArray)


class Ros2Kuka_driver_interfacesMsgFriConfiguration(Record):
    """@brief Own every kuka_driver_interfaces/msg/FriConfiguration field.
    @details Canonical extent 8..8 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("receive_multiplier", "send_period_ms")
    SCHEMA = {
        "type": "kuka_driver_interfaces/msg/FriConfiguration",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e",
        "minimum": 8,
        "maximum": 8,
        "semantics": "",
        "fields": [
            {
                "name": "receive_multiplier",
                "type": "int32",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "send_period_ms",
                "type": "int32",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Kuka_driver_interfacesMsgFriConfiguration)


class Ros2Kuka_driver_interfacesMsgHardwareEvent(Record):
    """@brief Own every kuka_driver_interfaces/msg/HardwareEvent field.
    @details Canonical extent 5..517 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("robot_name", "event")
    SCHEMA = {
        "type": "kuka_driver_interfaces/msg/HardwareEvent",
        "native_identity": None,
        "codec_identity": "UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68",
        "minimum": 5,
        "maximum": 517,
        "semantics": "",
        "fields": [
            {
                "name": "robot_name",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 512,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "event",
                "type": "uint8",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Kuka_driver_interfacesMsgHardwareEvent)


class Ros2Kuka_driver_interfacesMsgKssStatus(Record):
    """@brief Own every kuka_driver_interfaces/msg/KssStatus field.
    @details Canonical extent 9..9 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = (
        "control_mode",
        "cycle_time",
        "drives_powered",
        "emergency_stop",
        "guard_stop",
        "in_motion",
        "motion_possible",
        "operation_mode",
        "robot_stopped",
    )
    SCHEMA = {
        "type": "kuka_driver_interfaces/msg/KssStatus",
        "native_identity": None,
        "codec_identity": "UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82",
        "minimum": 9,
        "maximum": 9,
        "semantics": "",
        "fields": [
            {
                "name": "control_mode",
                "type": "uint8",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "cycle_time",
                "type": "uint8",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "drives_powered",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "emergency_stop",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "guard_stop",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "in_motion",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "motion_possible",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "operation_mode",
                "type": "uint8",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "robot_stopped",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }
    # @brief Exact original native constant; not a wire field.
    UNSPECIFIED = 0
    # @brief Exact original native constant; not a wire field.
    JOINT_POSITION_CONTROL = 1
    # @brief Exact original native constant; not a wire field.
    CARTESIAN_POSITION_CONTROL = 5
    # @brief Exact original native constant; not a wire field.
    RSI_4MS = 1
    # @brief Exact original native constant; not a wire field.
    RSI_12MS = 2
    # @brief Exact original native constant; not a wire field.
    T1 = 1
    # @brief Exact original native constant; not a wire field.
    T2 = 2
    # @brief Exact original native constant; not a wire field.
    AUT = 3
    # @brief Exact original native constant; not a wire field.
    EXT = 4


REGISTRY.add(Ros2Kuka_driver_interfacesMsgKssStatus)


class Ros2Kuka_driver_interfacesMsgKssStatusArray(Record):
    """@brief Own every kuka_driver_interfaces/msg/KssStatusArray field.
    @details Canonical extent 8..1240 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("robot_names", "statuses")
    SCHEMA = {
        "type": "kuka_driver_interfaces/msg/KssStatusArray",
        "native_identity": None,
        "codec_identity": "UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd",
        "minimum": 8,
        "maximum": 1240,
        "semantics": "",
        "fields": [
            {
                "name": "robot_names",
                "type": "string",
                "array": "sequence",
                "count": 16,
                "string_bound": 64,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "statuses",
                "type": "kuka_driver_interfaces/msg/KssStatus",
                "array": "sequence",
                "count": 16,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Kuka_driver_interfacesMsgKssStatusArray)


class Ros2Lifecycle_msgsMsgState(Record):
    """@brief Own every lifecycle_msgs/msg/State field.
    @details Canonical extent 5..517 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("id", "label")
    SCHEMA = {
        "type": "lifecycle_msgs/msg/State",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94",
        "minimum": 5,
        "maximum": 517,
        "semantics": "",
        "fields": [
            {
                "name": "id",
                "type": "uint8",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "label",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 512,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }
    # @brief Exact original native constant; not a wire field.
    PRIMARY_STATE_UNKNOWN = 0
    # @brief Exact original native constant; not a wire field.
    PRIMARY_STATE_UNCONFIGURED = 1
    # @brief Exact original native constant; not a wire field.
    PRIMARY_STATE_INACTIVE = 2
    # @brief Exact original native constant; not a wire field.
    PRIMARY_STATE_ACTIVE = 3
    # @brief Exact original native constant; not a wire field.
    PRIMARY_STATE_FINALIZED = 4
    # @brief Exact original native constant; not a wire field.
    TRANSITION_STATE_CONFIGURING = 10
    # @brief Exact original native constant; not a wire field.
    TRANSITION_STATE_CLEANINGUP = 11
    # @brief Exact original native constant; not a wire field.
    TRANSITION_STATE_SHUTTINGDOWN = 12
    # @brief Exact original native constant; not a wire field.
    TRANSITION_STATE_ACTIVATING = 13
    # @brief Exact original native constant; not a wire field.
    TRANSITION_STATE_DEACTIVATING = 14
    # @brief Exact original native constant; not a wire field.
    TRANSITION_STATE_ERRORPROCESSING = 15


REGISTRY.add(Ros2Lifecycle_msgsMsgState)


class Ros2Lifecycle_msgsMsgTransition(Record):
    """@brief Own every lifecycle_msgs/msg/Transition field.
    @details Canonical extent 5..517 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("id", "label")
    SCHEMA = {
        "type": "lifecycle_msgs/msg/Transition",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb",
        "minimum": 5,
        "maximum": 517,
        "semantics": "",
        "fields": [
            {
                "name": "id",
                "type": "uint8",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "label",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 512,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }
    # @brief Exact original native constant; not a wire field.
    TRANSITION_CREATE = 0
    # @brief Exact original native constant; not a wire field.
    TRANSITION_CONFIGURE = 1
    # @brief Exact original native constant; not a wire field.
    TRANSITION_CLEANUP = 2
    # @brief Exact original native constant; not a wire field.
    TRANSITION_ACTIVATE = 3
    # @brief Exact original native constant; not a wire field.
    TRANSITION_DEACTIVATE = 4
    # @brief Exact original native constant; not a wire field.
    TRANSITION_UNCONFIGURED_SHUTDOWN = 5
    # @brief Exact original native constant; not a wire field.
    TRANSITION_INACTIVE_SHUTDOWN = 6
    # @brief Exact original native constant; not a wire field.
    TRANSITION_ACTIVE_SHUTDOWN = 7
    # @brief Exact original native constant; not a wire field.
    TRANSITION_DESTROY = 8
    # @brief Exact original native constant; not a wire field.
    TRANSITION_ON_CONFIGURE_SUCCESS = 10
    # @brief Exact original native constant; not a wire field.
    TRANSITION_ON_CONFIGURE_FAILURE = 11
    # @brief Exact original native constant; not a wire field.
    TRANSITION_ON_CONFIGURE_ERROR = 12
    # @brief Exact original native constant; not a wire field.
    TRANSITION_ON_CLEANUP_SUCCESS = 20
    # @brief Exact original native constant; not a wire field.
    TRANSITION_ON_CLEANUP_FAILURE = 21
    # @brief Exact original native constant; not a wire field.
    TRANSITION_ON_CLEANUP_ERROR = 22
    # @brief Exact original native constant; not a wire field.
    TRANSITION_ON_ACTIVATE_SUCCESS = 30
    # @brief Exact original native constant; not a wire field.
    TRANSITION_ON_ACTIVATE_FAILURE = 31
    # @brief Exact original native constant; not a wire field.
    TRANSITION_ON_ACTIVATE_ERROR = 32
    # @brief Exact original native constant; not a wire field.
    TRANSITION_ON_DEACTIVATE_SUCCESS = 40
    # @brief Exact original native constant; not a wire field.
    TRANSITION_ON_DEACTIVATE_FAILURE = 41
    # @brief Exact original native constant; not a wire field.
    TRANSITION_ON_DEACTIVATE_ERROR = 42
    # @brief Exact original native constant; not a wire field.
    TRANSITION_ON_SHUTDOWN_SUCCESS = 50
    # @brief Exact original native constant; not a wire field.
    TRANSITION_ON_SHUTDOWN_FAILURE = 51
    # @brief Exact original native constant; not a wire field.
    TRANSITION_ON_SHUTDOWN_ERROR = 52
    # @brief Exact original native constant; not a wire field.
    TRANSITION_ON_ERROR_SUCCESS = 60
    # @brief Exact original native constant; not a wire field.
    TRANSITION_ON_ERROR_FAILURE = 61
    # @brief Exact original native constant; not a wire field.
    TRANSITION_ON_ERROR_ERROR = 62
    # @brief Exact original native constant; not a wire field.
    TRANSITION_CALLBACK_SUCCESS = 97
    # @brief Exact original native constant; not a wire field.
    TRANSITION_CALLBACK_FAILURE = 98
    # @brief Exact original native constant; not a wire field.
    TRANSITION_CALLBACK_ERROR = 99


REGISTRY.add(Ros2Lifecycle_msgsMsgTransition)


class Ros2Lifecycle_msgsSrvChangeState_Request(Record):
    """@brief Own every lifecycle_msgs/srv/ChangeState_Request field.
    @details Canonical extent 5..517 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("transition",)
    SCHEMA = {
        "type": "lifecycle_msgs/srv/ChangeState_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1",
        "minimum": 5,
        "maximum": 517,
        "semantics": "",
        "fields": [
            {
                "name": "transition",
                "type": "lifecycle_msgs/msg/Transition",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            }
        ],
    }


REGISTRY.add(Ros2Lifecycle_msgsSrvChangeState_Request)


class Ros2Lifecycle_msgsSrvChangeState_Response(Record):
    """@brief Own every lifecycle_msgs/srv/ChangeState_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "lifecycle_msgs/srv/ChangeState_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "success",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            }
        ],
    }


REGISTRY.add(Ros2Lifecycle_msgsSrvChangeState_Response)


class Ros2Lifecycle_msgsSrvGetState_Request(Record):
    """@brief Own every lifecycle_msgs/srv/GetState_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "lifecycle_msgs/srv/GetState_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Lifecycle_msgsSrvGetState_Request)


class Ros2Lifecycle_msgsSrvGetState_Response(Record):
    """@brief Own every lifecycle_msgs/srv/GetState_Response field.
    @details Canonical extent 5..517 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("current_state",)
    SCHEMA = {
        "type": "lifecycle_msgs/srv/GetState_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39",
        "minimum": 5,
        "maximum": 517,
        "semantics": "",
        "fields": [
            {
                "name": "current_state",
                "type": "lifecycle_msgs/msg/State",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            }
        ],
    }


REGISTRY.add(Ros2Lifecycle_msgsSrvGetState_Response)


class Ros2Sensor_msgsMsgJointState(Record):
    """@brief Own every sensor_msgs/msg/JointState field.
    @details Canonical extent 28..1196 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "name", "position", "velocity", "effort")
    SCHEMA = {
        "type": "sensor_msgs/msg/JointState",
        "native_identity": None,
        "codec_identity": "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884",
        "minimum": 28,
        "maximum": 1196,
        "semantics": "joint-state-optional-equal-length-arrays",
        "fields": [
            {
                "name": "header",
                "type": "std_msgs/msg/Header",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "name",
                "type": "string",
                "array": "sequence",
                "count": 12,
                "string_bound": 64,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "position",
                "type": "float64",
                "array": "sequence",
                "count": 12,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "velocity",
                "type": "float64",
                "array": "sequence",
                "count": 12,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "effort",
                "type": "float64",
                "array": "sequence",
                "count": 12,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Sensor_msgsMsgJointState)


class Ros2Std_srvsSrvTrigger_Request(Record):
    """@brief Own every std_srvs/srv/Trigger_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "std_srvs/srv/Trigger_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Std_srvsSrvTrigger_Request)


class Ros2Std_srvsSrvTrigger_Response(Record):
    """@brief Own every std_srvs/srv/Trigger_Response field.
    @details Canonical extent 5..517 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success", "message")
    SCHEMA = {
        "type": "std_srvs/srv/Trigger_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d",
        "minimum": 5,
        "maximum": 517,
        "semantics": "",
        "fields": [
            {
                "name": "success",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "message",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 512,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Std_srvsSrvTrigger_Response)
