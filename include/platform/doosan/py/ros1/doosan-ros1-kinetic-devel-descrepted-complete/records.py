"""@file records.py
@brief Complete source-derived doosan values.
@details All fields, bounds and constants are retained. Pure codecs delegate to
the central Record/Registry implementation; this module opens no ROS resource.
"""

from ros.py.wire import Record, Registry

REGISTRY = Registry()


class Ros1Dsr_msgsAlignAxis1Request(Record):
    """@brief Own every dsr_msgs/AlignAxis1Request field.
    @details Canonical extent 170..170 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("x1", "x2", "x3", "source_vect", "axis", "ref")
    SCHEMA = {
        "type": "dsr_msgs/AlignAxis1Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_708643fa3a09d74f06ee9ba327c3fc05fb60dd73447ea95e43d9d96f7c5b6e54",
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


REGISTRY.add(Ros1Dsr_msgsAlignAxis1Request)


class Ros1Dsr_msgsAlignAxis1Response(Record):
    """@brief Own every dsr_msgs/AlignAxis1Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/AlignAxis1Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_dda31d7d89f3f8b2bb3c68c0d685a30ccfc32a9c363ea5399a1777da80d2f33d",
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


REGISTRY.add(Ros1Dsr_msgsAlignAxis1Response)


class Ros1Dsr_msgsAlignAxis2Request(Record):
    """@brief Own every dsr_msgs/AlignAxis2Request field.
    @details Canonical extent 50..50 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("target_vect", "source_vect", "axis", "ref")
    SCHEMA = {
        "type": "dsr_msgs/AlignAxis2Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_3e1c136bdfe0d97015a19c2fffc6b40460933a3ada556e57142d6309f99fe1ea",
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


REGISTRY.add(Ros1Dsr_msgsAlignAxis2Request)


class Ros1Dsr_msgsAlignAxis2Response(Record):
    """@brief Own every dsr_msgs/AlignAxis2Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/AlignAxis2Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_79618c7ede73decd7a8cb4f0cc013b95c463ca37126d49c0b54e17ad17224ade",
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


REGISTRY.add(Ros1Dsr_msgsAlignAxis2Response)


class Ros1Dsr_msgsAlterMotionRequest(Record):
    """@brief Own every dsr_msgs/AlterMotionRequest field.
    @details Canonical extent 48..48 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos",)
    SCHEMA = {
        "type": "dsr_msgs/AlterMotionRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_2230e6b8bc09c902ab6ba9ed4e9fdb59a9e8d691cf614599e5f96fd8d2820787",
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


REGISTRY.add(Ros1Dsr_msgsAlterMotionRequest)


class Ros1Dsr_msgsAlterMotionResponse(Record):
    """@brief Own every dsr_msgs/AlterMotionResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/AlterMotionResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d27db25bae1cbb78fedfb24b96acbe023949948766ed856ad91e942fe367f716",
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


REGISTRY.add(Ros1Dsr_msgsAlterMotionResponse)


