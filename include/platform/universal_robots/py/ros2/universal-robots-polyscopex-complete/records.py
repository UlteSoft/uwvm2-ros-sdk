"""@file records.py
@brief Complete source-derived universal_robots values.
@details All fields, bounds and constants are retained. Pure codecs delegate to
the central Record/Registry implementation; this module opens no ROS resource.
"""

from ros.py.wire import Record, Registry

REGISTRY = Registry()


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


class Ros2Std_msgsMsgString(Record):
    """@brief Own every std_msgs/msg/String field.
    @details Canonical extent 4..1028 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("data",)
    SCHEMA = {
        "type": "std_msgs/msg/String",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5",
        "minimum": 4,
        "maximum": 1028,
        "semantics": "",
        "fields": [
            {
                "name": "data",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 1024,
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


REGISTRY.add(Ros2Std_msgsMsgString)


class Ros2UrinterfacesMsgRobotMode(Record):
    """@brief Own every urinterfaces/msg/RobotMode field.
    @details Canonical extent 13..141 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "data")
    SCHEMA = {
        "type": "urinterfaces/msg/RobotMode",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea",
        "minimum": 13,
        "maximum": 141,
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
                "name": "data",
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


REGISTRY.add(Ros2UrinterfacesMsgRobotMode)


class Ros2UrinterfacesActionSetMode_Goal(Record):
    """@brief Own every urinterfaces/action/SetMode_Goal field.
    @details Canonical extent 15..143 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("target_robot_mode", "stop_program", "play_program")
    SCHEMA = {
        "type": "urinterfaces/action/SetMode_Goal",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09",
        "minimum": 15,
        "maximum": 143,
        "semantics": "",
        "fields": [
            {
                "name": "target_robot_mode",
                "type": "urinterfaces/msg/RobotMode",
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
                "native_default": "False",
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": False,
            },
        ],
    }


REGISTRY.add(Ros2UrinterfacesActionSetMode_Goal)


class Ros2UrinterfacesActionSetMode_Result(Record):
    """@brief Own every urinterfaces/action/SetMode_Result field.
    @details Canonical extent 5..261 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success", "message")
    SCHEMA = {
        "type": "urinterfaces/action/SetMode_Result",
        "native_identity": None,
        "codec_identity": "UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7",
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


REGISTRY.add(Ros2UrinterfacesActionSetMode_Result)


class Ros2UrinterfacesActionSetMode_Feedback(Record):
    """@brief Own every urinterfaces/action/SetMode_Feedback field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("current_robot_mode", "current_safety_mode")
    SCHEMA = {
        "type": "urinterfaces/action/SetMode_Feedback",
        "native_identity": None,
        "codec_identity": "UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537",
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


REGISTRY.add(Ros2UrinterfacesActionSetMode_Feedback)


class Ros2UrinterfacesMsgActiveTCP(Record):
    """@brief Own every urinterfaces/msg/ActiveTCP field.
    @details Canonical extent 16..400 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "data")
    SCHEMA = {
        "type": "urinterfaces/msg/ActiveTCP",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae",
        "minimum": 16,
        "maximum": 400,
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
                "name": "data",
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


REGISTRY.add(Ros2UrinterfacesMsgActiveTCP)


class Ros2UrinterfacesMsgAnalog(Record):
    """@brief Own every urinterfaces/msg/Analog field.
    @details Canonical extent 6..6 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pin", "domain", "value")
    SCHEMA = {
        "type": "urinterfaces/msg/Analog",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b",
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
                "name": "value",
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


REGISTRY.add(Ros2UrinterfacesMsgAnalog)


class Ros2UrinterfacesMsgAnalogIO(Record):
    """@brief Own every urinterfaces/msg/AnalogIO field.
    @details Canonical extent 8..200 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("analog_inputs", "analog_outputs")
    SCHEMA = {
        "type": "urinterfaces/msg/AnalogIO",
        "native_identity": None,
        "codec_identity": "UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c",
        "minimum": 8,
        "maximum": 200,
        "semantics": "",
        "fields": [
            {
                "name": "analog_inputs",
                "type": "urinterfaces/msg/Analog",
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
                "name": "analog_outputs",
                "type": "urinterfaces/msg/Analog",
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


REGISTRY.add(Ros2UrinterfacesMsgAnalogIO)


class Ros2UrinterfacesMsgAnalogIOStateStamped(Record):
    """@brief Own every urinterfaces/msg/AnalogIOStateStamped field.
    @details Canonical extent 20..340 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "io_state")
    SCHEMA = {
        "type": "urinterfaces/msg/AnalogIOStateStamped",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89",
        "minimum": 20,
        "maximum": 340,
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
                "name": "io_state",
                "type": "urinterfaces/msg/AnalogIO",
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


REGISTRY.add(Ros2UrinterfacesMsgAnalogIOStateStamped)


class Ros2UrinterfacesMsgAnalogStamped(Record):
    """@brief Own every urinterfaces/msg/AnalogStamped field.
    @details Canonical extent 18..146 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "data")
    SCHEMA = {
        "type": "urinterfaces/msg/AnalogStamped",
        "native_identity": None,
        "codec_identity": "UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c",
        "minimum": 18,
        "maximum": 146,
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
                "name": "data",
                "type": "urinterfaces/msg/Analog",
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


REGISTRY.add(Ros2UrinterfacesMsgAnalogStamped)


class Ros2UrinterfacesMsgBoolStamped(Record):
    """@brief Own every urinterfaces/msg/BoolStamped field.
    @details Canonical extent 13..141 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "data")
    SCHEMA = {
        "type": "urinterfaces/msg/BoolStamped",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66",
        "minimum": 13,
        "maximum": 141,
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
                "name": "data",
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


REGISTRY.add(Ros2UrinterfacesMsgBoolStamped)


class Ros2UrinterfacesMsgControlCycle(Record):
    """@brief Own every urinterfaces/msg/ControlCycle field.
    @details Canonical extent 20..148 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "data")
    SCHEMA = {
        "type": "urinterfaces/msg/ControlCycle",
        "native_identity": None,
        "codec_identity": "UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278",
        "minimum": 20,
        "maximum": 148,
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
                "name": "data",
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
        ],
    }


REGISTRY.add(Ros2UrinterfacesMsgControlCycle)


class Ros2UrinterfacesMsgCurrent(Record):
    """@brief Own every urinterfaces/msg/Current field.
    @details Canonical extent 16..144 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "data")
    SCHEMA = {
        "type": "urinterfaces/msg/Current",
        "native_identity": None,
        "codec_identity": "UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df",
        "minimum": 16,
        "maximum": 144,
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
                "name": "data",
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


REGISTRY.add(Ros2UrinterfacesMsgCurrent)


class Ros2UrinterfacesMsgDigital(Record):
    """@brief Own every urinterfaces/msg/Digital field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pin", "state")
    SCHEMA = {
        "type": "urinterfaces/msg/Digital",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512",
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


REGISTRY.add(Ros2UrinterfacesMsgDigital)


class Ros2UrinterfacesMsgDigitalIO(Record):
    """@brief Own every urinterfaces/msg/DigitalIO field.
    @details Canonical extent 8..136 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("digital_inputs", "digital_outputs")
    SCHEMA = {
        "type": "urinterfaces/msg/DigitalIO",
        "native_identity": None,
        "codec_identity": "UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a",
        "minimum": 8,
        "maximum": 136,
        "semantics": "",
        "fields": [
            {
                "name": "digital_inputs",
                "type": "urinterfaces/msg/Digital",
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
                "name": "digital_outputs",
                "type": "urinterfaces/msg/Digital",
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
        ],
    }


REGISTRY.add(Ros2UrinterfacesMsgDigitalIO)


class Ros2UrinterfacesMsgDigitalIOStateStamped(Record):
    """@brief Own every urinterfaces/msg/DigitalIOStateStamped field.
    @details Canonical extent 28..412 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "configurable_io", "standard_io")
    SCHEMA = {
        "type": "urinterfaces/msg/DigitalIOStateStamped",
        "native_identity": None,
        "codec_identity": "UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9",
        "minimum": 28,
        "maximum": 412,
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
                "name": "configurable_io",
                "type": "urinterfaces/msg/DigitalIO",
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
                "name": "standard_io",
                "type": "urinterfaces/msg/DigitalIO",
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


REGISTRY.add(Ros2UrinterfacesMsgDigitalIOStateStamped)


class Ros2UrinterfacesMsgDigitalStamped(Record):
    """@brief Own every urinterfaces/msg/DigitalStamped field.
    @details Canonical extent 14..142 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "data")
    SCHEMA = {
        "type": "urinterfaces/msg/DigitalStamped",
        "native_identity": None,
        "codec_identity": "UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865",
        "minimum": 14,
        "maximum": 142,
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
                "name": "data",
                "type": "urinterfaces/msg/Digital",
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


REGISTRY.add(Ros2UrinterfacesMsgDigitalStamped)


class Ros2UrinterfacesMsgDoubleMultiArrayStamped(Record):
    """@brief Own every urinterfaces/msg/DoubleMultiArrayStamped field.
    @details Canonical extent 16..272 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "data")
    SCHEMA = {
        "type": "urinterfaces/msg/DoubleMultiArrayStamped",
        "native_identity": None,
        "codec_identity": "UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae",
        "minimum": 16,
        "maximum": 272,
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
                "name": "data",
                "type": "float64",
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


REGISTRY.add(Ros2UrinterfacesMsgDoubleMultiArrayStamped)


class Ros2UrinterfacesMsgFloat32Stamped(Record):
    """@brief Own every urinterfaces/msg/Float32Stamped field.
    @details Canonical extent 16..144 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "data")
    SCHEMA = {
        "type": "urinterfaces/msg/Float32Stamped",
        "native_identity": None,
        "codec_identity": "UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3",
        "minimum": 16,
        "maximum": 144,
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
                "name": "data",
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


REGISTRY.add(Ros2UrinterfacesMsgFloat32Stamped)


class Ros2UrinterfacesMsgFloat64Stamped(Record):
    """@brief Own every urinterfaces/msg/Float64Stamped field.
    @details Canonical extent 20..148 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "data")
    SCHEMA = {
        "type": "urinterfaces/msg/Float64Stamped",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21",
        "minimum": 20,
        "maximum": 148,
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
                "name": "data",
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


REGISTRY.add(Ros2UrinterfacesMsgFloat64Stamped)


class Ros2UrinterfacesMsgJointMode(Record):
    """@brief Own every urinterfaces/msg/JointMode field.
    @details Canonical extent 19..147 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "joint_modes", "tool_mode")
    SCHEMA = {
        "type": "urinterfaces/msg/JointMode",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c",
        "minimum": 19,
        "maximum": 147,
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
                "name": "joint_modes",
                "type": "uint8",
                "array": "array",
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
    JOINT_MODE_RESET = 235
    # @brief Exact original native constant; not a wire field.
    JOINT_MODE_SHUTTING_DOWN = 236
    # @brief Exact original native constant; not a wire field.
    JOINT_MODE_PART_D_CALIBRATION = 237
    # @brief Exact original native constant; not a wire field.
    JOINT_MODE_BACKDRIVE = 238
    # @brief Exact original native constant; not a wire field.
    JOINT_MODE_POWER_OFF = 239
    # @brief Exact original native constant; not a wire field.
    JOINT_MODE_READY_FOR_POWER_OFF = 240
    # @brief Exact original native constant; not a wire field.
    JOINT_MODE_NOT_RESPONDING = 245
    # @brief Exact original native constant; not a wire field.
    JOINT_MODE_MOTOR_INITIALISATION = 246
    # @brief Exact original native constant; not a wire field.
    JOINT_MODE_BOOTING = 247
    # @brief Exact original native constant; not a wire field.
    JOINT_MODE_PART_D_CALIBRATION_ERROR = 248
    # @brief Exact original native constant; not a wire field.
    JOINT_MODE_BOOTLOADER = 249
    # @brief Exact original native constant; not a wire field.
    JOINT_MODE_CALIBRATION = 250
    # @brief Exact original native constant; not a wire field.
    JOINT_MODE_VIOLATION = 251
    # @brief Exact original native constant; not a wire field.
    JOINT_MODE_FAULT = 252
    # @brief Exact original native constant; not a wire field.
    JOINT_MODE_RUNNING = 253
    # @brief Exact original native constant; not a wire field.
    JOINT_MODE_IDLE = 255


REGISTRY.add(Ros2UrinterfacesMsgJointMode)


class Ros2UrinterfacesMsgJointTemperature(Record):
    """@brief Own every urinterfaces/msg/JointTemperature field.
    @details Canonical extent 36..164 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "data")
    SCHEMA = {
        "type": "urinterfaces/msg/JointTemperature",
        "native_identity": None,
        "codec_identity": "UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017",
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
                "name": "data",
                "type": "float32",
                "array": "array",
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


REGISTRY.add(Ros2UrinterfacesMsgJointTemperature)


class Ros2UrinterfacesMsgJointVoltage(Record):
    """@brief Own every urinterfaces/msg/JointVoltage field.
    @details Canonical extent 60..188 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "data")
    SCHEMA = {
        "type": "urinterfaces/msg/JointVoltage",
        "native_identity": None,
        "codec_identity": "UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61",
        "minimum": 60,
        "maximum": 188,
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
                "name": "data",
                "type": "float64",
                "array": "array",
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


REGISTRY.add(Ros2UrinterfacesMsgJointVoltage)


class Ros2UrinterfacesMsgJsonStringType(Record):
    """@brief Own every urinterfaces/msg/JsonStringType field.
    @details Canonical extent 4..1028 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("json_string",)
    SCHEMA = {
        "type": "urinterfaces/msg/JsonStringType",
        "native_identity": None,
        "codec_identity": "UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728",
        "minimum": 4,
        "maximum": 1028,
        "semantics": "",
        "fields": [
            {
                "name": "json_string",
                "type": "std_msgs/msg/String",
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


REGISTRY.add(Ros2UrinterfacesMsgJsonStringType)


class Ros2UrinterfacesMsgRuntimeState(Record):
    """@brief Own every urinterfaces/msg/RuntimeState field.
    @details Canonical extent 13..141 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "data")
    SCHEMA = {
        "type": "urinterfaces/msg/RuntimeState",
        "native_identity": None,
        "codec_identity": "UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6",
        "minimum": 13,
        "maximum": 141,
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
                "name": "data",
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
    # @brief Exact original native constant; not a wire field.
    PROGRAM_STATE_UNDEFINED = -1
    # @brief Exact original native constant; not a wire field.
    PROGRAM_STATE_STOPPING = 0
    # @brief Exact original native constant; not a wire field.
    PROGRAM_STATE_STOPPED = 1
    # @brief Exact original native constant; not a wire field.
    PROGRAM_STATE_RUNNING = 2
    # @brief Exact original native constant; not a wire field.
    PROGRAM_STATE_PAUSING = 3
    # @brief Exact original native constant; not a wire field.
    PROGRAM_STATE_PAUSED = 4
    # @brief Exact original native constant; not a wire field.
    PROGRAM_STATE_RESUMING = 5
    # @brief Exact original native constant; not a wire field.
    PROGRAM_STATE_RETRACTING = 6


REGISTRY.add(Ros2UrinterfacesMsgRuntimeState)


class Ros2UrinterfacesMsgSafetyStatus(Record):
    """@brief Own every urinterfaces/msg/SafetyStatus field.
    @details Canonical extent 13..141 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "data")
    SCHEMA = {
        "type": "urinterfaces/msg/SafetyStatus",
        "native_identity": None,
        "codec_identity": "UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4",
        "minimum": 13,
        "maximum": 141,
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
                "name": "data",
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


REGISTRY.add(Ros2UrinterfacesMsgSafetyStatus)


class Ros2UrinterfacesMsgSharedVariablesEditResponse(Record):
    """@brief Own every urinterfaces/msg/SharedVariablesEditResponse field.
    @details Canonical extent 5..1029 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success", "result_message")
    SCHEMA = {
        "type": "urinterfaces/msg/SharedVariablesEditResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212",
        "minimum": 5,
        "maximum": 1029,
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
                "name": "result_message",
                "type": "std_msgs/msg/String",
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


REGISTRY.add(Ros2UrinterfacesMsgSharedVariablesEditResponse)


class Ros2UrinterfacesMsgSpeedSliderFraction(Record):
    """@brief Own every urinterfaces/msg/SpeedSliderFraction field.
    @details Canonical extent 20..148 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "data")
    SCHEMA = {
        "type": "urinterfaces/msg/SpeedSliderFraction",
        "native_identity": None,
        "codec_identity": "UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd",
        "minimum": 20,
        "maximum": 148,
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
                "name": "data",
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


REGISTRY.add(Ros2UrinterfacesMsgSpeedSliderFraction)


class Ros2UrinterfacesMsgTCPState(Record):
    """@brief Own every urinterfaces/msg/TCPState field.
    @details Canonical extent 116..244 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "pose", "speed")
    SCHEMA = {
        "type": "urinterfaces/msg/TCPState",
        "native_identity": None,
        "codec_identity": "UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92",
        "minimum": 116,
        "maximum": 244,
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
            {
                "name": "speed",
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
        ],
    }


REGISTRY.add(Ros2UrinterfacesMsgTCPState)


class Ros2UrinterfacesMsgToolOutputMode(Record):
    """@brief Own every urinterfaces/msg/ToolOutputMode field.
    @details Canonical extent 15..143 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "output_mode", "output_pin_mode")
    SCHEMA = {
        "type": "urinterfaces/msg/ToolOutputMode",
        "native_identity": None,
        "codec_identity": "UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660",
        "minimum": 15,
        "maximum": 143,
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
                "name": "output_mode",
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
                "name": "output_pin_mode",
                "type": "uint8",
                "array": "array",
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
        ],
    }
    # @brief Exact original native constant; not a wire field.
    TOOL_OUTPUT = 0
    # @brief Exact original native constant; not a wire field.
    TOOL_POWER = 1
    # @brief Exact original native constant; not a wire field.
    TOOL_SAFE = 2
    # @brief Exact original native constant; not a wire field.
    OUTPUT_MODE_DISABLED = 0
    # @brief Exact original native constant; not a wire field.
    OUTPUT_MODE_SINKING = 1
    # @brief Exact original native constant; not a wire field.
    OUTPUT_MODE_SOURCING = 2
    # @brief Exact original native constant; not a wire field.
    OUTPUT_MODE_PUSH_PULL = 3


REGISTRY.add(Ros2UrinterfacesMsgToolOutputMode)


class Ros2UrinterfacesMsgVariableUpdate(Record):
    """@brief Own every urinterfaces/msg/VariableUpdate field.
    @details Canonical extent 16..1168 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "data")
    SCHEMA = {
        "type": "urinterfaces/msg/VariableUpdate",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20",
        "minimum": 16,
        "maximum": 1168,
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
                "name": "data",
                "type": "urinterfaces/msg/JsonStringType",
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


REGISTRY.add(Ros2UrinterfacesMsgVariableUpdate)


class Ros2UrinterfacesMsgVoltageCurrentStamped(Record):
    """@brief Own every urinterfaces/msg/VoltageCurrentStamped field.
    @details Canonical extent 28..156 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "voltage", "current")
    SCHEMA = {
        "type": "urinterfaces/msg/VoltageCurrentStamped",
        "native_identity": None,
        "codec_identity": "UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805",
        "minimum": 28,
        "maximum": 156,
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
                "name": "voltage",
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
                "name": "current",
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


REGISTRY.add(Ros2UrinterfacesMsgVoltageCurrentStamped)


class Ros2UrinterfacesMsgWorldModelNames(Record):
    """@brief Own every urinterfaces/msg/WorldModelNames field.
    @details Canonical extent 16..16592 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("header", "data")
    SCHEMA = {
        "type": "urinterfaces/msg/WorldModelNames",
        "native_identity": None,
        "codec_identity": "UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9",
        "minimum": 16,
        "maximum": 16592,
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
                "name": "data",
                "type": "std_msgs/msg/String",
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


REGISTRY.add(Ros2UrinterfacesMsgWorldModelNames)


class Ros2UrinterfacesSrvSetAnalogOutput_Request(Record):
    """@brief Own every urinterfaces/srv/SetAnalogOutput_Request field.
    @details Canonical extent 4..100 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("data",)
    SCHEMA = {
        "type": "urinterfaces/srv/SetAnalogOutput_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d",
        "minimum": 4,
        "maximum": 100,
        "semantics": "",
        "fields": [
            {
                "name": "data",
                "type": "urinterfaces/msg/Analog",
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
            }
        ],
    }


REGISTRY.add(Ros2UrinterfacesSrvSetAnalogOutput_Request)


class Ros2UrinterfacesSrvSetAnalogOutput_Response(Record):
    """@brief Own every urinterfaces/srv/SetAnalogOutput_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "urinterfaces/srv/SetAnalogOutput_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e",
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


REGISTRY.add(Ros2UrinterfacesSrvSetAnalogOutput_Response)


class Ros2UrinterfacesSrvSetDigitalOutput_Request(Record):
    """@brief Own every urinterfaces/srv/SetDigitalOutput_Request field.
    @details Canonical extent 4..36 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("data",)
    SCHEMA = {
        "type": "urinterfaces/srv/SetDigitalOutput_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47",
        "minimum": 4,
        "maximum": 36,
        "semantics": "",
        "fields": [
            {
                "name": "data",
                "type": "urinterfaces/msg/Digital",
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
            }
        ],
    }


REGISTRY.add(Ros2UrinterfacesSrvSetDigitalOutput_Request)


class Ros2UrinterfacesSrvSetDigitalOutput_Response(Record):
    """@brief Own every urinterfaces/srv/SetDigitalOutput_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "urinterfaces/srv/SetDigitalOutput_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d",
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


REGISTRY.add(Ros2UrinterfacesSrvSetDigitalOutput_Response)


class Ros2UrinterfacesSrvSetSpeedFraction_Request(Record):
    """@brief Own every urinterfaces/srv/SetSpeedFraction_Request field.
    @details Canonical extent 4..4 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("value",)
    SCHEMA = {
        "type": "urinterfaces/srv/SetSpeedFraction_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63",
        "minimum": 4,
        "maximum": 4,
        "semantics": "",
        "fields": [
            {
                "name": "value",
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
            }
        ],
    }


REGISTRY.add(Ros2UrinterfacesSrvSetSpeedFraction_Request)


class Ros2UrinterfacesSrvSetSpeedFraction_Response(Record):
    """@brief Own every urinterfaces/srv/SetSpeedFraction_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "urinterfaces/srv/SetSpeedFraction_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6",
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


REGISTRY.add(Ros2UrinterfacesSrvSetSpeedFraction_Response)


class Ros2UrinterfacesSrvSharedVariablesEditor_Request(Record):
    """@brief Own every urinterfaces/srv/SharedVariablesEditor_Request field.
    @details Canonical extent 4..1028 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("request",)
    SCHEMA = {
        "type": "urinterfaces/srv/SharedVariablesEditor_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3",
        "minimum": 4,
        "maximum": 1028,
        "semantics": "",
        "fields": [
            {
                "name": "request",
                "type": "urinterfaces/msg/JsonStringType",
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


REGISTRY.add(Ros2UrinterfacesSrvSharedVariablesEditor_Request)


class Ros2UrinterfacesSrvSharedVariablesEditor_Response(Record):
    """@brief Own every urinterfaces/srv/SharedVariablesEditor_Response field.
    @details Canonical extent 5..1029 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("response",)
    SCHEMA = {
        "type": "urinterfaces/srv/SharedVariablesEditor_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea",
        "minimum": 5,
        "maximum": 1029,
        "semantics": "",
        "fields": [
            {
                "name": "response",
                "type": "urinterfaces/msg/SharedVariablesEditResponse",
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


REGISTRY.add(Ros2UrinterfacesSrvSharedVariablesEditor_Response)


class Ros2UrinterfacesSrvVariablesViewer_Request(Record):
    """@brief Own every urinterfaces/srv/VariablesViewer_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "urinterfaces/srv/VariablesViewer_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2UrinterfacesSrvVariablesViewer_Request)


class Ros2UrinterfacesSrvVariablesViewer_Response(Record):
    """@brief Own every urinterfaces/srv/VariablesViewer_Response field.
    @details Canonical extent 16..1168 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("response",)
    SCHEMA = {
        "type": "urinterfaces/srv/VariablesViewer_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2",
        "minimum": 16,
        "maximum": 1168,
        "semantics": "",
        "fields": [
            {
                "name": "response",
                "type": "urinterfaces/msg/VariableUpdate",
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


REGISTRY.add(Ros2UrinterfacesSrvVariablesViewer_Response)
