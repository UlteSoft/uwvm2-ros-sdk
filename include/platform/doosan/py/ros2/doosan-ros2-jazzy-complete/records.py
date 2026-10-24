"""@file records.py
@brief Complete source-derived doosan values.
@details All fields, bounds and constants are retained. Pure codecs delegate to
the central Record/Registry implementation; this module opens no ROS resource.
"""

from ros.py.wire import Record, Registry

REGISTRY = Registry()


class Ros2Dsr_msgs2ActionJogH2r_Goal(Record):
    """@brief Own every dsr_msgs2/action/JogH2r_Goal field.
    @details Canonical extent 10..10 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("jog_axis", "move_reference", "velocity")
    SCHEMA = {
        "type": "dsr_msgs2/action/JogH2r_Goal",
        "native_identity": None,
        "codec_identity": "UWVMROS1_06245e203e3de9eab0c11ee37506291cbdfc285518b044d9874412a55a948031",
        "minimum": 10,
        "maximum": 10,
        "semantics": "",
        "fields": [
            {
                "name": "jog_axis",
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
                "name": "move_reference",
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
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2ActionJogH2r_Goal)


class Ros2Dsr_msgs2ActionJogH2r_Result(Record):
    """@brief Own every dsr_msgs2/action/JogH2r_Result field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/action/JogH2r_Result",
        "native_identity": None,
        "codec_identity": "UWVMROS1_79b337d3246b2761333d4d9538c137e41a9b795b9ae0fcf8a3a95f9919cd9f32",
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


REGISTRY.add(Ros2Dsr_msgs2ActionJogH2r_Result)


