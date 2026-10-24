"""@file records.py
@brief Complete source-derived universal_robots values.
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


class Ros2Control_msgsMsgJointTolerance(Record):
    """@brief Own every control_msgs/msg/JointTolerance field.
    @details Canonical extent 28..156 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name", "position", "velocity", "acceleration")
    SCHEMA = {
        "type": "control_msgs/msg/JointTolerance",
        "native_identity": None,
        "codec_identity": "UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a",
        "minimum": 28,
        "maximum": 156,
        "semantics": "",
        "fields": [
            {
                "name": "name",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 128,
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


class Ros2Geometry_msgsMsgPoint(Record):
    """@brief Own every geometry_msgs/msg/Point field.
    @details Canonical extent 24..24 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("x", "y", "z")
    SCHEMA = {
        "type": "geometry_msgs/msg/Point",
        "native_identity": None,
        "codec_identity": "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616",
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


REGISTRY.add(Ros2Geometry_msgsMsgPoint)


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


class Ros2Geometry_msgsMsgPose(Record):
    """@brief Own every geometry_msgs/msg/Pose field.
    @details Canonical extent 56..56 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("position", "orientation")
    SCHEMA = {
        "type": "geometry_msgs/msg/Pose",
        "native_identity": None,
        "codec_identity": "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777",
        "minimum": 56,
        "maximum": 56,
        "semantics": "",
        "fields": [
            {
                "name": "position",
                "type": "geometry_msgs/msg/Point",
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
                "name": "orientation",
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


REGISTRY.add(Ros2Geometry_msgsMsgPose)


class Ros2Std_msgsMsgHeader(Record):
    """@brief Own every std_msgs/msg/Header field.
    @details Canonical extent 12..140 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("stamp", "frame_id")
    SCHEMA = {
        "type": "std_msgs/msg/Header",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96",
        "minimum": 12,
        "maximum": 140,
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
                "string_bound": 128,
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


class Ros2Geometry_msgsMsgPoseStamped(Record):
    """@brief Own every geometry_msgs/msg/PoseStamped field.
    @details Canonical extent 68..196 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "pose")
    SCHEMA = {
        "type": "geometry_msgs/msg/PoseStamped",
        "native_identity": None,
        "codec_identity": "UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2",
        "minimum": 68,
        "maximum": 196,
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
                "name": "pose",
                "type": "geometry_msgs/msg/Pose",
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


REGISTRY.add(Ros2Geometry_msgsMsgPoseStamped)


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


class Ros2Geometry_msgsMsgVector3Stamped(Record):
    """@brief Own every geometry_msgs/msg/Vector3Stamped field.
    @details Canonical extent 36..164 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "vector")
    SCHEMA = {
        "type": "geometry_msgs/msg/Vector3Stamped",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b",
        "minimum": 36,
        "maximum": 164,
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
                "name": "vector",
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


REGISTRY.add(Ros2Geometry_msgsMsgVector3Stamped)


class Ros2Geometry_msgsMsgWrench(Record):
    """@brief Own every geometry_msgs/msg/Wrench field.
    @details Canonical extent 48..48 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("force", "torque")
    SCHEMA = {
        "type": "geometry_msgs/msg/Wrench",
        "native_identity": None,
        "codec_identity": "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6",
        "minimum": 48,
        "maximum": 48,
        "semantics": "",
        "fields": [
            {
                "name": "force",
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
                "name": "torque",
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


REGISTRY.add(Ros2Geometry_msgsMsgWrench)


class Ros2Trajectory_msgsMsgJointTrajectoryPoint(Record):
    """@brief Own every trajectory_msgs/msg/JointTrajectoryPoint field.
    @details Canonical extent 24..216 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("positions", "velocities", "accelerations", "effort", "time_from_start")
    SCHEMA = {
        "type": "trajectory_msgs/msg/JointTrajectoryPoint",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c4eafb6efd22d299b5c6fc21844d8bf69789cf27ee5414a1d7d2371f0b1acbbf",
        "minimum": 24,
        "maximum": 216,
        "semantics": "",
        "fields": [
            {
                "name": "positions",
                "type": "float64",
                "array": "sequence",
                "count": 6,
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
                "count": 6,
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
                "count": 6,
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
                "count": 6,
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
    @details Canonical extent 20..5164 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "joint_names", "points")
    SCHEMA = {
        "type": "trajectory_msgs/msg/JointTrajectory",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e77c37c75123e442edb6a7f6f2a21dcbe33d8bb8fd2577f9906653a6ad5f8225",
        "minimum": 20,
        "maximum": 5164,
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
                "count": 6,
                "string_bound": 256,
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


REGISTRY.add(Ros2Trajectory_msgsMsgJointTrajectory)


class Ros2Ur_dashboard_msgsActionSetMode_Goal(Record):
    """@brief Own every ur_dashboard_msgs/action/SetMode_Goal field.
    @details Canonical extent 3..3 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("target_robot_mode", "stop_program", "play_program")
    SCHEMA = {
        "type": "ur_dashboard_msgs/action/SetMode_Goal",
        "native_identity": None,
        "codec_identity": "UWVMROS1_8a7484a60bad21933df3f847d3fd554e41098ed596dee270335ce9f092dc313d",
        "minimum": 3,
        "maximum": 3,
        "semantics": "",
        "fields": [
            {
                "name": "target_robot_mode",
                "type": "int8",
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
                "name": "stop_program",
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
                "name": "play_program",
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


REGISTRY.add(Ros2Ur_dashboard_msgsActionSetMode_Goal)


class Ros2Ur_dashboard_msgsActionSetMode_Result(Record):
    """@brief Own every ur_dashboard_msgs/action/SetMode_Result field.
    @details Canonical extent 5..261 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success", "message")
    SCHEMA = {
        "type": "ur_dashboard_msgs/action/SetMode_Result",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ef2a557ff27171319d46170ab16a80f5cba5fbd59e44c21cc1b704d01764b913",
        "minimum": 5,
        "maximum": 261,
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
                "string_bound": 256,
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


REGISTRY.add(Ros2Ur_dashboard_msgsActionSetMode_Result)


class Ros2Ur_dashboard_msgsActionSetMode_Feedback(Record):
    """@brief Own every ur_dashboard_msgs/action/SetMode_Feedback field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("current_robot_mode", "current_safety_mode")
    SCHEMA = {
        "type": "ur_dashboard_msgs/action/SetMode_Feedback",
        "native_identity": None,
        "codec_identity": "UWVMROS1_afd74cd0a79174b53499a40b23b040ba96ec3d3e332129999525dcf6ca287ac6",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "current_robot_mode",
                "type": "int8",
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
                "name": "current_safety_mode",
                "type": "int8",
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


REGISTRY.add(Ros2Ur_dashboard_msgsActionSetMode_Feedback)


class Ros2Ur_dashboard_msgsMsgOperationalMode(Record):
    """@brief Own every ur_dashboard_msgs/msg/OperationalMode field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("mode",)
    SCHEMA = {
        "type": "ur_dashboard_msgs/msg/OperationalMode",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7a0be8522cdc20e01d382218499030176a0f6565376fadc5bbdd871a01b9316e",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "mode",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
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
    # @brief Exact original native constant; not a wire field.
    MANUAL = "MANUAL"
    # @brief Exact original native constant; not a wire field.
    AUTOMATIC = "AUTOMATIC"


REGISTRY.add(Ros2Ur_dashboard_msgsMsgOperationalMode)


class Ros2Ur_dashboard_msgsMsgProgramInformation(Record):
    """@brief Own every ur_dashboard_msgs/msg/ProgramInformation field.
    @details Canonical extent 36..676 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = (
        "name",
        "description",
        "created_date",
        "last_saved_date",
        "last_modified_date",
        "program_state",
    )
    SCHEMA = {
        "type": "ur_dashboard_msgs/msg/ProgramInformation",
        "native_identity": None,
        "codec_identity": "UWVMROS1_9299ce545acd0b6ff064998334820fbe503b71dc47a475ef93545d2cdb41f965",
        "minimum": 36,
        "maximum": 676,
        "semantics": "",
        "fields": [
            {
                "name": "name",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 128,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "description",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "created_date",
                "type": "uint64",
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
                "name": "last_saved_date",
                "type": "uint64",
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
                "name": "last_modified_date",
                "type": "uint64",
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
                "name": "program_state",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
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
    PROGRAM_STATE_DRAFT = "DRAFT"
    # @brief Exact original native constant; not a wire field.
    PROGRAM_STATE_FINAL = "FINAL"


REGISTRY.add(Ros2Ur_dashboard_msgsMsgProgramInformation)


class Ros2Ur_dashboard_msgsMsgProgramState(Record):
    """@brief Own every ur_dashboard_msgs/msg/ProgramState field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("state",)
    SCHEMA = {
        "type": "ur_dashboard_msgs/msg/ProgramState",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1462a3c2323792afbbfc6d48a600a6ab66a50a6f6f583e57a62da2458ea81f26",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "state",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
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
    # @brief Exact original native constant; not a wire field.
    STOPPED = "STOPPED"
    # @brief Exact original native constant; not a wire field.
    PLAYING = "PLAYING"
    # @brief Exact original native constant; not a wire field.
    PAUSED = "PAUSED"


REGISTRY.add(Ros2Ur_dashboard_msgsMsgProgramState)


class Ros2Ur_dashboard_msgsMsgRobotMode(Record):
    """@brief Own every ur_dashboard_msgs/msg/RobotMode field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("mode",)
    SCHEMA = {
        "type": "ur_dashboard_msgs/msg/RobotMode",
        "native_identity": None,
        "codec_identity": "UWVMROS1_81a79c84083520d911de108a728ad1877de78a57ec9e27b5cc432590be4616bb",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "mode",
                "type": "int8",
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
    # @brief Exact original native constant; not a wire field.
    NO_CONTROLLER = -1
    # @brief Exact original native constant; not a wire field.
    DISCONNECTED = 0
    # @brief Exact original native constant; not a wire field.
    CONFIRM_SAFETY = 1
    # @brief Exact original native constant; not a wire field.
    BOOTING = 2
    # @brief Exact original native constant; not a wire field.
    POWER_OFF = 3
    # @brief Exact original native constant; not a wire field.
    POWER_ON = 4
    # @brief Exact original native constant; not a wire field.
    IDLE = 5
    # @brief Exact original native constant; not a wire field.
    BACKDRIVE = 6
    # @brief Exact original native constant; not a wire field.
    RUNNING = 7
    # @brief Exact original native constant; not a wire field.
    UPDATING_FIRMWARE = 8


REGISTRY.add(Ros2Ur_dashboard_msgsMsgRobotMode)


class Ros2Ur_dashboard_msgsMsgSafetyMode(Record):
    """@brief Own every ur_dashboard_msgs/msg/SafetyMode field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("mode",)
    SCHEMA = {
        "type": "ur_dashboard_msgs/msg/SafetyMode",
        "native_identity": None,
        "codec_identity": "UWVMROS1_2eb3d5075a2d7d1765a604c1d1d198379010867d83a98d0327488ca51f5e1aac",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "mode",
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
            }
        ],
    }
    # @brief Exact original native constant; not a wire field.
    NORMAL = 1
    # @brief Exact original native constant; not a wire field.
    REDUCED = 2
    # @brief Exact original native constant; not a wire field.
    PROTECTIVE_STOP = 3
    # @brief Exact original native constant; not a wire field.
    RECOVERY = 4
    # @brief Exact original native constant; not a wire field.
    SAFEGUARD_STOP = 5
    # @brief Exact original native constant; not a wire field.
    SYSTEM_EMERGENCY_STOP = 6
    # @brief Exact original native constant; not a wire field.
    ROBOT_EMERGENCY_STOP = 7
    # @brief Exact original native constant; not a wire field.
    VIOLATION = 8
    # @brief Exact original native constant; not a wire field.
    FAULT = 9
    # @brief Exact original native constant; not a wire field.
    VALIDATE_JOINT_ID = 10
    # @brief Exact original native constant; not a wire field.
    UNDEFINED_SAFETY_MODE = 11
    # @brief Exact original native constant; not a wire field.
    AUTOMATIC_MODE_SAFEGUARD_STOP = 12
    # @brief Exact original native constant; not a wire field.
    SYSTEM_THREE_POSITION_ENABLING_STOP = 13


REGISTRY.add(Ros2Ur_dashboard_msgsMsgSafetyMode)


class Ros2Ur_dashboard_msgsMsgSafetyStatus(Record):
    """@brief Own every ur_dashboard_msgs/msg/SafetyStatus field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("status",)
    SCHEMA = {
        "type": "ur_dashboard_msgs/msg/SafetyStatus",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1b1a7257c40d9c62e0b6291f241825d029fe38f3f3695265a182a270899a79e9",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "status",
                "type": "int8",
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
    # @brief Exact original native constant; not a wire field.
    NORMAL = 1
    # @brief Exact original native constant; not a wire field.
    REDUCED = 2
    # @brief Exact original native constant; not a wire field.
    PROTECTIVE_STOP = 3
    # @brief Exact original native constant; not a wire field.
    RECOVERY = 4
    # @brief Exact original native constant; not a wire field.
    SAFEGUARD_STOP = 5
    # @brief Exact original native constant; not a wire field.
    SYSTEM_EMERGENCY_STOP = 6
    # @brief Exact original native constant; not a wire field.
    ROBOT_EMERGENCY_STOP = 7
    # @brief Exact original native constant; not a wire field.
    VIOLATION = 8
    # @brief Exact original native constant; not a wire field.
    FAULT = 9
    # @brief Exact original native constant; not a wire field.
    VALIDATE_JOINT_ID = 10
    # @brief Exact original native constant; not a wire field.
    UNDEFINED_SAFETY_MODE = 11
    # @brief Exact original native constant; not a wire field.
    AUTOMATIC_MODE_SAFEGUARD_STOP = 12
    # @brief Exact original native constant; not a wire field.
    SYSTEM_THREE_POSITION_ENABLING_STOP = 13
    # @brief Exact original native constant; not a wire field.
    TP_THREE_POSITION_ENABLING_STOP = 14
    # @brief Exact original native constant; not a wire field.
    IMMI_EMERGENCY_STOP = 15
    # @brief Exact original native constant; not a wire field.
    IMMI_SAFEGUARD_STOP = 16
    # @brief Exact original native constant; not a wire field.
    PROFISAFE_WAITING_FOR_PARAMETERS = 17
    # @brief Exact original native constant; not a wire field.
    PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP = 18
    # @brief Exact original native constant; not a wire field.
    PROFISAFE_SAFEGUARD_STOP = 19
    # @brief Exact original native constant; not a wire field.
    PROFISAFE_EMERGENCY_STOP = 20
    # @brief Exact original native constant; not a wire field.
    SAFETY_API_SAFEGUARD_STOP = 22
    # @brief Exact original native constant; not a wire field.
    IO_PLANE_STOP = 23


REGISTRY.add(Ros2Ur_dashboard_msgsMsgSafetyStatus)


class Ros2Ur_dashboard_msgsMsgUserRole(Record):
    """@brief Own every ur_dashboard_msgs/msg/UserRole field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("role",)
    SCHEMA = {
        "type": "ur_dashboard_msgs/msg/UserRole",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7568bc9417685a9bc56cfdd2b41ff81ab99bd8e20fbe5f9e537b5b5d0689440a",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "role",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
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
    # @brief Exact original native constant; not a wire field.
    PROGRAMMER = "PROGRAMMER"
    # @brief Exact original native constant; not a wire field.
    OPERATOR = "OPERATOR"
    # @brief Exact original native constant; not a wire field.
    NONE = "NONE"
    # @brief Exact original native constant; not a wire field.
    LOCKED = "LOCKED"
    # @brief Exact original native constant; not a wire field.
    RESTRICTED = "RESTRICTED"


REGISTRY.add(Ros2Ur_dashboard_msgsMsgUserRole)


class Ros2Ur_dashboard_msgsMsgVersionInformation(Record):
    """@brief Own every ur_dashboard_msgs/msg/VersionInformation field.
    @details Canonical extent 16..16 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("major", "minor", "bugfix", "build")
    SCHEMA = {
        "type": "ur_dashboard_msgs/msg/VersionInformation",
        "native_identity": None,
        "codec_identity": "UWVMROS1_450c41c4361f1bca51f864dd9ef596851b17ebc79d4f784e7abb8b721752443d",
        "minimum": 16,
        "maximum": 16,
        "semantics": "",
        "fields": [
            {
                "name": "major",
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
            {
                "name": "minor",
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
            {
                "name": "bugfix",
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
            {
                "name": "build",
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


REGISTRY.add(Ros2Ur_dashboard_msgsMsgVersionInformation)


class Ros2Ur_dashboard_msgsSrvAddToLog_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/AddToLog_Request field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("message",)
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/AddToLog_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ecfe5bb0d0db92bc5dfdec9bf82fbe730e3b3b4d65680812d0540b9055590142",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "message",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
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


REGISTRY.add(Ros2Ur_dashboard_msgsSrvAddToLog_Request)


class Ros2Ur_dashboard_msgsSrvAddToLog_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/AddToLog_Response field.
    @details Canonical extent 5..261 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("answer", "success")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/AddToLog_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_57b0c150a353d3fca6e96c4dc86e72f71b452663ede1eeb69e51069992d07e4c",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "fields": [
            {
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
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
        ],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvAddToLog_Response)


class Ros2Ur_dashboard_msgsSrvDownloadProgram_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/DownloadProgram_Request field.
    @details Canonical extent 8..520 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("program_name", "target_path")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/DownloadProgram_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_5c84420393aae13ea448d171a7b2956a55a39f3321f504b9f3bd5b4a38960c2f",
        "minimum": 8,
        "maximum": 520,
        "semantics": "",
        "fields": [
            {
                "name": "program_name",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "target_path",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
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


REGISTRY.add(Ros2Ur_dashboard_msgsSrvDownloadProgram_Request)


class Ros2Ur_dashboard_msgsSrvDownloadProgram_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/DownloadProgram_Response field.
    @details Canonical extent 5..261 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("answer", "success")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/DownloadProgram_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_46b0a73805282bad5f819f712275b7dd2ca4a6bb8c73c445ea8ae0a3d0f9e8e0",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "fields": [
            {
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
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
        ],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvDownloadProgram_Response)


class Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/DownloadSupportFile_Request field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("target_path",)
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/DownloadSupportFile_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d919563629f81d5a8c10f1d2921ea16f3c912a49b8d3bcf65d17b8daa0a38140",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "target_path",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
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


REGISTRY.add(Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request)


class Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/DownloadSupportFile_Response field.
    @details Canonical extent 6..262 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("answer", "success", "support_files_present")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/DownloadSupportFile_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_76e190e6e9f1ddfff3082ea2adb0463d21ba9fb6795153fe6bbacee8a3334667",
        "minimum": 6,
        "maximum": 262,
        "semantics": "",
        "fields": [
            {
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
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
                "name": "support_files_present",
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


REGISTRY.add(Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response)


class Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/GenerateFlightReport_Request field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("report_type",)
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GenerateFlightReport_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7246d97690c0c827e9cfab2f8297cf27a10e60e41ebb3ba345f361a109057099",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "report_type",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": "SYSTEM",
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": "SYSTEM",
            }
        ],
    }
    # @brief Exact original native constant; not a wire field.
    CONTROLLER = "controller"
    # @brief Exact original native constant; not a wire field.
    SOFTWARE = "software"
    # @brief Exact original native constant; not a wire field.
    SYSTEM = "system"


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request)


class Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/GenerateFlightReport_Response field.
    @details Canonical extent 9..521 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success", "answer", "report_id")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GenerateFlightReport_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_adebf67876b5ae3377cec0aa04138c2ab73ef7c0d7942c77c6c06b248a836445",
        "minimum": 9,
        "maximum": 521,
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
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "report_id",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
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


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response)


class Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/GenerateSupportFile_Request field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("dir_path",)
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GenerateSupportFile_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_10b0371b77db32d75a77dcb0605b325caa1915ccfb7d0917896fd75234e6ada7",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "dir_path",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": ".",
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": ".",
            }
        ],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request)


class Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/GenerateSupportFile_Response field.
    @details Canonical extent 9..521 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success", "answer", "generated_file_name")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GenerateSupportFile_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f370623fe690f218073f8538aa9fcf41c94d4abd3e0507e09607ef11e10edf38",
        "minimum": 9,
        "maximum": 521,
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
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "generated_file_name",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
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


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response)


class Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetLoadedProgram_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetLoadedProgram_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_030e5746e6a4da8f266e37d11cc3826715099ff1aa1c845a97042aec987707e3",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request)


class Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetLoadedProgram_Response field.
    @details Canonical extent 9..521 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("answer", "program_name", "success")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetLoadedProgram_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_3e8c7f3c8711faea01de37b9a011f34a9c6dd660cc222e46177b2c1898ec2f7e",
        "minimum": 9,
        "maximum": 521,
        "semantics": "",
        "fields": [
            {
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "program_name",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
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
        ],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response)


class Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetOperationalMode_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetOperationalMode_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_3f348b5d9e04a8ba01f5277ad259c34a6816ae0693f47c49e348a5497a90a325",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request)


class Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetOperationalMode_Response field.
    @details Canonical extent 9..521 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success", "answer", "operational_mode")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetOperationalMode_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6c2da335fd551162020eb394b91e99aaeca17e34e7c2e98de935c81912efb5f6",
        "minimum": 9,
        "maximum": 521,
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
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "operational_mode",
                "type": "ur_dashboard_msgs/msg/OperationalMode",
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


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response)


class Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetPolyScopeVersion_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetPolyScopeVersion_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_88193ae202f0cb02746bc5556e8e8ee277fb4fae72ee4b96a6539c980dc86f13",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request)


class Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetPolyScopeVersion_Response field.
    @details Canonical extent 21..277 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("answer", "success", "version")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetPolyScopeVersion_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c8d53d0a920806e86ceb6d2ac5a692a92e62b057432554bed9dcf57bed0ff9bd",
        "minimum": 21,
        "maximum": 277,
        "semantics": "",
        "fields": [
            {
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
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
                "name": "version",
                "type": "ur_dashboard_msgs/msg/VersionInformation",
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


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response)


class Ros2Ur_dashboard_msgsSrvGetProgramState_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetProgramState_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetProgramState_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_fe42d1d1aa3d7bdbaa410bce045120d6dd841213ef10c5dd158c2b76fa157f65",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetProgramState_Request)


class Ros2Ur_dashboard_msgsSrvGetProgramState_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetProgramState_Response field.
    @details Canonical extent 13..781 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("state", "program_name", "answer", "success")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetProgramState_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_b20731b8552f323837c5939f390060a6c7c92e9447df5e620891708cfce51ff4",
        "minimum": 13,
        "maximum": 781,
        "semantics": "",
        "fields": [
            {
                "name": "state",
                "type": "ur_dashboard_msgs/msg/ProgramState",
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
                "name": "program_name",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
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
        ],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetProgramState_Response)


class Ros2Ur_dashboard_msgsSrvGetPrograms_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetPrograms_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetPrograms_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_8d7b4f3fb9a15854b59c85c5205bf20d3e0f6a1a972ccbdf77ee8377c9e40d6d",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetPrograms_Request)


class Ros2Ur_dashboard_msgsSrvGetPrograms_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetPrograms_Response field.
    @details Canonical extent 9..11081 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("programs", "answer", "success")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetPrograms_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_111b67c562ba0c77c2924b97058e4126055ad6deb7f99049b8caf8990b3f979c",
        "minimum": 9,
        "maximum": 11081,
        "semantics": "",
        "fields": [
            {
                "name": "programs",
                "type": "ur_dashboard_msgs/msg/ProgramInformation",
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
            {
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
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
        ],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetPrograms_Response)


class Ros2Ur_dashboard_msgsSrvGetRobotMode_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetRobotMode_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetRobotMode_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d1d9cd94a443b20ec0d41a8db1a6d87291657597abc014e7da0f46a58c6c5614",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetRobotMode_Request)


class Ros2Ur_dashboard_msgsSrvGetRobotMode_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetRobotMode_Response field.
    @details Canonical extent 6..262 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("robot_mode", "answer", "success")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetRobotMode_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_67db750ad95b3b207d61b18513a117c868040c22c93638f07fa74645d87bcfba",
        "minimum": 6,
        "maximum": 262,
        "semantics": "",
        "fields": [
            {
                "name": "robot_mode",
                "type": "ur_dashboard_msgs/msg/RobotMode",
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
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
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
        ],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetRobotMode_Response)


class Ros2Ur_dashboard_msgsSrvGetRobotModel_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetRobotModel_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetRobotModel_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_9db08f07993bd5786aea5b6bd567f9e9f49329883326ea16e6c49eef1586dc43",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetRobotModel_Request)


class Ros2Ur_dashboard_msgsSrvGetRobotModel_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetRobotModel_Response field.
    @details Canonical extent 9..521 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success", "answer", "robot_model")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetRobotModel_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_faf0124c542ef7420915527c27e99a7d26c5d6274f55d869bc9416e6b7d9b3c9",
        "minimum": 9,
        "maximum": 521,
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
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "robot_model",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
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


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetRobotModel_Response)


class Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetSafetyMode_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetSafetyMode_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_5866cc4b0e10508eeb45ceecf9f9b6036ba55d04c9613622e189ccde2781dcb0",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request)


class Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetSafetyMode_Response field.
    @details Canonical extent 6..262 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("safety_mode", "answer", "success")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetSafetyMode_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f65d7ff83dc97f891032d8ab16bf71a9c2326c6ae6a033fe1d6e06f011c5a40b",
        "minimum": 6,
        "maximum": 262,
        "semantics": "",
        "fields": [
            {
                "name": "safety_mode",
                "type": "ur_dashboard_msgs/msg/SafetyMode",
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
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
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
        ],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response)


class Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetSafetyStatus_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetSafetyStatus_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0e2958bcd7b121682361c94b2926bcc4552d7ef07dc2af4609d04b1bb7054602",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request)


class Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetSafetyStatus_Response field.
    @details Canonical extent 6..262 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("answer", "success", "safety_status")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetSafetyStatus_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_bb96aaa96f5c78b97ad80a14eb96865dc10b5a1d12524fcbcc75fc6d481c53e4",
        "minimum": 6,
        "maximum": 262,
        "semantics": "",
        "fields": [
            {
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
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
                "name": "safety_status",
                "type": "ur_dashboard_msgs/msg/SafetyStatus",
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


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response)


class Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetSerialNumber_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetSerialNumber_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_bbb1ca066c77ed459352de69d566f3ea87b94fe593c31c911193416f92a73c9b",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request)


class Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetSerialNumber_Response field.
    @details Canonical extent 13..269 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("serial_number", "answer", "success")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetSerialNumber_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f389641d089fa6fd421348f047732de2122cd714bdb2bd4d1e611592aca349e7",
        "minimum": 13,
        "maximum": 269,
        "semantics": "",
        "fields": [
            {
                "name": "serial_number",
                "type": "uint64",
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
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
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
        ],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response)


class Ros2Ur_dashboard_msgsSrvGetUserRole_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetUserRole_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetUserRole_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a331be09dd2093e4584e6dc80f83caaadd3a8e43cca6a1c8fcfa1e2ea632c9f0",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetUserRole_Request)


class Ros2Ur_dashboard_msgsSrvGetUserRole_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/GetUserRole_Response field.
    @details Canonical extent 9..521 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("user_role", "answer", "success")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/GetUserRole_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ed4f53e59fbe4cd33cfbf5d190b60fbe8371dda7da9d7af6e270a882eb142df8",
        "minimum": 9,
        "maximum": 521,
        "semantics": "",
        "fields": [
            {
                "name": "user_role",
                "type": "ur_dashboard_msgs/msg/UserRole",
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
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
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
        ],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvGetUserRole_Response)


class Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/IsInRemoteControl_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/IsInRemoteControl_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4b6b86fc4337c36589e8781b46ddbe6992f750b565ff413ea0b069982d87a463",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request)


class Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/IsInRemoteControl_Response field.
    @details Canonical extent 6..262 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("answer", "remote_control", "success")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/IsInRemoteControl_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f2705c1be319c7c667f4f2224851b06c24b15b4211c2828fab89f09455e4c816",
        "minimum": 6,
        "maximum": 262,
        "semantics": "",
        "fields": [
            {
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "remote_control",
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
        ],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response)


class Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/IsProgramRunning_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/IsProgramRunning_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f28274c0dc01d8aa2f981f969c05a614e6b3922601d578f99c6321a4b20fc80f",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request)


class Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/IsProgramRunning_Response field.
    @details Canonical extent 6..262 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("answer", "program_running", "success")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/IsProgramRunning_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c57cc7ecd7e81f7359824b43884a58f65748a4c77cacbcc45be17aa9147cf499",
        "minimum": 6,
        "maximum": 262,
        "semantics": "",
        "fields": [
            {
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "program_running",
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
        ],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response)


class Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/IsProgramSaved_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/IsProgramSaved_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c53d57cffc0480d66257150a8450ba90563fda5153742784831d38abcbc0b099",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request)


class Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/IsProgramSaved_Response field.
    @details Canonical extent 10..522 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("answer", "program_name", "program_saved", "success")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/IsProgramSaved_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_aa171247f31fd00a1b8820ee21cf20d159bd10d0d2887dc96b3a4dd4d372d115",
        "minimum": 10,
        "maximum": 522,
        "semantics": "",
        "fields": [
            {
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "program_name",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "program_saved",
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
        ],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response)


class Ros2Ur_dashboard_msgsSrvLoad_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/Load_Request field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("filename",)
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/Load_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1d0cd6cdeaaafce999a7e9924721246b9f4954f22da40fd0a27fb7b657324876",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "filename",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
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


REGISTRY.add(Ros2Ur_dashboard_msgsSrvLoad_Request)


class Ros2Ur_dashboard_msgsSrvLoad_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/Load_Response field.
    @details Canonical extent 5..261 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("answer", "success")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/Load_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4e694de8079133a8e789add3640dfe19805cad92991a650167c2aae7067da415",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "fields": [
            {
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
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
        ],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvLoad_Response)


class Ros2Ur_dashboard_msgsSrvPopup_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/Popup_Request field.
    @details Canonical extent 8..520 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("message", "title")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/Popup_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_369e6eab4f689a846c52fcc5cb539da63fab3939fab254dd1e04c7b274d5f770",
        "minimum": 8,
        "maximum": 520,
        "semantics": "",
        "fields": [
            {
                "name": "message",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "title",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
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


REGISTRY.add(Ros2Ur_dashboard_msgsSrvPopup_Request)


class Ros2Ur_dashboard_msgsSrvPopup_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/Popup_Response field.
    @details Canonical extent 5..261 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("answer", "success")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/Popup_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0b54f7c477c1ddf8ccb18d12d50eaf308225d4927ee377377ed354426e58f984",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "fields": [
            {
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
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
        ],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvPopup_Response)


class Ros2Ur_dashboard_msgsSrvRawRequest_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/RawRequest_Request field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("query",)
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/RawRequest_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_2bf66d87b20ca2de9ed94c04c79042a50239728320b43b27c9942405795b4555",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "query",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
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


REGISTRY.add(Ros2Ur_dashboard_msgsSrvRawRequest_Request)


class Ros2Ur_dashboard_msgsSrvRawRequest_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/RawRequest_Response field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("answer",)
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/RawRequest_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7c37f54149bab54f6e7bbfed41992eb54416b31346bc889a9632d5497111267f",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
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


REGISTRY.add(Ros2Ur_dashboard_msgsSrvRawRequest_Response)


class Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/SetOperationalMode_Request field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("operational_mode",)
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/SetOperationalMode_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_8cc61f7c64211c46e01e52eee2c05f6e709f4f0900cf24fdfd4079b0f7581a00",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "operational_mode",
                "type": "ur_dashboard_msgs/msg/OperationalMode",
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


REGISTRY.add(Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request)


class Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/SetOperationalMode_Response field.
    @details Canonical extent 5..261 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("answer", "success")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/SetOperationalMode_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f5009de077224371e9d2f6c0aecbabd24c80148f2c7e1b1383a64f6f214b202a",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "fields": [
            {
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
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
        ],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response)


class Ros2Ur_dashboard_msgsSrvSetUserRole_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/SetUserRole_Request field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("user_role",)
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/SetUserRole_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7bd499947803efca81401a2de496d24e7e54ba97f4f86ec2b3089146a0655f5e",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "user_role",
                "type": "ur_dashboard_msgs/msg/UserRole",
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


REGISTRY.add(Ros2Ur_dashboard_msgsSrvSetUserRole_Request)


class Ros2Ur_dashboard_msgsSrvSetUserRole_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/SetUserRole_Response field.
    @details Canonical extent 5..261 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success", "answer")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/SetUserRole_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4cab2bba5030f4e4b9e90252d64ec2e02d6eb87070b75cf43190fecd21da59fd",
        "minimum": 5,
        "maximum": 261,
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
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
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


REGISTRY.add(Ros2Ur_dashboard_msgsSrvSetUserRole_Response)


class Ros2Ur_dashboard_msgsSrvUploadProgram_Request(Record):
    """@brief Own every ur_dashboard_msgs/srv/UploadProgram_Request field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("file_path",)
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/UploadProgram_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f7501d0115f8d36b1942ce610b1bbc197d0276de508ac8175d539f40494f437b",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "file_path",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
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


REGISTRY.add(Ros2Ur_dashboard_msgsSrvUploadProgram_Request)


class Ros2Ur_dashboard_msgsSrvUploadProgram_Response(Record):
    """@brief Own every ur_dashboard_msgs/srv/UploadProgram_Response field.
    @details Canonical extent 9..521 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("answer", "program_name", "success")
    SCHEMA = {
        "type": "ur_dashboard_msgs/srv/UploadProgram_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ae9a28c1cd4729f54968d18a16e2f8f417bdc5e9bc15809de7481f1f20e6b398",
        "minimum": 9,
        "maximum": 521,
        "semantics": "",
        "fields": [
            {
                "name": "answer",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "program_name",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
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
        ],
    }


REGISTRY.add(Ros2Ur_dashboard_msgsSrvUploadProgram_Response)


class Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal(Record):
    """@brief Own every ur_msgs/action/FollowJointTrajectoryUntil_Goal field.
    @details Canonical extent 37..7053 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("trajectory", "path_tolerance", "goal_tolerance", "goal_time_tolerance", "until_type")
    SCHEMA = {
        "type": "ur_msgs/action/FollowJointTrajectoryUntil_Goal",
        "native_identity": None,
        "codec_identity": "UWVMROS1_78fda8f2d20c502e24b1ad4fe55f34bba41de20ff88e71b56d7a0631d7a3905a",
        "minimum": 37,
        "maximum": 7053,
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
                "name": "path_tolerance",
                "type": "control_msgs/msg/JointTolerance",
                "array": "sequence",
                "count": 6,
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
                "count": 6,
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
            {
                "name": "until_type",
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
    # @brief Exact original native constant; not a wire field.
    TOOL_CONTACT = 0


REGISTRY.add(Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal)


class Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result(Record):
    """@brief Own every ur_msgs/action/FollowJointTrajectoryUntil_Result field.
    @details Canonical extent 12..268 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("error_code", "until_condition_result", "error_string")
    SCHEMA = {
        "type": "ur_msgs/action/FollowJointTrajectoryUntil_Result",
        "native_identity": None,
        "codec_identity": "UWVMROS1_de92b9ccfb9c93f3afae9da5e8e31df9a6d6a606479fe27b9bcf14ff329bc869",
        "minimum": 12,
        "maximum": 268,
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
                "name": "until_condition_result",
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
                "string_bound": 256,
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
    # @brief Exact original native constant; not a wire field.
    TRIGGERED = 0
    # @brief Exact original native constant; not a wire field.
    NOT_TRIGGERED = 1


REGISTRY.add(Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result)


class Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback(Record):
    """@brief Own every ur_msgs/action/FollowJointTrajectoryUntil_Feedback field.
    @details Canonical extent 88..2352 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "joint_names", "desired", "actual", "error")
    SCHEMA = {
        "type": "ur_msgs/action/FollowJointTrajectoryUntil_Feedback",
        "native_identity": None,
        "codec_identity": "UWVMROS1_5a719f991f5c73784f9dc9e962ecfa0541e00daef7f747c312d4b633d63040ac",
        "minimum": 88,
        "maximum": 2352,
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
                "count": 6,
                "string_bound": 256,
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
        ],
    }


REGISTRY.add(Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback)


class Ros2Ur_msgsActionSendScript_Goal(Record):
    """@brief Own every ur_msgs/action/SendScript_Goal field.
    @details Canonical extent 17..8465 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("program", "script_name", "start_timeout", "fail_on_warnings")
    SCHEMA = {
        "type": "ur_msgs/action/SendScript_Goal",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c277cd00663786f95201e61baa658b92def3becc1f37e54aa6093bb11135819c",
        "minimum": 17,
        "maximum": 8465,
        "semantics": "",
        "fields": [
            {
                "name": "program",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 8192,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "script_name",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": "",
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": "",
            },
            {
                "name": "start_timeout",
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
            {
                "name": "fail_on_warnings",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": "True",
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": True,
            },
        ],
    }


REGISTRY.add(Ros2Ur_msgsActionSendScript_Goal)


class Ros2Ur_msgsActionSendScript_Result(Record):
    """@brief Own every ur_msgs/action/SendScript_Result field.
    @details Canonical extent 5..261 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success", "message")
    SCHEMA = {
        "type": "ur_msgs/action/SendScript_Result",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d4c4d9721c3a576f590ba4967b2444a82969d6ccba94ddbf8c4a974535ee17d2",
        "minimum": 5,
        "maximum": 261,
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
                "string_bound": 256,
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


REGISTRY.add(Ros2Ur_msgsActionSendScript_Result)


class Ros2Ur_msgsActionSendScript_Feedback(Record):
    """@brief Own every ur_msgs/action/SendScript_Feedback field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "ur_msgs/action/SendScript_Feedback",
        "native_identity": None,
        "codec_identity": "UWVMROS1_094876d6467bd2b34f74cc6b574393117753add5254285e4e95d85b07328ef2c",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Ur_msgsActionSendScript_Feedback)


class Ros2Ur_msgsActionToolContact_Goal(Record):
    """@brief Own every ur_msgs/action/ToolContact_Goal field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "ur_msgs/action/ToolContact_Goal",
        "native_identity": None,
        "codec_identity": "UWVMROS1_150298ad16b1bc37d47bd3324cd4ec301ad8402c07779e8a435ce61daa7578dd",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Ur_msgsActionToolContact_Goal)


class Ros2Ur_msgsActionToolContact_Result(Record):
    """@brief Own every ur_msgs/action/ToolContact_Result field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "ur_msgs/action/ToolContact_Result",
        "native_identity": None,
        "codec_identity": "UWVMROS1_b79f6080ac18b67c25131458a2af0a3c235d624c00fc5c13da534cc546c94578",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Ur_msgsActionToolContact_Result)


class Ros2Ur_msgsActionToolContact_Feedback(Record):
    """@brief Own every ur_msgs/action/ToolContact_Feedback field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "ur_msgs/action/ToolContact_Feedback",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c6a11fd615f72a70a98514703de4c007a2bb161fbd8a953c5e8b899f471f4c5b",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Ur_msgsActionToolContact_Feedback)


class Ros2Ur_msgsMsgAnalog(Record):
    """@brief Own every ur_msgs/msg/Analog field.
    @details Canonical extent 6..6 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pin", "domain", "state")
    SCHEMA = {
        "type": "ur_msgs/msg/Analog",
        "native_identity": None,
        "codec_identity": "UWVMROS1_68873e85836e1a65d7b67a52f5db8b3c3be082f889d2df4342386b282988f2a4",
        "minimum": 6,
        "maximum": 6,
        "semantics": "",
        "fields": [
            {
                "name": "pin",
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
                "name": "domain",
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
                "name": "state",
                "type": "float32",
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
    CURRENT = 0
    # @brief Exact original native constant; not a wire field.
    VOLTAGE = 1


REGISTRY.add(Ros2Ur_msgsMsgAnalog)


class Ros2Ur_msgsMsgDigital(Record):
    """@brief Own every ur_msgs/msg/Digital field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pin", "state")
    SCHEMA = {
        "type": "ur_msgs/msg/Digital",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e5ebd0a17ee528cff1e0a636eb0be9c7e4128d3e77be722c5f1be73df4f4c11e",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "pin",
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
                "name": "state",
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


REGISTRY.add(Ros2Ur_msgsMsgDigital)


class Ros2Ur_msgsMsgFrictionModelParameters(Record):
    """@brief Own every ur_msgs/msg/FrictionModelParameters field.
    @details Canonical extent 8..104 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("viscous_scale", "coulomb_scale")
    SCHEMA = {
        "type": "ur_msgs/msg/FrictionModelParameters",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7cc9c7af77340f56b0559b4e2ad32972ff65f2a6cf89ebfbe2c48c645f8e9c89",
        "minimum": 8,
        "maximum": 104,
        "semantics": "",
        "fields": [
            {
                "name": "viscous_scale",
                "type": "float64",
                "array": "sequence",
                "count": 6,
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
                "name": "coulomb_scale",
                "type": "float64",
                "array": "sequence",
                "count": 6,
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


REGISTRY.add(Ros2Ur_msgsMsgFrictionModelParameters)


class Ros2Ur_msgsMsgIOStates(Record):
    """@brief Own every ur_msgs/msg/IOStates field.
    @details Canonical extent 20..404 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = (
        "digital_in_states",
        "digital_out_states",
        "flag_states",
        "analog_in_states",
        "analog_out_states",
    )
    SCHEMA = {
        "type": "ur_msgs/msg/IOStates",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c22f9f784c89b6854fa84df416ed3704e3a312b15c8fc41162e7f5f53223fef5",
        "minimum": 20,
        "maximum": 404,
        "semantics": "",
        "fields": [
            {
                "name": "digital_in_states",
                "type": "ur_msgs/msg/Digital",
                "array": "sequence",
                "count": 32,
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
                "name": "digital_out_states",
                "type": "ur_msgs/msg/Digital",
                "array": "sequence",
                "count": 32,
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
                "name": "flag_states",
                "type": "ur_msgs/msg/Digital",
                "array": "sequence",
                "count": 32,
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
                "name": "analog_in_states",
                "type": "ur_msgs/msg/Analog",
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
            {
                "name": "analog_out_states",
                "type": "ur_msgs/msg/Analog",
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


REGISTRY.add(Ros2Ur_msgsMsgIOStates)


class Ros2Ur_msgsMsgMasterboardDataMsg(Record):
    """@brief Own every ur_msgs/msg/MasterboardDataMsg field.
    @details Canonical extent 62..62 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = (
        "digital_input_bits",
        "digital_output_bits",
        "analog_input_range0",
        "analog_input_range1",
        "analog_input0",
        "analog_input1",
        "analog_output_domain0",
        "analog_output_domain1",
        "analog_output0",
        "analog_output1",
        "masterboard_temperature",
        "robot_voltage_48v",
        "robot_current",
        "master_io_current",
        "master_safety_state",
        "master_onoff_state",
    )
    SCHEMA = {
        "type": "ur_msgs/msg/MasterboardDataMsg",
        "native_identity": None,
        "codec_identity": "UWVMROS1_eb3b0aab27bb5683859356ca7cf9648e53d311c1fd32cac97f68ce1d4622a9e5",
        "minimum": 62,
        "maximum": 62,
        "semantics": "",
        "fields": [
            {
                "name": "digital_input_bits",
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
            {
                "name": "digital_output_bits",
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
            {
                "name": "analog_input_range0",
                "type": "int8",
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
                "name": "analog_input_range1",
                "type": "int8",
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
                "name": "analog_input0",
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
                "name": "analog_input1",
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
                "name": "analog_output_domain0",
                "type": "int8",
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
                "name": "analog_output_domain1",
                "type": "int8",
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
                "name": "analog_output0",
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
                "name": "analog_output1",
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
                "name": "masterboard_temperature",
                "type": "float32",
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
                "name": "robot_voltage_48v",
                "type": "float32",
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
                "name": "robot_current",
                "type": "float32",
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
                "name": "master_io_current",
                "type": "float32",
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
                "name": "master_safety_state",
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
                "name": "master_onoff_state",
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


REGISTRY.add(Ros2Ur_msgsMsgMasterboardDataMsg)


class Ros2Ur_msgsMsgRobotModeDataMsg(Record):
    """@brief Own every ur_msgs/msg/RobotModeDataMsg field.
    @details Canonical extent 15..15 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = (
        "timestamp",
        "is_robot_connected",
        "is_real_robot_enabled",
        "is_power_on_robot",
        "is_emergency_stopped",
        "is_protective_stopped",
        "is_program_running",
        "is_program_paused",
    )
    SCHEMA = {
        "type": "ur_msgs/msg/RobotModeDataMsg",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0181d85868dc6251289c6f7bc723757fa573c1345b6502497e335655d328bb31",
        "minimum": 15,
        "maximum": 15,
        "semantics": "",
        "fields": [
            {
                "name": "timestamp",
                "type": "uint64",
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
                "name": "is_robot_connected",
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
                "name": "is_real_robot_enabled",
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
                "name": "is_power_on_robot",
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
                "name": "is_emergency_stopped",
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
                "name": "is_protective_stopped",
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
                "name": "is_program_running",
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
                "name": "is_program_paused",
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


REGISTRY.add(Ros2Ur_msgsMsgRobotModeDataMsg)


class Ros2Ur_msgsMsgRobotStateRTMsg(Record):
    """@brief Own every ur_msgs/msg/RobotStateRTMsg field.
    @details Canonical extent 96..768 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = (
        "time",
        "q_target",
        "qd_target",
        "qdd_target",
        "i_target",
        "m_target",
        "q_actual",
        "qd_actual",
        "i_actual",
        "tool_acc_values",
        "tcp_force",
        "tool_vector",
        "tcp_speed",
        "digital_input_bits",
        "motor_temperatures",
        "controller_timer",
        "test_value",
        "robot_mode",
        "joint_modes",
    )
    SCHEMA = {
        "type": "ur_msgs/msg/RobotStateRTMsg",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a30600c42e98b89da49d63073a5d30b0989aa0cb21f2bafec229dee10591d9cd",
        "minimum": 96,
        "maximum": 768,
        "semantics": "",
        "fields": [
            {
                "name": "time",
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
                "name": "q_target",
                "type": "float64",
                "array": "sequence",
                "count": 6,
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
                "name": "qd_target",
                "type": "float64",
                "array": "sequence",
                "count": 6,
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
                "name": "qdd_target",
                "type": "float64",
                "array": "sequence",
                "count": 6,
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
                "name": "i_target",
                "type": "float64",
                "array": "sequence",
                "count": 6,
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
                "name": "m_target",
                "type": "float64",
                "array": "sequence",
                "count": 6,
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
                "name": "q_actual",
                "type": "float64",
                "array": "sequence",
                "count": 6,
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
                "name": "qd_actual",
                "type": "float64",
                "array": "sequence",
                "count": 6,
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
                "name": "i_actual",
                "type": "float64",
                "array": "sequence",
                "count": 6,
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
                "name": "tool_acc_values",
                "type": "float64",
                "array": "sequence",
                "count": 6,
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
                "name": "tcp_force",
                "type": "float64",
                "array": "sequence",
                "count": 6,
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
                "name": "tool_vector",
                "type": "float64",
                "array": "sequence",
                "count": 6,
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
                "name": "tcp_speed",
                "type": "float64",
                "array": "sequence",
                "count": 6,
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
                "name": "digital_input_bits",
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
                "name": "motor_temperatures",
                "type": "float64",
                "array": "sequence",
                "count": 6,
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
                "name": "controller_timer",
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
                "name": "test_value",
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
                "name": "robot_mode",
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
                "name": "joint_modes",
                "type": "float64",
                "array": "sequence",
                "count": 6,
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


REGISTRY.add(Ros2Ur_msgsMsgRobotStateRTMsg)


class Ros2Ur_msgsMsgToolDataMsg(Record):
    """@brief Own every ur_msgs/msg/ToolDataMsg field.
    @details Canonical extent 32..32 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = (
        "analog_input_range2",
        "analog_input_range3",
        "analog_input2",
        "analog_input3",
        "tool_voltage_48v",
        "tool_output_voltage",
        "tool_current",
        "tool_temperature",
        "tool_mode",
    )
    SCHEMA = {
        "type": "ur_msgs/msg/ToolDataMsg",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1eec69666515ffbdca162a10967fce03ee4c25f0c27d56c5a812b87c9a229aa0",
        "minimum": 32,
        "maximum": 32,
        "semantics": "",
        "fields": [
            {
                "name": "analog_input_range2",
                "type": "int8",
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
                "name": "analog_input_range3",
                "type": "int8",
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
                "name": "analog_input2",
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
                "name": "analog_input3",
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
                "name": "tool_voltage_48v",
                "type": "float32",
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
                "name": "tool_output_voltage",
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
                "name": "tool_current",
                "type": "float32",
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
                "name": "tool_temperature",
                "type": "float32",
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
                "name": "tool_mode",
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
    # @brief Exact original native constant; not a wire field.
    ANALOG_INPUT_RANGE_CURRENT = 0
    # @brief Exact original native constant; not a wire field.
    ANALOG_INPUT_RANGE_VOLTAGE = 1
    # @brief Exact original native constant; not a wire field.
    TOOL_BOOTLOADER_MODE = 249
    # @brief Exact original native constant; not a wire field.
    TOOL_RUNNING_MODE = 253
    # @brief Exact original native constant; not a wire field.
    TOOL_IDLE_MODE = 255


REGISTRY.add(Ros2Ur_msgsMsgToolDataMsg)


class Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request(Record):
    """@brief Own every ur_msgs/srv/GetRobotSoftwareVersion_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "ur_msgs/srv/GetRobotSoftwareVersion_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c2d78972cb5b63138d1e780e8ff0c082dd77d5b76b09642d2c655e9f16780101",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request)


class Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response(Record):
    """@brief Own every ur_msgs/srv/GetRobotSoftwareVersion_Response field.
    @details Canonical extent 16..16 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("major", "minor", "bugfix", "build")
    SCHEMA = {
        "type": "ur_msgs/srv/GetRobotSoftwareVersion_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_bbe9984c34d69f93ad8dbfe6059c6a2e1bf43dbd27eabd97cf0a9507308d814a",
        "minimum": 16,
        "maximum": 16,
        "semantics": "",
        "fields": [
            {
                "name": "major",
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
            {
                "name": "minor",
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
            {
                "name": "bugfix",
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
            {
                "name": "build",
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


REGISTRY.add(Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response)


class Ros2Ur_msgsSrvSetAnalogOutput_Request(Record):
    """@brief Own every ur_msgs/srv/SetAnalogOutput_Request field.
    @details Canonical extent 6..6 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("data",)
    SCHEMA = {
        "type": "ur_msgs/srv/SetAnalogOutput_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_71c3eca5c6c90758f084e275fc495feb5d1c08a467c97d941fb5864c54309bea",
        "minimum": 6,
        "maximum": 6,
        "semantics": "",
        "fields": [
            {
                "name": "data",
                "type": "ur_msgs/msg/Analog",
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


REGISTRY.add(Ros2Ur_msgsSrvSetAnalogOutput_Request)


class Ros2Ur_msgsSrvSetAnalogOutput_Response(Record):
    """@brief Own every ur_msgs/srv/SetAnalogOutput_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "ur_msgs/srv/SetAnalogOutput_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_71a5f3580657cb3ca702dbb63b7af3330c922624c9e9774e47e6533e2fc0a05a",
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


REGISTRY.add(Ros2Ur_msgsSrvSetAnalogOutput_Response)


class Ros2Ur_msgsSrvSetForceMode_Request(Record):
    """@brief Own every ur_msgs/srv/SetForceMode_Request field.
    @details Canonical extent 203..331 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = (
        "task_frame",
        "selection_vector_x",
        "selection_vector_y",
        "selection_vector_z",
        "selection_vector_rx",
        "selection_vector_ry",
        "selection_vector_rz",
        "wrench",
        "type",
        "speed_limits",
        "deviation_limits",
        "damping_factor",
        "gain_scaling",
    )
    SCHEMA = {
        "type": "ur_msgs/srv/SetForceMode_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e43a6c22510a2078de3cb2dc17ba1b7184080a6aa29a1653b7986723c0cfef6e",
        "minimum": 203,
        "maximum": 331,
        "semantics": "",
        "fields": [
            {
                "name": "task_frame",
                "type": "geometry_msgs/msg/PoseStamped",
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
                "name": "selection_vector_x",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": "False",
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": False,
            },
            {
                "name": "selection_vector_y",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": "False",
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": False,
            },
            {
                "name": "selection_vector_z",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": "False",
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": False,
            },
            {
                "name": "selection_vector_rx",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": "False",
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": False,
            },
            {
                "name": "selection_vector_ry",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": "False",
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": False,
            },
            {
                "name": "selection_vector_rz",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": "False",
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": False,
            },
            {
                "name": "wrench",
                "type": "geometry_msgs/msg/Wrench",
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
                "name": "type",
                "type": "uint8",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": "2",
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": 2,
            },
            {
                "name": "speed_limits",
                "type": "geometry_msgs/msg/Twist",
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
                "name": "deviation_limits",
                "type": "float32",
                "array": "array",
                "count": 6,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": "[0.01, 0.01, 0.01, 0.01, 0.01, 0.01]",
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": [
                    0.009999999776482582,
                    0.009999999776482582,
                    0.009999999776482582,
                    0.009999999776482582,
                    0.009999999776482582,
                    0.009999999776482582,
                ],
            },
            {
                "name": "damping_factor",
                "type": "float32",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": "0.025",
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": 0.02500000037252903,
            },
            {
                "name": "gain_scaling",
                "type": "float32",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": "0.5",
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": 0.5,
            },
        ],
    }
    # @brief Exact original native constant; not a wire field.
    TCP_TO_ORIGIN = 1
    # @brief Exact original native constant; not a wire field.
    NO_TRANSFORM = 2
    # @brief Exact original native constant; not a wire field.
    TCP_VELOCITY_TO_X_Y = 3


REGISTRY.add(Ros2Ur_msgsSrvSetForceMode_Request)


class Ros2Ur_msgsSrvSetForceMode_Response(Record):
    """@brief Own every ur_msgs/srv/SetForceMode_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "ur_msgs/srv/SetForceMode_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_3f5438d426b7b68557ac8f43dc8efc2e2106782ec0cd4fd0dee7cdd69ddc7de8",
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


REGISTRY.add(Ros2Ur_msgsSrvSetForceMode_Response)


class Ros2Ur_msgsSrvSetFrictionModelParameters_Request(Record):
    """@brief Own every ur_msgs/srv/SetFrictionModelParameters_Request field.
    @details Canonical extent 8..104 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("parameters",)
    SCHEMA = {
        "type": "ur_msgs/srv/SetFrictionModelParameters_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e44ad15f9c45d5a65eb13e6bc6e973bb20eebdafa04a5f2e8bcf4b0b54ce91c2",
        "minimum": 8,
        "maximum": 104,
        "semantics": "",
        "fields": [
            {
                "name": "parameters",
                "type": "ur_msgs/msg/FrictionModelParameters",
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


REGISTRY.add(Ros2Ur_msgsSrvSetFrictionModelParameters_Request)


class Ros2Ur_msgsSrvSetFrictionModelParameters_Response(Record):
    """@brief Own every ur_msgs/srv/SetFrictionModelParameters_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "ur_msgs/srv/SetFrictionModelParameters_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1caca29dda3dc32360fd010dfb352b6feb54bba66ee16edd2f4353e3382207b3",
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


REGISTRY.add(Ros2Ur_msgsSrvSetFrictionModelParameters_Response)


class Ros2Ur_msgsSrvSetGravity_Request(Record):
    """@brief Own every ur_msgs/srv/SetGravity_Request field.
    @details Canonical extent 36..164 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("gravity",)
    SCHEMA = {
        "type": "ur_msgs/srv/SetGravity_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_3d7fed6ae8accbddd5b09f93c3e49f2b9f99cae4cf80a951eb31ace30ec5a834",
        "minimum": 36,
        "maximum": 164,
        "semantics": "",
        "fields": [
            {
                "name": "gravity",
                "type": "geometry_msgs/msg/Vector3Stamped",
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


REGISTRY.add(Ros2Ur_msgsSrvSetGravity_Request)


class Ros2Ur_msgsSrvSetGravity_Response(Record):
    """@brief Own every ur_msgs/srv/SetGravity_Response field.
    @details Canonical extent 5..261 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success", "status")
    SCHEMA = {
        "type": "ur_msgs/srv/SetGravity_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_84694df7fbb4fd15bfecaf1aae683ef1795b0c4941d1987d951467448da5f793",
        "minimum": 5,
        "maximum": 261,
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
                "name": "status",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 256,
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


REGISTRY.add(Ros2Ur_msgsSrvSetGravity_Response)


class Ros2Ur_msgsSrvSetIO_Request(Record):
    """@brief Own every ur_msgs/srv/SetIO_Request field.
    @details Canonical extent 6..6 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("fun", "pin", "state")
    SCHEMA = {
        "type": "ur_msgs/srv/SetIO_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c8ac4dddeb474521b4c701a0229e99af954416b7b8d7f32d2a19629d38b378c7",
        "minimum": 6,
        "maximum": 6,
        "semantics": "",
        "fields": [
            {
                "name": "fun",
                "type": "int8",
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
                "name": "pin",
                "type": "int8",
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
                "name": "state",
                "type": "float32",
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
    PIN_AOUT0 = 0
    # @brief Exact original native constant; not a wire field.
    PIN_AOUT1 = 1
    # @brief Exact original native constant; not a wire field.
    PIN_DOUT0 = 0
    # @brief Exact original native constant; not a wire field.
    PIN_DOUT1 = 1
    # @brief Exact original native constant; not a wire field.
    PIN_DOUT2 = 2
    # @brief Exact original native constant; not a wire field.
    PIN_DOUT3 = 3
    # @brief Exact original native constant; not a wire field.
    PIN_DOUT4 = 4
    # @brief Exact original native constant; not a wire field.
    PIN_DOUT5 = 5
    # @brief Exact original native constant; not a wire field.
    PIN_DOUT6 = 6
    # @brief Exact original native constant; not a wire field.
    PIN_DOUT7 = 7
    # @brief Exact original native constant; not a wire field.
    PIN_CONF_OUT0 = 8
    # @brief Exact original native constant; not a wire field.
    PIN_CONF_OUT1 = 9
    # @brief Exact original native constant; not a wire field.
    PIN_CONF_OUT2 = 10
    # @brief Exact original native constant; not a wire field.
    PIN_CONF_OUT3 = 11
    # @brief Exact original native constant; not a wire field.
    PIN_CONF_OUT4 = 12
    # @brief Exact original native constant; not a wire field.
    PIN_CONF_OUT5 = 13
    # @brief Exact original native constant; not a wire field.
    PIN_CONF_OUT6 = 14
    # @brief Exact original native constant; not a wire field.
    PIN_CONF_OUT7 = 15
    # @brief Exact original native constant; not a wire field.
    PIN_TOOL_DOUT0 = 16
    # @brief Exact original native constant; not a wire field.
    PIN_TOOL_DOUT1 = 17
    # @brief Exact original native constant; not a wire field.
    FUN_SET_DIGITAL_OUT = 1
    # @brief Exact original native constant; not a wire field.
    FUN_SET_FLAG = 2
    # @brief Exact original native constant; not a wire field.
    FUN_SET_ANALOG_OUT = 3
    # @brief Exact original native constant; not a wire field.
    FUN_SET_TOOL_VOLTAGE = 4
    # @brief Exact original native constant; not a wire field.
    STATE_OFF = 0
    # @brief Exact original native constant; not a wire field.
    STATE_ON = 1
    # @brief Exact original native constant; not a wire field.
    STATE_TOOL_VOLTAGE_0V = 0
    # @brief Exact original native constant; not a wire field.
    STATE_TOOL_VOLTAGE_12V = 12
    # @brief Exact original native constant; not a wire field.
    STATE_TOOL_VOLTAGE_24V = 24


REGISTRY.add(Ros2Ur_msgsSrvSetIO_Request)


class Ros2Ur_msgsSrvSetIO_Response(Record):
    """@brief Own every ur_msgs/srv/SetIO_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "ur_msgs/srv/SetIO_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_bd32373034093ccdab140a5ba8ce8a420ef2ce441430e8306b2484f0ca535090",
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


REGISTRY.add(Ros2Ur_msgsSrvSetIO_Response)


class Ros2Ur_msgsSrvSetPayload_Request(Record):
    """@brief Own every ur_msgs/srv/SetPayload_Request field.
    @details Canonical extent 84..84 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("mass", "center_of_gravity", "ixx", "iyy", "izz", "ixy", "ixz", "iyz", "transition_time")
    SCHEMA = {
        "type": "ur_msgs/srv/SetPayload_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e76e256e1accf2d742c4cf529e5af1e830db75f3db703a1f368d28077a87e735",
        "minimum": 84,
        "maximum": 84,
        "semantics": "",
        "fields": [
            {
                "name": "mass",
                "type": "float32",
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
                "name": "center_of_gravity",
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
                "name": "ixx",
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
                "name": "iyy",
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
                "name": "izz",
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
                "name": "ixy",
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
                "name": "ixz",
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
                "name": "iyz",
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
                "name": "transition_time",
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


REGISTRY.add(Ros2Ur_msgsSrvSetPayload_Request)


class Ros2Ur_msgsSrvSetPayload_Response(Record):
    """@brief Own every ur_msgs/srv/SetPayload_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "ur_msgs/srv/SetPayload_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_036dbaa7d42b6cba6ad29a082e078401d507292483d260ba532f7d6947c1624c",
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


REGISTRY.add(Ros2Ur_msgsSrvSetPayload_Response)


class Ros2Ur_msgsSrvSetSpeedSliderFraction_Request(Record):
    """@brief Own every ur_msgs/srv/SetSpeedSliderFraction_Request field.
    @details Canonical extent 8..8 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("speed_slider_fraction",)
    SCHEMA = {
        "type": "ur_msgs/srv/SetSpeedSliderFraction_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d8f19fb240e4b70cad74c5111cdaebad14b480f21da953c95d474064b091abd8",
        "minimum": 8,
        "maximum": 8,
        "semantics": "",
        "fields": [
            {
                "name": "speed_slider_fraction",
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
            }
        ],
    }


REGISTRY.add(Ros2Ur_msgsSrvSetSpeedSliderFraction_Request)


class Ros2Ur_msgsSrvSetSpeedSliderFraction_Response(Record):
    """@brief Own every ur_msgs/srv/SetSpeedSliderFraction_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "ur_msgs/srv/SetSpeedSliderFraction_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1ab1ad5ab4b1ed302710ec055dff7644cc6e966af919ff311eaea6cddcf7dbb9",
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


REGISTRY.add(Ros2Ur_msgsSrvSetSpeedSliderFraction_Response)