class Ros1Dsr_msgsCalcCoordRequest(Record):
    """@brief Own every dsr_msgs/CalcCoordRequest field.
    @details Canonical extent 195..195 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("input_pos_cnt", "x1", "x2", "x3", "x4", "ref", "mod")
    SCHEMA = {
        "type": "dsr_msgs/CalcCoordRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7124a7312fd476b49ef2fd9fb468ea19ce7ae644da5c8fffb3ddfc67c175c70d",
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


REGISTRY.add(Ros1Dsr_msgsCalcCoordRequest)


class Ros1Dsr_msgsCalcCoordResponse(Record):
    """@brief Own every dsr_msgs/CalcCoordResponse field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("conv_posx", "success")
    SCHEMA = {
        "type": "dsr_msgs/CalcCoordResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c34ef9bfe05948a853305174e1084443e5358bc5877c0dd5d05ba6655dc6d993",
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


REGISTRY.add(Ros1Dsr_msgsCalcCoordResponse)


class Ros1Dsr_msgsChangeOperationSpeedRequest(Record):
    """@brief Own every dsr_msgs/ChangeOperationSpeedRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("speed",)
    SCHEMA = {
        "type": "dsr_msgs/ChangeOperationSpeedRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_8d8beb40ab8ebd7d0f69509832bc71ac9e460ec01bdecc41a82f4eab28017616",
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


REGISTRY.add(Ros1Dsr_msgsChangeOperationSpeedRequest)


class Ros1Dsr_msgsChangeOperationSpeedResponse(Record):
    """@brief Own every dsr_msgs/ChangeOperationSpeedResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/ChangeOperationSpeedResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_bf8b7e30e18d38f6dde9b02576151cb57c4789cef7b7ea6c56fc8581eafc08f6",
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


REGISTRY.add(Ros1Dsr_msgsChangeOperationSpeedResponse)


class Ros1Dsr_msgsCheckForceConditionRequest(Record):
    """@brief Own every dsr_msgs/CheckForceConditionRequest field.
    @details Canonical extent 18..18 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("axis", "min", "max", "ref")
    SCHEMA = {
        "type": "dsr_msgs/CheckForceConditionRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_590694ea44b90bb2aa6fa1f903d129e2a58a33af58fe26c9f67f9b0272b34673",
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


REGISTRY.add(Ros1Dsr_msgsCheckForceConditionRequest)


class Ros1Dsr_msgsCheckForceConditionResponse(Record):
    """@brief Own every dsr_msgs/CheckForceConditionResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/CheckForceConditionResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6d0cb8413b824c1a469f77cd592946e67dd0a0c15d5945b0ea908c0e0e7a3270",
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


REGISTRY.add(Ros1Dsr_msgsCheckForceConditionResponse)


class Ros1Dsr_msgsCheckMotionRequest(Record):
    """@brief Own every dsr_msgs/CheckMotionRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/CheckMotionRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f38bee5e76ececdf4868a092e4ee673da6bcd95db9baacd504ef31017b94b7d5",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsCheckMotionRequest)


class Ros1Dsr_msgsCheckMotionResponse(Record):
    """@brief Own every dsr_msgs/CheckMotionResponse field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("status", "success")
    SCHEMA = {
        "type": "dsr_msgs/CheckMotionResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_2e11dbf1b2a447dd3b6f302f3839b2383f6c3e0c0408c138cb7acb12062df480",
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


REGISTRY.add(Ros1Dsr_msgsCheckMotionResponse)


class Ros1Dsr_msgsCheckOrientationCondition1Request(Record):
    """@brief Own every dsr_msgs/CheckOrientationCondition1Request field.
    @details Canonical extent 99..99 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("axis", "min", "max", "ref", "mode")
    SCHEMA = {
        "type": "dsr_msgs/CheckOrientationCondition1Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_048532f02d47e889e7299755886812a454c0457d4c70fda58bd090c959a52c6e",
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


REGISTRY.add(Ros1Dsr_msgsCheckOrientationCondition1Request)


class Ros1Dsr_msgsCheckOrientationCondition1Response(Record):
    """@brief Own every dsr_msgs/CheckOrientationCondition1Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/CheckOrientationCondition1Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4b8359166eedb70a505b0d1829168618088cbedada2bc5d6f7d9e9a5dfa79b32",
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


REGISTRY.add(Ros1Dsr_msgsCheckOrientationCondition1Response)


class Ros1Dsr_msgsCheckOrientationCondition2Request(Record):
    """@brief Own every dsr_msgs/CheckOrientationCondition2Request field.
    @details Canonical extent 67..67 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("axis", "min", "max", "ref", "mode", "pos")
    SCHEMA = {
        "type": "dsr_msgs/CheckOrientationCondition2Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_42287a8e7cef2b93a1bd5778de6ae4ef4d1aa484dd0c74fcd29c660b400b6ff0",
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


REGISTRY.add(Ros1Dsr_msgsCheckOrientationCondition2Request)


class Ros1Dsr_msgsCheckOrientationCondition2Response(Record):
    """@brief Own every dsr_msgs/CheckOrientationCondition2Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/CheckOrientationCondition2Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_334774329557c04594f02ee344f0af39d250c482c3f9c4b2dd5f275e87880e83",
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


REGISTRY.add(Ros1Dsr_msgsCheckOrientationCondition2Response)


class Ros1Dsr_msgsCheckPositionConditionRequest(Record):
    """@brief Own every dsr_msgs/CheckPositionConditionRequest field.
    @details Canonical extent 67..67 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("axis", "min", "max", "ref", "mode", "pos")
    SCHEMA = {
        "type": "dsr_msgs/CheckPositionConditionRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_973c397ac52f4eba5f5956bd25c6552749d14ebd070ea659cea7601bf2bfdbeb",
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


REGISTRY.add(Ros1Dsr_msgsCheckPositionConditionRequest)


class Ros1Dsr_msgsCheckPositionConditionResponse(Record):
    """@brief Own every dsr_msgs/CheckPositionConditionResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/CheckPositionConditionResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e809f6231e9bea172a7c00c6d32bb553e97026a607a6070e6fa82d007c3bf94a",
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


REGISTRY.add(Ros1Dsr_msgsCheckPositionConditionResponse)


class Ros1Dsr_msgsConfigCreateModbusRequest(Record):
    """@brief Own every dsr_msgs/ConfigCreateModbusRequest field.
    @details Canonical extent 19..531 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name", "ip", "port", "reg_type", "index", "value", "slave_id")
    SCHEMA = {
        "type": "dsr_msgs/ConfigCreateModbusRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_67fe218ec3ea51f74df38d696c95b24f4f64dcdeb6652b618ec327133a1fc29f",
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


REGISTRY.add(Ros1Dsr_msgsConfigCreateModbusRequest)


class Ros1Dsr_msgsConfigCreateModbusResponse(Record):
    """@brief Own every dsr_msgs/ConfigCreateModbusResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/ConfigCreateModbusResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_13243e4aeefdebf38671fc24f7059daf3597cdebcbc1a6ffd315d3edab3dfc2f",
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


REGISTRY.add(Ros1Dsr_msgsConfigCreateModbusResponse)


class Ros1Dsr_msgsConfigCreateTcpRequest(Record):
    """@brief Own every dsr_msgs/ConfigCreateTcpRequest field.
    @details Canonical extent 52..308 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name", "pos")
    SCHEMA = {
        "type": "dsr_msgs/ConfigCreateTcpRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_afd19140176d214b18610297e53a7606a78cefd366dc01bb6baf05d72795e744",
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


REGISTRY.add(Ros1Dsr_msgsConfigCreateTcpRequest)


class Ros1Dsr_msgsConfigCreateTcpResponse(Record):
    """@brief Own every dsr_msgs/ConfigCreateTcpResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/ConfigCreateTcpResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_768b2341613afaecf36342ebe26060e2c41ebd8fd4404d0394065c0d0ea6c948",
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


REGISTRY.add(Ros1Dsr_msgsConfigCreateTcpResponse)


class Ros1Dsr_msgsConfigCreateToolRequest(Record):
    """@brief Own every dsr_msgs/ConfigCreateToolRequest field.
    @details Canonical extent 84..340 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name", "weight", "cog", "inertia")
    SCHEMA = {
        "type": "dsr_msgs/ConfigCreateToolRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ade17ea7096f6309da57a5d9e0be362562551da27bbc1508aac8e2d3c3afcd44",
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


REGISTRY.add(Ros1Dsr_msgsConfigCreateToolRequest)


class Ros1Dsr_msgsConfigCreateToolResponse(Record):
    """@brief Own every dsr_msgs/ConfigCreateToolResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/ConfigCreateToolResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6ed584718ae8c0b9d3946007cfcc713e58f867d3b6b6bfdcabc7ffc126f98a9b",
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


REGISTRY.add(Ros1Dsr_msgsConfigCreateToolResponse)


class Ros1Dsr_msgsConfigDeleteModbusRequest(Record):
    """@brief Own every dsr_msgs/ConfigDeleteModbusRequest field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name",)
    SCHEMA = {
        "type": "dsr_msgs/ConfigDeleteModbusRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d2007f4aa533a46244a6924762b701f84c31f5c9d19495a745e35c6fdd55d96b",
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


REGISTRY.add(Ros1Dsr_msgsConfigDeleteModbusRequest)


class Ros1Dsr_msgsConfigDeleteModbusResponse(Record):
    """@brief Own every dsr_msgs/ConfigDeleteModbusResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/ConfigDeleteModbusResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e3f8b3da769c249f0064ee118d26d7154a31e2dd5e65417d01f1524baa317c4e",
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


REGISTRY.add(Ros1Dsr_msgsConfigDeleteModbusResponse)


class Ros1Dsr_msgsConfigDeleteTcpRequest(Record):
    """@brief Own every dsr_msgs/ConfigDeleteTcpRequest field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name",)
    SCHEMA = {
        "type": "dsr_msgs/ConfigDeleteTcpRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_096510681530cdda07b413a426fcf0ad5ca98e657a5d7612c1f497893fa96de4",
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


REGISTRY.add(Ros1Dsr_msgsConfigDeleteTcpRequest)


class Ros1Dsr_msgsConfigDeleteTcpResponse(Record):
    """@brief Own every dsr_msgs/ConfigDeleteTcpResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/ConfigDeleteTcpResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_5842def73643bf4621c17fbfa2ecd19cfec7a5c9c4ce9b954c72e0be846cebe5",
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


REGISTRY.add(Ros1Dsr_msgsConfigDeleteTcpResponse)


class Ros1Dsr_msgsConfigDeleteToolRequest(Record):
    """@brief Own every dsr_msgs/ConfigDeleteToolRequest field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name",)
    SCHEMA = {
        "type": "dsr_msgs/ConfigDeleteToolRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_be7ab4ae62ab38dd1c31f4cb96303edf98511e369ef64476f835e23b7b6168f3",
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


REGISTRY.add(Ros1Dsr_msgsConfigDeleteToolRequest)


class Ros1Dsr_msgsConfigDeleteToolResponse(Record):
    """@brief Own every dsr_msgs/ConfigDeleteToolResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/ConfigDeleteToolResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0e0708c161ba1aeeb9c7e96e77434eb7ba7c9c77eba230e5488f59b34fd8f780",
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


REGISTRY.add(Ros1Dsr_msgsConfigDeleteToolResponse)


class Ros1Dsr_msgsCoordTransformRequest(Record):
    """@brief Own every dsr_msgs/CoordTransformRequest field.
    @details Canonical extent 50..50 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos_in", "ref_in", "ref_out")
    SCHEMA = {
        "type": "dsr_msgs/CoordTransformRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_28b33cdb83f95f41982ccc99d276cc4efb34ff33707101e1d56cf63580095436",
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


REGISTRY.add(Ros1Dsr_msgsCoordTransformRequest)


class Ros1Dsr_msgsCoordTransformResponse(Record):
    """@brief Own every dsr_msgs/CoordTransformResponse field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("conv_posx", "success")
    SCHEMA = {
        "type": "dsr_msgs/CoordTransformResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1b9492d45f096bfd2a53e1ed8a701d53698a7aebc525b70e95de70c6275035c9",
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


REGISTRY.add(Ros1Dsr_msgsCoordTransformResponse)


class Ros1Dsr_msgsDisableAlterMotionRequest(Record):
    """@brief Own every dsr_msgs/DisableAlterMotionRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/DisableAlterMotionRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4ff4905d3843c08022003c96abd4031a5438078e919e0b8e43554aae3229bbc1",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsDisableAlterMotionRequest)


class Ros1Dsr_msgsDisableAlterMotionResponse(Record):
    """@brief Own every dsr_msgs/DisableAlterMotionResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/DisableAlterMotionResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_feff25cf5412112d1ebc9fd4dd0aca62f1a9af7f63673a0633f6f32e915a27b1",
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


REGISTRY.add(Ros1Dsr_msgsDisableAlterMotionResponse)


class Ros1Dsr_msgsDrlPauseRequest(Record):
    """@brief Own every dsr_msgs/DrlPauseRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/DrlPauseRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e8e6c075432920d6650a5dddc31fd33f7a1688ce99264113be7d0675378eb120",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsDrlPauseRequest)


class Ros1Dsr_msgsDrlPauseResponse(Record):
    """@brief Own every dsr_msgs/DrlPauseResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/DrlPauseResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_9a448d82cb77115d43abe062d8f1bbb904ab680a98cf4d95b025eedd3deca0bb",
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


REGISTRY.add(Ros1Dsr_msgsDrlPauseResponse)


class Ros1Dsr_msgsDrlResumeRequest(Record):
    """@brief Own every dsr_msgs/DrlResumeRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/DrlResumeRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_11d5e8618dacde2d4f9ee2b9e7ee6306396e7495003bc31d9bd02a2438232713",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsDrlResumeRequest)


class Ros1Dsr_msgsDrlResumeResponse(Record):
    """@brief Own every dsr_msgs/DrlResumeResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/DrlResumeResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_40fdc65739450e3c8e0af52f69623624dac33620feda55065587e8e8a1d9a05a",
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


REGISTRY.add(Ros1Dsr_msgsDrlResumeResponse)


class Ros1Dsr_msgsDrlStartRequest(Record):
    """@brief Own every dsr_msgs/DrlStartRequest field.
    @details Canonical extent 5..261 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("robotSystem", "code")
    SCHEMA = {
        "type": "dsr_msgs/DrlStartRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1f5f908c63b09780c6b68ef280f87328590e5eec3be18d98916137c0d2c42a65",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "fields": [
            {
                "name": "robotSystem",
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


REGISTRY.add(Ros1Dsr_msgsDrlStartRequest)


class Ros1Dsr_msgsDrlStartResponse(Record):
    """@brief Own every dsr_msgs/DrlStartResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/DrlStartResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_2e39df1817ac076c895b43f565515db035ba300f4433b8635976b20713d98d76",
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


REGISTRY.add(Ros1Dsr_msgsDrlStartResponse)


class Ros1Dsr_msgsDrlStopRequest(Record):
    """@brief Own every dsr_msgs/DrlStopRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("stop_mode",)
    SCHEMA = {
        "type": "dsr_msgs/DrlStopRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_5be1c9f2284e5244660cfcb60632921bb5db1440536a5030e8d4c93c15704f9b",
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


REGISTRY.add(Ros1Dsr_msgsDrlStopRequest)


class Ros1Dsr_msgsDrlStopResponse(Record):
    """@brief Own every dsr_msgs/DrlStopResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/DrlStopResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0f2cf2aff2ce20b984c602673fdf51ec38ef81820171e1c08e8c9c07d536a988",
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


REGISTRY.add(Ros1Dsr_msgsDrlStopResponse)


class Ros1Dsr_msgsEnableAlterMotionRequest(Record):
    """@brief Own every dsr_msgs/EnableAlterMotionRequest field.
    @details Canonical extent 38..38 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("n", "mode", "ref", "limit_dPOS", "limit_dPOS_per")
    SCHEMA = {
        "type": "dsr_msgs/EnableAlterMotionRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_fa62f478a04e6d92a170e62e1ea690f6e6827e3784388fab3ecc58966c25c99f",
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
                "name": "limit_dPOS",
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
                "name": "limit_dPOS_per",
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


REGISTRY.add(Ros1Dsr_msgsEnableAlterMotionRequest)


class Ros1Dsr_msgsEnableAlterMotionResponse(Record):
    """@brief Own every dsr_msgs/EnableAlterMotionResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/EnableAlterMotionResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_24f3d751a4b49ff5f3280893ecb2f896ae57a9a05309a8827c5ae8eb18daf885",
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


REGISTRY.add(Ros1Dsr_msgsEnableAlterMotionResponse)


class Ros1Dsr_msgsFkinRequest(Record):
    """@brief Own every dsr_msgs/FkinRequest field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "ref")
    SCHEMA = {
        "type": "dsr_msgs/FkinRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6bbd7ead217dd4d6ed0f5d044df5a32d3be159fcc929a395396ec7c1208c325d",
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


REGISTRY.add(Ros1Dsr_msgsFkinRequest)


class Ros1Dsr_msgsFkinResponse(Record):
    """@brief Own every dsr_msgs/FkinResponse field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("conv_posx", "success")
    SCHEMA = {
        "type": "dsr_msgs/FkinResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_86e79e02833be0498aef75436df542063454b0e5b0a46fb153467afc5a492c94",
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


REGISTRY.add(Ros1Dsr_msgsFkinResponse)


class Ros1Dsr_msgsGetControlModeRequest(Record):
    """@brief Own every dsr_msgs/GetControlModeRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/GetControlModeRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c7872f67adf097ccf8b60b910ea0c9ce8831a88b1ab82827b3789355b19fbaab",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsGetControlModeRequest)


class Ros1Dsr_msgsGetControlModeResponse(Record):
    """@brief Own every dsr_msgs/GetControlModeResponse field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("control_mode", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetControlModeResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_29bcb7b65473a8e0c70660a270b9110c95d486358b6ccece3580214cb47d8f4f",
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


REGISTRY.add(Ros1Dsr_msgsGetControlModeResponse)


class Ros1Dsr_msgsGetControlSpaceRequest(Record):
    """@brief Own every dsr_msgs/GetControlSpaceRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/GetControlSpaceRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_eaff6359de691c20936219f59c4c63b1a439ef1367afee1e554d22c013bf74cf",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsGetControlSpaceRequest)


class Ros1Dsr_msgsGetControlSpaceResponse(Record):
    """@brief Own every dsr_msgs/GetControlSpaceResponse field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("space", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetControlSpaceResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4ef8cc2465e8d38e5d44fa83e907ea5658f14f5f4f95776f8044f791e8311dfb",
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


REGISTRY.add(Ros1Dsr_msgsGetControlSpaceResponse)


class Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest(Record):
    """@brief Own every dsr_msgs/GetCtrlBoxAnalogInputRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("channel",)
    SCHEMA = {
        "type": "dsr_msgs/GetCtrlBoxAnalogInputRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0cfaa9f68b92deff18c68d7def4dda13dcd1082065218cc0af1ef8909a35898a",
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


REGISTRY.add(Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest)


class Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse(Record):
    """@brief Own every dsr_msgs/GetCtrlBoxAnalogInputResponse field.
    @details Canonical extent 9..9 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("value", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetCtrlBoxAnalogInputResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a23bcb46f249dc92a614e37a44ebb9e683921ee4104a22446855c8f3b35a6be7",
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


REGISTRY.add(Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse)


class Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest(Record):
    """@brief Own every dsr_msgs/GetCtrlBoxDigitalInputRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("index",)
    SCHEMA = {
        "type": "dsr_msgs/GetCtrlBoxDigitalInputRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_43410710b24f4ef8aeb4533a0d45babb2adf93890d72c08ec45b1062e0d83f7e",
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


REGISTRY.add(Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest)


class Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse(Record):
    """@brief Own every dsr_msgs/GetCtrlBoxDigitalInputResponse field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("value", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetCtrlBoxDigitalInputResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f838432468390d51d64a6d9bc714b503b168a9fedfabcfb96cce7a202a34613f",
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


REGISTRY.add(Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse)


class Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest(Record):
    """@brief Own every dsr_msgs/GetCtrlBoxDigitalOutputRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("index",)
    SCHEMA = {
        "type": "dsr_msgs/GetCtrlBoxDigitalOutputRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a33419794c2431ab9d5b6c3a96becb14edca0d7b00953aa7a7ec1f11ea7bbdb5",
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


REGISTRY.add(Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest)


class Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse(Record):
    """@brief Own every dsr_msgs/GetCtrlBoxDigitalOutputResponse field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("value", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetCtrlBoxDigitalOutputResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_cf472a4ed84d8005ce6ea97ae3c2fd72aba049015924069ee16c79ad41c76534",
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


REGISTRY.add(Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse)


class Ros1Dsr_msgsGetCurrentPoseRequest(Record):
    """@brief Own every dsr_msgs/GetCurrentPoseRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("space_type",)
    SCHEMA = {
        "type": "dsr_msgs/GetCurrentPoseRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_674feef59812a37871c3022be9d588ffa67178430be01f47a4e3bca86766b72b",
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


REGISTRY.add(Ros1Dsr_msgsGetCurrentPoseRequest)


class Ros1Dsr_msgsGetCurrentPoseResponse(Record):
    """@brief Own every dsr_msgs/GetCurrentPoseResponse field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetCurrentPoseResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_8b57d2561b1a04d2ddb60c29f9a4ffb6ba6eeb2f73e8b7e704ee091b49861fe1",
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


REGISTRY.add(Ros1Dsr_msgsGetCurrentPoseResponse)


class Ros1Dsr_msgsGetCurrentPosjRequest(Record):
    """@brief Own every dsr_msgs/GetCurrentPosjRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/GetCurrentPosjRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_5a4d2e7f7304671d96e5ee9ff83ad957d6e74f49ac2562aea6e3dbfcc1726be7",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsGetCurrentPosjRequest)


class Ros1Dsr_msgsGetCurrentPosjResponse(Record):
    """@brief Own every dsr_msgs/GetCurrentPosjResponse field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetCurrentPosjResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6d9f277e82052e84ee2494991ffcca6b8cb8457c2d0fdeb805122f99ae583c29",
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


REGISTRY.add(Ros1Dsr_msgsGetCurrentPosjResponse)


class Ros1Dsr_msgsGetCurrentPosxRequest(Record):
    """@brief Own every dsr_msgs/GetCurrentPosxRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("ref",)
    SCHEMA = {
        "type": "dsr_msgs/GetCurrentPosxRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e134a62a318034e8ab66c88085f8e9f0380500394b9d61bb2998a618fc7d3437",
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


REGISTRY.add(Ros1Dsr_msgsGetCurrentPosxRequest)


class Ros1Std_msgsMultiArrayDimension(Record):
    """@brief Own every std_msgs/MultiArrayDimension field.
    @details Canonical extent 12..76 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("label", "size", "stride")
    SCHEMA = {
        "type": "std_msgs/MultiArrayDimension",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0a279c83cc8c73db2472e3768c8e17d877bb15d72d41f4056568a279b5352444",
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


REGISTRY.add(Ros1Std_msgsMultiArrayDimension)


class Ros1Std_msgsMultiArrayLayout(Record):
    """@brief Own every std_msgs/MultiArrayLayout field.
    @details Canonical extent 8..236 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("dim", "data_offset")
    SCHEMA = {
        "type": "std_msgs/MultiArrayLayout",
        "native_identity": None,
        "codec_identity": "UWVMROS1_602f6ec018f567486b5ea052944a24b0d798fdad5910915337ab6a76c966603e",
        "minimum": 8,
        "maximum": 236,
        "semantics": "",
        "fields": [
            {
                "name": "dim",
                "type": "std_msgs/MultiArrayDimension",
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


REGISTRY.add(Ros1Std_msgsMultiArrayLayout)


class Ros1Std_msgsFloat64MultiArray(Record):
    """@brief Own every std_msgs/Float64MultiArray field.
    @details Canonical extent 12..368 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("layout", "data")
    SCHEMA = {
        "type": "std_msgs/Float64MultiArray",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e75045efb9b80cdc278940f799d16f3b6f49ca4eeb67b4c095d1df4db133bdf8",
        "minimum": 12,
        "maximum": 368,
        "semantics": "",
        "fields": [
            {
                "name": "layout",
                "type": "std_msgs/MultiArrayLayout",
                "array": "",
                "count": 0,
                "string_bound": 0,
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


REGISTRY.add(Ros1Std_msgsFloat64MultiArray)


class Ros1Dsr_msgsGetCurrentPosxResponse(Record):
    """@brief Own every dsr_msgs/GetCurrentPosxResponse field.
    @details Canonical extent 5..2213 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("task_pos_info", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetCurrentPosxResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_2fb411b9e660dddd17fcd65507bd6437db63aa41b3d1eeecd5c0048405828bf4",
        "minimum": 5,
        "maximum": 2213,
        "semantics": "",
        "fields": [
            {
                "name": "task_pos_info",
                "type": "std_msgs/Float64MultiArray",
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


REGISTRY.add(Ros1Dsr_msgsGetCurrentPosxResponse)


class Ros1Dsr_msgsGetCurrentRotmRequest(Record):
    """@brief Own every dsr_msgs/GetCurrentRotmRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("ref",)
    SCHEMA = {
        "type": "dsr_msgs/GetCurrentRotmRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e0f4ee3e0c208a87004cca9771a0696f4acfa8a09ab6a861b8a83bd28ccfb436",
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


REGISTRY.add(Ros1Dsr_msgsGetCurrentRotmRequest)


class Ros1Dsr_msgsGetCurrentRotmResponse(Record):
    """@brief Own every dsr_msgs/GetCurrentRotmResponse field.
    @details Canonical extent 5..2213 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("rot_matrix", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetCurrentRotmResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6cfa5fffb8e5c1575cb821b9330dd9e1f60ab3b325d54ff4d00bc8859e7535d1",
        "minimum": 5,
        "maximum": 2213,
        "semantics": "",
        "fields": [
            {
                "name": "rot_matrix",
                "type": "std_msgs/Float64MultiArray",
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


REGISTRY.add(Ros1Dsr_msgsGetCurrentRotmResponse)


class Ros1Dsr_msgsGetCurrentSolutionSpaceRequest(Record):
    """@brief Own every dsr_msgs/GetCurrentSolutionSpaceRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/GetCurrentSolutionSpaceRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_303fe75ff690897d18296dfb34aad4b0482e372656ed5c85bf9d60bb1832af78",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsGetCurrentSolutionSpaceRequest)


class Ros1Dsr_msgsGetCurrentSolutionSpaceResponse(Record):
    """@brief Own every dsr_msgs/GetCurrentSolutionSpaceResponse field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("sol_space", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetCurrentSolutionSpaceResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e7ef22b6516c92acb76e6173e0d14f0b7c25a7ec669ef18060b4f1158e877c68",
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


REGISTRY.add(Ros1Dsr_msgsGetCurrentSolutionSpaceResponse)


class Ros1Dsr_msgsGetCurrentTcpRequest(Record):
    """@brief Own every dsr_msgs/GetCurrentTcpRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/GetCurrentTcpRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f2a902cbf141335bb559f739861860de93f07d3ed3200ba91833b831389eb3b8",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsGetCurrentTcpRequest)


class Ros1Dsr_msgsGetCurrentTcpResponse(Record):
    """@brief Own every dsr_msgs/GetCurrentTcpResponse field.
    @details Canonical extent 5..261 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("info", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetCurrentTcpResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e0041507b5cdc970e31a6df40a0af22a4115724b1e4c4f615b54c788cf2f27b6",
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


REGISTRY.add(Ros1Dsr_msgsGetCurrentTcpResponse)


class Ros1Dsr_msgsGetCurrentToolRequest(Record):
    """@brief Own every dsr_msgs/GetCurrentToolRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/GetCurrentToolRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0d86dff574728cebfb33a873845e9563665d4173267adbc6fd7f542d26b15970",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsGetCurrentToolRequest)


class Ros1Dsr_msgsGetCurrentToolResponse(Record):
    """@brief Own every dsr_msgs/GetCurrentToolResponse field.
    @details Canonical extent 5..261 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("info", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetCurrentToolResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ab0de7b251e53fe03818ec0169e428bf70c27bdef187c792c54e65e37b2e717b",
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


REGISTRY.add(Ros1Dsr_msgsGetCurrentToolResponse)


class Ros1Dsr_msgsGetCurrentToolFlangePosxRequest(Record):
    """@brief Own every dsr_msgs/GetCurrentToolFlangePosxRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("ref",)
    SCHEMA = {
        "type": "dsr_msgs/GetCurrentToolFlangePosxRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c5377881231716926a6e0abeff2b115eaf5292f0d7e41478a7f1b4ccf7896d53",
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


REGISTRY.add(Ros1Dsr_msgsGetCurrentToolFlangePosxRequest)


class Ros1Dsr_msgsGetCurrentToolFlangePosxResponse(Record):
    """@brief Own every dsr_msgs/GetCurrentToolFlangePosxResponse field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetCurrentToolFlangePosxResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0de91ced161ef1b14003e0e248887f641fd366500674aae15cbbb0f7d915caac",
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


REGISTRY.add(Ros1Dsr_msgsGetCurrentToolFlangePosxResponse)


class Ros1Dsr_msgsGetCurrentVeljRequest(Record):
    """@brief Own every dsr_msgs/GetCurrentVeljRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/GetCurrentVeljRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ee4ef9a4e0b65ed58844e3b545094c569113b23d2478717306a14edb399242fa",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsGetCurrentVeljRequest)


class Ros1Dsr_msgsGetCurrentVeljResponse(Record):
    """@brief Own every dsr_msgs/GetCurrentVeljResponse field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("joint_speed", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetCurrentVeljResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_000fed042d8de5fd8a1d95fe6b45cec5e4ad20ea2833199d7836ebb9e3ae5b2c",
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


REGISTRY.add(Ros1Dsr_msgsGetCurrentVeljResponse)


class Ros1Dsr_msgsGetCurrentVelxRequest(Record):
    """@brief Own every dsr_msgs/GetCurrentVelxRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("ref",)
    SCHEMA = {
        "type": "dsr_msgs/GetCurrentVelxRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6f37a0ffd22a29a6b7812d551680cacb146192c25b234806ff16686992c34efb",
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


REGISTRY.add(Ros1Dsr_msgsGetCurrentVelxRequest)


class Ros1Dsr_msgsGetCurrentVelxResponse(Record):
    """@brief Own every dsr_msgs/GetCurrentVelxResponse field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("vel", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetCurrentVelxResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_98c1cd7ae5663063ce12ea61d9be3dbfd37e9e0b10b6a7f4cc1c212419392f40",
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


REGISTRY.add(Ros1Dsr_msgsGetCurrentVelxResponse)


class Ros1Dsr_msgsGetDesiredPosjRequest(Record):
    """@brief Own every dsr_msgs/GetDesiredPosjRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/GetDesiredPosjRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_2937a5625d07a7681c80c13557018978107abc537a22ee85ff562f15925caf1e",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsGetDesiredPosjRequest)


class Ros1Dsr_msgsGetDesiredPosjResponse(Record):
    """@brief Own every dsr_msgs/GetDesiredPosjResponse field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetDesiredPosjResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_11ac4a05e65b0142f18a152904020780179fadfe540fbff7d5c53e4f177bc833",
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


REGISTRY.add(Ros1Dsr_msgsGetDesiredPosjResponse)


class Ros1Dsr_msgsGetDesiredPosxRequest(Record):
    """@brief Own every dsr_msgs/GetDesiredPosxRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("ref",)
    SCHEMA = {
        "type": "dsr_msgs/GetDesiredPosxRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_812744777c143dfb5c4b60f71ab9461b3e95ead9e599473f87f88ba4f21d3563",
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


REGISTRY.add(Ros1Dsr_msgsGetDesiredPosxRequest)


class Ros1Dsr_msgsGetDesiredPosxResponse(Record):
    """@brief Own every dsr_msgs/GetDesiredPosxResponse field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetDesiredPosxResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_2cf88bb8a14a1c2083a659a509fc1d29531aed1a1f9eb18590ad4381ff00a10a",
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


REGISTRY.add(Ros1Dsr_msgsGetDesiredPosxResponse)


class Ros1Dsr_msgsGetDesiredVeljRequest(Record):
    """@brief Own every dsr_msgs/GetDesiredVeljRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/GetDesiredVeljRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0b93381c0f1e5f57e086d316056912ecb10e3697346e5f250fa5efa612d76e99",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsGetDesiredVeljRequest)


class Ros1Dsr_msgsGetDesiredVeljResponse(Record):
    """@brief Own every dsr_msgs/GetDesiredVeljResponse field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("joint_vel", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetDesiredVeljResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_753747a45767aad1a06f610e11bfd405d07aa365ff1ede44c4b78de99ef6ef22",
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


REGISTRY.add(Ros1Dsr_msgsGetDesiredVeljResponse)


class Ros1Dsr_msgsGetDesiredVelxRequest(Record):
    """@brief Own every dsr_msgs/GetDesiredVelxRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("ref",)
    SCHEMA = {
        "type": "dsr_msgs/GetDesiredVelxRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f26e4ab51d82b3afdaf0f628f62346c740e2bb331d7f482001662884fd6d8aff",
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


REGISTRY.add(Ros1Dsr_msgsGetDesiredVelxRequest)


class Ros1Dsr_msgsGetDesiredVelxResponse(Record):
    """@brief Own every dsr_msgs/GetDesiredVelxResponse field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("vel", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetDesiredVelxResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_30fd91ceb67fa5a2cdaf78fc9b537befc89bac4e3db1203f1da10181fb7d9e51",
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


REGISTRY.add(Ros1Dsr_msgsGetDesiredVelxResponse)


class Ros1Dsr_msgsGetDrlStateRequest(Record):
    """@brief Own every dsr_msgs/GetDrlStateRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/GetDrlStateRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_425ce8ba966c52337c8d06a8436d593e8333a33cdb21ecdb983df3db9980d51f",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsGetDrlStateRequest)


class Ros1Dsr_msgsGetDrlStateResponse(Record):
    """@brief Own every dsr_msgs/GetDrlStateResponse field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("drl_state", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetDrlStateResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_2d0e1a81d0a1b5cda2cc3c4a9a5e627878324c67a0843e8a47583d4d86c149c9",
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


REGISTRY.add(Ros1Dsr_msgsGetDrlStateResponse)


class Ros1Dsr_msgsGetExternalTorqueRequest(Record):
    """@brief Own every dsr_msgs/GetExternalTorqueRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/GetExternalTorqueRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_601bfc2f1283520f2dd76e3f0eee05c02e584873e22b2188f6206cc22d96ee11",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsGetExternalTorqueRequest)


class Ros1Dsr_msgsGetExternalTorqueResponse(Record):
    """@brief Own every dsr_msgs/GetExternalTorqueResponse field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("ext_torque", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetExternalTorqueResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_bdcda8b96e5a22a9143c70f5af6ea56deabe1c68fbf03eb176689c14cc2f50e4",
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


REGISTRY.add(Ros1Dsr_msgsGetExternalTorqueResponse)


class Ros1Dsr_msgsGetJointTorqueRequest(Record):
    """@brief Own every dsr_msgs/GetJointTorqueRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/GetJointTorqueRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_63dee3592e81bf9c2442ba8f01660710ef80c01c3ab55a73c35404da2d6da149",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsGetJointTorqueRequest)


class Ros1Dsr_msgsGetJointTorqueResponse(Record):
    """@brief Own every dsr_msgs/GetJointTorqueResponse field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("jts", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetJointTorqueResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_da41dbdbac4580eaab3ad355caaa9e0075b87894256722521303559c698b9962",
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


REGISTRY.add(Ros1Dsr_msgsGetJointTorqueResponse)


class Ros1Dsr_msgsGetLastAlarmRequest(Record):
    """@brief Own every dsr_msgs/GetLastAlarmRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/GetLastAlarmRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4ff39c1f6b320245fd73e84755fe876eb12177c4a7b3ac3888d870ec5a761bdf",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsGetLastAlarmRequest)


class Ros1Dsr_msgsLogAlarm(Record):
    """@brief Own every dsr_msgs/LogAlarm field.
    @details Canonical extent 24..792 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("level", "group", "index", "param")
    SCHEMA = {
        "type": "dsr_msgs/LogAlarm",
        "native_identity": None,
        "codec_identity": "UWVMROS1_39a6ecc178ed79ab41cd3948b6efb9666f66b0c33b6abe7845b1d16a17f9700f",
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


REGISTRY.add(Ros1Dsr_msgsLogAlarm)


class Ros1Dsr_msgsGetLastAlarmResponse(Record):
    """@brief Own every dsr_msgs/GetLastAlarmResponse field.
    @details Canonical extent 25..793 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("log_alarm", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetLastAlarmResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_477c434da50cd9b26e93b02ca9072542afc22b62084cf5a9eb785cd43cb4d61e",
        "minimum": 25,
        "maximum": 793,
        "semantics": "",
        "fields": [
            {
                "name": "log_alarm",
                "type": "dsr_msgs/LogAlarm",
                "array": "",
                "count": 0,
                "string_bound": 0,
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


REGISTRY.add(Ros1Dsr_msgsGetLastAlarmResponse)


class Ros1Dsr_msgsGetModbusInputRequest(Record):
    """@brief Own every dsr_msgs/GetModbusInputRequest field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name",)
    SCHEMA = {
        "type": "dsr_msgs/GetModbusInputRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_812e7d2d259db6a466dd304239aee910848a1fb9059c431f3495825d8ebe800c",
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


REGISTRY.add(Ros1Dsr_msgsGetModbusInputRequest)


class Ros1Dsr_msgsGetModbusInputResponse(Record):
    """@brief Own every dsr_msgs/GetModbusInputResponse field.
    @details Canonical extent 5..5 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("value", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetModbusInputResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_29360b7702eec80f1dd7915cc8bb58fb5126d93b545cb921b7eb9c3ffa0b49d5",
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


REGISTRY.add(Ros1Dsr_msgsGetModbusInputResponse)


class Ros1Dsr_msgsGetOrientationErrorRequest(Record):
    """@brief Own every dsr_msgs/GetOrientationErrorRequest field.
    @details Canonical extent 97..97 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("xd", "xc", "axis")
    SCHEMA = {
        "type": "dsr_msgs/GetOrientationErrorRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_db1e637c2f187602b5c3aaa2b3e33fb1b7636b28281832d393d3516984e9e01e",
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


REGISTRY.add(Ros1Dsr_msgsGetOrientationErrorRequest)


class Ros1Dsr_msgsGetOrientationErrorResponse(Record):
    """@brief Own every dsr_msgs/GetOrientationErrorResponse field.
    @details Canonical extent 5..5 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("ori_error", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetOrientationErrorResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_909be18b65c95198ce5c5a7b2a11ae97cfad9509c360aec833bbfd239497b9e6",
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


REGISTRY.add(Ros1Dsr_msgsGetOrientationErrorResponse)


class Ros1Dsr_msgsGetRobotModeRequest(Record):
    """@brief Own every dsr_msgs/GetRobotModeRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/GetRobotModeRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_228237c16ea308e25d1a5fb7f74713a31a67e6e1e6b0a94f06c30264ed90af90",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsGetRobotModeRequest)


class Ros1Dsr_msgsGetRobotModeResponse(Record):
    """@brief Own every dsr_msgs/GetRobotModeResponse field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("robot_mode", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetRobotModeResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_559f9328cba413aa572f66818aace6061020777c2cbb6bea475adf3cbca1a88c",
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


REGISTRY.add(Ros1Dsr_msgsGetRobotModeResponse)


class Ros1Dsr_msgsGetRobotSpeedModeRequest(Record):
    """@brief Own every dsr_msgs/GetRobotSpeedModeRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/GetRobotSpeedModeRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ff02ad740851d4dc6955206ffa3556f6564854bd6edd6a8190ce44f8ba9709d4",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsGetRobotSpeedModeRequest)


class Ros1Dsr_msgsGetRobotSpeedModeResponse(Record):
    """@brief Own every dsr_msgs/GetRobotSpeedModeResponse field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("speed_mode", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetRobotSpeedModeResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_eaef45ce098108c89a49b2ed3e0cfeba901d7a9e8e4fee86d7c646e181cfe3c4",
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


REGISTRY.add(Ros1Dsr_msgsGetRobotSpeedModeResponse)


class Ros1Dsr_msgsGetRobotStateRequest(Record):
    """@brief Own every dsr_msgs/GetRobotStateRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/GetRobotStateRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_b773b6fe4f08ade05cc0bac7e0d70cb7edcfa763f83608d944bf072da4ad08bc",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsGetRobotStateRequest)


class Ros1Dsr_msgsGetRobotStateResponse(Record):
    """@brief Own every dsr_msgs/GetRobotStateResponse field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("robot_state", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetRobotStateResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1e210aa1fd0a833b8d8dedbbda759f12b860c7cbe161f2bed50b41015451ba51",
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


REGISTRY.add(Ros1Dsr_msgsGetRobotStateResponse)


class Ros1Dsr_msgsGetRobotSystemRequest(Record):
    """@brief Own every dsr_msgs/GetRobotSystemRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/GetRobotSystemRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_43cc52a8d4b5e36ace679eb3f5bad943b3052bb0dec9f8af6f58f2d5c7deb203",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsGetRobotSystemRequest)


class Ros1Dsr_msgsGetRobotSystemResponse(Record):
    """@brief Own every dsr_msgs/GetRobotSystemResponse field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("robot_system", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetRobotSystemResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_b7f7ec9a3e0bf607295bc5d0af1d82d192bc35103401c913c4ed8a8c77811c7f",
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


REGISTRY.add(Ros1Dsr_msgsGetRobotSystemResponse)


class Ros1Dsr_msgsGetSolutionSpaceRequest(Record):
    """@brief Own every dsr_msgs/GetSolutionSpaceRequest field.
    @details Canonical extent 48..48 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos",)
    SCHEMA = {
        "type": "dsr_msgs/GetSolutionSpaceRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_416c6623add6fed0900f585292905890932f326162a1431b481b28aac52c7bf3",
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


REGISTRY.add(Ros1Dsr_msgsGetSolutionSpaceRequest)


class Ros1Dsr_msgsGetSolutionSpaceResponse(Record):
    """@brief Own every dsr_msgs/GetSolutionSpaceResponse field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("sol_space", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetSolutionSpaceResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d6cf69fb571a6947cabc01a594e84d1eed7a581511e755db9dde5452f1230511",
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


REGISTRY.add(Ros1Dsr_msgsGetSolutionSpaceResponse)


class Ros1Dsr_msgsGetToolDigitalInputRequest(Record):
    """@brief Own every dsr_msgs/GetToolDigitalInputRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("index",)
    SCHEMA = {
        "type": "dsr_msgs/GetToolDigitalInputRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a8fa1714fc6c5d9082f6909ad8562c87e1bd95e40168701c1dc670e614b5dd70",
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


REGISTRY.add(Ros1Dsr_msgsGetToolDigitalInputRequest)


class Ros1Dsr_msgsGetToolDigitalInputResponse(Record):
    """@brief Own every dsr_msgs/GetToolDigitalInputResponse field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("value", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetToolDigitalInputResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ba289ccf352c0560a70d99ec99a95c01b84ab7436f5638874ae4e1d89364a8b6",
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


REGISTRY.add(Ros1Dsr_msgsGetToolDigitalInputResponse)


class Ros1Dsr_msgsGetToolDigitalOutputRequest(Record):
    """@brief Own every dsr_msgs/GetToolDigitalOutputRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("index",)
    SCHEMA = {
        "type": "dsr_msgs/GetToolDigitalOutputRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_bfed701bd5b788685802e15709a594b065dff57f5c6706b14ad41bc6f80736ce",
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


REGISTRY.add(Ros1Dsr_msgsGetToolDigitalOutputRequest)


class Ros1Dsr_msgsGetToolDigitalOutputResponse(Record):
    """@brief Own every dsr_msgs/GetToolDigitalOutputResponse field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("value", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetToolDigitalOutputResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0873d83b7b79d0270af4d61d86fd77bb248a75ebfe91177e4acc9299c46a309d",
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


REGISTRY.add(Ros1Dsr_msgsGetToolDigitalOutputResponse)


class Ros1Dsr_msgsGetToolForceRequest(Record):
    """@brief Own every dsr_msgs/GetToolForceRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("ref",)
    SCHEMA = {
        "type": "dsr_msgs/GetToolForceRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_2df77a1075113a1c8febd77c89e13417c596c6d1d4abd26454a4439620e397b4",
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


REGISTRY.add(Ros1Dsr_msgsGetToolForceRequest)


class Ros1Dsr_msgsGetToolForceResponse(Record):
    """@brief Own every dsr_msgs/GetToolForceResponse field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("tool_force", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetToolForceResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_11dfdda93d1818dbcb331bba86cf08815f24bb8adb34e70792a730ce27d95ed9",
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


REGISTRY.add(Ros1Dsr_msgsGetToolForceResponse)


class Ros1Dsr_msgsGetUserCartCoordRequest(Record):
    """@brief Own every dsr_msgs/GetUserCartCoordRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("id",)
    SCHEMA = {
        "type": "dsr_msgs/GetUserCartCoordRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_07824b4c8403d59fad8e8a33c615fcf96a0556bd8de1c1639a16d3aa28db0637",
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


REGISTRY.add(Ros1Dsr_msgsGetUserCartCoordRequest)


class Ros1Dsr_msgsGetUserCartCoordResponse(Record):
    """@brief Own every dsr_msgs/GetUserCartCoordResponse field.
    @details Canonical extent 50..50 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("conv_posx", "ref", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetUserCartCoordResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_2fea411082260a3dbaf3fb3f4c1314f74dda9fb864222fe5837e1d5f62502a22",
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


REGISTRY.add(Ros1Dsr_msgsGetUserCartCoordResponse)


class Ros1Dsr_msgsGetWorkpieceWeightRequest(Record):
    """@brief Own every dsr_msgs/GetWorkpieceWeightRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/GetWorkpieceWeightRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_fa987920bd5c89882bd52b444bec319c5b83c3fdf6086c065c87e924d40890ec",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsGetWorkpieceWeightRequest)


class Ros1Dsr_msgsGetWorkpieceWeightResponse(Record):
    """@brief Own every dsr_msgs/GetWorkpieceWeightResponse field.
    @details Canonical extent 5..5 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("weight", "success")
    SCHEMA = {
        "type": "dsr_msgs/GetWorkpieceWeightResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_687f2eaa565bbbb878ff0018ad4fa9bc1596316cbbb83c07df85df5cd81887ca",
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


REGISTRY.add(Ros1Dsr_msgsGetWorkpieceWeightResponse)


class Ros1Dsr_msgsIkinRequest(Record):
    """@brief Own every dsr_msgs/IkinRequest field.
    @details Canonical extent 50..50 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "sol_space", "ref")
    SCHEMA = {
        "type": "dsr_msgs/IkinRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_64192c8fc182151b11fe48b99d05e142994a0724cbde8572058378e843fe7f27",
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


REGISTRY.add(Ros1Dsr_msgsIkinRequest)


class Ros1Dsr_msgsIkinResponse(Record):
    """@brief Own every dsr_msgs/IkinResponse field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("conv_posj", "success")
    SCHEMA = {
        "type": "dsr_msgs/IkinResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_fa64a9417d777219d7142d600391a80c0001464e3777174bef040ecd80df1e23",
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


REGISTRY.add(Ros1Dsr_msgsIkinResponse)


class Ros1Dsr_msgsIsDoneBoltTighteningRequest(Record):
    """@brief Own every dsr_msgs/IsDoneBoltTighteningRequest field.
    @details Canonical extent 17..17 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("m", "timeout", "axis")
    SCHEMA = {
        "type": "dsr_msgs/IsDoneBoltTighteningRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_40ab245e2e736f9171f7ab55ff340717ef3f1ec89614730f4f9e3811ba6afa9e",
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


REGISTRY.add(Ros1Dsr_msgsIsDoneBoltTighteningRequest)


class Ros1Dsr_msgsIsDoneBoltTighteningResponse(Record):
    """@brief Own every dsr_msgs/IsDoneBoltTighteningResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/IsDoneBoltTighteningResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_86e7eb378e84a1feec9b2abfb3b8af889b9cf986c7455e0d74bb8832af6ff611",
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


REGISTRY.add(Ros1Dsr_msgsIsDoneBoltTighteningResponse)


class Ros1Dsr_msgsJogRequest(Record):
    """@brief Own every dsr_msgs/JogRequest field.
    @details Canonical extent 10..10 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("jog_axis", "move_reference", "speed")
    SCHEMA = {
        "type": "dsr_msgs/JogRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_28c6930998059030e74613930bd86066b3a37a490f7f438395eed15570617f7a",
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


REGISTRY.add(Ros1Dsr_msgsJogRequest)


class Ros1Dsr_msgsJogResponse(Record):
    """@brief Own every dsr_msgs/JogResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/JogResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f87fba5fb96bd9ae52d16a519b20ca7ea2c17560b15bd8543a9484282e1967d7",
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


REGISTRY.add(Ros1Dsr_msgsJogResponse)


class Ros1Dsr_msgsJogMultiRequest(Record):
    """@brief Own every dsr_msgs/JogMultiRequest field.
    @details Canonical extent 57..57 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("jog_axis", "move_reference", "speed")
    SCHEMA = {
        "type": "dsr_msgs/JogMultiRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f24271474302516dfce0dde848b2420490c35800b12d2fbdf5250ebbffc25cea",
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


REGISTRY.add(Ros1Dsr_msgsJogMultiRequest)


class Ros1Dsr_msgsJogMultiResponse(Record):
    """@brief Own every dsr_msgs/JogMultiResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/JogMultiResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_fecf5222e690c35fe0503c56d12e06b375d55ffab9ea0bbef96270729305a64a",
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


REGISTRY.add(Ros1Dsr_msgsJogMultiResponse)


class Ros1Dsr_msgsJogMultiAxis(Record):
    """@brief Own every dsr_msgs/JogMultiAxis field.
    @details Canonical extent 57..57 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("jog_axis", "move_reference", "speed")
    SCHEMA = {
        "type": "dsr_msgs/JogMultiAxis",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ee64c6ccdfa3726ebbfc0b3779f878cbbece6fe878cbfbc14fa45eed4486de02",
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


REGISTRY.add(Ros1Dsr_msgsJogMultiAxis)


class Ros1Dsr_msgsModbusState(Record):
    """@brief Own every dsr_msgs/ModbusState field.
    @details Canonical extent 8..264 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("modbus_symbol", "modbus_value")
    SCHEMA = {
        "type": "dsr_msgs/ModbusState",
        "native_identity": None,
        "codec_identity": "UWVMROS1_e107e7ff86b98e9c58565f3a2889ac50ea49ecc6efb9c982d29b075086fe3ae9",
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


REGISTRY.add(Ros1Dsr_msgsModbusState)


class Ros1Dsr_msgsMoveBlendingRequest(Record):
    """@brief Own every dsr_msgs/MoveBlendingRequest field.
    @details Canonical extent 48..2256 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("segment", "posCnt", "vel", "acc", "time", "ref", "mode", "syncType")
    SCHEMA = {
        "type": "dsr_msgs/MoveBlendingRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_70b7fb3501e9677b76ed8f893883090e500be36ff8175edce8fd6d6d4f23e4e6",
        "minimum": 48,
        "maximum": 2256,
        "semantics": "",
        "fields": [
            {
                "name": "segment",
                "type": "std_msgs/Float64MultiArray",
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
                "name": "posCnt",
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
                "name": "syncType",
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


REGISTRY.add(Ros1Dsr_msgsMoveBlendingRequest)


class Ros1Dsr_msgsMoveBlendingResponse(Record):
    """@brief Own every dsr_msgs/MoveBlendingResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/MoveBlendingResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_9c5697b77eaad084e9870d5ca1a1a960e22bd87137f2a1035daa9f014cc28eb6",
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


REGISTRY.add(Ros1Dsr_msgsMoveBlendingResponse)


class Ros1Dsr_msgsMoveCircleRequest(Record):
    """@brief Own every dsr_msgs/MoveCircleRequest field.
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
        "blendType",
        "syncType",
    )
    SCHEMA = {
        "type": "dsr_msgs/MoveCircleRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_39c6ea4c3b15ae9866db805863a5c5c542bbf7b104adcd81a13425719fd994f4",
        "minimum": 72,
        "maximum": 2280,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
                "type": "std_msgs/Float64MultiArray",
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
                "name": "blendType",
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
                "name": "syncType",
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


REGISTRY.add(Ros1Dsr_msgsMoveCircleRequest)


class Ros1Dsr_msgsMoveCircleResponse(Record):
    """@brief Own every dsr_msgs/MoveCircleResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/MoveCircleResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a5950bd2e98ce04a5b2261eec3c95f65613f3fb60d8d1779c6a8bcbb28fa42f3",
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


REGISTRY.add(Ros1Dsr_msgsMoveCircleResponse)


class Ros1Dsr_msgsMoveHomeRequest(Record):
    """@brief Own every dsr_msgs/MoveHomeRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("target",)
    SCHEMA = {
        "type": "dsr_msgs/MoveHomeRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_99b3fe492438ffc71627412077f7b0ced950e0f6038722ecfb34191093e0308f",
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


REGISTRY.add(Ros1Dsr_msgsMoveHomeRequest)


class Ros1Dsr_msgsMoveHomeResponse(Record):
    """@brief Own every dsr_msgs/MoveHomeResponse field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("res", "success")
    SCHEMA = {
        "type": "dsr_msgs/MoveHomeResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_9906457df2f7eccd40564fb7ba76fe7245ad943f20461bf23192cfbcba3a596f",
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


REGISTRY.add(Ros1Dsr_msgsMoveHomeResponse)


class Ros1Dsr_msgsMoveJointRequest(Record):
    """@brief Own every dsr_msgs/MoveJointRequest field.
    @details Canonical extent 83..83 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "vel", "acc", "time", "radius", "mode", "blendType", "syncType")
    SCHEMA = {
        "type": "dsr_msgs/MoveJointRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_b244b9d86649987111dd94846a98260a464ac54b9074025689028be9a1ed6a03",
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
                "name": "blendType",
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
                "name": "syncType",
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


REGISTRY.add(Ros1Dsr_msgsMoveJointRequest)


class Ros1Dsr_msgsMoveJointResponse(Record):
    """@brief Own every dsr_msgs/MoveJointResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/MoveJointResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_66e1e0f7cf2043211218cd9d1c58bfb89ffaf7480a4adddb375c002321a3fcc4",
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


REGISTRY.add(Ros1Dsr_msgsMoveJointResponse)


class Ros1Dsr_msgsMoveJointxRequest(Record):
    """@brief Own every dsr_msgs/MoveJointxRequest field.
    @details Canonical extent 85..85 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "vel", "acc", "time", "radius", "ref", "mode", "blendType", "sol", "syncType")
    SCHEMA = {
        "type": "dsr_msgs/MoveJointxRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d3a91ad268c65b3f4967c281c53301ec61b6aebdc4a55324103aac4d3ed392db",
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
                "name": "blendType",
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
                "name": "syncType",
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


REGISTRY.add(Ros1Dsr_msgsMoveJointxRequest)


class Ros1Dsr_msgsMoveJointxResponse(Record):
    """@brief Own every dsr_msgs/MoveJointxResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/MoveJointxResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_9286ce396d98df17fa6cab04cd10ab449be09a07134799f09ae19082921103cc",
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


REGISTRY.add(Ros1Dsr_msgsMoveJointxResponse)


class Ros1Dsr_msgsMoveLineRequest(Record):
    """@brief Own every dsr_msgs/MoveLineRequest field.
    @details Canonical extent 100..100 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "vel", "acc", "time", "radius", "ref", "mode", "blendType", "syncType")
    SCHEMA = {
        "type": "dsr_msgs/MoveLineRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ef69f202700bbcfb829e8eedbb7189489f4c30a6f08702f368c5e7f9493b206e",
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
                "name": "blendType",
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
                "name": "syncType",
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


REGISTRY.add(Ros1Dsr_msgsMoveLineRequest)


class Ros1Dsr_msgsMoveLineResponse(Record):
    """@brief Own every dsr_msgs/MoveLineResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/MoveLineResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0d316d575a341637b3cbe5a2ee68734670ca6f3f9f5035b383194b8457afe82c",
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


REGISTRY.add(Ros1Dsr_msgsMoveLineResponse)


class Ros1Dsr_msgsMovePauseRequest(Record):
    """@brief Own every dsr_msgs/MovePauseRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/MovePauseRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a25b42c1e8819548bfff8d108ec661b4a1137eeafd19d8805cfecdc4d14c5f19",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsMovePauseRequest)


class Ros1Dsr_msgsMovePauseResponse(Record):
    """@brief Own every dsr_msgs/MovePauseResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/MovePauseResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_148a3cc895846afa55520af770f76bc6118c313b5cfbf4d83d0f161b22171aed",
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


REGISTRY.add(Ros1Dsr_msgsMovePauseResponse)


class Ros1Dsr_msgsMovePeriodicRequest(Record):
    """@brief Own every dsr_msgs/MovePeriodicRequest field.
    @details Canonical extent 107..107 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("amp", "periodic", "acc", "repeat", "ref", "syncType")
    SCHEMA = {
        "type": "dsr_msgs/MovePeriodicRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_73ffac70af9558b1be99d969ee99cf992816cf84ce97f29ef81036963fbd2d69",
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
                "name": "syncType",
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


REGISTRY.add(Ros1Dsr_msgsMovePeriodicRequest)


class Ros1Dsr_msgsMovePeriodicResponse(Record):
    """@brief Own every dsr_msgs/MovePeriodicResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/MovePeriodicResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_97f5baff448319a629f79ea38696662bfca6960af28150b8dfa07902cd7393b3",
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


REGISTRY.add(Ros1Dsr_msgsMovePeriodicResponse)


class Ros1Dsr_msgsMoveResumeRequest(Record):
    """@brief Own every dsr_msgs/MoveResumeRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/MoveResumeRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_313ed9fb87f75b7a010a658e734390145b46050b1f554f863cf6c2afb7e60f1f",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsMoveResumeRequest)


class Ros1Dsr_msgsMoveResumeResponse(Record):
    """@brief Own every dsr_msgs/MoveResumeResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/MoveResumeResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_072287041c0e4462d8994d15ad03c5c36db00c754565d99cf9d30a215100937a",
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


REGISTRY.add(Ros1Dsr_msgsMoveResumeResponse)


class Ros1Dsr_msgsMoveSpiralRequest(Record):
    """@brief Own every dsr_msgs/MoveSpiralRequest field.
    @details Canonical extent 67..67 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("revolution", "maxRadius", "maxLength", "vel", "acc", "time", "taskAxis", "ref", "syncType")
    SCHEMA = {
        "type": "dsr_msgs/MoveSpiralRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_5b5a4a14ecc3021b9f98e44891c3c87011ba825fb6399e1ae5ef179257a4565c",
        "minimum": 67,
        "maximum": 67,
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
                "name": "maxRadius",
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
                "name": "maxLength",
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
                "name": "taskAxis",
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
                "name": "syncType",
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


REGISTRY.add(Ros1Dsr_msgsMoveSpiralRequest)


class Ros1Dsr_msgsMoveSpiralResponse(Record):
    """@brief Own every dsr_msgs/MoveSpiralResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/MoveSpiralResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_be420ead496b05aafd3aa152a89bd04cc6dc1e584e700019a568f0dcae3a7691",
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


REGISTRY.add(Ros1Dsr_msgsMoveSpiralResponse)


class Ros1Dsr_msgsMoveSplineJointRequest(Record):
    """@brief Own every dsr_msgs/MoveSplineJointRequest field.
    @details Canonical extent 111..2319 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "posCnt", "vel", "acc", "time", "mode", "syncType")
    SCHEMA = {
        "type": "dsr_msgs/MoveSplineJointRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f5ccf9a5eade1a2f7f11c741c26e3b045fa11d81d8f03587e4a527b0256e2a8a",
        "minimum": 111,
        "maximum": 2319,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
                "type": "std_msgs/Float64MultiArray",
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
                "name": "posCnt",
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
                "name": "syncType",
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


REGISTRY.add(Ros1Dsr_msgsMoveSplineJointRequest)


class Ros1Dsr_msgsMoveSplineJointResponse(Record):
    """@brief Own every dsr_msgs/MoveSplineJointResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/MoveSplineJointResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_b6fe363893f83066cfbf079aedf9fd6161316fe698b1a02713761aa46adb6e68",
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


REGISTRY.add(Ros1Dsr_msgsMoveSplineJointResponse)


class Ros1Dsr_msgsMoveSplineTaskRequest(Record):
    """@brief Own every dsr_msgs/MoveSplineTaskRequest field.
    @details Canonical extent 49..2257 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "posCnt", "vel", "acc", "time", "ref", "mode", "opt", "syncType")
    SCHEMA = {
        "type": "dsr_msgs/MoveSplineTaskRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_fa8ee3b180d331309471cb20a1dbe4b46a3493cc0c7298222017200d2ff65e5a",
        "minimum": 49,
        "maximum": 2257,
        "semantics": "",
        "fields": [
            {
                "name": "pos",
                "type": "std_msgs/Float64MultiArray",
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
                "name": "posCnt",
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
                "name": "syncType",
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


REGISTRY.add(Ros1Dsr_msgsMoveSplineTaskRequest)


class Ros1Dsr_msgsMoveSplineTaskResponse(Record):
    """@brief Own every dsr_msgs/MoveSplineTaskResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/MoveSplineTaskResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_3d19b8f693f665703fc8b8ee151ee49ed94100de85668164f953095f718cdb7a",
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


REGISTRY.add(Ros1Dsr_msgsMoveSplineTaskResponse)


class Ros1Dsr_msgsMoveStopRequest(Record):
    """@brief Own every dsr_msgs/MoveStopRequest field.
    @details Canonical extent 4..4 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("stop_mode",)
    SCHEMA = {
        "type": "dsr_msgs/MoveStopRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_8591a7188be1a528bbbb4b62f134825e0bf0f41517709604ac06c537f01423e4",
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


REGISTRY.add(Ros1Dsr_msgsMoveStopRequest)


class Ros1Dsr_msgsMoveStopResponse(Record):
    """@brief Own every dsr_msgs/MoveStopResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/MoveStopResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_25580dd85be376dcb588ebe62a49394f0f9c92abd7b094c2552df86b64f87427",
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


REGISTRY.add(Ros1Dsr_msgsMoveStopResponse)


class Ros1Dsr_msgsMoveWaitRequest(Record):
    """@brief Own every dsr_msgs/MoveWaitRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/MoveWaitRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_ca59fcddb15dd63fcf0481cb2e81be6a338d63167a15ad66585335eee1922a39",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsMoveWaitRequest)


class Ros1Dsr_msgsMoveWaitResponse(Record):
    """@brief Own every dsr_msgs/MoveWaitResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/MoveWaitResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_764dd1fba59b88d4baae818b06b9c735f62f156e67842013d95d55381d32f232",
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


REGISTRY.add(Ros1Dsr_msgsMoveWaitResponse)


class Ros1Dsr_msgsOverwriteUserCartCoordRequest(Record):
    """@brief Own every dsr_msgs/OverwriteUserCartCoordRequest field.
    @details Canonical extent 50..50 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("id", "pos", "ref")
    SCHEMA = {
        "type": "dsr_msgs/OverwriteUserCartCoordRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_b89858cf40ee4ae756c90e048fb0cffd362dd2477ca23ba1172749353eb63721",
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


REGISTRY.add(Ros1Dsr_msgsOverwriteUserCartCoordRequest)


class Ros1Dsr_msgsOverwriteUserCartCoordResponse(Record):
    """@brief Own every dsr_msgs/OverwriteUserCartCoordResponse field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("id", "success")
    SCHEMA = {
        "type": "dsr_msgs/OverwriteUserCartCoordResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_953c73d75e0381b067612ea733d58faf95919f5f20f940b6827396fc9d363833",
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


REGISTRY.add(Ros1Dsr_msgsOverwriteUserCartCoordResponse)


class Ros1Dsr_msgsParallelAxis1Request(Record):
    """@brief Own every dsr_msgs/ParallelAxis1Request field.
    @details Canonical extent 146..146 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("x1", "x2", "x3", "axis", "ref")
    SCHEMA = {
        "type": "dsr_msgs/ParallelAxis1Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d032b8ab9d71b7f30b395c0f7ecf376e7ca056fa893479754780a90c8db7f7fe",
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


REGISTRY.add(Ros1Dsr_msgsParallelAxis1Request)


class Ros1Dsr_msgsParallelAxis1Response(Record):
    """@brief Own every dsr_msgs/ParallelAxis1Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/ParallelAxis1Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f7ba09a96d450b53ef9b2fb77b6de6a6e760de65fc8dce42dcbc7dace8fef543",
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


REGISTRY.add(Ros1Dsr_msgsParallelAxis1Response)


class Ros1Dsr_msgsParallelAxis2Request(Record):
    """@brief Own every dsr_msgs/ParallelAxis2Request field.
    @details Canonical extent 26..26 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("vect", "axis", "ref")
    SCHEMA = {
        "type": "dsr_msgs/ParallelAxis2Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_11dcf871306958211993961d60c607836696edf5c825bb7a109ec5efd885f191",
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


REGISTRY.add(Ros1Dsr_msgsParallelAxis2Request)


class Ros1Dsr_msgsParallelAxis2Response(Record):
    """@brief Own every dsr_msgs/ParallelAxis2Response field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/ParallelAxis2Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_41ca262ffdbabdde6ee4bbb0521813cc08cb56a86eb59335be8af82aa5d629c4",
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


REGISTRY.add(Ros1Dsr_msgsParallelAxis2Response)


class Ros1Dsr_msgsReleaseComplianceCtrlRequest(Record):
    """@brief Own every dsr_msgs/ReleaseComplianceCtrlRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/ReleaseComplianceCtrlRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_963f201a73d6cb461e28bf94dc6223bf0c8e603adb96142cde94a764349ccdd2",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsReleaseComplianceCtrlRequest)


class Ros1Dsr_msgsReleaseComplianceCtrlResponse(Record):
    """@brief Own every dsr_msgs/ReleaseComplianceCtrlResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/ReleaseComplianceCtrlResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_5c5e9252fd9e8c346e8317f600fa46eb18c8e53be3447eddf3fb5f474a44682d",
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


REGISTRY.add(Ros1Dsr_msgsReleaseComplianceCtrlResponse)


class Ros1Dsr_msgsReleaseForceRequest(Record):
    """@brief Own every dsr_msgs/ReleaseForceRequest field.
    @details Canonical extent 8..8 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("time",)
    SCHEMA = {
        "type": "dsr_msgs/ReleaseForceRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_5809993bacca15147eaf819181a6c1d187512d169539b6125e112b56bc0d2bc2",
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


REGISTRY.add(Ros1Dsr_msgsReleaseForceRequest)


class Ros1Dsr_msgsReleaseForceResponse(Record):
    """@brief Own every dsr_msgs/ReleaseForceResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/ReleaseForceResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_59e8fed1895c6e1664d689126a2df57918728f4006b20e50c1bc0055e76cc2d5",
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


REGISTRY.add(Ros1Dsr_msgsReleaseForceResponse)


class Ros1Dsr_msgsResetWorkpieceWeightRequest(Record):
    """@brief Own every dsr_msgs/ResetWorkpieceWeightRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/ResetWorkpieceWeightRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_b2cf228390cc1aa473c6e1a9025d7ea7e789acb3f7dd6a0a4178402b6d843ed6",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsResetWorkpieceWeightRequest)


class Ros1Dsr_msgsResetWorkpieceWeightResponse(Record):
    """@brief Own every dsr_msgs/ResetWorkpieceWeightResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/ResetWorkpieceWeightResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f11776348fcebca43e64f7a635e2a080642a29c32762704029bd1429055cc025",
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


REGISTRY.add(Ros1Dsr_msgsResetWorkpieceWeightResponse)


class Ros1Dsr_msgsRobotError(Record):
    """@brief Own every dsr_msgs/RobotError field.
    @details Canonical extent 24..792 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("level", "group", "code", "msg1", "msg2", "msg3")
    SCHEMA = {
        "type": "dsr_msgs/RobotError",
        "native_identity": None,
        "codec_identity": "UWVMROS1_86d4b7b2d131374e05e7fe9d53988f0ed6713deb337a37182ac4998951ca5641",
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


REGISTRY.add(Ros1Dsr_msgsRobotError)


class Ros1Dsr_msgsRobotState(Record):
    """@brief Own every dsr_msgs/RobotState field.
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
        "fActualW2B",
        "fCurrentPosW",
        "fCurrentVelW",
        "fWorldETT",
        "fTargetPosW",
        "fTargetVelW",
        "fRotationMatrixWorld",
        "iActualUCN",
        "iParent",
        "fCurrentPosU",
        "fCurrentVelU",
        "fUserETT",
        "fTargetPosU",
        "fTargetVelU",
        "fRotationMatrixUser",
        "fActualAI",
        "bActualSW",
        "bActualSI",
        "iActualAT",
        "fTargetAO",
        "iTargetAT",
        "bActualES",
        "iActualED",
        "bActualER",
    )
    SCHEMA = {
        "type": "dsr_msgs/RobotState",
        "native_identity": None,
        "codec_identity": "UWVMROS1_3f34278ee2cdceff51b3bb665ce314cc4a0d4e164b110969102a04c96e374456",
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
                "type": "std_msgs/Float64MultiArray",
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
                "type": "dsr_msgs/ModbusState",
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
                "name": "fActualW2B",
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
                "name": "fCurrentPosW",
                "type": "std_msgs/Float64MultiArray",
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
                "name": "fCurrentVelW",
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
                "name": "fWorldETT",
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
                "name": "fTargetPosW",
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
                "name": "fTargetVelW",
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
                "name": "fRotationMatrixWorld",
                "type": "std_msgs/Float64MultiArray",
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
                "name": "iActualUCN",
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
                "name": "iParent",
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
                "name": "fCurrentPosU",
                "type": "std_msgs/Float64MultiArray",
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
                "name": "fCurrentVelU",
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
                "name": "fUserETT",
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
                "name": "fTargetPosU",
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
                "name": "fTargetVelU",
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
                "name": "fRotationMatrixUser",
                "type": "std_msgs/Float64MultiArray",
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
                "name": "fActualAI",
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
                "name": "bActualSW",
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
                "name": "bActualSI",
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
                "name": "iActualAT",
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
                "name": "fTargetAO",
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
                "name": "iTargetAT",
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
                "name": "bActualES",
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
                "name": "iActualED",
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
                "name": "bActualER",
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


REGISTRY.add(Ros1Dsr_msgsRobotState)


class Ros1Dsr_msgsRobotStop(Record):
    """@brief Own every dsr_msgs/RobotStop field.
    @details Canonical extent 4..4 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("stop_mode",)
    SCHEMA = {
        "type": "dsr_msgs/RobotStop",
        "native_identity": None,
        "codec_identity": "UWVMROS1_fd77182b171cc0c4eea28c26c78310584b38e47a3c7d987783648a9f230b6323",
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


REGISTRY.add(Ros1Dsr_msgsRobotStop)


class Ros1Dsr_msgsRobotiq2FCloseRequest(Record):
    """@brief Own every dsr_msgs/Robotiq2FCloseRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/Robotiq2FCloseRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_208edddefb1fee08c3ba285600357951edca6b0328a14ea3cca56ec5b2c4d3b4",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsRobotiq2FCloseRequest)


class Ros1Dsr_msgsRobotiq2FCloseResponse(Record):
    """@brief Own every dsr_msgs/Robotiq2FCloseResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/Robotiq2FCloseResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_21a215db4729d55b86ae1f56d932984a38c5c7093f09623a5a5cee1e5647a09d",
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


REGISTRY.add(Ros1Dsr_msgsRobotiq2FCloseResponse)


class Ros1Dsr_msgsRobotiq2FMoveRequest(Record):
    """@brief Own every dsr_msgs/Robotiq2FMoveRequest field.
    @details Canonical extent 8..8 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("width",)
    SCHEMA = {
        "type": "dsr_msgs/Robotiq2FMoveRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_81cbba3bf5cd634b8c30fe914123d67da1294352a6e1a70a5c8a58259a79d6a2",
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


REGISTRY.add(Ros1Dsr_msgsRobotiq2FMoveRequest)


class Ros1Dsr_msgsRobotiq2FMoveResponse(Record):
    """@brief Own every dsr_msgs/Robotiq2FMoveResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/Robotiq2FMoveResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_90f90a7486c727afb08f0e09f76f0bfa7f5b0d057be653258b6bdf1e935e7183",
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


REGISTRY.add(Ros1Dsr_msgsRobotiq2FMoveResponse)


class Ros1Dsr_msgsRobotiq2FOpenRequest(Record):
    """@brief Own every dsr_msgs/Robotiq2FOpenRequest field.
    @details Canonical extent 0..0 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ()
    SCHEMA = {
        "type": "dsr_msgs/Robotiq2FOpenRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_64576393afca9ec6bd2e76eaf57324b5e625e62f5899d77762dc041dc1fbdda2",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": [],
    }


REGISTRY.add(Ros1Dsr_msgsRobotiq2FOpenRequest)


class Ros1Dsr_msgsRobotiq2FOpenResponse(Record):
    """@brief Own every dsr_msgs/Robotiq2FOpenResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/Robotiq2FOpenResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_83448b0daee950113e41814fe398efbb5624568e812f5989dd26cec24f24742a",
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


REGISTRY.add(Ros1Dsr_msgsRobotiq2FOpenResponse)


class Ros1Dsr_msgsSerialSendDataRequest(Record):
    """@brief Own every dsr_msgs/SerialSendDataRequest field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("data",)
    SCHEMA = {
        "type": "dsr_msgs/SerialSendDataRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_19253624f5870830126073f19daa4e4f42dcdd10c4d3154989aa619ce2749498",
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


REGISTRY.add(Ros1Dsr_msgsSerialSendDataRequest)


class Ros1Dsr_msgsSerialSendDataResponse(Record):
    """@brief Own every dsr_msgs/SerialSendDataResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/SerialSendDataResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_0bb4f5a2bfcf02e9febe7846d2616c99141a8860f62d83b59ebb56da6c89dc43",
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


REGISTRY.add(Ros1Dsr_msgsSerialSendDataResponse)


class Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest(Record):
    """@brief Own every dsr_msgs/SetCtrlBoxAnalogInputTypeRequest field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("channel", "mode")
    SCHEMA = {
        "type": "dsr_msgs/SetCtrlBoxAnalogInputTypeRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_934735469130eef5a4e4599d3033242f0dacf467b2d413d607f733bcdebb7f5b",
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


REGISTRY.add(Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest)


class Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse(Record):
    """@brief Own every dsr_msgs/SetCtrlBoxAnalogInputTypeResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/SetCtrlBoxAnalogInputTypeResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a1e73687962235470a5f55d1fa4abd910001dfae2b05aa7779fce0ad93137400",
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


REGISTRY.add(Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse)


class Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest(Record):
    """@brief Own every dsr_msgs/SetCtrlBoxAnalogOutputRequest field.
    @details Canonical extent 9..9 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("channel", "value")
    SCHEMA = {
        "type": "dsr_msgs/SetCtrlBoxAnalogOutputRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1ea5fd673a691bc7a51cf3c65c9a3b30352539155e6d7007181990c9a227efb4",
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


REGISTRY.add(Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest)


class Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse(Record):
    """@brief Own every dsr_msgs/SetCtrlBoxAnalogOutputResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/SetCtrlBoxAnalogOutputResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f0df03f3603b7ec2c0ef5f1e5d126b718ad8ca432130e32184dc87497bf707a5",
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


REGISTRY.add(Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse)


class Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest(Record):
    """@brief Own every dsr_msgs/SetCtrlBoxAnalogOutputTypeRequest field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("channel", "mode")
    SCHEMA = {
        "type": "dsr_msgs/SetCtrlBoxAnalogOutputTypeRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_71aaf5f279052ba620d9cd13fa1751f96629c19d60e4030086b51e316ceab14f",
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


REGISTRY.add(Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest)


class Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse(Record):
    """@brief Own every dsr_msgs/SetCtrlBoxAnalogOutputTypeResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/SetCtrlBoxAnalogOutputTypeResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a175ae12517731f2c2e4de021b1921920bd543d9c81469876b50b51b62ad8cc2",
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


REGISTRY.add(Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse)


class Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest(Record):
    """@brief Own every dsr_msgs/SetCtrlBoxDigitalOutputRequest field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("index", "value")
    SCHEMA = {
        "type": "dsr_msgs/SetCtrlBoxDigitalOutputRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_82a2c083195f7adc4fd3104cb05039cf109e9779920e36b4d3966edb819f83db",
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


REGISTRY.add(Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest)


class Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse(Record):
    """@brief Own every dsr_msgs/SetCtrlBoxDigitalOutputResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/SetCtrlBoxDigitalOutputResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_dc0411c903a4350c81130d3343615212c4e3a9c259f7b193bff92c95b7039657",
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


REGISTRY.add(Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse)


class Ros1Dsr_msgsSetCurrentTcpRequest(Record):
    """@brief Own every dsr_msgs/SetCurrentTcpRequest field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name",)
    SCHEMA = {
        "type": "dsr_msgs/SetCurrentTcpRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6a403e6eb4e86aab4d76913e5dd679425f68c6e4c9b38c82af1eaa180dc65f00",
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


REGISTRY.add(Ros1Dsr_msgsSetCurrentTcpRequest)


class Ros1Dsr_msgsSetCurrentTcpResponse(Record):
    """@brief Own every dsr_msgs/SetCurrentTcpResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/SetCurrentTcpResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_29c09f17453ac9fa413922b023f1a54ae253cecbbdea211202da551187bbf7ab",
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


REGISTRY.add(Ros1Dsr_msgsSetCurrentTcpResponse)


class Ros1Dsr_msgsSetCurrentToolRequest(Record):
    """@brief Own every dsr_msgs/SetCurrentToolRequest field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name",)
    SCHEMA = {
        "type": "dsr_msgs/SetCurrentToolRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d5d71101193ff28fe86d6ba22de9922fda0c806bbd8cd5bfdb8ef3688f5bacb4",
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


REGISTRY.add(Ros1Dsr_msgsSetCurrentToolRequest)


class Ros1Dsr_msgsSetCurrentToolResponse(Record):
    """@brief Own every dsr_msgs/SetCurrentToolResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/SetCurrentToolResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_89937411059cec969c42c90bdb4c81fa15dc645b627d10d376dc5ded2c56e1de",
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


REGISTRY.add(Ros1Dsr_msgsSetCurrentToolResponse)


class Ros1Dsr_msgsSetDesiredForceRequest(Record):
    """@brief Own every dsr_msgs/SetDesiredForceRequest field.
    @details Canonical extent 64..64 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("fd", "dir", "ref", "time", "mod")
    SCHEMA = {
        "type": "dsr_msgs/SetDesiredForceRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1020073d308553e7eb01e3fdd76a8a29cd169131d95516ae8c07a54b29f01b1a",
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


REGISTRY.add(Ros1Dsr_msgsSetDesiredForceRequest)


class Ros1Dsr_msgsSetDesiredForceResponse(Record):
    """@brief Own every dsr_msgs/SetDesiredForceResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/SetDesiredForceResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_fb07701ce7c215300e155c1d46e345f6467fe43bba3fc71bed94943459ce1928",
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


REGISTRY.add(Ros1Dsr_msgsSetDesiredForceResponse)


class Ros1Dsr_msgsSetModbusOutputRequest(Record):
    """@brief Own every dsr_msgs/SetModbusOutputRequest field.
    @details Canonical extent 8..264 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name", "value")
    SCHEMA = {
        "type": "dsr_msgs/SetModbusOutputRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_3482041cfb90233b59433f4749d9e8f422fc73cdb26525bdbc60370e73c7827f",
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


REGISTRY.add(Ros1Dsr_msgsSetModbusOutputRequest)


class Ros1Dsr_msgsSetModbusOutputResponse(Record):
    """@brief Own every dsr_msgs/SetModbusOutputResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/SetModbusOutputResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_763789f569991b2ba44844586d51b20f2c439e9b22ace4bc72b1bce7b23e0491",
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


REGISTRY.add(Ros1Dsr_msgsSetModbusOutputResponse)


class Ros1Dsr_msgsSetRefCoordRequest(Record):
    """@brief Own every dsr_msgs/SetRefCoordRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("coord",)
    SCHEMA = {
        "type": "dsr_msgs/SetRefCoordRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_269accc3ced8dd5c86b93c8a412301e47f0084be7f5294d19866868eb5858144",
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


REGISTRY.add(Ros1Dsr_msgsSetRefCoordRequest)


class Ros1Dsr_msgsSetRefCoordResponse(Record):
    """@brief Own every dsr_msgs/SetRefCoordResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/SetRefCoordResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_d33d88ff3985821ce2b9773f2d80ebf3394d89647e760dea55b9303c9e3b3562",
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


REGISTRY.add(Ros1Dsr_msgsSetRefCoordResponse)


class Ros1Dsr_msgsSetRobotModeRequest(Record):
    """@brief Own every dsr_msgs/SetRobotModeRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("robot_mode",)
    SCHEMA = {
        "type": "dsr_msgs/SetRobotModeRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_295575a2df0f007254f9aa7eac220e99fcae85ecb085181d5a3ca4e4e86f23fe",
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


REGISTRY.add(Ros1Dsr_msgsSetRobotModeRequest)


class Ros1Dsr_msgsSetRobotModeResponse(Record):
    """@brief Own every dsr_msgs/SetRobotModeResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/SetRobotModeResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_bbf3bda8cd2e9afbda89023639013686ecd7612a9323a6d4180b8ac092caaad1",
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


REGISTRY.add(Ros1Dsr_msgsSetRobotModeResponse)


class Ros1Dsr_msgsSetRobotSpeedModeRequest(Record):
    """@brief Own every dsr_msgs/SetRobotSpeedModeRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("speed_mode",)
    SCHEMA = {
        "type": "dsr_msgs/SetRobotSpeedModeRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_68f9a7f019ddfa1015de6c7e3115d632eb44ec794f364e6a0617fed34f70531c",
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


REGISTRY.add(Ros1Dsr_msgsSetRobotSpeedModeRequest)


class Ros1Dsr_msgsSetRobotSpeedModeResponse(Record):
    """@brief Own every dsr_msgs/SetRobotSpeedModeResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/SetRobotSpeedModeResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6434538e8bf60b1b900aba530ed3e027eb13d854591eab5e0e93cc407e90c94b",
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


REGISTRY.add(Ros1Dsr_msgsSetRobotSpeedModeResponse)


class Ros1Dsr_msgsSetRobotSystemRequest(Record):
    """@brief Own every dsr_msgs/SetRobotSystemRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("robot_system",)
    SCHEMA = {
        "type": "dsr_msgs/SetRobotSystemRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_75ffa8e1e77ea59a3b7a27151404682cfdef7226d32d3b78b6d67e562536eeee",
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


REGISTRY.add(Ros1Dsr_msgsSetRobotSystemRequest)


class Ros1Dsr_msgsSetRobotSystemResponse(Record):
    """@brief Own every dsr_msgs/SetRobotSystemResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/SetRobotSystemResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_38f3915ccf71872a966f2f511e73782a79df1923c76e6134ea8d72f0b96f6c27",
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


REGISTRY.add(Ros1Dsr_msgsSetRobotSystemResponse)


class Ros1Dsr_msgsSetSafeStopResetTypeRequest(Record):
    """@brief Own every dsr_msgs/SetSafeStopResetTypeRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("reset_type",)
    SCHEMA = {
        "type": "dsr_msgs/SetSafeStopResetTypeRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_8a9961395d960217a4f867ee0d2994ea40afe83c4a33a7dcc5b348a85a7fff42",
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


REGISTRY.add(Ros1Dsr_msgsSetSafeStopResetTypeRequest)


class Ros1Dsr_msgsSetSafeStopResetTypeResponse(Record):
    """@brief Own every dsr_msgs/SetSafeStopResetTypeResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/SetSafeStopResetTypeResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_2227553731ecf10a55eda31cd8735f90bd4539777661e3723f712a7a456cd4db",
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


REGISTRY.add(Ros1Dsr_msgsSetSafeStopResetTypeResponse)


class Ros1Dsr_msgsSetSingularityHandlingRequest(Record):
    """@brief Own every dsr_msgs/SetSingularityHandlingRequest field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("mode",)
    SCHEMA = {
        "type": "dsr_msgs/SetSingularityHandlingRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_44dd4695620a3cf3f95504b73ad6978c9073ab3703f73f4a6449c7763f31cb7b",
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


REGISTRY.add(Ros1Dsr_msgsSetSingularityHandlingRequest)


class Ros1Dsr_msgsSetSingularityHandlingResponse(Record):
    """@brief Own every dsr_msgs/SetSingularityHandlingResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/SetSingularityHandlingResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a022bf9d809ac39a4dfe0487fdbc83f3b4ef81f179a6b3dd7d8fb1854aba1aa2",
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


REGISTRY.add(Ros1Dsr_msgsSetSingularityHandlingResponse)


class Ros1Dsr_msgsSetStiffnessxRequest(Record):
    """@brief Own every dsr_msgs/SetStiffnessxRequest field.
    @details Canonical extent 57..57 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("stx", "ref", "time")
    SCHEMA = {
        "type": "dsr_msgs/SetStiffnessxRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7cf0721d0f9cd45422a4277a63834f75572ead2833ca4100752d51abc2b4e3d3",
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


REGISTRY.add(Ros1Dsr_msgsSetStiffnessxRequest)


class Ros1Dsr_msgsSetStiffnessxResponse(Record):
    """@brief Own every dsr_msgs/SetStiffnessxResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/SetStiffnessxResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_41ae59cb41184a6c167db14ac58ef80966c500fb31417b21900e42d1cb9a4549",
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


REGISTRY.add(Ros1Dsr_msgsSetStiffnessxResponse)


class Ros1Dsr_msgsSetToolDigitalOutputRequest(Record):
    """@brief Own every dsr_msgs/SetToolDigitalOutputRequest field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("index", "value")
    SCHEMA = {
        "type": "dsr_msgs/SetToolDigitalOutputRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6b384924cefbae3dfe50e02b8fb26ed9e228d2ada5c63070feb0375c125a2123",
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


REGISTRY.add(Ros1Dsr_msgsSetToolDigitalOutputRequest)


class Ros1Dsr_msgsSetToolDigitalOutputResponse(Record):
    """@brief Own every dsr_msgs/SetToolDigitalOutputResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/SetToolDigitalOutputResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_4e0acd035740d1e47b42128818528aa3aa33736d979f46ada511ad0e6230ae94",
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


REGISTRY.add(Ros1Dsr_msgsSetToolDigitalOutputResponse)


class Ros1Dsr_msgsSetToolShapeRequest(Record):
    """@brief Own every dsr_msgs/SetToolShapeRequest field.
    @details Canonical extent 4..260 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("name",)
    SCHEMA = {
        "type": "dsr_msgs/SetToolShapeRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_1eb4f1d4e9fea4e9f5324fc50acd744365940912055fbc359ecc4748b1ddeeea",
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


REGISTRY.add(Ros1Dsr_msgsSetToolShapeRequest)


class Ros1Dsr_msgsSetToolShapeResponse(Record):
    """@brief Own every dsr_msgs/SetToolShapeResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/SetToolShapeResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_7d18f475fd4230c7f15ddc10401373d296cfaef1d525a26e983cda4c8b2b5e70",
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


REGISTRY.add(Ros1Dsr_msgsSetToolShapeResponse)


class Ros1Dsr_msgsSetUserCartCoord1Request(Record):
    """@brief Own every dsr_msgs/SetUserCartCoord1Request field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "ref")
    SCHEMA = {
        "type": "dsr_msgs/SetUserCartCoord1Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_f54a10c9fd4687670111ba2b3d0a6bceea638fc71da62d59b81a01c59dd457b3",
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


REGISTRY.add(Ros1Dsr_msgsSetUserCartCoord1Request)


class Ros1Dsr_msgsSetUserCartCoord1Response(Record):
    """@brief Own every dsr_msgs/SetUserCartCoord1Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("id", "success")
    SCHEMA = {
        "type": "dsr_msgs/SetUserCartCoord1Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_c8749fa152e4396e977e110a901dfc791a26b54d1f282752039a20c0c4531f53",
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


REGISTRY.add(Ros1Dsr_msgsSetUserCartCoord1Response)


class Ros1Dsr_msgsSetUserCartCoord2Request(Record):
    """@brief Own every dsr_msgs/SetUserCartCoord2Request field.
    @details Canonical extent 193..193 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("x1", "x2", "x3", "pos", "ref")
    SCHEMA = {
        "type": "dsr_msgs/SetUserCartCoord2Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_581a8164d6593be7422364300fabd854bc3b438726a3182cd388be5c629dc235",
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


REGISTRY.add(Ros1Dsr_msgsSetUserCartCoord2Request)


class Ros1Dsr_msgsSetUserCartCoord2Response(Record):
    """@brief Own every dsr_msgs/SetUserCartCoord2Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("id", "success")
    SCHEMA = {
        "type": "dsr_msgs/SetUserCartCoord2Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_01ce185d3b4585bfdb9187c7b3cf628874da91fdd8c289a5b72d7bcb0e84880d",
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


REGISTRY.add(Ros1Dsr_msgsSetUserCartCoord2Response)


class Ros1Dsr_msgsSetUserCartCoord3Request(Record):
    """@brief Own every dsr_msgs/SetUserCartCoord3Request field.
    @details Canonical extent 97..97 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("u1", "v1", "pos", "ref")
    SCHEMA = {
        "type": "dsr_msgs/SetUserCartCoord3Request",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a8a9aa12ff690f1a26223248b0c84537b7fe23ffa0af33be0ef0c99092f78c3c",
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


REGISTRY.add(Ros1Dsr_msgsSetUserCartCoord3Request)


class Ros1Dsr_msgsSetUserCartCoord3Response(Record):
    """@brief Own every dsr_msgs/SetUserCartCoord3Response field.
    @details Canonical extent 2..2 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("id", "success")
    SCHEMA = {
        "type": "dsr_msgs/SetUserCartCoord3Response",
        "native_identity": None,
        "codec_identity": "UWVMROS1_9409ea43f5b28fc6aa7c1089c69e828edda3440a50e1c35b5f8b8ca600d11fd1",
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


REGISTRY.add(Ros1Dsr_msgsSetUserCartCoord3Response)


class Ros1Dsr_msgsTaskComplianceCtrlRequest(Record):
    """@brief Own every dsr_msgs/TaskComplianceCtrlRequest field.
    @details Canonical extent 57..57 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("stx", "ref", "time")
    SCHEMA = {
        "type": "dsr_msgs/TaskComplianceCtrlRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_05fa479a787001504e982b77fd61e6a3e6bb2a7cbc34ff900fa12634d8842671",
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


REGISTRY.add(Ros1Dsr_msgsTaskComplianceCtrlRequest)


class Ros1Dsr_msgsTaskComplianceCtrlResponse(Record):
    """@brief Own every dsr_msgs/TaskComplianceCtrlResponse field.
    @details Canonical extent 1..1 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("success",)
    SCHEMA = {
        "type": "dsr_msgs/TaskComplianceCtrlResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_29c513521ec8c6ac5c39bf1cb12d8db19a025a2036fb0398633b544d53c39625",
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


REGISTRY.add(Ros1Dsr_msgsTaskComplianceCtrlResponse)


class Ros1Dsr_msgsTransRequest(Record):
    """@brief Own every dsr_msgs/TransRequest field.
    @details Canonical extent 98..98 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("pos", "delta", "ref", "ref_out")
    SCHEMA = {
        "type": "dsr_msgs/TransRequest",
        "native_identity": None,
        "codec_identity": "UWVMROS1_6724ac7a62b77d6d6e52145306c4ac5a0e05221a636fb5cd0048e185ddcee273",
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


REGISTRY.add(Ros1Dsr_msgsTransRequest)


class Ros1Dsr_msgsTransResponse(Record):
    """@brief Own every dsr_msgs/TransResponse field.
    @details Canonical extent 49..49 bytes; errors preserve whole-value framing.
    @see REGISTRY; source schemas and API.md.
    """

    __slots__ = ("trans_pos", "success")
    SCHEMA = {
        "type": "dsr_msgs/TransResponse",
        "native_identity": None,
        "codec_identity": "UWVMROS1_a36593de3d68fc991b3cf230f98c28f1f1d9fa0fc72e3160a5f005d9cb6105e5",
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


REGISTRY.add(Ros1Dsr_msgsTransResponse)