class Ros2Dsr_msgs2ActionJogH2r_Feedback(Record):
    """@brief Own every dsr_msgs2/action/JogH2r_Feedback field.
    @details Canonical extent 48..48 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos",)
    SCHEMA = {
        "type": "dsr_msgs2/action/JogH2r_Feedback",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ec4a775b8e986378d1064390512a267cc4ee1a43489b64ab3faed57a88184c8b",
        "minimum": 48,
        "maximum": 48,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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
            }
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2ActionJogH2r_Feedback)


class Ros2Dsr_msgs2ActionMovejH2r_Goal(Record):
    """@brief Own every dsr_msgs2/action/MovejH2r_Goal field.
    @details Canonical extent 144..144 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("target_pos", "target_vel", "target_acc")
    SCHEMA = {
        "type": "dsr_msgs2/action/MovejH2r_Goal",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1f500b1d55e67e54b564236307f6761a74d79887ab35c4733cd741f480d7d0dc",
        "minimum": 144,
        "maximum": 144,
        "semantics": "",
        "fields": [
            {
                "name": "target_pos",
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
            {
                "name": "target_vel",
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
            {
                "name": "target_acc",
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


REGISTRY.add(Ros2Dsr_msgs2ActionMovejH2r_Goal)


class Ros2Dsr_msgs2ActionMovejH2r_Result(Record):
    """@brief Own every dsr_msgs2/action/MovejH2r_Result field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/action/MovejH2r_Result",
        "native_identity": None,
        "codec_identity": "UWVMROS1_9055b94a2148571ab9cf3edd50625e2c49697bcab7827d3d6520281e3af3fc51",
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


REGISTRY.add(Ros2Dsr_msgs2ActionMovejH2r_Result)


class Ros2Dsr_msgs2ActionMovejH2r_Feedback(Record):
    """@brief Own every dsr_msgs2/action/MovejH2r_Feedback field.
    @details Canonical extent 48..48 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos",)
    SCHEMA = {
        "type": "dsr_msgs2/action/MovejH2r_Feedback",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a300a02e724a0d402966787cd8ce0fc3bef26d8d2e53157d2a29cad55406fd9e",
        "minimum": 48,
        "maximum": 48,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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
            }
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2ActionMovejH2r_Feedback)


class Ros2Dsr_msgs2ActionMovelH2r_Goal(Record):
    """@brief Own every dsr_msgs2/action/MovelH2r_Goal field.
    @details Canonical extent 80..80 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("target_pos", "target_vel", "target_acc")
    SCHEMA = {
        "type": "dsr_msgs2/action/MovelH2r_Goal",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e1e2a6cd46247b347002d41f062949ab869c6bd84c305cd951cb5fb32ffe7d9c",
        "minimum": 80,
        "maximum": 80,
        "semantics": "",
        "fields": [
            {
                "name": "target_pos",
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
            {
                "name": "target_vel",
                "type": "float64",
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
            {
                "name": "target_acc",
                "type": "float64",
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


REGISTRY.add(Ros2Dsr_msgs2ActionMovelH2r_Goal)


class Ros2Dsr_msgs2ActionMovelH2r_Result(Record):
    """@brief Own every dsr_msgs2/action/MovelH2r_Result field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/action/MovelH2r_Result",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0daf4123fb4d7b06d11b3d47f1b5881357aa840e37e2adc84e46dd97d2c062dd",
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


REGISTRY.add(Ros2Dsr_msgs2ActionMovelH2r_Result)


class Ros2Dsr_msgs2ActionMovelH2r_Feedback(Record):
    """@brief Own every dsr_msgs2/action/MovelH2r_Feedback field.
    @details Canonical extent 48..48 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos",)
    SCHEMA = {
        "type": "dsr_msgs2/action/MovelH2r_Feedback",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e67cb580a7c20e9f69813a44eeb8cce45cffc8292dbd895c210b3a46937e745a",
        "minimum": 48,
        "maximum": 48,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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
            }
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2ActionMovelH2r_Feedback)


class Ros2Dsr_msgs2MsgAlterMotionStream(Record):
    """@brief Own every dsr_msgs2/msg/AlterMotionStream field.
    @details Canonical extent 48..48 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos",)
    SCHEMA = {
        "type": "dsr_msgs2/msg/AlterMotionStream",
        "native_identity": None,
        "codec_identity": "UWVMROS1_42cda028849d2f3c24dddf69907122eeaccc19ab595150b0c4bfa9a6c4b37200",
        "minimum": 48,
        "maximum": 48,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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
            }
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2MsgAlterMotionStream)


class Ros2Dsr_msgs2MsgJogMultiAxis(Record):
    """@brief Own every dsr_msgs2/msg/JogMultiAxis field.
    @details Canonical extent 57..57 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("jog_axis", "move_reference", "speed")
    SCHEMA = {
        "type": "dsr_msgs2/msg/JogMultiAxis",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1abbca14f7ca912b0d1a3ff2eac2414268b78e10380d8eac9e231f79f26ce07e",
        "minimum": 57,
        "maximum": 57,
        "semantics": "",
        "fields": [
            {
                "name": "jog_axis",
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
            {
                "name": "move_reference",
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
                "name": "speed",
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


REGISTRY.add(Ros2Dsr_msgs2MsgJogMultiAxis)


class Ros2Dsr_msgs2MsgLogAlarm(Record):
    """@brief Own every dsr_msgs2/msg/LogAlarm field.
    @details Canonical extent 24..792 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("level", "group", "index", "param")
    SCHEMA = {
        "type": "dsr_msgs2/msg/LogAlarm",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d35d6f6098edff03d2568f14471db88ea998873ba4a04794750f7134825e2bfe",
        "minimum": 24,
        "maximum": 792,
        "semantics": "",
        "fields": [
            {
                "name": "level",
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
                "name": "group",
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
                "name": "index",
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
                "name": "param",
                "type": "string",
                "array": "array",
                "count": 3,
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


REGISTRY.add(Ros2Dsr_msgs2MsgLogAlarm)


class Ros2Dsr_msgs2MsgModbusState(Record):
    """@brief Own every dsr_msgs2/msg/ModbusState field.
    @details Canonical extent 8..264 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("modbus_symbol", "modbus_value")
    SCHEMA = {
        "type": "dsr_msgs2/msg/ModbusState",
        "native_identity": None,
        "codec_identity": "UWVMROS1_b5648e70b313800a6b18e809d0950f53c538d2647ff67fd3884cce728f3be765",
        "minimum": 8,
        "maximum": 264,
        "semantics": "",
        "fields": [
            {
                "name": "modbus_symbol",
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
                "name": "modbus_value",
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


REGISTRY.add(Ros2Dsr_msgs2MsgModbusState)


class Ros2Dsr_msgs2MsgRobotDisconnection(Record):
    """@brief Own every dsr_msgs2/msg/RobotDisconnection field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/msg/RobotDisconnection",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d686889739e672509dee7fc8538cddd634e536f392709b7bdcc0572c755c65c4",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2MsgRobotDisconnection)


class Ros2Dsr_msgs2MsgRobotError(Record):
    """@brief Own every dsr_msgs2/msg/RobotError field.
    @details Canonical extent 24..792 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("level", "group", "code", "msg1", "msg2", "msg3")
    SCHEMA = {
        "type": "dsr_msgs2/msg/RobotError",
        "native_identity": None,
        "codec_identity": "UWVMROS1_5c628814ad82c181ce0eae34fe89fb384169bfecbdeed07bddb2318a4e3c5a67",
        "minimum": 24,
        "maximum": 792,
        "semantics": "",
        "fields": [
            {
                "name": "level",
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
                "name": "group",
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
                "name": "code",
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
                "name": "msg1",
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
                "name": "msg2",
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
                "name": "msg3",
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


REGISTRY.add(Ros2Dsr_msgs2MsgRobotError)


class Ros2Std_msgsMsgMultiArrayDimension(Record):
    """@brief Own every std_msgs/msg/MultiArrayDimension field.
    @details Canonical extent 12..76 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("label", "size", "stride")
    SCHEMA = {
        "type": "std_msgs/msg/MultiArrayDimension",
        "native_identity": None,
        "codec_identity": "UWVMROS1_be0694d8fef4d71a5afd7072b14b9f246464e4c3a8dbbfb21ef22c32296c2f73",
        "minimum": 12,
        "maximum": 76,
        "semantics": "",
        "fields": [
            {
                "name": "label",
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
                "name": "size",
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
                "name": "stride",
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


REGISTRY.add(Ros2Std_msgsMsgMultiArrayDimension)


class Ros2Std_msgsMsgMultiArrayLayout(Record):
    """@brief Own every std_msgs/msg/MultiArrayLayout field.
    @details Canonical extent 8..236 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("dim", "data_offset")
    SCHEMA = {
        "type": "std_msgs/msg/MultiArrayLayout",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d1b6f03846800e7c6672b48f3585ad43cbccb4f2d892a4bc986e2df00667b392",
        "minimum": 8,
        "maximum": 236,
        "semantics": "",
        "fields": [
            {
                "name": "dim",
                "type": "std_msgs/msg/MultiArrayDimension",
                "array": "sequence",
                "count": 3,
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
                "name": "data_offset",
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


REGISTRY.add(Ros2Std_msgsMsgMultiArrayLayout)


class Ros2Std_msgsMsgFloat64MultiArray(Record):
    """@brief Own every std_msgs/msg/Float64MultiArray field.
    @details Canonical extent 12..368 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("layout", "data")
    SCHEMA = {
        "type": "std_msgs/msg/Float64MultiArray",
        "native_identity": None,
        "codec_identity": "UWVMROS1_9a214c31604613d6d1ebba644301f686ad3dff1a7a6c1005540ae0062d924f95",
        "minimum": 12,
        "maximum": 368,
        "semantics": "",
        "fields": [
            {
                "name": "layout",
                "type": "std_msgs/msg/MultiArrayLayout",
                "array": "",
                "count": 0,
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


REGISTRY.add(Ros2Std_msgsMsgFloat64MultiArray)


class Ros2Dsr_msgs2MsgRobotState(Record):
    """@brief Own every dsr_msgs2/msg/RobotState field.
    @details Canonical extent 1484..17004 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = (
        "robot_state",
        "robot_state_str",
        "actual_mode",
        "actual_space",
        "current_posj",
        "current_velj",
        "joint_abs",
        "joint_err",
        "target_posj",
        "target_velj",
        "current_posx",
        "current_tool_posx",
        "current_velx",
        "task_err",
        "target_velx",
        "target_posx",
        "dynamic_tor",
        "actual_jts",
        "actual_ejt",
        "actual_ett",
        "actual_bk",
        "actual_mc",
        "actual_mt",
        "solution_space",
        "sync_time",
        "actual_bt",
        "rotation_matrix",
        "ctrlbox_digital_input",
        "ctrlbox_digital_output",
        "flange_digital_input",
        "flange_digital_output",
        "modbus_state",
        "access_control",
        "homming_completed",
        "tp_initialized",
        "mastering_need",
        "drl_stopped",
        "disconnected",
        "f_actual_w2b",
        "f_current_pos_world",
        "f_current_vel_world",
        "f_world_ext_target_torque",
        "f_target_pos_world",
        "f_target_vel_world",
        "f_rotation_matrix_world",
        "i_actual_user_coord_num",
        "i_coord_ref",
        "f_current_pos_user",
        "f_current_vel_user",
        "f_user_ext_task_torque",
        "f_target_pos_user",
        "f_target_vel_user",
        "f_rotation_matrix_user",
        "f_actual_analog_input",
        "b_actual_switch_input",
        "b_actual_safety_input",
        "i_actual_analog_input_type",
        "f_target_analog_output",
        "i_target_analog_output_type",
        "b_actual_encorder_strove_signal",
        "i_actual_encorder_raw_data",
        "b_actual_encorder_reset_signal",
    )
    SCHEMA = {
        "type": "dsr_msgs2/msg/RobotState",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e705618c8be95896187c604e77324a4e8373df20b89819a7f94abf995eb93942",
        "minimum": 1484,
        "maximum": 17004,
        "semantics": "",
        "fields": [
            {
                "name": "robot_state",
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
                "name": "robot_state_str",
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
                "name": "actual_mode",
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
                "name": "actual_space",
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
                "name": "current_posj",
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
            {
                "name": "current_velj",
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
            {
                "name": "joint_abs",
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
            {
                "name": "joint_err",
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
            {
                "name": "target_posj",
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
            {
                "name": "target_velj",
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
            {
                "name": "current_posx",
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
            {
                "name": "current_tool_posx",
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
            {
                "name": "current_velx",
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
            {
                "name": "task_err",
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
            {
                "name": "target_velx",
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
            {
                "name": "target_posx",
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
            {
                "name": "dynamic_tor",
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
            {
                "name": "actual_jts",
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
            {
                "name": "actual_ejt",
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
            {
                "name": "actual_ett",
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
            {
                "name": "actual_bk",
                "type": "int8",
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
                "name": "actual_mc",
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
            {
                "name": "actual_mt",
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
            {
                "name": "solution_space",
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
                "name": "sync_time",
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
                "name": "actual_bt",
                "type": "int8",
                "array": "array",
                "count": 5,
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
                "name": "rotation_matrix",
                "type": "std_msgs/msg/Float64MultiArray",
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
                "name": "ctrlbox_digital_input",
                "type": "int8",
                "array": "array",
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
                "name": "ctrlbox_digital_output",
                "type": "int8",
                "array": "array",
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
                "name": "flange_digital_input",
                "type": "int8",
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
                "name": "flange_digital_output",
                "type": "int8",
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
                "name": "modbus_state",
                "type": "dsr_msgs2/msg/ModbusState",
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
                "name": "access_control",
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
                "name": "homming_completed",
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
                "name": "tp_initialized",
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
                "name": "mastering_need",
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
                "name": "drl_stopped",
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
                "name": "disconnected",
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
                "name": "f_actual_w2b",
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
            {
                "name": "f_current_pos_world",
                "type": "std_msgs/msg/Float64MultiArray",
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
                "name": "f_current_vel_world",
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
            {
                "name": "f_world_ext_target_torque",
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
            {
                "name": "f_target_pos_world",
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
            {
                "name": "f_target_vel_world",
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
            {
                "name": "f_rotation_matrix_world",
                "type": "std_msgs/msg/Float64MultiArray",
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
                "name": "i_actual_user_coord_num",
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
                "name": "i_coord_ref",
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
                "name": "f_current_pos_user",
                "type": "std_msgs/msg/Float64MultiArray",
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
                "name": "f_current_vel_user",
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
            {
                "name": "f_user_ext_task_torque",
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
            {
                "name": "f_target_pos_user",
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
            {
                "name": "f_target_vel_user",
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
            {
                "name": "f_rotation_matrix_user",
                "type": "std_msgs/msg/Float64MultiArray",
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
                "name": "f_actual_analog_input",
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
            {
                "name": "b_actual_switch_input",
                "type": "bool",
                "array": "array",
                "count": 3,
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
                "name": "b_actual_safety_input",
                "type": "bool",
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
            {
                "name": "i_actual_analog_input_type",
                "type": "int8",
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
            {
                "name": "f_target_analog_output",
                "type": "float64",
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
            {
                "name": "i_target_analog_output_type",
                "type": "int8",
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
            {
                "name": "b_actual_encorder_strove_signal",
                "type": "bool",
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
            {
                "name": "i_actual_encorder_raw_data",
                "type": "int8",
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
            {
                "name": "b_actual_encorder_reset_signal",
                "type": "bool",
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


REGISTRY.add(Ros2Dsr_msgs2MsgRobotState)


class Ros2Dsr_msgs2MsgRobotStateRt(Record):
    """@brief Own every dsr_msgs2/msg/RobotStateRt field.
    @details Canonical extent 1530..8154 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = (
        "time_stamp",
        "actual_joint_position",
        "actual_joint_position_abs",
        "actual_joint_velocity",
        "actual_joint_velocity_abs",
        "actual_tcp_position",
        "actual_tcp_velocity",
        "actual_flange_position",
        "actual_flange_velocity",
        "actual_motor_torque",
        "actual_joint_torque",
        "raw_joint_torque",
        "raw_force_torque",
        "external_joint_torque",
        "external_tcp_force",
        "target_joint_position",
        "target_joint_velocity",
        "target_joint_acceleration",
        "target_motor_torque",
        "target_tcp_position",
        "target_tcp_velocity",
        "jacobian_matrix",
        "gravity_torque",
        "coriolis_matrix",
        "mass_matrix",
        "solution_space",
        "singularity",
        "operation_speed_rate",
        "joint_temperature",
        "controller_digital_input",
        "controller_digital_output",
        "controller_analog_input_type",
        "controller_analog_input",
        "controller_analog_output_type",
        "controller_analog_output",
        "flange_digital_input",
        "flange_digital_output",
        "flange_analog_input",
        "external_encoder_strobe_count",
        "external_encoder_count",
        "goal_joint_position",
        "goal_tcp_position",
        "robot_mode",
        "robot_state",
        "control_mode",
        "reserved",
    )
    SCHEMA = {
        "type": "dsr_msgs2/msg/RobotStateRt",
        "native_identity": None,
        "codec_identity": "UWVMROS1_13d507971439fe6ba5458b55545edfcf1ead10ce7e603365cffa5f894657be93",
        "minimum": 1530,
        "maximum": 8154,
        "semantics": "",
        "fields": [
            {
                "name": "time_stamp",
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
                "name": "actual_joint_position",
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
            {
                "name": "actual_joint_position_abs",
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
            {
                "name": "actual_joint_velocity",
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
            {
                "name": "actual_joint_velocity_abs",
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
            {
                "name": "actual_tcp_position",
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
            {
                "name": "actual_tcp_velocity",
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
            {
                "name": "actual_flange_position",
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
            {
                "name": "actual_flange_velocity",
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
            {
                "name": "actual_motor_torque",
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
            {
                "name": "actual_joint_torque",
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
            {
                "name": "raw_joint_torque",
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
            {
                "name": "raw_force_torque",
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
            {
                "name": "external_joint_torque",
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
            {
                "name": "external_tcp_force",
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
            {
                "name": "target_joint_position",
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
            {
                "name": "target_joint_velocity",
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
            {
                "name": "target_joint_acceleration",
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
            {
                "name": "target_motor_torque",
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
            {
                "name": "target_tcp_position",
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
            {
                "name": "target_tcp_velocity",
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
            {
                "name": "jacobian_matrix",
                "type": "std_msgs/msg/Float64MultiArray",
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
                "name": "gravity_torque",
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
            {
                "name": "coriolis_matrix",
                "type": "std_msgs/msg/Float64MultiArray",
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
                "name": "mass_matrix",
                "type": "std_msgs/msg/Float64MultiArray",
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
                "name": "solution_space",
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
                "name": "singularity",
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
                "name": "operation_speed_rate",
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
                "name": "joint_temperature",
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
            {
                "name": "controller_digital_input",
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
                "name": "controller_digital_output",
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
                "name": "controller_analog_input_type",
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
            {
                "name": "controller_analog_input",
                "type": "float64",
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
            {
                "name": "controller_analog_output_type",
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
            {
                "name": "controller_analog_output",
                "type": "float64",
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
            {
                "name": "flange_digital_input",
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
                "name": "flange_digital_output",
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
                "name": "flange_analog_input",
                "type": "float64",
                "array": "array",
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
            {
                "name": "external_encoder_strobe_count",
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
            {
                "name": "external_encoder_count",
                "type": "uint16",
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
            {
                "name": "goal_joint_position",
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
            {
                "name": "goal_tcp_position",
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
            {
                "name": "robot_mode",
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
                "name": "robot_state",
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
                "name": "control_mode",
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
                "name": "reserved",
                "type": "uint8",
                "array": "array",
                "count": 256,
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


REGISTRY.add(Ros2Dsr_msgs2MsgRobotStateRt)


class Ros2Dsr_msgs2MsgRobotStop(Record):
    """@brief Own every dsr_msgs2/msg/RobotStop field.
    @details Canonical extent 4..4 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("stop_mode",)
    SCHEMA = {
        "type": "dsr_msgs2/msg/RobotStop",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f3307dbbe0c0c842659c2db436d1c3d6f032157979c5b6178103319bb5eeda37",
        "minimum": 4,
        "maximum": 4,
        "semantics": "",
        "fields": [
            {
                "name": "stop_mode",
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
            }
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2MsgRobotStop)


class Ros2Dsr_msgs2MsgServojRtStream(Record):
    """@brief Own every dsr_msgs2/msg/ServojRtStream field.
    @details Canonical extent 152..152 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "vel", "acc", "time")
    SCHEMA = {
        "type": "dsr_msgs2/msg/ServojRtStream",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4321e707fa63a57b66eb3754deca45fe0c108c52565a0e0f62749deae95726a9",
        "minimum": 152,
        "maximum": 152,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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
            {
                "name": "vel",
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
            {
                "name": "acc",
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
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2MsgServojRtStream)


class Ros2Dsr_msgs2MsgServojStream(Record):
    """@brief Own every dsr_msgs2/msg/ServojStream field.
    @details Canonical extent 153..153 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "vel", "acc", "time", "mode")
    SCHEMA = {
        "type": "dsr_msgs2/msg/ServojStream",
        "native_identity": None,
        "codec_identity": "UWVMROS1_bbd465cf407d444db1d536bf464b3e3939b18aa904c4ce99aac2fb2d918259a9",
        "minimum": 153,
        "maximum": 153,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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
            {
                "name": "vel",
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
            {
                "name": "acc",
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
            },
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2MsgServojStream)


class Ros2Dsr_msgs2MsgServolRtStream(Record):
    """@brief Own every dsr_msgs2/msg/ServolRtStream field.
    @details Canonical extent 152..152 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "vel", "acc", "time")
    SCHEMA = {
        "type": "dsr_msgs2/msg/ServolRtStream",
        "native_identity": None,
        "codec_identity": "UWVMROS1_052d62a9865376150ca907ac85216a91f19dd81ed7bbe943ed53e74b6e511763",
        "minimum": 152,
        "maximum": 152,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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
            {
                "name": "vel",
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
            {
                "name": "acc",
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
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2MsgServolRtStream)


class Ros2Dsr_msgs2MsgServolStream(Record):
    """@brief Own every dsr_msgs2/msg/ServolStream field.
    @details Canonical extent 88..88 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "vel", "acc", "time")
    SCHEMA = {
        "type": "dsr_msgs2/msg/ServolStream",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7d3d948e15e7dcc96f21f17d0c6a1981859ea8002234ea93877919fa961c2a96",
        "minimum": 88,
        "maximum": 88,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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
            {
                "name": "vel",
                "type": "float64",
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
            {
                "name": "acc",
                "type": "float64",
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
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2MsgServolStream)


class Ros2Dsr_msgs2MsgSpeedjRtStream(Record):
    """@brief Own every dsr_msgs2/msg/SpeedjRtStream field.
    @details Canonical extent 104..104 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("vel", "acc", "time")
    SCHEMA = {
        "type": "dsr_msgs2/msg/SpeedjRtStream",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d6f75878c6dd397b261ede489ca0b3c2e7f26c44908a16d809303a77ca4791aa",
        "minimum": 104,
        "maximum": 104,
        "semantics": "",
        "fields": [
            {
                "name": "vel",
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
            {
                "name": "acc",
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
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2MsgSpeedjRtStream)


class Ros2Dsr_msgs2MsgSpeedjStream(Record):
    """@brief Own every dsr_msgs2/msg/SpeedjStream field.
    @details Canonical extent 104..104 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("vel", "acc", "time")
    SCHEMA = {
        "type": "dsr_msgs2/msg/SpeedjStream",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c37473b30f0e49db847342eb9b0e27606010710a43de7b94c8589707bceacbf5",
        "minimum": 104,
        "maximum": 104,
        "semantics": "",
        "fields": [
            {
                "name": "vel",
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
            {
                "name": "acc",
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
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2MsgSpeedjStream)


class Ros2Dsr_msgs2MsgSpeedlRtStream(Record):
    """@brief Own every dsr_msgs2/msg/SpeedlRtStream field.
    @details Canonical extent 104..104 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("vel", "acc", "time")
    SCHEMA = {
        "type": "dsr_msgs2/msg/SpeedlRtStream",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0e85422a682aef2c639f5e8a44b883e7c9b3491c95bf352c34ba23e9fb789b92",
        "minimum": 104,
        "maximum": 104,
        "semantics": "",
        "fields": [
            {
                "name": "vel",
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
            {
                "name": "acc",
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
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2MsgSpeedlRtStream)


class Ros2Dsr_msgs2MsgSpeedlStream(Record):
    """@brief Own every dsr_msgs2/msg/SpeedlStream field.
    @details Canonical extent 72..72 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("vel", "acc", "time")
    SCHEMA = {
        "type": "dsr_msgs2/msg/SpeedlStream",
        "native_identity": None,
        "codec_identity": "UWVMROS1_8ae5704395fff21a33153589b6a32a41e8687cee0607a7085156c42a2f087ef2",
        "minimum": 72,
        "maximum": 72,
        "semantics": "",
        "fields": [
            {
                "name": "vel",
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
            {
                "name": "acc",
                "type": "float64",
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
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2MsgSpeedlStream)


class Ros2Dsr_msgs2MsgTorqueRtStream(Record):
    """@brief Own every dsr_msgs2/msg/TorqueRtStream field.
    @details Canonical extent 56..56 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("tor", "time")
    SCHEMA = {
        "type": "dsr_msgs2/msg/TorqueRtStream",
        "native_identity": None,
        "codec_identity": "UWVMROS1_81cb4c6d445c6869b94baca87ce997c96964b7e189598b0adfdcc227a295fd73",
        "minimum": 56,
        "maximum": 56,
        "semantics": "",
        "fields": [
            {
                "name": "tor",
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
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2MsgTorqueRtStream)


class Ros2Dsr_msgs2SrvAlignAxis1_Request(Record):
    """@brief Own every dsr_msgs2/srv/AlignAxis1_Request field.
    @details Canonical extent 170..170 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("x1", "x2", "x3", "source_vect", "axis", "ref")
    SCHEMA = {
        "type": "dsr_msgs2/srv/AlignAxis1_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1ddf70ffd434db95044523b5778f518ec204aed4e315293ecb474e1ec1b1267d",
        "minimum": 170,
        "maximum": 170,
        "semantics": "",
        "fields": [
            {
                "name": "x1",
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
            {
                "name": "x2",
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
            {
                "name": "x3",
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
            {
                "name": "source_vect",
                "type": "float64",
                "array": "array",
                "count": 3,
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
                "name": "axis",
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
                "name": "ref",
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


REGISTRY.add(Ros2Dsr_msgs2SrvAlignAxis1_Request)


class Ros2Dsr_msgs2SrvAlignAxis1_Response(Record):
    """@brief Own every dsr_msgs2/srv/AlignAxis1_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/AlignAxis1_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f767cbca9c94fc07d10cff7cdbc4125f6d657f4362335ce968dcbd560a75a537",
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


REGISTRY.add(Ros2Dsr_msgs2SrvAlignAxis1_Response)


class Ros2Dsr_msgs2SrvAlignAxis2_Request(Record):
    """@brief Own every dsr_msgs2/srv/AlignAxis2_Request field.
    @details Canonical extent 50..50 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("target_vect", "source_vect", "axis", "ref")
    SCHEMA = {
        "type": "dsr_msgs2/srv/AlignAxis2_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_102ba03a00114a9c5314e5f947050c88791c1abffcff3d9b3163f06557c9d1ca",
        "minimum": 50,
        "maximum": 50,
        "semantics": "",
        "fields": [
            {
                "name": "target_vect",
                "type": "float64",
                "array": "array",
                "count": 3,
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
                "name": "source_vect",
                "type": "float64",
                "array": "array",
                "count": 3,
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
                "name": "axis",
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
                "name": "ref",
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


REGISTRY.add(Ros2Dsr_msgs2SrvAlignAxis2_Request)


class Ros2Dsr_msgs2SrvAlignAxis2_Response(Record):
    """@brief Own every dsr_msgs2/srv/AlignAxis2_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/AlignAxis2_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_59a69f0d266c31bbd9ab278249d358fb0edb0cc2c5f57a684069653548b88400",
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


REGISTRY.add(Ros2Dsr_msgs2SrvAlignAxis2_Response)


class Ros2Dsr_msgs2SrvAlterMotion_Request(Record):
    """@brief Own every dsr_msgs2/srv/AlterMotion_Request field.
    @details Canonical extent 48..48 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/AlterMotion_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ede1eb26161bfe42b29411347ef4752a6454baf86ba04afc5f2f11149895b000",
        "minimum": 48,
        "maximum": 48,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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
            }
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvAlterMotion_Request)


class Ros2Dsr_msgs2SrvAlterMotion_Response(Record):
    """@brief Own every dsr_msgs2/srv/AlterMotion_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/AlterMotion_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_edd6fac42f9f148dc508948ebf7b7bfe09fda09ab6ba66df3a56505b10829557",
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


REGISTRY.add(Ros2Dsr_msgs2SrvAlterMotion_Response)


class Ros2Dsr_msgs2SrvCalcCoord_Request(Record):
    """@brief Own every dsr_msgs2/srv/CalcCoord_Request field.
    @details Canonical extent 195..195 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("input_pos_cnt", "x1", "x2", "x3", "x4", "ref", "mod")
    SCHEMA = {
        "type": "dsr_msgs2/srv/CalcCoord_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7fda8163d3f25429c387f6456df77bbfcf30c1aee93bb08ac27d50950a56ac7f",
        "minimum": 195,
        "maximum": 195,
        "semantics": "",
        "fields": [
            {
                "name": "input_pos_cnt",
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
                "name": "x1",
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
            {
                "name": "x2",
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
            {
                "name": "x3",
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
            {
                "name": "x4",
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
            {
                "name": "ref",
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
                "name": "mod",
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


REGISTRY.add(Ros2Dsr_msgs2SrvCalcCoord_Request)


class Ros2Dsr_msgs2SrvCalcCoord_Response(Record):
    """@brief Own every dsr_msgs2/srv/CalcCoord_Response field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("conv_posx", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/CalcCoord_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d5d79d4593bf040421c1b8570c86d021db50de736ab114ec13623e4982168371",
        "minimum": 49,
        "maximum": 49,
        "semantics": "",
        "fields": [
            {
                "name": "conv_posx",
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


REGISTRY.add(Ros2Dsr_msgs2SrvCalcCoord_Response)


class Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request(Record):
    """@brief Own every dsr_msgs2/srv/ChangeCollisionSensitivity_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("sensitivity",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ChangeCollisionSensitivity_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_69c9183fb3a1a5e619cb2537da31e73aa9c490b2022db5281931d353676efc7f",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "sensitivity",
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


REGISTRY.add(Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request)


class Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response(Record):
    """@brief Own every dsr_msgs2/srv/ChangeCollisionSensitivity_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ChangeCollisionSensitivity_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d0660dd8ed26aba09d9aaa3444daae0abca31e415b24a39ab05c012fb9909aa0",
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


REGISTRY.add(Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response)


class Ros2Dsr_msgs2SrvChangeOperationSpeed_Request(Record):
    """@brief Own every dsr_msgs2/srv/ChangeOperationSpeed_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("speed",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ChangeOperationSpeed_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_63eed536f4862ee6571ea76f40342def3598466057cc09aa45b0ea159c9a4fa7",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "speed",
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


REGISTRY.add(Ros2Dsr_msgs2SrvChangeOperationSpeed_Request)


class Ros2Dsr_msgs2SrvChangeOperationSpeed_Response(Record):
    """@brief Own every dsr_msgs2/srv/ChangeOperationSpeed_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ChangeOperationSpeed_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6514284e5a0739b16cd9df8dab9939c8e3aa9b47567741389bcc3fe54e9f0cbf",
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


REGISTRY.add(Ros2Dsr_msgs2SrvChangeOperationSpeed_Response)


class Ros2Dsr_msgs2SrvCheckForceCondition_Request(Record):
    """@brief Own every dsr_msgs2/srv/CheckForceCondition_Request field.
    @details Canonical extent 18..18 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("axis", "min", "max", "ref")
    SCHEMA = {
        "type": "dsr_msgs2/srv/CheckForceCondition_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e996cea9f24a1967a4591fdb072ccb87fe1e684dfe19cdcbb5cf65afa22cd0e4",
        "minimum": 18,
        "maximum": 18,
        "semantics": "",
        "fields": [
            {
                "name": "axis",
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
                "name": "min",
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
                "name": "max",
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
                "name": "ref",
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


REGISTRY.add(Ros2Dsr_msgs2SrvCheckForceCondition_Request)


class Ros2Dsr_msgs2SrvCheckForceCondition_Response(Record):
    """@brief Own every dsr_msgs2/srv/CheckForceCondition_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/CheckForceCondition_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ed5a27b7b1daf8a668998d4da7f7ac5d1f7a71caea35a37c51db07058a373343",
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


REGISTRY.add(Ros2Dsr_msgs2SrvCheckForceCondition_Response)


class Ros2Dsr_msgs2SrvCheckMotion_Request(Record):
    """@brief Own every dsr_msgs2/srv/CheckMotion_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/CheckMotion_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_64c44932b5afc38a3bd1cfb306c018616656793b0c6e5bf0e04f557a0b5f48a5",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvCheckMotion_Request)


class Ros2Dsr_msgs2SrvCheckMotion_Response(Record):
    """@brief Own every dsr_msgs2/srv/CheckMotion_Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("status", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/CheckMotion_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_9c8ac8ada140000e2bd6588a92871d699a924ce9b1011d3e98dec98e0aa84379",
        "minimum": 2,
        "maximum": 2,
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


REGISTRY.add(Ros2Dsr_msgs2SrvCheckMotion_Response)


class Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request(Record):
    """@brief Own every dsr_msgs2/srv/CheckOrientationCondition1_Request field.
    @details Canonical extent 99..99 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("axis", "min", "max", "ref", "mode")
    SCHEMA = {
        "type": "dsr_msgs2/srv/CheckOrientationCondition1_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_b70860c0e9fe5ae7904923bbf2ad9077a5009ae37a644118d5b8f4dc3383c1ef",
        "minimum": 99,
        "maximum": 99,
        "semantics": "",
        "fields": [
            {
                "name": "axis",
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
                "name": "min",
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
            {
                "name": "max",
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
            {
                "name": "ref",
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
            },
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request)


class Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response(Record):
    """@brief Own every dsr_msgs2/srv/CheckOrientationCondition1_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/CheckOrientationCondition1_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_eff9abfb058f98ef8addce0c226a0c35bfc84f24d96b611cd151be384be24ee4",
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


REGISTRY.add(Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response)


class Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request(Record):
    """@brief Own every dsr_msgs2/srv/CheckOrientationCondition2_Request field.
    @details Canonical extent 67..67 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("axis", "min", "max", "ref", "mode", "pos")
    SCHEMA = {
        "type": "dsr_msgs2/srv/CheckOrientationCondition2_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_af9ed5881dde0e06efb1c97e8c9571dd2de85b35188cbdcbed5a902ca30d5ddb",
        "minimum": 67,
        "maximum": 67,
        "semantics": "",
        "fields": [
            {
                "name": "axis",
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
                "name": "min",
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
                "name": "max",
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
                "name": "ref",
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
            },
            {
                "name": "pos",
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


REGISTRY.add(Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request)


class Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response(Record):
    """@brief Own every dsr_msgs2/srv/CheckOrientationCondition2_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/CheckOrientationCondition2_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_23b06042946d1e27459ce70b73d265a7fda95dc1bf688091c14b5330c76d6e90",
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


REGISTRY.add(Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response)


class Ros2Dsr_msgs2SrvCheckPositionCondition_Request(Record):
    """@brief Own every dsr_msgs2/srv/CheckPositionCondition_Request field.
    @details Canonical extent 67..67 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("axis", "min", "max", "ref", "mode", "pos")
    SCHEMA = {
        "type": "dsr_msgs2/srv/CheckPositionCondition_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_3844a1011d8c4dfcbe048e683d0b3c747ce2984c937c477c868b1d7d53a7b0cc",
        "minimum": 67,
        "maximum": 67,
        "semantics": "",
        "fields": [
            {
                "name": "axis",
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
                "name": "min",
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
                "name": "max",
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
                "name": "ref",
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
            },
            {
                "name": "pos",
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


REGISTRY.add(Ros2Dsr_msgs2SrvCheckPositionCondition_Request)


class Ros2Dsr_msgs2SrvCheckPositionCondition_Response(Record):
    """@brief Own every dsr_msgs2/srv/CheckPositionCondition_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/CheckPositionCondition_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_aeac1f373359103389fae072461c92f810252c8abf63f31522582b7724d33334",
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


REGISTRY.add(Ros2Dsr_msgs2SrvCheckPositionCondition_Response)


class Ros2Dsr_msgs2SrvConfigCreateModbus_Request(Record):
    """@brief Own every dsr_msgs2/srv/ConfigCreateModbus_Request field.
    @details Canonical extent 19..531 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name", "ip", "port", "reg_type", "index", "value", "slave_id")
    SCHEMA = {
        "type": "dsr_msgs2/srv/ConfigCreateModbus_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_fa23c864844a6d81712b1c28261505a4dfce7e679a25e621bf80cef0a75ff1f5",
        "minimum": 19,
        "maximum": 531,
        "semantics": "",
        "fields": [
            {
                "name": "name",
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
                "name": "ip",
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
                "name": "port",
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
                "name": "reg_type",
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
                "name": "index",
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
                "name": "value",
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
                "name": "slave_id",
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


REGISTRY.add(Ros2Dsr_msgs2SrvConfigCreateModbus_Request)


class Ros2Dsr_msgs2SrvConfigCreateModbus_Response(Record):
    """@brief Own every dsr_msgs2/srv/ConfigCreateModbus_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ConfigCreateModbus_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e3316b3da7d0c79293173a37fe9830de831cf1d4152999f56f7f5f01ff63215c",
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


REGISTRY.add(Ros2Dsr_msgs2SrvConfigCreateModbus_Response)


class Ros2Dsr_msgs2SrvConfigCreateTcp_Request(Record):
    """@brief Own every dsr_msgs2/srv/ConfigCreateTcp_Request field.
    @details Canonical extent 52..308 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name", "pos")
    SCHEMA = {
        "type": "dsr_msgs2/srv/ConfigCreateTcp_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e45840cd5a1966ba8cf7a7bf660ab0a467132b03cd69f00fb62043afb9b30c49",
        "minimum": 52,
        "maximum": 308,
        "semantics": "",
        "fields": [
            {
                "name": "name",
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
                "name": "pos",
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


REGISTRY.add(Ros2Dsr_msgs2SrvConfigCreateTcp_Request)


class Ros2Dsr_msgs2SrvConfigCreateTcp_Response(Record):
    """@brief Own every dsr_msgs2/srv/ConfigCreateTcp_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ConfigCreateTcp_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_3091184aefaedc2fb8fd9b4f3c87769e8f87ebba4f14623355ef09fce4932f3b",
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


REGISTRY.add(Ros2Dsr_msgs2SrvConfigCreateTcp_Response)


class Ros2Dsr_msgs2SrvConfigCreateTool_Request(Record):
    """@brief Own every dsr_msgs2/srv/ConfigCreateTool_Request field.
    @details Canonical extent 84..340 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name", "weight", "cog", "inertia")
    SCHEMA = {
        "type": "dsr_msgs2/srv/ConfigCreateTool_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ca28549f6644d735882d0400c2635380dde1139d17c17818d49d023ec73566e2",
        "minimum": 84,
        "maximum": 340,
        "semantics": "",
        "fields": [
            {
                "name": "name",
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
                "name": "weight",
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
                "name": "cog",
                "type": "float64",
                "array": "array",
                "count": 3,
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
                "name": "inertia",
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


REGISTRY.add(Ros2Dsr_msgs2SrvConfigCreateTool_Request)


class Ros2Dsr_msgs2SrvConfigCreateTool_Response(Record):
    """@brief Own every dsr_msgs2/srv/ConfigCreateTool_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ConfigCreateTool_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_105629d8e968ac2511b73b3fe21ed9529b1dab9365d992281a02d72e1b4a90d0",
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


REGISTRY.add(Ros2Dsr_msgs2SrvConfigCreateTool_Response)


class Ros2Dsr_msgs2SrvConfigDeleteModbus_Request(Record):
    """@brief Own every dsr_msgs2/srv/ConfigDeleteModbus_Request field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ConfigDeleteModbus_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f16519f6118316f20a9ab9e76dc37704e0d464632d31ed383a8bb55af6b25369",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "name",
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


REGISTRY.add(Ros2Dsr_msgs2SrvConfigDeleteModbus_Request)


class Ros2Dsr_msgs2SrvConfigDeleteModbus_Response(Record):
    """@brief Own every dsr_msgs2/srv/ConfigDeleteModbus_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ConfigDeleteModbus_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a0a28657707c302b7dbb87039a36951cc97a5335cb473523002884453125829f",
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


REGISTRY.add(Ros2Dsr_msgs2SrvConfigDeleteModbus_Response)


class Ros2Dsr_msgs2SrvConfigDeleteTcp_Request(Record):
    """@brief Own every dsr_msgs2/srv/ConfigDeleteTcp_Request field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ConfigDeleteTcp_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a865fbd071a0e1717d54ab3523a5dd637f22745724ed41483991c2f58aa85abf",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "name",
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


REGISTRY.add(Ros2Dsr_msgs2SrvConfigDeleteTcp_Request)


class Ros2Dsr_msgs2SrvConfigDeleteTcp_Response(Record):
    """@brief Own every dsr_msgs2/srv/ConfigDeleteTcp_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ConfigDeleteTcp_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c8285c592d6839812e366d8271a9020f2e6213f7d3194896306f55bf69bb83d2",
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


REGISTRY.add(Ros2Dsr_msgs2SrvConfigDeleteTcp_Response)


class Ros2Dsr_msgs2SrvConfigDeleteTool_Request(Record):
    """@brief Own every dsr_msgs2/srv/ConfigDeleteTool_Request field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ConfigDeleteTool_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7d6b749f7151dfc84e52fc39f3a32c88d5570efb2fb721c234c2d91405d9a37b",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "name",
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


REGISTRY.add(Ros2Dsr_msgs2SrvConfigDeleteTool_Request)


class Ros2Dsr_msgs2SrvConfigDeleteTool_Response(Record):
    """@brief Own every dsr_msgs2/srv/ConfigDeleteTool_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ConfigDeleteTool_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_2618f58ba0b4e9f585b2635de087a5d203b019e3732ab579e94fcb44e2ee9a6e",
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


REGISTRY.add(Ros2Dsr_msgs2SrvConfigDeleteTool_Response)


class Ros2Dsr_msgs2SrvConnectRtControl_Request(Record):
    """@brief Own every dsr_msgs2/srv/ConnectRtControl_Request field.
    @details Canonical extent 8..264 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("ip_address", "port")
    SCHEMA = {
        "type": "dsr_msgs2/srv/ConnectRtControl_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a207438503e0a6769dbdc07c87487b0435066ba9773c19f2874241c8c1b4d761",
        "minimum": 8,
        "maximum": 264,
        "semantics": "",
        "fields": [
            {
                "name": "ip_address",
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
                "name": "port",
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


REGISTRY.add(Ros2Dsr_msgs2SrvConnectRtControl_Request)


class Ros2Dsr_msgs2SrvConnectRtControl_Response(Record):
    """@brief Own every dsr_msgs2/srv/ConnectRtControl_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ConnectRtControl_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6a7cce9aae60cdadc75425b22f7a8b429b95bc607e969605ab477c2eb1461815",
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


REGISTRY.add(Ros2Dsr_msgs2SrvConnectRtControl_Response)


class Ros2Dsr_msgs2SrvCoordTransform_Request(Record):
    """@brief Own every dsr_msgs2/srv/CoordTransform_Request field.
    @details Canonical extent 50..50 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos_in", "ref_in", "ref_out")
    SCHEMA = {
        "type": "dsr_msgs2/srv/CoordTransform_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a3996948d541acf82a920927a76293455965c48d4a2f1c3307854193104b2223",
        "minimum": 50,
        "maximum": 50,
        "semantics": "",
        "fields": [
            {
                "name": "pos_in",
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
            {
                "name": "ref_in",
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
                "name": "ref_out",
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


REGISTRY.add(Ros2Dsr_msgs2SrvCoordTransform_Request)


class Ros2Dsr_msgs2SrvCoordTransform_Response(Record):
    """@brief Own every dsr_msgs2/srv/CoordTransform_Response field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("conv_posx", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/CoordTransform_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_8ab16c946ef4cce7da6ccb8b0d3b4940195d0b29841007de569d1ea503b6cc72",
        "minimum": 49,
        "maximum": 49,
        "semantics": "",
        "fields": [
            {
                "name": "conv_posx",
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


REGISTRY.add(Ros2Dsr_msgs2SrvCoordTransform_Response)


class Ros2Dsr_msgs2SrvDisableAlterMotion_Request(Record):
    """@brief Own every dsr_msgs2/srv/DisableAlterMotion_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/DisableAlterMotion_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_dc5d3ed630e183152040506dfe7dd28e5ff236a79ac75ec2d48d824446e97152",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvDisableAlterMotion_Request)


class Ros2Dsr_msgs2SrvDisableAlterMotion_Response(Record):
    """@brief Own every dsr_msgs2/srv/DisableAlterMotion_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/DisableAlterMotion_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1bc0f75aa3e09ead2882ae862e0af520dd291c5d9f96414f98fa4a07f48a16e5",
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


REGISTRY.add(Ros2Dsr_msgs2SrvDisableAlterMotion_Response)


class Ros2Dsr_msgs2SrvDisconnectRtControl_Request(Record):
    """@brief Own every dsr_msgs2/srv/DisconnectRtControl_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/DisconnectRtControl_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7745a5c8acbb39607c2eb275e9257608d928fb98a7a5a72c0a64d03980ba5524",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvDisconnectRtControl_Request)


class Ros2Dsr_msgs2SrvDisconnectRtControl_Response(Record):
    """@brief Own every dsr_msgs2/srv/DisconnectRtControl_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/DisconnectRtControl_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e57ab63199570ab8d114a9f778cb307cedf0775f6ce96ae1edeade39f9a259a5",
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


REGISTRY.add(Ros2Dsr_msgs2SrvDisconnectRtControl_Response)


class Ros2Dsr_msgs2SrvDrlPause_Request(Record):
    """@brief Own every dsr_msgs2/srv/DrlPause_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/DrlPause_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d3a522d19d07bf80ce8b3722d43c382b8d55693b9364d995f968b952335d35a6",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvDrlPause_Request)


class Ros2Dsr_msgs2SrvDrlPause_Response(Record):
    """@brief Own every dsr_msgs2/srv/DrlPause_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/DrlPause_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_43cc42f101181691ed6046767d35f623fd8c3b7ca2fff5244a2b832cd1906ab7",
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


REGISTRY.add(Ros2Dsr_msgs2SrvDrlPause_Response)


class Ros2Dsr_msgs2SrvDrlResume_Request(Record):
    """@brief Own every dsr_msgs2/srv/DrlResume_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/DrlResume_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_19bfb89dfedd6470fd3e2054556e20cdd15f430c93a563557d6240c81243eb05",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvDrlResume_Request)


class Ros2Dsr_msgs2SrvDrlResume_Response(Record):
    """@brief Own every dsr_msgs2/srv/DrlResume_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/DrlResume_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a0447aaaaab43fe0287ff4aa85cc6d182320a036cf49f75e6552b9cf997de5ca",
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


REGISTRY.add(Ros2Dsr_msgs2SrvDrlResume_Response)


class Ros2Dsr_msgs2SrvDrlStart_Request(Record):
    """@brief Own every dsr_msgs2/srv/DrlStart_Request field.
    @details Canonical extent 5..261 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("robot_system", "code")
    SCHEMA = {
        "type": "dsr_msgs2/srv/DrlStart_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0bcd9b44a5bc387dd9fa6257a42d2cbdc0c0d5cc373e56abd50345520304395d",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "fields": [
            {
                "name": "robot_system",
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
                "name": "code",
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


REGISTRY.add(Ros2Dsr_msgs2SrvDrlStart_Request)


class Ros2Dsr_msgs2SrvDrlStart_Response(Record):
    """@brief Own every dsr_msgs2/srv/DrlStart_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/DrlStart_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c693ddb4d3cb430442fd669f4506d751a58c2f6aacd84b5f547bb498140f306f",
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


REGISTRY.add(Ros2Dsr_msgs2SrvDrlStart_Response)


class Ros2Dsr_msgs2SrvDrlStop_Request(Record):
    """@brief Own every dsr_msgs2/srv/DrlStop_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("stop_mode",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/DrlStop_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a0b7682dc86c427b9b16a40a6d4e358bb3be307190bd02ae41d9e88af40ec6cd",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "stop_mode",
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


REGISTRY.add(Ros2Dsr_msgs2SrvDrlStop_Request)


class Ros2Dsr_msgs2SrvDrlStop_Response(Record):
    """@brief Own every dsr_msgs2/srv/DrlStop_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/DrlStop_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_156eed5dd85047a2830dcfdeba5327f1836606bda78d45f379f6ec0542ff1c24",
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


REGISTRY.add(Ros2Dsr_msgs2SrvDrlStop_Response)


class Ros2Dsr_msgs2SrvEnableAlterMotion_Request(Record):
    """@brief Own every dsr_msgs2/srv/EnableAlterMotion_Request field.
    @details Canonical extent 38..38 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("n", "mode", "ref", "limit_dpos", "limit_dpos_per")
    SCHEMA = {
        "type": "dsr_msgs2/srv/EnableAlterMotion_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7615d1d9c40d8a6aed080f6185b80a7c6124db6aa979d7f670e81019c7633ffc",
        "minimum": 38,
        "maximum": 38,
        "semantics": "",
        "fields": [
            {
                "name": "n",
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
            },
            {
                "name": "ref",
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
                "name": "limit_dpos",
                "type": "float64",
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
            {
                "name": "limit_dpos_per",
                "type": "float64",
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


REGISTRY.add(Ros2Dsr_msgs2SrvEnableAlterMotion_Request)


class Ros2Dsr_msgs2SrvEnableAlterMotion_Response(Record):
    """@brief Own every dsr_msgs2/srv/EnableAlterMotion_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/EnableAlterMotion_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_5378b5727bd63d42483a26d7bf5df1aaad836ed6d0456806c7d6cb1f851e8f7f",
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


REGISTRY.add(Ros2Dsr_msgs2SrvEnableAlterMotion_Response)


class Ros2Dsr_msgs2SrvFkin_Request(Record):
    """@brief Own every dsr_msgs2/srv/Fkin_Request field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "ref")
    SCHEMA = {
        "type": "dsr_msgs2/srv/Fkin_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f068464c2b4970811378456c7d036a2697c43d38736447fbbdbf4b1fafe2625f",
        "minimum": 49,
        "maximum": 49,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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
            {
                "name": "ref",
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


REGISTRY.add(Ros2Dsr_msgs2SrvFkin_Request)


class Ros2Dsr_msgs2SrvFkin_Response(Record):
    """@brief Own every dsr_msgs2/srv/Fkin_Response field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("conv_posx", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/Fkin_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_b373f093b247590ca30d22f0cc8bd5104267b03ac14301795a5aa8796b5e7d1b",
        "minimum": 49,
        "maximum": 49,
        "semantics": "",
        "fields": [
            {
                "name": "conv_posx",
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


REGISTRY.add(Ros2Dsr_msgs2SrvFkin_Response)


class Ros2Dsr_msgs2SrvGetControlMode_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetControlMode_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetControlMode_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d80c98c4bc5b2426b9842f3dc9e9d282449cffd222efaacdc23a09205c3c69ea",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetControlMode_Request)


class Ros2Dsr_msgs2SrvGetControlMode_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetControlMode_Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("control_mode", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetControlMode_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_56a3a864dffea1761165081f90a8303246177905522e84e0f30a12526117e824",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "control_mode",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetControlMode_Response)


class Ros2Dsr_msgs2SrvGetControlSpace_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetControlSpace_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetControlSpace_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ea6654e3794c2b36c3d10311e407b6d4e12bca59b9a9b763880917e762e6dfaa",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetControlSpace_Request)


class Ros2Dsr_msgs2SrvGetControlSpace_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetControlSpace_Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("space", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetControlSpace_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_546ae346425d48252237f4b3f129145e5190dda43e29bf4080bc17a489deef41",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "space",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetControlSpace_Response)


class Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetCtrlBoxAnalogInput_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("channel",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCtrlBoxAnalogInput_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_08335af395bc5602dfc0ed599a45d1a0e315a404729bc430fcf1e2c8f7b815e7",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "channel",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request)


class Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetCtrlBoxAnalogInput_Response field.
    @details Canonical extent 9..9 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("value", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCtrlBoxAnalogInput_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e6980a35668e6e96dc588b8e47aa0b5b33235f1e7f36aa9503378749ce707d09",
        "minimum": 9,
        "maximum": 9,
        "semantics": "",
        "fields": [
            {
                "name": "value",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response)


class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetCtrlBoxDigitalInput_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("index",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCtrlBoxDigitalInput_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d4a390f79cd4ec51ae40899d9f2253f49a9d589029a03625f4078e7c5d511e4e",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "index",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request)


class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetCtrlBoxDigitalInput_Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("value", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCtrlBoxDigitalInput_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1ff53e438120200e50511d0ddbae9498084bb690292d45a46701e9efe915e03d",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "value",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response)


class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetCtrlBoxDigitalOutput_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("index",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCtrlBoxDigitalOutput_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ef4e865a9b5c7402332ec14ed19177cdb88503352a0a53b2746045dadac02e55",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "index",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request)


class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetCtrlBoxDigitalOutput_Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("value", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCtrlBoxDigitalOutput_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d5048e8f272eda1d8c034f65d357ff49b5a0407f7ec0c6255b4919c7e41dce02",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "value",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response)


class Ros2Dsr_msgs2SrvGetCurrentPose_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetCurrentPose_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("space_type",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCurrentPose_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d5b0aeb2f72918c086d24e32685fb17be635849416d2dc9a440dd51b409af06c",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "space_type",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetCurrentPose_Request)


class Ros2Dsr_msgs2SrvGetCurrentPose_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetCurrentPose_Response field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCurrentPose_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_296fc33e4b04d2c770600842339bd545bbe72b8ba700a2236c3983c80124dcf1",
        "minimum": 49,
        "maximum": 49,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetCurrentPose_Response)


class Ros2Dsr_msgs2SrvGetCurrentPosj_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetCurrentPosj_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCurrentPosj_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1cf038d6627d1a5ddcf3ffbce7cfd1416e9d3e8c63dc13c38dfa139050544f44",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetCurrentPosj_Request)


class Ros2Dsr_msgs2SrvGetCurrentPosj_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetCurrentPosj_Response field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCurrentPosj_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f1b5d0285e81567ee77f3b688de5f6eb3c1340e2e99f6d5030d0ac77b7088e13",
        "minimum": 49,
        "maximum": 49,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetCurrentPosj_Response)


class Ros2Dsr_msgs2SrvGetCurrentPosx_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetCurrentPosx_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("ref",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCurrentPosx_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_57fc5ddeafbed4d32ed4ba322abf43b4ffbe73c3b737f0529b3e60ef01ce9943",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "ref",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetCurrentPosx_Request)


class Ros2Dsr_msgs2SrvGetCurrentPosx_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetCurrentPosx_Response field.
    @details Canonical extent 5..2213 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("task_pos_info", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCurrentPosx_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_cb48d05f4193cfb0a70d674a2f4845edca145c1ec2df8f76e3776a75fa0254a8",
        "minimum": 5,
        "maximum": 2213,
        "semantics": "",
        "fields": [
            {
                "name": "task_pos_info",
                "type": "std_msgs/msg/Float64MultiArray",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetCurrentPosx_Response)


class Ros2Dsr_msgs2SrvGetCurrentRotm_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetCurrentRotm_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("ref",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCurrentRotm_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c691d82e22924caeb734c965ee15cf46ea206aabd4621b14bde07833b661971c",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "ref",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetCurrentRotm_Request)


class Ros2Dsr_msgs2SrvGetCurrentRotm_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetCurrentRotm_Response field.
    @details Canonical extent 5..2213 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("rot_matrix", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCurrentRotm_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_07665bca70c62297a983ff28a353b8dc3e25a55b938d1e8a7d00f7b99fe659ca",
        "minimum": 5,
        "maximum": 2213,
        "semantics": "",
        "fields": [
            {
                "name": "rot_matrix",
                "type": "std_msgs/msg/Float64MultiArray",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetCurrentRotm_Response)


class Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetCurrentSolutionSpace_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCurrentSolutionSpace_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7cd7c65658f1063c1ef9af93d72f1414d547179bd00310cb70301e6f93029a96",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request)


class Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetCurrentSolutionSpace_Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("sol_space", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCurrentSolutionSpace_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f414cb291de9891680fd80e6173f5026cc105fb4d0a84781a65a44f8104fa34a",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "sol_space",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response)


class Ros2Dsr_msgs2SrvGetCurrentTcp_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetCurrentTcp_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCurrentTcp_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4324587d3246a8127cd50048c55cd3c472eed6d4c3af4aefa3216a8936a06ee4",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetCurrentTcp_Request)


class Ros2Dsr_msgs2SrvGetCurrentTcp_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetCurrentTcp_Response field.
    @details Canonical extent 5..261 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("info", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCurrentTcp_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f1cf522c9008d5c97f5fa8616d2baef9aef355350189c2ca77a22189a235c596",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "fields": [
            {
                "name": "info",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetCurrentTcp_Response)


class Ros2Dsr_msgs2SrvGetCurrentTool_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetCurrentTool_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCurrentTool_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_59737c01f8da615dc929190326bddd2d2e65b813f2407770c04b8d7afc915351",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetCurrentTool_Request)


class Ros2Dsr_msgs2SrvGetCurrentTool_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetCurrentTool_Response field.
    @details Canonical extent 5..261 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("info", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCurrentTool_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6be3858c1b239a883173227e0b498af9123c7e23f76db6024275dbc7e1b5aa5b",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "fields": [
            {
                "name": "info",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetCurrentTool_Response)


class Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetCurrentToolFlangePosx_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("ref",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCurrentToolFlangePosx_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e029ff9167245532d66a76380ba9ab1753d56b402ab1242ac13a91ede1350d02",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "ref",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request)


class Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetCurrentToolFlangePosx_Response field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCurrentToolFlangePosx_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_be24b0c65aa81bdfa3b349ca08b207b8cbb9f8622dd97559c160c92ce93e16c6",
        "minimum": 49,
        "maximum": 49,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response)


class Ros2Dsr_msgs2SrvGetCurrentVelj_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetCurrentVelj_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCurrentVelj_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d4bef08af9d4ed3e0b44b015c85c70f8c687871846818a46b97db4351b8ad876",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetCurrentVelj_Request)


class Ros2Dsr_msgs2SrvGetCurrentVelj_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetCurrentVelj_Response field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("joint_speed", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCurrentVelj_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d07a760d106d768184e69426ef5e23d6ffd7569a0ae6c30fdc7e627ecdba494d",
        "minimum": 49,
        "maximum": 49,
        "semantics": "",
        "fields": [
            {
                "name": "joint_speed",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetCurrentVelj_Response)


class Ros2Dsr_msgs2SrvGetCurrentVelx_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetCurrentVelx_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("ref",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCurrentVelx_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f14760f7a2387ae587c28c05ec130e4728e85c38961813d9932adf037c353e83",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "ref",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetCurrentVelx_Request)


class Ros2Dsr_msgs2SrvGetCurrentVelx_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetCurrentVelx_Response field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("vel", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetCurrentVelx_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_2f9645de7b8fec40b7dbcf9d572404009d9ff7f96ef3692ca7bc8fbfc5188aef",
        "minimum": 49,
        "maximum": 49,
        "semantics": "",
        "fields": [
            {
                "name": "vel",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetCurrentVelx_Response)


class Ros2Dsr_msgs2SrvGetDesiredPosj_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetDesiredPosj_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetDesiredPosj_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_9c8b229eb0bd52e826fdc03e6826b532897aae952e841e35b31c866edf0b3cd5",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetDesiredPosj_Request)


class Ros2Dsr_msgs2SrvGetDesiredPosj_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetDesiredPosj_Response field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetDesiredPosj_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0a725b8def984030fb01a2847d7e792b77e7d49007bd996b990671ceaa5facc0",
        "minimum": 49,
        "maximum": 49,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetDesiredPosj_Response)


class Ros2Dsr_msgs2SrvGetDesiredPosx_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetDesiredPosx_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("ref",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetDesiredPosx_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6f9016a247e3c8c489ffbf4fc16c4c457e21220294e6859496ec3015441dc069",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "ref",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetDesiredPosx_Request)


class Ros2Dsr_msgs2SrvGetDesiredPosx_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetDesiredPosx_Response field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetDesiredPosx_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_cc1f5ad8fd61a77b2c0dbdb1f9e0c7b899b1bdfdbf535308bbd160d001ad1c09",
        "minimum": 49,
        "maximum": 49,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetDesiredPosx_Response)


class Ros2Dsr_msgs2SrvGetDesiredVelj_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetDesiredVelj_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetDesiredVelj_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_56535748a42f6d003d24c5e176ca34bb960e9d112f209080178a55450e52d281",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetDesiredVelj_Request)


class Ros2Dsr_msgs2SrvGetDesiredVelj_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetDesiredVelj_Response field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("joint_vel", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetDesiredVelj_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_709f364917c007a6561766e576cdfb7c1e39e72b1852f83c9bec61721dd3b936",
        "minimum": 49,
        "maximum": 49,
        "semantics": "",
        "fields": [
            {
                "name": "joint_vel",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetDesiredVelj_Response)


class Ros2Dsr_msgs2SrvGetDesiredVelx_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetDesiredVelx_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("ref",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetDesiredVelx_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_754325c879930a58938d2acd7433605cc148cf57341fe9b0ef1870653a9fae12",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "ref",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetDesiredVelx_Request)


class Ros2Dsr_msgs2SrvGetDesiredVelx_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetDesiredVelx_Response field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("vel", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetDesiredVelx_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_55addb1448eb568ef90aa85cdeeee8044d9b37544a7ca4d208e91ba3aefe16bc",
        "minimum": 49,
        "maximum": 49,
        "semantics": "",
        "fields": [
            {
                "name": "vel",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetDesiredVelx_Response)


class Ros2Dsr_msgs2SrvGetDrlState_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetDrlState_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetDrlState_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_19a78a7cf9b010009bc481194271904a47cad587fa2e46fcc01e9e3f94c65e3e",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetDrlState_Request)


class Ros2Dsr_msgs2SrvGetDrlState_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetDrlState_Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("drl_state", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetDrlState_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_58b6574dd8d3006509e0e7c98a4d64f32fc1a3fa5e8a8efcb567e9c34b102699",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "drl_state",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetDrlState_Response)


class Ros2Dsr_msgs2SrvGetExternalTorque_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetExternalTorque_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetExternalTorque_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_90ea09af03677cd42016abf4e88e4ef73e7aad43c5bf37804c7f50918ad71f3a",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetExternalTorque_Request)


class Ros2Dsr_msgs2SrvGetExternalTorque_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetExternalTorque_Response field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("ext_torque", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetExternalTorque_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_617665ff9f0817f3426b8fb61409061d5f7cde6603c61993e1aec013b3021f6d",
        "minimum": 49,
        "maximum": 49,
        "semantics": "",
        "fields": [
            {
                "name": "ext_torque",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetExternalTorque_Response)


class Ros2Dsr_msgs2SrvGetInputRegisterBit_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetInputRegisterBit_Request field.
    @details Canonical extent 6..6 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("address", "timeout_ms")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetInputRegisterBit_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_357c348741cb21e92bd0e4962361dd84ed11db8f6868d84e4cdfd535fc215cae",
        "minimum": 6,
        "maximum": 6,
        "semantics": "",
        "fields": [
            {
                "name": "address",
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
                "name": "timeout_ms",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetInputRegisterBit_Request)


class Ros2Dsr_msgs2SrvGetInputRegisterBit_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetInputRegisterBit_Response field.
    @details Canonical extent 5..5 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success", "value")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetInputRegisterBit_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a47c01d50519e552cfedf4ecaf6d52febaa0a4eb846ebc73256fe88219b647aa",
        "minimum": 5,
        "maximum": 5,
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
                "name": "value",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetInputRegisterBit_Response)


class Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetInputRegisterFloat_Request field.
    @details Canonical extent 6..6 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("address", "timeout_ms")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetInputRegisterFloat_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_88a6866efcf1e3620b98a77d2bc65cbf2dc9e3fb6e00b3e06fdc84ee8b5a2f3b",
        "minimum": 6,
        "maximum": 6,
        "semantics": "",
        "fields": [
            {
                "name": "address",
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
                "name": "timeout_ms",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request)


class Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetInputRegisterFloat_Response field.
    @details Canonical extent 9..9 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success", "value")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetInputRegisterFloat_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_db86cc9f47469a5d595a6df3b10e546d227dca5dbad7a381ed600acc33e5d769",
        "minimum": 9,
        "maximum": 9,
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
                "name": "value",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response)


class Ros2Dsr_msgs2SrvGetInputRegisterInt_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetInputRegisterInt_Request field.
    @details Canonical extent 6..6 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("address", "timeout_ms")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetInputRegisterInt_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6fd37a43a6ff9f007ab73847710554a1a594bc14722c9d3223dbaae55a4c073e",
        "minimum": 6,
        "maximum": 6,
        "semantics": "",
        "fields": [
            {
                "name": "address",
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
                "name": "timeout_ms",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetInputRegisterInt_Request)


class Ros2Dsr_msgs2SrvGetInputRegisterInt_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetInputRegisterInt_Response field.
    @details Canonical extent 5..5 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success", "value")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetInputRegisterInt_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4a10e84cb1cc84e780ea1bf19a94fcf1e09e45da33805f631fa0e455447587f0",
        "minimum": 5,
        "maximum": 5,
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
                "name": "value",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetInputRegisterInt_Response)


class Ros2Dsr_msgs2SrvGetJointTorque_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetJointTorque_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetJointTorque_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a64a36840ca8a9251b84fed17cea36d2f1ce027543af9ed22e05231e2765957a",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetJointTorque_Request)


class Ros2Dsr_msgs2SrvGetJointTorque_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetJointTorque_Response field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("jts", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetJointTorque_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7d229e0af82b76fe9f92601976226517ee3a47fd36bf251f6190527ec2e2dc2a",
        "minimum": 49,
        "maximum": 49,
        "semantics": "",
        "fields": [
            {
                "name": "jts",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetJointTorque_Response)


class Ros2Dsr_msgs2SrvGetLastAlarm_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetLastAlarm_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetLastAlarm_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6569afb5dceb62e7ee95948c1140bdf5d9dcfe8532b75922722be2b02f016fcf",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetLastAlarm_Request)


class Ros2Dsr_msgs2SrvGetLastAlarm_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetLastAlarm_Response field.
    @details Canonical extent 25..793 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("log_alarm", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetLastAlarm_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_fa52a4735e3553d57e209a9307e120bd1731375d7b6864bf9b0415241527ee75",
        "minimum": 25,
        "maximum": 793,
        "semantics": "",
        "fields": [
            {
                "name": "log_alarm",
                "type": "dsr_msgs2/msg/LogAlarm",
                "array": "",
                "count": 0,
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetLastAlarm_Response)


class Ros2Dsr_msgs2SrvGetModbusInput_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetModbusInput_Request field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetModbusInput_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d2d8933898289af4b6c70b9ed412b435e3cbcfe3d2dd7675ff743a8f122fb32d",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "name",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetModbusInput_Request)


class Ros2Dsr_msgs2SrvGetModbusInput_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetModbusInput_Response field.
    @details Canonical extent 5..5 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("value", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetModbusInput_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_de8c061ac9312f7d708a3419b0f191d2e11f1727c777b0eecf9b2c3d36253c4f",
        "minimum": 5,
        "maximum": 5,
        "semantics": "",
        "fields": [
            {
                "name": "value",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetModbusInput_Response)


class Ros2Dsr_msgs2SrvGetOrientationError_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetOrientationError_Request field.
    @details Canonical extent 97..97 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("xd", "xc", "axis")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetOrientationError_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ed52ab6a577110781d73a51700a5617cf94898921e5bab39cb64e66b84a6781f",
        "minimum": 97,
        "maximum": 97,
        "semantics": "",
        "fields": [
            {
                "name": "xd",
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
            {
                "name": "xc",
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
            {
                "name": "axis",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetOrientationError_Request)


class Ros2Dsr_msgs2SrvGetOrientationError_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetOrientationError_Response field.
    @details Canonical extent 5..5 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("ori_error", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetOrientationError_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ac13995c7c96b9dd8bc2c3ccc6eabfa4347c9e78872c16a6e6388f18d36c6983",
        "minimum": 5,
        "maximum": 5,
        "semantics": "",
        "fields": [
            {
                "name": "ori_error",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetOrientationError_Response)


class Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetOutputRegisterBit_Request field.
    @details Canonical extent 6..6 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("address", "timeout_ms")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetOutputRegisterBit_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6cd40872bca1d3fa7d7b84ead3e343ca62d7a5b60cdbf963e77f6078d8c98083",
        "minimum": 6,
        "maximum": 6,
        "semantics": "",
        "fields": [
            {
                "name": "address",
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
                "name": "timeout_ms",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request)


class Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetOutputRegisterBit_Response field.
    @details Canonical extent 5..5 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success", "value")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetOutputRegisterBit_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_b877098bff97ac0e198a657581e4a76da6c2f2eeb46969fcd26ad447f1e19efa",
        "minimum": 5,
        "maximum": 5,
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
                "name": "value",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response)


class Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetOutputRegisterFloat_Request field.
    @details Canonical extent 6..6 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("address", "timeout_ms")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetOutputRegisterFloat_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_3f94d068d679b118d2b59fa33f60f189341c0ecd92bf11425d87807b2fde96d6",
        "minimum": 6,
        "maximum": 6,
        "semantics": "",
        "fields": [
            {
                "name": "address",
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
                "name": "timeout_ms",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request)


class Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetOutputRegisterFloat_Response field.
    @details Canonical extent 9..9 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success", "value")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetOutputRegisterFloat_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_3000a283d591bd17a2303bdf11aea290c034c1fd7117988e66c88f592e721e68",
        "minimum": 9,
        "maximum": 9,
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
                "name": "value",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response)


class Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetOutputRegisterInt_Request field.
    @details Canonical extent 6..6 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("address", "timeout_ms")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetOutputRegisterInt_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4607112e6d1de21f44ba61b1af7d51446414259a2ef365abdd37d4ff3bdff7f6",
        "minimum": 6,
        "maximum": 6,
        "semantics": "",
        "fields": [
            {
                "name": "address",
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
                "name": "timeout_ms",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request)


class Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetOutputRegisterInt_Response field.
    @details Canonical extent 5..5 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success", "value")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetOutputRegisterInt_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4d2643dccba189da62bfaf4103f670af774170b1c18e28a2ae112312df6ad691",
        "minimum": 5,
        "maximum": 5,
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
                "name": "value",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response)


class Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetRobotLinkInfo_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetRobotLinkInfo_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_50bc4a4885829a821fa2a5bd1ad8b223f7b595344448fbdbb2fddf5ee75e17e1",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request)


class Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetRobotLinkInfo_Response field.
    @details Canonical extent 129..129 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("d", "a", "alpha", "theta", "offset", "gradient", "rotation", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetRobotLinkInfo_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_aaf1a964ea2e5d6a049a074bd4b01538ef0b43b234da9de6b034a67524087641",
        "minimum": 129,
        "maximum": 129,
        "semantics": "",
        "fields": [
            {
                "name": "d",
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
            {
                "name": "a",
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
            {
                "name": "alpha",
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
            {
                "name": "theta",
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
            {
                "name": "offset",
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
            {
                "name": "gradient",
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
                "name": "rotation",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response)


class Ros2Dsr_msgs2SrvGetRobotMode_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetRobotMode_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetRobotMode_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_945dc18b9de1cec15d388179c6a4abf95a653770164dcac30828f15912ea0136",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetRobotMode_Request)


class Ros2Dsr_msgs2SrvGetRobotMode_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetRobotMode_Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("robot_mode", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetRobotMode_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_91dc6499a4e962f46b46fea554ae304a47ecb4095b47c6d480c866059850aa26",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "robot_mode",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetRobotMode_Response)


class Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetRobotSpeedMode_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetRobotSpeedMode_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1b6760ed64ce308e6189122e754bab03208f5e19a6e4704acf21952abdf37e7e",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request)


class Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetRobotSpeedMode_Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("speed_mode", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetRobotSpeedMode_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6eff9e2138055e3845f351abdba3189c47452903dadeaf6760f781a071543947",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "speed_mode",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response)


class Ros2Dsr_msgs2SrvGetRobotState_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetRobotState_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetRobotState_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_b4e5f89f15b92b48be3a1282f4002b7abafeb141658eac1c0b804c9232062b50",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetRobotState_Request)


class Ros2Dsr_msgs2SrvGetRobotState_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetRobotState_Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("robot_state", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetRobotState_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d5bf5bb656a0ac4a621e7e50f40b6fb41ae89cbb4d5b04bc1275815bbb0ab257",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "robot_state",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetRobotState_Response)


class Ros2Dsr_msgs2SrvGetRobotSystem_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetRobotSystem_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetRobotSystem_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6d6d5428b67062be616f12385ede2568624ac78d83a1b6e430763dc2f0710829",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetRobotSystem_Request)


class Ros2Dsr_msgs2SrvGetRobotSystem_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetRobotSystem_Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("robot_system", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetRobotSystem_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_faf6022901539dd3edd6b53d4a0c6d3eea0a210f2c795bf46a67e0243a0d8dd0",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "robot_system",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetRobotSystem_Response)


class Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetRtControlInputDataList_Request field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("version",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetRtControlInputDataList_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_016df21af56e6e0e76c5f9f24c851caee712b5af235bda04adde82eef33f6a60",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "version",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request)


class Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetRtControlInputDataList_Response field.
    @details Canonical extent 5..261 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success", "data")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetRtControlInputDataList_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_dad3b9ec5d048ea97669bd52fa94e60abd794f44150599c3b38179e7f3425831",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response)


class Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetRtControlInputVersionList_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetRtControlInputVersionList_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e25f15b810ebadb6eceb8e90bd8aedc9f47b177f5ccd16a6d824cac69e612a96",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request)


class Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetRtControlInputVersionList_Response field.
    @details Canonical extent 5..261 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success", "version")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetRtControlInputVersionList_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_39f873a075b2571286ea652cbbc47696b8636138362ba898ce1f06c8fa0a368b",
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
                "name": "version",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response)


class Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetRtControlOutputDataList_Request field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("version",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetRtControlOutputDataList_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_b7d3952dd7afa1da9b2a17959d25d20c570eb6195eab0fa4f181fd087555869c",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "version",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request)


class Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetRtControlOutputDataList_Response field.
    @details Canonical extent 5..261 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success", "data")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetRtControlOutputDataList_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a8663675cd68ff265c06580f16d46a9adaf36be969639c9df85110183eb7a14d",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response)


class Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetRtControlOutputVersionList_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetRtControlOutputVersionList_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_401ad45a4fa41515c9aef3432ec08cb280885d54582e8c1c81f9f079352cb5e6",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request)


class Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetRtControlOutputVersionList_Response field.
    @details Canonical extent 5..261 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success", "version")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetRtControlOutputVersionList_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a87c62fbcee2779427d535be08b8b30ebeaecc4450ee18208def8c19fbdd42b8",
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
                "name": "version",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response)


class Ros2Dsr_msgs2SrvGetSolutionSpace_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetSolutionSpace_Request field.
    @details Canonical extent 48..48 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetSolutionSpace_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7893e38212d85c4a6f9937711ca0209c069691b09616e08462b60253a0c75ef3",
        "minimum": 48,
        "maximum": 48,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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
            }
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetSolutionSpace_Request)


class Ros2Dsr_msgs2SrvGetSolutionSpace_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetSolutionSpace_Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("sol_space", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetSolutionSpace_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_b112e71516effa144d0c8857a21a18fa0355208ea4980f8b941190c070c0243a",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "sol_space",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetSolutionSpace_Response)


class Ros2Dsr_msgs2SrvGetToolDigitalInput_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetToolDigitalInput_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("index",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetToolDigitalInput_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_13280849feec7050bd6edcf5a966a42315524727ff31694af91fa240a9224603",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "index",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetToolDigitalInput_Request)


class Ros2Dsr_msgs2SrvGetToolDigitalInput_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetToolDigitalInput_Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("value", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetToolDigitalInput_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_109edb5c9f363f7ca1558958cde4c402e30ba4875d2845db5ae1f5c2b2c5356e",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "value",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetToolDigitalInput_Response)


class Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetToolDigitalOutput_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("index",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetToolDigitalOutput_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_62cc891eb1bc8b7657996a2a9c5ff11a20a53bb1d38c83080936d0ec0a41c641",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "index",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request)


class Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetToolDigitalOutput_Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("value", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetToolDigitalOutput_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7178715d835fca1f2f77ffed810b4f85ecd661168704df869a9ce4dffeb9c1a8",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "value",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response)


class Ros2Dsr_msgs2SrvGetToolForce_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetToolForce_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("ref",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetToolForce_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_278119e0f7e346752ee4ccc233b133a9700cf8d2e2454c72c876cf4415dccd30",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "ref",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetToolForce_Request)


class Ros2Dsr_msgs2SrvGetToolForce_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetToolForce_Response field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("tool_force", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetToolForce_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d8bb3201f41aa221981e773657e8fa4d02b37a0d9d7f6da557aa6027ffeec41e",
        "minimum": 49,
        "maximum": 49,
        "semantics": "",
        "fields": [
            {
                "name": "tool_force",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetToolForce_Response)


class Ros2Dsr_msgs2SrvGetUserCartCoord_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetUserCartCoord_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("id",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetUserCartCoord_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ab137f363d6067680f0f9e60e436eb9c104c2aa1d3b0f2b4db423303944fea9b",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "id",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetUserCartCoord_Request)


class Ros2Dsr_msgs2SrvGetUserCartCoord_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetUserCartCoord_Response field.
    @details Canonical extent 50..50 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("conv_posx", "ref", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetUserCartCoord_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_41c0a3cb26e9456c439813e957d3ea539dddf492f00c601c101cf86f0589d6e0",
        "minimum": 50,
        "maximum": 50,
        "semantics": "",
        "fields": [
            {
                "name": "conv_posx",
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
            {
                "name": "ref",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetUserCartCoord_Response)


class Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request(Record):
    """@brief Own every dsr_msgs2/srv/GetWorkpieceWeight_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetWorkpieceWeight_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e333d0d31ad7dd33a4eaf20b891e1c6a949e8518ca689b6aef5b14fbc050fde7",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request)


class Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response(Record):
    """@brief Own every dsr_msgs2/srv/GetWorkpieceWeight_Response field.
    @details Canonical extent 5..5 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("weight", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/GetWorkpieceWeight_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c7c33e15041c362b692a24f6462fd1838c92cb8a74410ab62eb0593290f2da15",
        "minimum": 5,
        "maximum": 5,
        "semantics": "",
        "fields": [
            {
                "name": "weight",
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


REGISTRY.add(Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response)


class Ros2Dsr_msgs2SrvIkin_Request(Record):
    """@brief Own every dsr_msgs2/srv/Ikin_Request field.
    @details Canonical extent 50..50 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "sol_space", "ref")
    SCHEMA = {
        "type": "dsr_msgs2/srv/Ikin_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a088cb4739b4e871d281ffd7ca30d2a6afcb7a2cd2ed536fe959ba3efc01a558",
        "minimum": 50,
        "maximum": 50,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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
            {
                "name": "sol_space",
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
                "name": "ref",
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


REGISTRY.add(Ros2Dsr_msgs2SrvIkin_Request)


class Ros2Dsr_msgs2SrvIkin_Response(Record):
    """@brief Own every dsr_msgs2/srv/Ikin_Response field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("conv_posj", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/Ikin_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_fec5d910aaa9200c82c11887901062077572ce9d23f9e69114cbf395e469be6f",
        "minimum": 49,
        "maximum": 49,
        "semantics": "",
        "fields": [
            {
                "name": "conv_posj",
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


REGISTRY.add(Ros2Dsr_msgs2SrvIkin_Response)


class Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request(Record):
    """@brief Own every dsr_msgs2/srv/IsDoneBoltTightening_Request field.
    @details Canonical extent 17..17 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("m", "timeout", "axis")
    SCHEMA = {
        "type": "dsr_msgs2/srv/IsDoneBoltTightening_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_021ebebd272f07623b139347486e9577a92febeec9ba2822ea42be99379365dc",
        "minimum": 17,
        "maximum": 17,
        "semantics": "",
        "fields": [
            {
                "name": "m",
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
                "name": "timeout",
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
                "name": "axis",
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


REGISTRY.add(Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request)


class Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response(Record):
    """@brief Own every dsr_msgs2/srv/IsDoneBoltTightening_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/IsDoneBoltTightening_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_facd1f150c53d2fa30991435796a03f28027ca54b1da367b259a3e9226c56d2d",
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


REGISTRY.add(Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response)


class Ros2Dsr_msgs2SrvJog_Request(Record):
    """@brief Own every dsr_msgs2/srv/Jog_Request field.
    @details Canonical extent 10..10 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("jog_axis", "move_reference", "speed")
    SCHEMA = {
        "type": "dsr_msgs2/srv/Jog_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c8c738720a1def086dcb2bf4364e43b0bbeadf0bd104760ca4ddd629ec9faa72",
        "minimum": 10,
        "maximum": 10,
        "semantics": "",
        "fields": [
            {
                "name": "jog_axis",
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
                "name": "move_reference",
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
                "name": "speed",
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


REGISTRY.add(Ros2Dsr_msgs2SrvJog_Request)


class Ros2Dsr_msgs2SrvJog_Response(Record):
    """@brief Own every dsr_msgs2/srv/Jog_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/Jog_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_feb4da140ea11a715abe3f3ee635bdc384cd12105c397c1fb0ce2cfdf631542c",
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


REGISTRY.add(Ros2Dsr_msgs2SrvJog_Response)


class Ros2Dsr_msgs2SrvJogMulti_Request(Record):
    """@brief Own every dsr_msgs2/srv/JogMulti_Request field.
    @details Canonical extent 57..57 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("jog_axis", "move_reference", "speed")
    SCHEMA = {
        "type": "dsr_msgs2/srv/JogMulti_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_df4ba03cc80e22e4f9e384c38cd1994750a8c875798dc4887019745a26ee2f29",
        "minimum": 57,
        "maximum": 57,
        "semantics": "",
        "fields": [
            {
                "name": "jog_axis",
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
            {
                "name": "move_reference",
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
                "name": "speed",
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


REGISTRY.add(Ros2Dsr_msgs2SrvJogMulti_Request)


class Ros2Dsr_msgs2SrvJogMulti_Response(Record):
    """@brief Own every dsr_msgs2/srv/JogMulti_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/JogMulti_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_9cf76f60dbb1d7330297d5bacad15e29810ef7088ae83c3ad82c561c4e277d1a",
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


REGISTRY.add(Ros2Dsr_msgs2SrvJogMulti_Response)


class Ros2Dsr_msgs2SrvMoveBlending_Request(Record):
    """@brief Own every dsr_msgs2/srv/MoveBlending_Request field.
    @details Canonical extent 48..2256 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("segment", "pos_cnt", "vel", "acc", "time", "ref", "mode", "sync_type")
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveBlending_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_74b4ab52745fa3028c9154c373850897fac7ecdaf986822e5dc2698580de1f20",
        "minimum": 48,
        "maximum": 2256,
        "semantics": "",
        "fields": [
            {
                "name": "segment",
                "type": "std_msgs/msg/Float64MultiArray",
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
                "name": "pos_cnt",
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
                "name": "vel",
                "type": "float64",
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
            {
                "name": "acc",
                "type": "float64",
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
                "name": "ref",
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
            },
            {
                "name": "sync_type",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMoveBlending_Request)


class Ros2Dsr_msgs2SrvMoveBlending_Response(Record):
    """@brief Own every dsr_msgs2/srv/MoveBlending_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveBlending_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_2c09a8f39ab887063b890f935bc4319f4c0566fc2ccb5f612e696728a2ea3805",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMoveBlending_Response)


class Ros2Dsr_msgs2SrvMoveCircle_Request(Record):
    """@brief Own every dsr_msgs2/srv/MoveCircle_Request field.
    @details Canonical extent 72..2280 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = (
        "pos",
        "vel",
        "acc",
        "time",
        "radius",
        "ref",
        "mode",
        "angle1",
        "angle2",
        "blend_type",
        "sync_type",
    )
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveCircle_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_27ebd12c2a2c30f8e20b505923344b00f2d2ad097e04ee533093144dbc58a09e",
        "minimum": 72,
        "maximum": 2280,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
                "type": "std_msgs/msg/Float64MultiArray",
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
                "name": "vel",
                "type": "float64",
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
            {
                "name": "acc",
                "type": "float64",
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
                "name": "radius",
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
                "name": "ref",
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
            },
            {
                "name": "angle1",
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
                "name": "angle2",
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
                "name": "blend_type",
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
                "name": "sync_type",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMoveCircle_Request)


class Ros2Dsr_msgs2SrvMoveCircle_Response(Record):
    """@brief Own every dsr_msgs2/srv/MoveCircle_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveCircle_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4df4f4552161320d2b939e096b5ff54c102c668cab1efa1e59a8f12757ebe307",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMoveCircle_Response)


class Ros2Dsr_msgs2SrvMoveHome_Request(Record):
    """@brief Own every dsr_msgs2/srv/MoveHome_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("target",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveHome_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_9f36ef8e03e895db2b8c588ad52dcc370ce37532974879c3280da68202643a67",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "target",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMoveHome_Request)


class Ros2Dsr_msgs2SrvMoveHome_Response(Record):
    """@brief Own every dsr_msgs2/srv/MoveHome_Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("res", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveHome_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d28c2d8d4dc2c97fbab5e531b235830d68fc46754fd7921993e05c8d33df0edf",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "res",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMoveHome_Response)


class Ros2Dsr_msgs2SrvMoveJoint_Request(Record):
    """@brief Own every dsr_msgs2/srv/MoveJoint_Request field.
    @details Canonical extent 83..83 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "vel", "acc", "time", "radius", "mode", "blend_type", "sync_type")
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveJoint_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_80e0a74b2781d091fc847f5f2d4a0a56bdd974e62f9a80cc7382118f5d6e4952",
        "minimum": 83,
        "maximum": 83,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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
            {
                "name": "vel",
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
                "name": "acc",
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
                "name": "radius",
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
            },
            {
                "name": "blend_type",
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
                "name": "sync_type",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMoveJoint_Request)


class Ros2Dsr_msgs2SrvMoveJoint_Response(Record):
    """@brief Own every dsr_msgs2/srv/MoveJoint_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveJoint_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_57c54f467487b7b7f0966a484e6777b4cb48fedd5790ec8f0e3c88979ce4c238",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMoveJoint_Response)


class Ros2Dsr_msgs2SrvMoveJointx_Request(Record):
    """@brief Own every dsr_msgs2/srv/MoveJointx_Request field.
    @details Canonical extent 85..85 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "vel", "acc", "time", "radius", "ref", "mode", "blend_type", "sol", "sync_type")
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveJointx_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c63a6822f6b03a2380d740995b12b4889e38d46a48fa8f74a85c2eccde1712be",
        "minimum": 85,
        "maximum": 85,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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
            {
                "name": "vel",
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
                "name": "acc",
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
                "name": "radius",
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
                "name": "ref",
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
            },
            {
                "name": "blend_type",
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
                "name": "sol",
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
                "name": "sync_type",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMoveJointx_Request)


class Ros2Dsr_msgs2SrvMoveJointx_Response(Record):
    """@brief Own every dsr_msgs2/srv/MoveJointx_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveJointx_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4b04129715b754766e2971a38b170681e1055cc121bf56d7b542594ac9986d0a",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMoveJointx_Response)


class Ros2Dsr_msgs2SrvMoveLine_Request(Record):
    """@brief Own every dsr_msgs2/srv/MoveLine_Request field.
    @details Canonical extent 100..100 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "vel", "acc", "time", "radius", "ref", "mode", "blend_type", "sync_type")
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveLine_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_104cb9b617f4f5f9596aa648cd5d1cd55bad832e0709e46c2e19be17d94f384a",
        "minimum": 100,
        "maximum": 100,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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
            {
                "name": "vel",
                "type": "float64",
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
            {
                "name": "acc",
                "type": "float64",
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
                "name": "radius",
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
                "name": "ref",
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
            },
            {
                "name": "blend_type",
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
                "name": "sync_type",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMoveLine_Request)


class Ros2Dsr_msgs2SrvMoveLine_Response(Record):
    """@brief Own every dsr_msgs2/srv/MoveLine_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveLine_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6c0632d3a0aa1476b0cfc9adeb8eb5ef5e3b718eccdbb3f24d942315bd287ef6",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMoveLine_Response)


class Ros2Dsr_msgs2SrvMovePause_Request(Record):
    """@brief Own every dsr_msgs2/srv/MovePause_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/MovePause_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_89602d9445236b0796a0628a3eecd1d57cd298135759330f7c1927d451beac80",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvMovePause_Request)


class Ros2Dsr_msgs2SrvMovePause_Response(Record):
    """@brief Own every dsr_msgs2/srv/MovePause_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/MovePause_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_9d8e0eabfff65e2d80132a9586cffd61f9989e2b39842cc3af2f7b77b01a0dd2",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMovePause_Response)


class Ros2Dsr_msgs2SrvMovePeriodic_Request(Record):
    """@brief Own every dsr_msgs2/srv/MovePeriodic_Request field.
    @details Canonical extent 107..107 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("amp", "periodic", "acc", "repeat", "ref", "sync_type")
    SCHEMA = {
        "type": "dsr_msgs2/srv/MovePeriodic_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f05e9629ebcf086ef97e02f28c9b97f4604d53e15b348e76556dc9eef7791f41",
        "minimum": 107,
        "maximum": 107,
        "semantics": "",
        "fields": [
            {
                "name": "amp",
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
            {
                "name": "periodic",
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
            {
                "name": "acc",
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
                "name": "repeat",
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
                "name": "ref",
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
                "name": "sync_type",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMovePeriodic_Request)


class Ros2Dsr_msgs2SrvMovePeriodic_Response(Record):
    """@brief Own every dsr_msgs2/srv/MovePeriodic_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/MovePeriodic_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_99a58c09b66846d82e1e50451c7663fc2f8bfb6564181a737c37a0296a8bf022",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMovePeriodic_Response)


class Ros2Dsr_msgs2SrvMoveResume_Request(Record):
    """@brief Own every dsr_msgs2/srv/MoveResume_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveResume_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7cb93befc32b7fb62279f8be0e6aa9f0075274375304afa5a438dea13588879e",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvMoveResume_Request)


class Ros2Dsr_msgs2SrvMoveResume_Response(Record):
    """@brief Own every dsr_msgs2/srv/MoveResume_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveResume_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1b8d38ecbb26dc9311cd7dbc35e397eabae2f8fc308f7f3ada8afaeee15ec956",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMoveResume_Response)


class Ros2Dsr_msgs2SrvMoveSpiral_Request(Record):
    """@brief Own every dsr_msgs2/srv/MoveSpiral_Request field.
    @details Canonical extent 94..94 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = (
        "revolution",
        "max_radius",
        "max_length",
        "target_pos",
        "vel",
        "acc",
        "time",
        "task_axis",
        "ref",
        "mode",
        "spiral_dir",
        "rot_dir",
        "sync_type",
    )
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveSpiral_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4720da9e9607f7a2df71d51cbc568ca08e85f9cf8b335f5ed3128844b3ab66a1",
        "minimum": 94,
        "maximum": 94,
        "semantics": "",
        "fields": [
            {
                "name": "revolution",
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
                "name": "max_radius",
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
                "name": "max_length",
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
                "name": "target_pos",
                "type": "float64",
                "array": "array",
                "count": 3,
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
                "name": "vel",
                "type": "float64",
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
            {
                "name": "acc",
                "type": "float64",
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
                "name": "task_axis",
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
                "name": "ref",
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
            },
            {
                "name": "spiral_dir",
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
                "name": "rot_dir",
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
                "name": "sync_type",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMoveSpiral_Request)


class Ros2Dsr_msgs2SrvMoveSpiral_Response(Record):
    """@brief Own every dsr_msgs2/srv/MoveSpiral_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveSpiral_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_8f8f8c5ebb9288d4414bd64ac2bbcaac7c459dd187c149a2424d2ca426dd51fc",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMoveSpiral_Response)


class Ros2Dsr_msgs2SrvMoveSplineJoint_Request(Record):
    """@brief Own every dsr_msgs2/srv/MoveSplineJoint_Request field.
    @details Canonical extent 111..2319 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "pos_cnt", "vel", "acc", "time", "mode", "sync_type")
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveSplineJoint_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_3e37f3aa8318b9dffd0d72754d6f8f6db4c6af7fed79a20cba019e6dd3535fe2",
        "minimum": 111,
        "maximum": 2319,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
                "type": "std_msgs/msg/Float64MultiArray",
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
                "name": "pos_cnt",
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
                "name": "vel",
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
            {
                "name": "acc",
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
            },
            {
                "name": "sync_type",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMoveSplineJoint_Request)


class Ros2Dsr_msgs2SrvMoveSplineJoint_Response(Record):
    """@brief Own every dsr_msgs2/srv/MoveSplineJoint_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveSplineJoint_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_90acb8d4656b1cd6c5be0eb0693e2718e1ad96d10cf8cbb53738a7efd2898444",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMoveSplineJoint_Response)


class Ros2Dsr_msgs2SrvMoveSplineTask_Request(Record):
    """@brief Own every dsr_msgs2/srv/MoveSplineTask_Request field.
    @details Canonical extent 49..2257 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "pos_cnt", "vel", "acc", "time", "ref", "mode", "opt", "sync_type")
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveSplineTask_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_9ec113186666b39b1c4a27b1a0f9e8c9a8d5e18e0d0d773103b37811d5c613ff",
        "minimum": 49,
        "maximum": 2257,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
                "type": "std_msgs/msg/Float64MultiArray",
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
                "name": "pos_cnt",
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
                "name": "vel",
                "type": "float64",
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
            {
                "name": "acc",
                "type": "float64",
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
                "name": "ref",
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
            },
            {
                "name": "opt",
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
                "name": "sync_type",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMoveSplineTask_Request)


class Ros2Dsr_msgs2SrvMoveSplineTask_Response(Record):
    """@brief Own every dsr_msgs2/srv/MoveSplineTask_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveSplineTask_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e1991eb0d0b76ea783f3a410df208c432b09dd0bb5dc595c9aad74e5da147fb5",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMoveSplineTask_Response)


class Ros2Dsr_msgs2SrvMoveStop_Request(Record):
    """@brief Own every dsr_msgs2/srv/MoveStop_Request field.
    @details Canonical extent 4..4 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("stop_mode",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveStop_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_51bb66de3739f7fc873f36d78fc6b3fe70f28e788f4b5b4359768491074d1efd",
        "minimum": 4,
        "maximum": 4,
        "semantics": "",
        "fields": [
            {
                "name": "stop_mode",
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
            }
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvMoveStop_Request)


class Ros2Dsr_msgs2SrvMoveStop_Response(Record):
    """@brief Own every dsr_msgs2/srv/MoveStop_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveStop_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ce670f48f010badbcafa3e96d05af25a02a018b41e75544a6d183fe89ceafbeb",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMoveStop_Response)


class Ros2Dsr_msgs2SrvMoveWait_Request(Record):
    """@brief Own every dsr_msgs2/srv/MoveWait_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveWait_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7c0de129d63ef3142044c481392ba437362245e6643ba1bd0f87f90b9b377d61",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvMoveWait_Request)


class Ros2Dsr_msgs2SrvMoveWait_Response(Record):
    """@brief Own every dsr_msgs2/srv/MoveWait_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/MoveWait_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1e235c22c0e493e309e8f53be1043ce1b425c52910358c7b34496c1291d61486",
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


REGISTRY.add(Ros2Dsr_msgs2SrvMoveWait_Response)


class Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request(Record):
    """@brief Own every dsr_msgs2/srv/OverwriteUserCartCoord_Request field.
    @details Canonical extent 50..50 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("id", "pos", "ref")
    SCHEMA = {
        "type": "dsr_msgs2/srv/OverwriteUserCartCoord_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_772207f58ed8dc8dbef23f5ab3161a4289f378eed9ae9b960e15e380c5efcb8d",
        "minimum": 50,
        "maximum": 50,
        "semantics": "",
        "fields": [
            {
                "name": "id",
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
                "name": "pos",
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
            {
                "name": "ref",
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


REGISTRY.add(Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request)


class Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response(Record):
    """@brief Own every dsr_msgs2/srv/OverwriteUserCartCoord_Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("id", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/OverwriteUserCartCoord_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_93cc941737dc373f7b97a044a9b675cf220a511bbbde19b6d98fb9ac8f33dc05",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "id",
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


REGISTRY.add(Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response)


class Ros2Dsr_msgs2SrvParallelAxis1_Request(Record):
    """@brief Own every dsr_msgs2/srv/ParallelAxis1_Request field.
    @details Canonical extent 146..146 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("x1", "x2", "x3", "axis", "ref")
    SCHEMA = {
        "type": "dsr_msgs2/srv/ParallelAxis1_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_97ed9f4649879d56a9bdabbb2040b1779be4ac7156292b27f6ca04a82290e1fd",
        "minimum": 146,
        "maximum": 146,
        "semantics": "",
        "fields": [
            {
                "name": "x1",
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
            {
                "name": "x2",
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
            {
                "name": "x3",
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
            {
                "name": "axis",
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
                "name": "ref",
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


REGISTRY.add(Ros2Dsr_msgs2SrvParallelAxis1_Request)


class Ros2Dsr_msgs2SrvParallelAxis1_Response(Record):
    """@brief Own every dsr_msgs2/srv/ParallelAxis1_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ParallelAxis1_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f748471d4492dbd0db21a6417a12eedbbc1d23920abe712af5ac3099a1b4a37c",
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


REGISTRY.add(Ros2Dsr_msgs2SrvParallelAxis1_Response)


class Ros2Dsr_msgs2SrvParallelAxis2_Request(Record):
    """@brief Own every dsr_msgs2/srv/ParallelAxis2_Request field.
    @details Canonical extent 26..26 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("vect", "axis", "ref")
    SCHEMA = {
        "type": "dsr_msgs2/srv/ParallelAxis2_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_742f664642630b1c2fa965d9ff442791edc7c1aa90c9238fc370d1fb8baf1450",
        "minimum": 26,
        "maximum": 26,
        "semantics": "",
        "fields": [
            {
                "name": "vect",
                "type": "float64",
                "array": "array",
                "count": 3,
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
                "name": "axis",
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
                "name": "ref",
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


REGISTRY.add(Ros2Dsr_msgs2SrvParallelAxis2_Request)


class Ros2Dsr_msgs2SrvParallelAxis2_Response(Record):
    """@brief Own every dsr_msgs2/srv/ParallelAxis2_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ParallelAxis2_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7a2659d61e6a13d1f17986c311441ecc4bb72146978f209c976f218817fd146b",
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


REGISTRY.add(Ros2Dsr_msgs2SrvParallelAxis2_Response)


class Ros2Dsr_msgs2SrvReadDataRt_Request(Record):
    """@brief Own every dsr_msgs2/srv/ReadDataRt_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/ReadDataRt_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_9c21179a2561779bfcd2e6bc011ab9eb183517cc93de8dc6349f016bc7f3a418",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvReadDataRt_Request)


class Ros2Dsr_msgs2SrvReadDataRt_Response(Record):
    """@brief Own every dsr_msgs2/srv/ReadDataRt_Response field.
    @details Canonical extent 1530..8154 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("data",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ReadDataRt_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4055ed8c5ea1414a21bb32aad8cd37a9d2317619840a7a5de1f563b512395093",
        "minimum": 1530,
        "maximum": 8154,
        "semantics": "",
        "fields": [
            {
                "name": "data",
                "type": "dsr_msgs2/msg/RobotStateRt",
                "array": "",
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


REGISTRY.add(Ros2Dsr_msgs2SrvReadDataRt_Response)


class Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request(Record):
    """@brief Own every dsr_msgs2/srv/ReleaseComplianceCtrl_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/ReleaseComplianceCtrl_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1b3e5187b8a5753f0703abb97a653bcbcd62f19dc912f0a70dd1cf3d0fab59df",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request)


class Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response(Record):
    """@brief Own every dsr_msgs2/srv/ReleaseComplianceCtrl_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ReleaseComplianceCtrl_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d63a68f67aa608599d4a33a7081d157eafcf52928388b0bfb1dd5faf51a4fa40",
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


REGISTRY.add(Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response)


class Ros2Dsr_msgs2SrvReleaseForce_Request(Record):
    """@brief Own every dsr_msgs2/srv/ReleaseForce_Request field.
    @details Canonical extent 8..8 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("time",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ReleaseForce_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_5346f6a634c61acc8d296e83cf96e007fe369765d291698063d80c5fa2e18a91",
        "minimum": 8,
        "maximum": 8,
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
            }
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvReleaseForce_Request)


class Ros2Dsr_msgs2SrvReleaseForce_Response(Record):
    """@brief Own every dsr_msgs2/srv/ReleaseForce_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ReleaseForce_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4d74f7c2ca2f7b97f8222bc31ccef0450c045b2424efa6f9d6d550c6a824149c",
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


REGISTRY.add(Ros2Dsr_msgs2SrvReleaseForce_Response)


class Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request(Record):
    """@brief Own every dsr_msgs2/srv/ResetWorkpieceWeight_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/ResetWorkpieceWeight_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_53ac7a846a49f8200358455dbbe63580e90309b3c3166ad48ed87ea33c364179",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request)


class Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response(Record):
    """@brief Own every dsr_msgs2/srv/ResetWorkpieceWeight_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ResetWorkpieceWeight_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_29d28e032dffe750b93e8207660af315687f3c2241a8a53f29fa7da7570b4abd",
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


REGISTRY.add(Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response)


class Ros2Dsr_msgs2SrvRobotiq2FClose_Request(Record):
    """@brief Own every dsr_msgs2/srv/Robotiq2FClose_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/Robotiq2FClose_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1bb8c6794458b545e6a117418c52ede9ba301787dcc80c346cdbeadb7072d974",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvRobotiq2FClose_Request)


class Ros2Dsr_msgs2SrvRobotiq2FClose_Response(Record):
    """@brief Own every dsr_msgs2/srv/Robotiq2FClose_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/Robotiq2FClose_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_93b3a91aedebf08ae74a53857c898ddda0493662d02df100bde32652042f593e",
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


REGISTRY.add(Ros2Dsr_msgs2SrvRobotiq2FClose_Response)


class Ros2Dsr_msgs2SrvRobotiq2FMove_Request(Record):
    """@brief Own every dsr_msgs2/srv/Robotiq2FMove_Request field.
    @details Canonical extent 8..8 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("width",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/Robotiq2FMove_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d9125f3ed3a008a9796249b2759ff3e1fb9b8cc206ae89165fd20f382e0407f2",
        "minimum": 8,
        "maximum": 8,
        "semantics": "",
        "fields": [
            {
                "name": "width",
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


REGISTRY.add(Ros2Dsr_msgs2SrvRobotiq2FMove_Request)


class Ros2Dsr_msgs2SrvRobotiq2FMove_Response(Record):
    """@brief Own every dsr_msgs2/srv/Robotiq2FMove_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/Robotiq2FMove_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c7365e9517f2da81712616281451882cfedbe5cd0c771fbc93d3d155598fa41d",
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


REGISTRY.add(Ros2Dsr_msgs2SrvRobotiq2FMove_Response)


class Ros2Dsr_msgs2SrvRobotiq2FOpen_Request(Record):
    """@brief Own every dsr_msgs2/srv/Robotiq2FOpen_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/Robotiq2FOpen_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0d94a65ab5ad917af12e961dfddc1c3d722d0f9bf703a20f7c4e1b86d646889a",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvRobotiq2FOpen_Request)


class Ros2Dsr_msgs2SrvRobotiq2FOpen_Response(Record):
    """@brief Own every dsr_msgs2/srv/Robotiq2FOpen_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/Robotiq2FOpen_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0d7392466b804afe346333e6eab855aa2ac2d66c96ab417e7d96ec6917ec4f2c",
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


REGISTRY.add(Ros2Dsr_msgs2SrvRobotiq2FOpen_Response)


class Ros2Dsr_msgs2SrvSerialSendData_Request(Record):
    """@brief Own every dsr_msgs2/srv/SerialSendData_Request field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("data",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SerialSendData_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6a1da84ea13b36d9722b9c7779baa295bf13ee1e85266226659f5f077fb67ce8",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
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
            }
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvSerialSendData_Request)


class Ros2Dsr_msgs2SrvSerialSendData_Response(Record):
    """@brief Own every dsr_msgs2/srv/SerialSendData_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SerialSendData_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a28dd2160987b004eb5ee91cc2e0e6a3fbdb54777e33df0044131811da1ac278",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSerialSendData_Response)


class Ros2Dsr_msgs2SrvServoOff_Request(Record):
    """@brief Own every dsr_msgs2/srv/ServoOff_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("stop_type",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ServoOff_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f7445b77379d9197bd64162af81c79f19b8eccfd65bb35a1c7ec1c6c90b0956c",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "stop_type",
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
    STOP_TYPE_QUICK_STO = 0
    # @brief Exact original native constant; not a wire field.
    STOP_TYPE_QUICK = 1
    # @brief Exact original native constant; not a wire field.
    STOP_TYPE_SLOW = 2
    # @brief Exact original native constant; not a wire field.
    STOP_TYPE_HOLD = 3
    # @brief Exact original native constant; not a wire field.
    STOP_TYPE_EMERGENCY = 3


REGISTRY.add(Ros2Dsr_msgs2SrvServoOff_Request)


class Ros2Dsr_msgs2SrvServoOff_Response(Record):
    """@brief Own every dsr_msgs2/srv/ServoOff_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/ServoOff_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_da341e498342ad932e3f5f9a037252ccd53402609abfaf5a20e0b2f452ac74db",
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


REGISTRY.add(Ros2Dsr_msgs2SrvServoOff_Response)


class Ros2Dsr_msgs2SrvSetAccjRt_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetAccjRt_Request field.
    @details Canonical extent 48..48 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("acc",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetAccjRt_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_73ff05ee72605c8e3bec72ea56f962475a50db8afed07ca299a1b47e5a16f66f",
        "minimum": 48,
        "maximum": 48,
        "semantics": "",
        "fields": [
            {
                "name": "acc",
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
            }
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvSetAccjRt_Request)


class Ros2Dsr_msgs2SrvSetAccjRt_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetAccjRt_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetAccjRt_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a25cd5180e9812a012ce3337665b7a20a97e13ad99c9ca8accdcbbd644eb539c",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetAccjRt_Response)


class Ros2Dsr_msgs2SrvSetAccxRt_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetAccxRt_Request field.
    @details Canonical extent 16..16 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("trans", "rotation")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetAccxRt_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_55addee739e16839a0bedd135930ea3b9e1a09f80776346f7c71c1d4e64e5111",
        "minimum": 16,
        "maximum": 16,
        "semantics": "",
        "fields": [
            {
                "name": "trans",
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
                "name": "rotation",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetAccxRt_Request)


class Ros2Dsr_msgs2SrvSetAccxRt_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetAccxRt_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetAccxRt_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1277c73c96a872595079bdb1fbff9b99b4f2f7f62ad50339d7402a864610434c",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetAccxRt_Response)


class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetCtrlBoxAnalogInputType_Request field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("channel", "mode")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetCtrlBoxAnalogInputType_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_56cd6d0829be3eac45dfd15bd9693f53b72705481bb905c16dc0ab19843fc7d0",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "channel",
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
            },
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request)


class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetCtrlBoxAnalogInputType_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetCtrlBoxAnalogInputType_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_dcbd1b140dca6119d2be2b2eea11efc394969f0bf16926c5758bd384e764eaf0",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response)


class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetCtrlBoxAnalogOutput_Request field.
    @details Canonical extent 9..9 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("channel", "value")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetCtrlBoxAnalogOutput_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6da2558f6e5259eaf4573144414fd8e6a917a9a43d11b7a0036187158e97f34a",
        "minimum": 9,
        "maximum": 9,
        "semantics": "",
        "fields": [
            {
                "name": "channel",
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
                "name": "value",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request)


class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetCtrlBoxAnalogOutput_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetCtrlBoxAnalogOutput_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_258f0495c9eeacec7cf7221018fab5a99939f153c6a5cddb6f653ca71859e1e1",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response)


class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetCtrlBoxAnalogOutputType_Request field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("channel", "mode")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetCtrlBoxAnalogOutputType_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ee2b262d71056945ef50cd2cfd645f63220c63071ed28531e79740539b0b15f9",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "channel",
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
            },
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request)


class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetCtrlBoxAnalogOutputType_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetCtrlBoxAnalogOutputType_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_47900b504bce4fd7546759c836a78d02e873630ecc79cfa989e3473a9f490359",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response)


class Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetCtrlBoxDigitalOutput_Request field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("index", "value")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetCtrlBoxDigitalOutput_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ce45009eaf9382aa3bccc48526aa9e5a040847ad08deb9a37d574dd69a34258d",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "index",
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
                "name": "value",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request)


class Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetCtrlBoxDigitalOutput_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetCtrlBoxDigitalOutput_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_fd9da818a998c786665a6849417511722de21391c4aaa92422eb7db061bb9330",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response)


class Ros2Dsr_msgs2SrvSetCurrentTcp_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetCurrentTcp_Request field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetCurrentTcp_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1b9f1bd57a2dd82cc52ec59acc9967aea8948613ec68dd26e0a9a9897088d002",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "name",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetCurrentTcp_Request)


class Ros2Dsr_msgs2SrvSetCurrentTcp_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetCurrentTcp_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetCurrentTcp_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_9c66924cfd4931bae242c3d11dd0a9293b337defc82501719b179b622d9f342a",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetCurrentTcp_Response)


class Ros2Dsr_msgs2SrvSetCurrentTool_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetCurrentTool_Request field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetCurrentTool_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_8d1254ad637afaeca980e00cb89c1a3219cea13e93a0c83641fcf3f7c8afd440",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "name",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetCurrentTool_Request)


class Ros2Dsr_msgs2SrvSetCurrentTool_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetCurrentTool_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetCurrentTool_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_964448078ed08bb742a8077370c02f6b88d702244df67e4eb7d67828abfae932",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetCurrentTool_Response)


class Ros2Dsr_msgs2SrvSetDesiredForce_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetDesiredForce_Request field.
    @details Canonical extent 64..64 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("fd", "dir", "ref", "time", "mod")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetDesiredForce_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a49831bf62f8a697addd5be7521f861a307940be45d4a59d9777580801ba4b1a",
        "minimum": 64,
        "maximum": 64,
        "semantics": "",
        "fields": [
            {
                "name": "fd",
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
            {
                "name": "dir",
                "type": "int8",
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
                "name": "ref",
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
                "name": "mod",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetDesiredForce_Request)


class Ros2Dsr_msgs2SrvSetDesiredForce_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetDesiredForce_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetDesiredForce_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_53ba3b5b57cca8d039ad6c148c20f0cff1e6c93ba4fe170bc7ccc5d0d3c056f9",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetDesiredForce_Response)


class Ros2Dsr_msgs2SrvSetModbusOutput_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetModbusOutput_Request field.
    @details Canonical extent 8..264 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name", "value")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetModbusOutput_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0653027d5adf9f01bda734d110232c55849f4b19ddaee78dd20b4aecf79096aa",
        "minimum": 8,
        "maximum": 264,
        "semantics": "",
        "fields": [
            {
                "name": "name",
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
                "name": "value",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetModbusOutput_Request)


class Ros2Dsr_msgs2SrvSetModbusOutput_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetModbusOutput_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetModbusOutput_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_8a8f0f0da4dc7a3235882cc2aef013d1722f17020535a4ddad5dceec5c533262",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetModbusOutput_Response)


class Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetOutputRegisterBit_Request field.
    @details Canonical extent 6..6 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("address", "value")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetOutputRegisterBit_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_309eebb54f359760a9c52635c1989d966c7b3998e34444dfccc4023ed43c1f88",
        "minimum": 6,
        "maximum": 6,
        "semantics": "",
        "fields": [
            {
                "name": "address",
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
                "name": "value",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request)


class Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetOutputRegisterBit_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetOutputRegisterBit_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_3358f20e8d47bdafe4406208878d8c28c320f9e53844eaacfaadfb1255f8a6e8",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response)


class Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetOutputRegisterFloat_Request field.
    @details Canonical extent 10..10 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("address", "value")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetOutputRegisterFloat_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7f0c5c355381aa45700641c3ba99b227fe6bbb5394f1e2cb01c4f2b899918c61",
        "minimum": 10,
        "maximum": 10,
        "semantics": "",
        "fields": [
            {
                "name": "address",
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
                "name": "value",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request)


class Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetOutputRegisterFloat_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetOutputRegisterFloat_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_9c3d3799cc5622c88b54926353e730bf362a75c4a23e95c9543820d489f1b27f",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response)


class Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetOutputRegisterInt_Request field.
    @details Canonical extent 6..6 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("address", "value")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetOutputRegisterInt_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1d250e3cfd00550fc55b69ac120c384e90573636d7a2adc8a5e8b122ec678364",
        "minimum": 6,
        "maximum": 6,
        "semantics": "",
        "fields": [
            {
                "name": "address",
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
                "name": "value",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request)


class Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetOutputRegisterInt_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetOutputRegisterInt_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ec70602507eebbdca44703e487375d482510aaa684aa2dd93a5bdcd0ba8275f7",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response)


class Ros2Dsr_msgs2SrvSetRefCoord_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetRefCoord_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("coord",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetRefCoord_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_801f3fdd878bd7661db70ef37a8146e9c02f539c65d91a60a7589a1009bc9be5",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "coord",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetRefCoord_Request)


class Ros2Dsr_msgs2SrvSetRefCoord_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetRefCoord_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetRefCoord_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_733bfb338aa280d2475a6398264e26cf76e873c92e20e9e8496898c38f990bae",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetRefCoord_Response)


class Ros2Dsr_msgs2SrvSetRobotControl_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetRobotControl_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("robot_control",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetRobotControl_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d39305d9d913933542cc89eba2c9b5abd68e25574c9f8096ad4bb16cebb2c97f",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "robot_control",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetRobotControl_Request)


class Ros2Dsr_msgs2SrvSetRobotControl_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetRobotControl_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetRobotControl_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e4aad49231edc73256306d46bd537ffb24d61956146265a7f04d1eb1aafc684c",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetRobotControl_Response)


class Ros2Dsr_msgs2SrvSetRobotMode_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetRobotMode_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("robot_mode",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetRobotMode_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_59506bb1284a069b41db932d11fcef986befe63b2d365b16ff6a09d1d4227a9b",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "robot_mode",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetRobotMode_Request)


class Ros2Dsr_msgs2SrvSetRobotMode_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetRobotMode_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetRobotMode_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f1d0dad948e4a24471c406e08b79640f3846f0d96aaf63d84763066b54963dee",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetRobotMode_Response)


class Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetRobotSpeedMode_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("speed_mode",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetRobotSpeedMode_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_74f6d0c7e148619aa43ad375b529155bce79ff06295ca5612dee8b17c8f7399b",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "speed_mode",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request)


class Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetRobotSpeedMode_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetRobotSpeedMode_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f2b86ce2bbd498677537e77b069fda28c0c48c73d1d3b4a8b4f6d41460a2dde2",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response)


class Ros2Dsr_msgs2SrvSetRobotSystem_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetRobotSystem_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("robot_system",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetRobotSystem_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_2cbe8cfcd2fbe89acc3310ec43e904bdad6e246bbda7c7225357d9478e591030",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "robot_system",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetRobotSystem_Request)


class Ros2Dsr_msgs2SrvSetRobotSystem_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetRobotSystem_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetRobotSystem_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_93e95c1c768694abbfaa89bca4357085b9e6b67b031cedaf3ae064a0e5545872",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetRobotSystem_Response)


class Ros2Dsr_msgs2SrvSetRtControlInput_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetRtControlInput_Request field.
    @details Canonical extent 16..272 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("version", "period", "loss")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetRtControlInput_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_5d0d581d5874bb92ea5c67281c4414d4dcf2799ebeb13b12b60b58408b3854c7",
        "minimum": 16,
        "maximum": 272,
        "semantics": "",
        "fields": [
            {
                "name": "version",
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
                "name": "period",
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
                "name": "loss",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetRtControlInput_Request)


class Ros2Dsr_msgs2SrvSetRtControlInput_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetRtControlInput_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetRtControlInput_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d4a506d56199fac9bd3decbdadce3a728df404854dfceea3f1365e25a031c2a8",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetRtControlInput_Response)


class Ros2Dsr_msgs2SrvSetRtControlOutput_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetRtControlOutput_Request field.
    @details Canonical extent 16..272 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("version", "period", "loss")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetRtControlOutput_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_12dac5a038aa91a74240656b3d088e1fbee381de935a8b8aae7fb2a152bcaa47",
        "minimum": 16,
        "maximum": 272,
        "semantics": "",
        "fields": [
            {
                "name": "version",
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
                "name": "period",
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
                "name": "loss",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetRtControlOutput_Request)


class Ros2Dsr_msgs2SrvSetRtControlOutput_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetRtControlOutput_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetRtControlOutput_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_25049366402ac5e192f2190b80e4576126929d8375fd1efefdc50154f473305b",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetRtControlOutput_Response)


class Ros2Dsr_msgs2SrvSetSafeStopResetType_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetSafeStopResetType_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("reset_type",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetSafeStopResetType_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4ab1dff4c9864a2e66d6c4ebd64032504098ca191284d027bc8021668412e7f3",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "reset_type",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetSafeStopResetType_Request)


class Ros2Dsr_msgs2SrvSetSafeStopResetType_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetSafeStopResetType_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetSafeStopResetType_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d1b868c2e694688a6bad4d4a93ae4032a650a0f99ae3cffeac1bfed3336762ae",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetSafeStopResetType_Response)


class Ros2Dsr_msgs2SrvSetSafetyMode_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetSafetyMode_Request field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("safety_mode", "safety_event")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetSafetyMode_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ea5c506bc7bcd868d8547643b82f902a595954f7487216e57b47491998e80713",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "safety_mode",
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
                "name": "safety_event",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetSafetyMode_Request)


class Ros2Dsr_msgs2SrvSetSafetyMode_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetSafetyMode_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetSafetyMode_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d7ce2c604f4a7abeccbf4514a05fe8abbcbdddcc047f4838d0fcc792bb5414b6",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetSafetyMode_Response)


class Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetSingularHandlingForce_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("mode",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetSingularHandlingForce_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_785b7a837bf13aa7f6f7178818d470b970253761b389d2e5526a77090c765d17",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request)


class Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetSingularHandlingForce_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetSingularHandlingForce_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_5d0197a02dc22035522bdde1791a6e06ce31be284cb75d8d1edcbd97d382aa04",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response)


class Ros2Dsr_msgs2SrvSetSingularityHandling_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetSingularityHandling_Request field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("mode",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetSingularityHandling_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_714198c67734535e609af75c076ccc5eaef14996ab2f6dc41fac5da7af168f10",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetSingularityHandling_Request)


class Ros2Dsr_msgs2SrvSetSingularityHandling_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetSingularityHandling_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetSingularityHandling_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_2c1eb60c47dedf7a166dc51366a9748e21d2a64603591c9698a5c75bcfa0fd6b",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetSingularityHandling_Response)


class Ros2Dsr_msgs2SrvSetStiffnessx_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetStiffnessx_Request field.
    @details Canonical extent 57..57 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("stx", "ref", "time")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetStiffnessx_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e173ca626019669404706278ab035396e77f684b17181b7e181a8a73e7ec5101",
        "minimum": 57,
        "maximum": 57,
        "semantics": "",
        "fields": [
            {
                "name": "stx",
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
            {
                "name": "ref",
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
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvSetStiffnessx_Request)


class Ros2Dsr_msgs2SrvSetStiffnessx_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetStiffnessx_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetStiffnessx_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_9f7b37d22a5d4cfd34e92df02aa3ef3bdd78e965877b30889cdbd85ad81b1f63",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetStiffnessx_Response)


class Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetToolDigitalOutput_Request field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("index", "value")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetToolDigitalOutput_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_fdc298f88b15ff1e7f9b99425f8909e584ffec665f5fdf49d0559aa4f1923675",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "index",
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
                "name": "value",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request)


class Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetToolDigitalOutput_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetToolDigitalOutput_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6dd380084f46879e224a01e8cb135cfa7909d7dd29c0f953fce3533115e0fb5c",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response)


class Ros2Dsr_msgs2SrvSetToolShape_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetToolShape_Request field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetToolShape_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_18dece524fe8fe008a1ce848629aabcc4a91bb33f0c0b75a50c77464da886679",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "fields": [
            {
                "name": "name",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetToolShape_Request)


class Ros2Dsr_msgs2SrvSetToolShape_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetToolShape_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetToolShape_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0cc4521218ab5151885efd7d818d63c3a80e792552282a776d9595ea3e220739",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetToolShape_Response)


class Ros2Dsr_msgs2SrvSetUserCartCoord1_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetUserCartCoord1_Request field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "ref")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetUserCartCoord1_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_497558c7b91c9f6a79afc784b1026e28a632e8234b178b96754eaebcfa4d01f2",
        "minimum": 49,
        "maximum": 49,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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
            {
                "name": "ref",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetUserCartCoord1_Request)


class Ros2Dsr_msgs2SrvSetUserCartCoord1_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetUserCartCoord1_Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("id", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetUserCartCoord1_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6ccfd1c14bc6f8be1efa6fae4c6b33373fab3dc76976891e07e2340bc984c4cf",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "id",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetUserCartCoord1_Response)


class Ros2Dsr_msgs2SrvSetUserCartCoord2_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetUserCartCoord2_Request field.
    @details Canonical extent 193..193 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("x1", "x2", "x3", "pos", "ref")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetUserCartCoord2_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_8ebe04baec0078b4f501712b9777f2f25f71cdb668e45aaadac9fd1f08c4d817",
        "minimum": 193,
        "maximum": 193,
        "semantics": "",
        "fields": [
            {
                "name": "x1",
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
            {
                "name": "x2",
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
            {
                "name": "x3",
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
            {
                "name": "pos",
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
            {
                "name": "ref",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetUserCartCoord2_Request)


class Ros2Dsr_msgs2SrvSetUserCartCoord2_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetUserCartCoord2_Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("id", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetUserCartCoord2_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a607f151e7acf622b233805382b69ea22ab0b4c86067c06bcc2673e1f2a58b8f",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "id",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetUserCartCoord2_Response)


class Ros2Dsr_msgs2SrvSetUserCartCoord3_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetUserCartCoord3_Request field.
    @details Canonical extent 97..97 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("u1", "v1", "pos", "ref")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetUserCartCoord3_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_251d326c5d179d4324c7e178e44a5857335efcbef19c0ede3a38e6b35bd03504",
        "minimum": 97,
        "maximum": 97,
        "semantics": "",
        "fields": [
            {
                "name": "u1",
                "type": "float64",
                "array": "array",
                "count": 3,
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
                "name": "v1",
                "type": "float64",
                "array": "array",
                "count": 3,
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
                "name": "pos",
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
            {
                "name": "ref",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetUserCartCoord3_Request)


class Ros2Dsr_msgs2SrvSetUserCartCoord3_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetUserCartCoord3_Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("id", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetUserCartCoord3_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a4c23d5c3c9e3b8101991250879779acbbe592d2b9bb62b8b8629230eebfdd39",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "fields": [
            {
                "name": "id",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetUserCartCoord3_Response)


class Ros2Dsr_msgs2SrvSetVeljRt_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetVeljRt_Request field.
    @details Canonical extent 48..48 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("vel",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetVeljRt_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_8e666417ee1ca845dc12a0c18e5a538070717ca943fe982b42af7eb66f801cf3",
        "minimum": 48,
        "maximum": 48,
        "semantics": "",
        "fields": [
            {
                "name": "vel",
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
            }
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvSetVeljRt_Request)


class Ros2Dsr_msgs2SrvSetVeljRt_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetVeljRt_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetVeljRt_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6b678e677badd0a4723fd1608058a72548fc7c446f48809552bccc9e890ec6bd",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetVeljRt_Response)


class Ros2Dsr_msgs2SrvSetVelxRt_Request(Record):
    """@brief Own every dsr_msgs2/srv/SetVelxRt_Request field.
    @details Canonical extent 16..16 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("trans", "rotation")
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetVelxRt_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f9b3017cd73796a71ea9bacd871af523b391d9e5b06f1b050cfbeab163c83b9e",
        "minimum": 16,
        "maximum": 16,
        "semantics": "",
        "fields": [
            {
                "name": "trans",
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
                "name": "rotation",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetVelxRt_Request)


class Ros2Dsr_msgs2SrvSetVelxRt_Response(Record):
    """@brief Own every dsr_msgs2/srv/SetVelxRt_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/SetVelxRt_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_973acd53cbb327287c306ec5a54b7b756e031a6fb8acfc836852fdf19dc31f9d",
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


REGISTRY.add(Ros2Dsr_msgs2SrvSetVelxRt_Response)


class Ros2Dsr_msgs2SrvStartRtControl_Request(Record):
    """@brief Own every dsr_msgs2/srv/StartRtControl_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/StartRtControl_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a828a2ecc839bec2c3521779ed7927db6c7c47b48aa99d9ad6328e741a85e5b1",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvStartRtControl_Request)


class Ros2Dsr_msgs2SrvStartRtControl_Response(Record):
    """@brief Own every dsr_msgs2/srv/StartRtControl_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/StartRtControl_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ac6ba957fb8ea8ec816adbf89dfd041181d8fc4d7d6e399aae04ee6efd2c9533",
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


REGISTRY.add(Ros2Dsr_msgs2SrvStartRtControl_Response)


class Ros2Dsr_msgs2SrvStopRtControl_Request(Record):
    """@brief Own every dsr_msgs2/srv/StopRtControl_Request field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs2/srv/StopRtControl_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0f2a7b5fc3a8dcb9413a53410d3291d5148add2e64bf7654ed41ff2f626b7ef1",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvStopRtControl_Request)


class Ros2Dsr_msgs2SrvStopRtControl_Response(Record):
    """@brief Own every dsr_msgs2/srv/StopRtControl_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/StopRtControl_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a8754817156c23964f102f68eab7e19c603c8092334a239c669d4fce23cfcd89",
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


REGISTRY.add(Ros2Dsr_msgs2SrvStopRtControl_Response)


class Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request(Record):
    """@brief Own every dsr_msgs2/srv/TaskComplianceCtrl_Request field.
    @details Canonical extent 57..57 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("stx", "ref", "time")
    SCHEMA = {
        "type": "dsr_msgs2/srv/TaskComplianceCtrl_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e1c8abe0594c9a4de2a8fa207cac4b898dad5c3148e4f5bd965a4acb1b0663e0",
        "minimum": 57,
        "maximum": 57,
        "semantics": "",
        "fields": [
            {
                "name": "stx",
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
            {
                "name": "ref",
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
        ],
    }


REGISTRY.add(Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request)


class Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response(Record):
    """@brief Own every dsr_msgs2/srv/TaskComplianceCtrl_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/TaskComplianceCtrl_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_031919d7369a7e23da6eed0754cf7228ad0c6694b84651454d40dec76aff35bb",
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


REGISTRY.add(Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response)


class Ros2Dsr_msgs2SrvTrans_Request(Record):
    """@brief Own every dsr_msgs2/srv/Trans_Request field.
    @details Canonical extent 98..98 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "delta", "ref", "ref_out")
    SCHEMA = {
        "type": "dsr_msgs2/srv/Trans_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_473706407758f61ca27a10aa6090859f97ffae55ad65abfd3dbf7a2bf31230f7",
        "minimum": 98,
        "maximum": 98,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
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
            {
                "name": "delta",
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
            {
                "name": "ref",
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
                "name": "ref_out",
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


REGISTRY.add(Ros2Dsr_msgs2SrvTrans_Request)


class Ros2Dsr_msgs2SrvTrans_Response(Record):
    """@brief Own every dsr_msgs2/srv/Trans_Response field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("trans_pos", "success")
    SCHEMA = {
        "type": "dsr_msgs2/srv/Trans_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0900d0c0cda3b1b164384313039be345f26d7cebfe3918ed6d3d10eb6c5a2913",
        "minimum": 49,
        "maximum": 49,
        "semantics": "",
        "fields": [
            {
                "name": "trans_pos",
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


REGISTRY.add(Ros2Dsr_msgs2SrvTrans_Response)


class Ros2Dsr_msgs2SrvWriteDataRt_Request(Record):
    """@brief Own every dsr_msgs2/srv/WriteDataRt_Request field.
    @details Canonical extent 152..152 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = (
        "external_force_torque",
        "external_digital_input",
        "external_digital_output",
        "external_analog_input",
        "external_analog_output",
    )
    SCHEMA = {
        "type": "dsr_msgs2/srv/WriteDataRt_Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6936ab81238d05ed11cd9a372c08723a506f424bef7682cbd627295bd5b31f41",
        "minimum": 152,
        "maximum": 152,
        "semantics": "",
        "fields": [
            {
                "name": "external_force_torque",
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
            {
                "name": "external_digital_input",
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
                "name": "external_digital_output",
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
                "name": "external_analog_input",
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
            {
                "name": "external_analog_output",
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


REGISTRY.add(Ros2Dsr_msgs2SrvWriteDataRt_Request)


class Ros2Dsr_msgs2SrvWriteDataRt_Response(Record):
    """@brief Own every dsr_msgs2/srv/WriteDataRt_Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs2/srv/WriteDataRt_Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a0c357cdc8525ce2c13210c5662fde3ff2bf89ac253a3ade7c0524af4879748e",
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


REGISTRY.add(Ros2Dsr_msgs2SrvWriteDataRt_Response)
