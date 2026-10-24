"""@file records.py
@brief Complete original Unitree ROS 2 classes.
@details Every original field, nested element, quota and installed identity is retained.
Values own their storage and grant no ROS authority.
"""

from ros.py.wire import Record, Registry

REGISTRY = Registry()


class Ros2Unitree_apiMsgRequestIdentity(Record):
    """@brief Own every original unitree_api/msg/RequestIdentity field.
    @details Exactly 2 fields; 16..16 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original id: int64; scalar; count/quota 0.
    # @brief Original api_id: int64; scalar; count/quota 0.
    __slots__ = ("id", "api_id")
    SCHEMA = {
        "type": "unitree_api/msg/RequestIdentity",
        "native_identity": "RIHS01_912fcf308a7cd6e27ea3aeea02515f587fa666b76af1963660429995f0e381c6",
        "codec_identity": "UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2",
        "minimum": 16,
        "maximum": 16,
        "semantics": "",
        "fields": [
            {
                "name": "id",
                "type": "int64",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "api_id",
                "type": "int64",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Unitree_apiMsgRequestIdentity)


class Ros2Unitree_apiMsgRequestLease(Record):
    """@brief Own every original unitree_api/msg/RequestLease field.
    @details Exactly 1 fields; 8..8 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original id: int64; scalar; count/quota 0.
    __slots__ = ("id",)
    SCHEMA = {
        "type": "unitree_api/msg/RequestLease",
        "native_identity": "RIHS01_16b5c2257d5280a095e3e4fe26a48e782e294fa3d68760ce38599260a344bf4e",
        "codec_identity": "UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e",
        "minimum": 8,
        "maximum": 8,
        "semantics": "",
        "fields": [
            {
                "name": "id",
                "type": "int64",
                "array": "",
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


REGISTRY.add(Ros2Unitree_apiMsgRequestLease)


class Ros2Unitree_apiMsgRequestPolicy(Record):
    """@brief Own every original unitree_api/msg/RequestPolicy field.
    @details Exactly 2 fields; 5..5 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original priority: int32; scalar; count/quota 0.
    # @brief Original noreply: bool; scalar; count/quota 0.
    __slots__ = ("priority", "noreply")
    SCHEMA = {
        "type": "unitree_api/msg/RequestPolicy",
        "native_identity": "RIHS01_742c3612b991be55430d1847af4afb2f119069f2e16e3a2143c6352a94ef35e4",
        "codec_identity": "UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8",
        "minimum": 5,
        "maximum": 5,
        "semantics": "",
        "fields": [
            {
                "name": "priority",
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
                "name": "noreply",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Unitree_apiMsgRequestPolicy)


class Ros2Unitree_apiMsgRequestHeader(Record):
    """@brief Own every original unitree_api/msg/RequestHeader field.
    @details Exactly 3 fields; 29..29 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original identity: unitree_api/msg/RequestIdentity; scalar; count/quota 0.
    # @brief Original lease: unitree_api/msg/RequestLease; scalar; count/quota 0.
    # @brief Original policy: unitree_api/msg/RequestPolicy; scalar; count/quota 0.
    __slots__ = ("identity", "lease", "policy")
    SCHEMA = {
        "type": "unitree_api/msg/RequestHeader",
        "native_identity": "RIHS01_4273d5fbe6bee52502f55a6a73427e4ae2f12329f175d7c07b95341fd527acff",
        "codec_identity": "UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0",
        "minimum": 29,
        "maximum": 29,
        "semantics": "",
        "fields": [
            {
                "name": "identity",
                "type": "unitree_api/msg/RequestIdentity",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "lease",
                "type": "unitree_api/msg/RequestLease",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "policy",
                "type": "unitree_api/msg/RequestPolicy",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Unitree_apiMsgRequestHeader)


class Ros2Unitree_apiMsgRequest(Record):
    """@brief Own every original unitree_api/msg/Request field.
    @details Exactly 3 fields; 37..4133 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original header: unitree_api/msg/RequestHeader; scalar; count/quota 0.
    # @brief Original parameter: string; scalar; count/quota 0.
    # @brief Original binary: uint8; sequence; count/quota 2048.
    __slots__ = ("header", "parameter", "binary")
    SCHEMA = {
        "type": "unitree_api/msg/Request",
        "native_identity": "RIHS01_60dda80d19538b06c8f79b77222b1b7642dd753b8439a6bd535ff0cba08c5378",
        "codec_identity": "UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192",
        "minimum": 37,
        "maximum": 4133,
        "semantics": "",
        "fields": [
            {
                "name": "header",
                "type": "unitree_api/msg/RequestHeader",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "parameter",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 2048,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "binary",
                "type": "uint8",
                "array": "sequence",
                "count": 2048,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Unitree_apiMsgRequest)


class Ros2Unitree_apiMsgResponseStatus(Record):
    """@brief Own every original unitree_api/msg/ResponseStatus field.
    @details Exactly 1 fields; 4..4 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original code: int32; scalar; count/quota 0.
    __slots__ = ("code",)
    SCHEMA = {
        "type": "unitree_api/msg/ResponseStatus",
        "native_identity": "RIHS01_282afd2a97771014abb1f5aead0fd244d648d475f55a82b0c3c41232a8c527f7",
        "codec_identity": "UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1",
        "minimum": 4,
        "maximum": 4,
        "semantics": "",
        "fields": [
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
            }
        ],
    }


REGISTRY.add(Ros2Unitree_apiMsgResponseStatus)


class Ros2Unitree_apiMsgResponseHeader(Record):
    """@brief Own every original unitree_api/msg/ResponseHeader field.
    @details Exactly 2 fields; 20..20 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original identity: unitree_api/msg/RequestIdentity; scalar; count/quota 0.
    # @brief Original status: unitree_api/msg/ResponseStatus; scalar; count/quota 0.
    __slots__ = ("identity", "status")
    SCHEMA = {
        "type": "unitree_api/msg/ResponseHeader",
        "native_identity": "RIHS01_eba136c930271eec2fc582cfccc5948f8af3fe4431492842a03a3dacb1b0d765",
        "codec_identity": "UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0",
        "minimum": 20,
        "maximum": 20,
        "semantics": "",
        "fields": [
            {
                "name": "identity",
                "type": "unitree_api/msg/RequestIdentity",
                "array": "",
                "count": 0,
                "string_bound": 0,
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
                "type": "unitree_api/msg/ResponseStatus",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Unitree_apiMsgResponseHeader)


class Ros2Unitree_apiMsgResponse(Record):
    """@brief Own every original unitree_api/msg/Response field.
    @details Exactly 3 fields; 28..2108 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original header: unitree_api/msg/ResponseHeader; scalar; count/quota 0.
    # @brief Original data: string; scalar; count/quota 0.
    # @brief Original binary: int8; sequence; count/quota 32.
    __slots__ = ("header", "data", "binary")
    SCHEMA = {
        "type": "unitree_api/msg/Response",
        "native_identity": "RIHS01_5300d019bb652073e7248995c878765c68ab519bcbdbad2e2a17c81abd8888b9",
        "codec_identity": "UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f",
        "minimum": 28,
        "maximum": 2108,
        "semantics": "",
        "fields": [
            {
                "name": "header",
                "type": "unitree_api/msg/ResponseHeader",
                "array": "",
                "count": 0,
                "string_bound": 0,
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
                "string_bound": 2048,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "binary",
                "type": "int8",
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


REGISTRY.add(Ros2Unitree_apiMsgResponse)


class Ros2Unitree_goMsgAudioData(Record):
    """@brief Own every original unitree_go/msg/AudioData field.
    @details Exactly 2 fields; 12..2060 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original time_frame: uint64; scalar; count/quota 0.
    # @brief Original data: uint8; sequence; count/quota 2048.
    __slots__ = ("time_frame", "data")
    SCHEMA = {
        "type": "unitree_go/msg/AudioData",
        "native_identity": "RIHS01_55973ff982f53f02855ff34a184f00ee63b68a3f65b19152448f9fd7558e7dc5",
        "codec_identity": "UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe",
        "minimum": 12,
        "maximum": 2060,
        "semantics": "",
        "fields": [
            {
                "name": "time_frame",
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
                "name": "data",
                "type": "uint8",
                "array": "sequence",
                "count": 2048,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Unitree_goMsgAudioData)


class Ros2Unitree_goMsgBmsCmd(Record):
    """@brief Own every original unitree_go/msg/BmsCmd field.
    @details Exactly 2 fields; 4..4 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original off: uint8; scalar; count/quota 0.
    # @brief Original reserve: uint8; array; count/quota 3.
    __slots__ = ("off", "reserve")
    SCHEMA = {
        "type": "unitree_go/msg/BmsCmd",
        "native_identity": "RIHS01_815310dff4ebba1e0d37802dfdc56d4b5a849761f613954172bdb4476aed5aa2",
        "codec_identity": "UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339",
        "minimum": 4,
        "maximum": 4,
        "semantics": "",
        "fields": [
            {
                "name": "off",
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
                "name": "reserve",
                "type": "uint8",
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
        ],
    }


REGISTRY.add(Ros2Unitree_goMsgBmsCmd)


class Ros2Unitree_goMsgBmsState(Record):
    """@brief Own every original unitree_go/msg/BmsState field.
    @details Exactly 9 fields; 44..44 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original version_high: uint8; scalar; count/quota 0.
    # @brief Original version_low: uint8; scalar; count/quota 0.
    # @brief Original status: uint8; scalar; count/quota 0.
    # @brief Original soc: uint8; scalar; count/quota 0.
    # @brief Original current: int32; scalar; count/quota 0.
    # @brief Original cycle: uint16; scalar; count/quota 0.
    # @brief Original bq_ntc: int8; array; count/quota 2.
    # @brief Original mcu_ntc: int8; array; count/quota 2.
    # @brief Original cell_vol: uint16; array; count/quota 15.
    __slots__ = (
        "version_high",
        "version_low",
        "status",
        "soc",
        "current",
        "cycle",
        "bq_ntc",
        "mcu_ntc",
        "cell_vol",
    )
    SCHEMA = {
        "type": "unitree_go/msg/BmsState",
        "native_identity": "RIHS01_a7fe45fbbb6a908bdee78baa3b93e962ed924c143481a696f95b6911ce30b871",
        "codec_identity": "UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0",
        "minimum": 44,
        "maximum": 44,
        "semantics": "",
        "fields": [
            {
                "name": "version_high",
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
                "name": "version_low",
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
                "name": "status",
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
                "name": "soc",
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
                "name": "current",
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
                "name": "cycle",
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
                "name": "bq_ntc",
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
                "name": "mcu_ntc",
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
                "name": "cell_vol",
                "type": "uint16",
                "array": "array",
                "count": 15,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Unitree_goMsgBmsState)


class Ros2Unitree_goMsgError(Record):
    """@brief Own every original unitree_go/msg/Error field.
    @details Exactly 2 fields; 8..8 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original source: uint32; scalar; count/quota 0.
    # @brief Original state: uint32; scalar; count/quota 0.
    __slots__ = ("source", "state")
    SCHEMA = {
        "type": "unitree_go/msg/Error",
        "native_identity": "RIHS01_7b40e63303d9092153a3914bb136ecee44ba37d8b827b11b142444eda9bc9450",
        "codec_identity": "UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd",
        "minimum": 8,
        "maximum": 8,
        "semantics": "",
        "fields": [
            {
                "name": "source",
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
                "name": "state",
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


REGISTRY.add(Ros2Unitree_goMsgError)


class Ros2Unitree_goMsgGo2FrontVideoData(Record):
    """@brief Own every original unitree_go/msg/Go2FrontVideoData field.
    @details Exactly 4 fields; 20..6164 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original time_frame: uint64; scalar; count/quota 0.
    # @brief Original video720p: uint8; sequence; count/quota 2048.
    # @brief Original video360p: uint8; sequence; count/quota 2048.
    # @brief Original video180p: uint8; sequence; count/quota 2048.
    __slots__ = ("time_frame", "video720p", "video360p", "video180p")
    SCHEMA = {
        "type": "unitree_go/msg/Go2FrontVideoData",
        "native_identity": "RIHS01_f548f7ccf101bb0255b0541484ab42aaac31305ccba06db976a8a19a3dbb1a33",
        "codec_identity": "UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad",
        "minimum": 20,
        "maximum": 6164,
        "semantics": "",
        "fields": [
            {
                "name": "time_frame",
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
                "name": "video720p",
                "type": "uint8",
                "array": "sequence",
                "count": 2048,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "video360p",
                "type": "uint8",
                "array": "sequence",
                "count": 2048,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "video180p",
                "type": "uint8",
                "array": "sequence",
                "count": 2048,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Unitree_goMsgGo2FrontVideoData)


class Ros2Unitree_goMsgHeightMap(Record):
    """@brief Own every original unitree_go/msg/HeightMap field.
    @details Exactly 7 fields; 36..2212 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original stamp: float64; scalar; count/quota 0.
    # @brief Original frame_id: string; scalar; count/quota 0.
    # @brief Original resolution: float32; scalar; count/quota 0.
    # @brief Original width: uint32; scalar; count/quota 0.
    # @brief Original height: uint32; scalar; count/quota 0.
    # @brief Original origin: float32; array; count/quota 2.
    # @brief Original data: float32; sequence; count/quota 32.
    __slots__ = ("stamp", "frame_id", "resolution", "width", "height", "origin", "data")
    SCHEMA = {
        "type": "unitree_go/msg/HeightMap",
        "native_identity": "RIHS01_68275718093f292da4fa0cb893b0e77660de92eb950691e1fe9f499d6cf5bff3",
        "codec_identity": "UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d",
        "minimum": 36,
        "maximum": 2212,
        "semantics": "",
        "fields": [
            {
                "name": "stamp",
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
                "name": "frame_id",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 2048,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "resolution",
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
                "name": "width",
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
                "name": "height",
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
                "name": "origin",
                "type": "float32",
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
                "name": "data",
                "type": "float32",
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


REGISTRY.add(Ros2Unitree_goMsgHeightMap)


class Ros2Unitree_goMsgIMUState(Record):
    """@brief Own every original unitree_go/msg/IMUState field.
    @details Exactly 5 fields; 53..53 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original quaternion: float32; array; count/quota 4.
    # @brief Original gyroscope: float32; array; count/quota 3.
    # @brief Original accelerometer: float32; array; count/quota 3.
    # @brief Original rpy: float32; array; count/quota 3.
    # @brief Original temperature: int8; scalar; count/quota 0.
    __slots__ = ("quaternion", "gyroscope", "accelerometer", "rpy", "temperature")
    SCHEMA = {
        "type": "unitree_go/msg/IMUState",
        "native_identity": "RIHS01_226772531e06ca5768dad7ae264221622e92ba1dbc7fcd7f8074351a23fe1c11",
        "codec_identity": "UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc",
        "minimum": 53,
        "maximum": 53,
        "semantics": "",
        "fields": [
            {
                "name": "quaternion",
                "type": "float32",
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
                "name": "gyroscope",
                "type": "float32",
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
                "name": "accelerometer",
                "type": "float32",
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
                "name": "rpy",
                "type": "float32",
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
                "name": "temperature",
                "type": "int8",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Unitree_goMsgIMUState)


class Ros2Unitree_goMsgInterfaceConfig(Record):
    """@brief Own every original unitree_go/msg/InterfaceConfig field.
    @details Exactly 3 fields; 4..4 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original mode: uint8; scalar; count/quota 0.
    # @brief Original value: uint8; scalar; count/quota 0.
    # @brief Original reserve: uint8; array; count/quota 2.
    __slots__ = ("mode", "value", "reserve")
    SCHEMA = {
        "type": "unitree_go/msg/InterfaceConfig",
        "native_identity": "RIHS01_78cdda3cfbbfeb9b32fca9a056727419ed88f908ed99c64e7b810f35281be61b",
        "codec_identity": "UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110",
        "minimum": 4,
        "maximum": 4,
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
            },
            {
                "name": "value",
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
                "name": "reserve",
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


REGISTRY.add(Ros2Unitree_goMsgInterfaceConfig)


class Ros2Unitree_goMsgLidarState(Record):
    """@brief Own every original unitree_go/msg/LidarState field.
    @details Exactly 17 fields; 81..6225 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original stamp: float64; scalar; count/quota 0.
    # @brief Original firmware_version: string; scalar; count/quota 0.
    # @brief Original software_version: string; scalar; count/quota 0.
    # @brief Original sdk_version: string; scalar; count/quota 0.
    # @brief Original sys_rotation_speed: float32; scalar; count/quota 0.
    # @brief Original com_rotation_speed: float32; scalar; count/quota 0.
    # @brief Original error_state: uint8; scalar; count/quota 0.
    # @brief Original cloud_frequency: float32; scalar; count/quota 0.
    # @brief Original cloud_packet_loss_rate: float32; scalar; count/quota 0.
    # @brief Original cloud_size: uint32; scalar; count/quota 0.
    # @brief Original cloud_scan_num: uint32; scalar; count/quota 0.
    # @brief Original imu_frequency: float32; scalar; count/quota 0.
    # @brief Original imu_packet_loss_rate: float32; scalar; count/quota 0.
    # @brief Original imu_rpy: float32; array; count/quota 3.
    # @brief Original serial_recv_stamp: float64; scalar; count/quota 0.
    # @brief Original serial_buffer_size: uint32; scalar; count/quota 0.
    # @brief Original serial_buffer_read: uint32; scalar; count/quota 0.
    __slots__ = (
        "stamp",
        "firmware_version",
        "software_version",
        "sdk_version",
        "sys_rotation_speed",
        "com_rotation_speed",
        "error_state",
        "cloud_frequency",
        "cloud_packet_loss_rate",
        "cloud_size",
        "cloud_scan_num",
        "imu_frequency",
        "imu_packet_loss_rate",
        "imu_rpy",
        "serial_recv_stamp",
        "serial_buffer_size",
        "serial_buffer_read",
    )
    SCHEMA = {
        "type": "unitree_go/msg/LidarState",
        "native_identity": "RIHS01_3a1405d747c51d6b5cf548ee67bc7b63d54b71673a54365fd67d6d09b7599d18",
        "codec_identity": "UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb",
        "minimum": 81,
        "maximum": 6225,
        "semantics": "",
        "fields": [
            {
                "name": "stamp",
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
                "name": "firmware_version",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 2048,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "software_version",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 2048,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "sdk_version",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 2048,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "sys_rotation_speed",
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
                "name": "com_rotation_speed",
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
                "name": "error_state",
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
                "name": "cloud_frequency",
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
                "name": "cloud_packet_loss_rate",
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
                "name": "cloud_size",
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
                "name": "cloud_scan_num",
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
                "name": "imu_frequency",
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
                "name": "imu_packet_loss_rate",
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
                "name": "imu_rpy",
                "type": "float32",
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
                "name": "serial_recv_stamp",
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
                "name": "serial_buffer_size",
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
                "name": "serial_buffer_read",
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


REGISTRY.add(Ros2Unitree_goMsgLidarState)


class Ros2Unitree_goMsgMotorCmd(Record):
    """@brief Own every original unitree_go/msg/MotorCmd field.
    @details Exactly 7 fields; 33..33 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original mode: uint8; scalar; count/quota 0.
    # @brief Original q: float32; scalar; count/quota 0.
    # @brief Original dq: float32; scalar; count/quota 0.
    # @brief Original tau: float32; scalar; count/quota 0.
    # @brief Original kp: float32; scalar; count/quota 0.
    # @brief Original kd: float32; scalar; count/quota 0.
    # @brief Original reserve: uint32; array; count/quota 3.
    __slots__ = ("mode", "q", "dq", "tau", "kp", "kd", "reserve")
    SCHEMA = {
        "type": "unitree_go/msg/MotorCmd",
        "native_identity": "RIHS01_4581f18a3bf58baad04f12f51747f2dd388f64aa2ac997d1d64777563c627fbf",
        "codec_identity": "UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989",
        "minimum": 33,
        "maximum": 33,
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
            },
            {
                "name": "q",
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
                "name": "dq",
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
                "name": "tau",
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
                "name": "kp",
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
                "name": "kd",
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
                "name": "reserve",
                "type": "uint32",
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
        ],
    }


REGISTRY.add(Ros2Unitree_goMsgMotorCmd)


class Ros2Unitree_goMsgLowCmd(Record):
    """@brief Own every original unitree_go/msg/LowCmd field.
    @details Exactly 14 fields; 749..749 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original head: uint8; array; count/quota 2.
    # @brief Original level_flag: uint8; scalar; count/quota 0.
    # @brief Original frame_reserve: uint8; scalar; count/quota 0.
    # @brief Original sn: uint32; array; count/quota 2.
    # @brief Original version: uint32; array; count/quota 2.
    # @brief Original bandwidth: uint16; scalar; count/quota 0.
    # @brief Original motor_cmd: unitree_go/msg/MotorCmd; array; count/quota 20.
    # @brief Original bms_cmd: unitree_go/msg/BmsCmd; scalar; count/quota 0.
    # @brief Original wireless_remote: uint8; array; count/quota 40.
    # @brief Original led: uint8; array; count/quota 12.
    # @brief Original fan: uint8; array; count/quota 2.
    # @brief Original gpio: uint8; scalar; count/quota 0.
    # @brief Original reserve: uint32; scalar; count/quota 0.
    # @brief Original crc: uint32; scalar; count/quota 0.
    __slots__ = (
        "head",
        "level_flag",
        "frame_reserve",
        "sn",
        "version",
        "bandwidth",
        "motor_cmd",
        "bms_cmd",
        "wireless_remote",
        "led",
        "fan",
        "gpio",
        "reserve",
        "crc",
    )
    SCHEMA = {
        "type": "unitree_go/msg/LowCmd",
        "native_identity": "RIHS01_0da1142c994d184f6102948c3acf52b9557836cfe5062b924a1f08ac8b72dc34",
        "codec_identity": "UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63",
        "minimum": 749,
        "maximum": 749,
        "semantics": "",
        "fields": [
            {
                "name": "head",
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
                "name": "level_flag",
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
                "name": "frame_reserve",
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
                "name": "sn",
                "type": "uint32",
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
                "name": "version",
                "type": "uint32",
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
                "name": "bandwidth",
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
                "name": "motor_cmd",
                "type": "unitree_go/msg/MotorCmd",
                "array": "array",
                "count": 20,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "bms_cmd",
                "type": "unitree_go/msg/BmsCmd",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "wireless_remote",
                "type": "uint8",
                "array": "array",
                "count": 40,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "led",
                "type": "uint8",
                "array": "array",
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
                "name": "fan",
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
                "name": "gpio",
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
                "name": "reserve",
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
                "name": "crc",
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


REGISTRY.add(Ros2Unitree_goMsgLowCmd)


class Ros2Unitree_goMsgMotorState(Record):
    """@brief Own every original unitree_go/msg/MotorState field.
    @details Exactly 11 fields; 42..42 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original mode: uint8; scalar; count/quota 0.
    # @brief Original q: float32; scalar; count/quota 0.
    # @brief Original dq: float32; scalar; count/quota 0.
    # @brief Original ddq: float32; scalar; count/quota 0.
    # @brief Original tau_est: float32; scalar; count/quota 0.
    # @brief Original q_raw: float32; scalar; count/quota 0.
    # @brief Original dq_raw: float32; scalar; count/quota 0.
    # @brief Original ddq_raw: float32; scalar; count/quota 0.
    # @brief Original temperature: int8; scalar; count/quota 0.
    # @brief Original lost: uint32; scalar; count/quota 0.
    # @brief Original reserve: uint32; array; count/quota 2.
    __slots__ = (
        "mode",
        "q",
        "dq",
        "ddq",
        "tau_est",
        "q_raw",
        "dq_raw",
        "ddq_raw",
        "temperature",
        "lost",
        "reserve",
    )
    SCHEMA = {
        "type": "unitree_go/msg/MotorState",
        "native_identity": "RIHS01_86fb56a4f6bebcba854e9b510225e6666ef46cf4ea13355870c2dd3c3478a88c",
        "codec_identity": "UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62",
        "minimum": 42,
        "maximum": 42,
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
            },
            {
                "name": "q",
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
                "name": "dq",
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
                "name": "ddq",
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
                "name": "tau_est",
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
                "name": "q_raw",
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
                "name": "dq_raw",
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
                "name": "ddq_raw",
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
                "name": "temperature",
                "type": "int8",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "lost",
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
                "name": "reserve",
                "type": "uint32",
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


REGISTRY.add(Ros2Unitree_goMsgMotorState)


class Ros2Unitree_goMsgLowState(Record):
    """@brief Own every original unitree_go/msg/LowState field.
    @details Exactly 22 fields; 1050..1050 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original head: uint8; array; count/quota 2.
    # @brief Original level_flag: uint8; scalar; count/quota 0.
    # @brief Original frame_reserve: uint8; scalar; count/quota 0.
    # @brief Original sn: uint32; array; count/quota 2.
    # @brief Original version: uint32; array; count/quota 2.
    # @brief Original bandwidth: uint16; scalar; count/quota 0.
    # @brief Original imu_state: unitree_go/msg/IMUState; scalar; count/quota 0.
    # @brief Original motor_state: unitree_go/msg/MotorState; array; count/quota 20.
    # @brief Original bms_state: unitree_go/msg/BmsState; scalar; count/quota 0.
    # @brief Original foot_force: int16; array; count/quota 4.
    # @brief Original foot_force_est: int16; array; count/quota 4.
    # @brief Original tick: uint32; scalar; count/quota 0.
    # @brief Original wireless_remote: uint8; array; count/quota 40.
    # @brief Original bit_flag: uint8; scalar; count/quota 0.
    # @brief Original adc_reel: float32; scalar; count/quota 0.
    # @brief Original temperature_ntc1: int8; scalar; count/quota 0.
    # @brief Original temperature_ntc2: int8; scalar; count/quota 0.
    # @brief Original power_v: float32; scalar; count/quota 0.
    # @brief Original power_a: float32; scalar; count/quota 0.
    # @brief Original fan_frequency: uint16; array; count/quota 4.
    # @brief Original reserve: uint32; scalar; count/quota 0.
    # @brief Original crc: uint32; scalar; count/quota 0.
    __slots__ = (
        "head",
        "level_flag",
        "frame_reserve",
        "sn",
        "version",
        "bandwidth",
        "imu_state",
        "motor_state",
        "bms_state",
        "foot_force",
        "foot_force_est",
        "tick",
        "wireless_remote",
        "bit_flag",
        "adc_reel",
        "temperature_ntc1",
        "temperature_ntc2",
        "power_v",
        "power_a",
        "fan_frequency",
        "reserve",
        "crc",
    )
    SCHEMA = {
        "type": "unitree_go/msg/LowState",
        "native_identity": "RIHS01_db5172cac933e3cfc0e705903343eb4eea42e65e224e9d726d3e672aec0caf0f",
        "codec_identity": "UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab",
        "minimum": 1050,
        "maximum": 1050,
        "semantics": "",
        "fields": [
            {
                "name": "head",
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
                "name": "level_flag",
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
                "name": "frame_reserve",
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
                "name": "sn",
                "type": "uint32",
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
                "name": "version",
                "type": "uint32",
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
                "name": "bandwidth",
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
                "name": "imu_state",
                "type": "unitree_go/msg/IMUState",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "motor_state",
                "type": "unitree_go/msg/MotorState",
                "array": "array",
                "count": 20,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "bms_state",
                "type": "unitree_go/msg/BmsState",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "foot_force",
                "type": "int16",
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
                "name": "foot_force_est",
                "type": "int16",
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
                "name": "tick",
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
                "name": "wireless_remote",
                "type": "uint8",
                "array": "array",
                "count": 40,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "bit_flag",
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
                "name": "adc_reel",
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
                "name": "temperature_ntc1",
                "type": "int8",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "temperature_ntc2",
                "type": "int8",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "power_v",
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
                "name": "power_a",
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
                "name": "fan_frequency",
                "type": "uint16",
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
                "name": "reserve",
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
                "name": "crc",
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


REGISTRY.add(Ros2Unitree_goMsgLowState)


class Ros2Unitree_goMsgMotorCmds(Record):
    """@brief Own every original unitree_go/msg/MotorCmds field.
    @details Exactly 1 fields; 4..1060 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original cmds: unitree_go/msg/MotorCmd; sequence; count/quota 32.
    __slots__ = ("cmds",)
    SCHEMA = {
        "type": "unitree_go/msg/MotorCmds",
        "native_identity": "RIHS01_42477c00fd1a43909adb05ac604791f230536f7f4d558aabb9c1433acc0cb39b",
        "codec_identity": "UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3",
        "minimum": 4,
        "maximum": 1060,
        "semantics": "",
        "fields": [
            {
                "name": "cmds",
                "type": "unitree_go/msg/MotorCmd",
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
            }
        ],
    }


REGISTRY.add(Ros2Unitree_goMsgMotorCmds)


class Ros2Unitree_goMsgMotorStates(Record):
    """@brief Own every original unitree_go/msg/MotorStates field.
    @details Exactly 1 fields; 4..1348 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original states: unitree_go/msg/MotorState; sequence; count/quota 32.
    __slots__ = ("states",)
    SCHEMA = {
        "type": "unitree_go/msg/MotorStates",
        "native_identity": "RIHS01_0451336d1b203b1fc0e378d8a8e2f04a95a8346dcf988f0bb84ac4ff7ee508d6",
        "codec_identity": "UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e",
        "minimum": 4,
        "maximum": 1348,
        "semantics": "",
        "fields": [
            {
                "name": "states",
                "type": "unitree_go/msg/MotorState",
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
            }
        ],
    }


REGISTRY.add(Ros2Unitree_goMsgMotorStates)


class Ros2Unitree_goMsgPathPoint(Record):
    """@brief Own every original unitree_go/msg/PathPoint field.
    @details Exactly 7 fields; 28..28 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original t_from_start: float32; scalar; count/quota 0.
    # @brief Original x: float32; scalar; count/quota 0.
    # @brief Original y: float32; scalar; count/quota 0.
    # @brief Original yaw: float32; scalar; count/quota 0.
    # @brief Original vx: float32; scalar; count/quota 0.
    # @brief Original vy: float32; scalar; count/quota 0.
    # @brief Original vyaw: float32; scalar; count/quota 0.
    __slots__ = ("t_from_start", "x", "y", "yaw", "vx", "vy", "vyaw")
    SCHEMA = {
        "type": "unitree_go/msg/PathPoint",
        "native_identity": "RIHS01_c8bcdd0b29c28f9e853ffa2f4d404718c058f4c084dc13737540d81edb1ccd17",
        "codec_identity": "UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4",
        "minimum": 28,
        "maximum": 28,
        "semantics": "",
        "fields": [
            {
                "name": "t_from_start",
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
                "name": "x",
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
                "name": "y",
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
                "name": "yaw",
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
                "name": "vx",
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
                "name": "vy",
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
                "name": "vyaw",
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


REGISTRY.add(Ros2Unitree_goMsgPathPoint)


class Ros2Unitree_goMsgReq(Record):
    """@brief Own every original unitree_go/msg/Req field.
    @details Exactly 2 fields; 8..4104 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original uuid: string; scalar; count/quota 0.
    # @brief Original body: string; scalar; count/quota 0.
    __slots__ = ("uuid", "body")
    SCHEMA = {
        "type": "unitree_go/msg/Req",
        "native_identity": "RIHS01_7fda909d42424777c947f9c33a7a243eb1a4a1e89af5124a3a2ca7d3fa043b6e",
        "codec_identity": "UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8",
        "minimum": 8,
        "maximum": 4104,
        "semantics": "",
        "fields": [
            {
                "name": "uuid",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 2048,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "body",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 2048,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Unitree_goMsgReq)


class Ros2Unitree_goMsgRes(Record):
    """@brief Own every original unitree_go/msg/Res field.
    @details Exactly 3 fields; 12..6156 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original uuid: string; scalar; count/quota 0.
    # @brief Original data: uint8; sequence; count/quota 2048.
    # @brief Original body: string; scalar; count/quota 0.
    __slots__ = ("uuid", "data", "body")
    SCHEMA = {
        "type": "unitree_go/msg/Res",
        "native_identity": "RIHS01_5e730fb54d81a32e7e28ef519c9b108c99ab6be7dd77c1ef4e66f7c1e69dde16",
        "codec_identity": "UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963",
        "minimum": 12,
        "maximum": 6156,
        "semantics": "",
        "fields": [
            {
                "name": "uuid",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 2048,
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
                "type": "uint8",
                "array": "sequence",
                "count": 2048,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "body",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 2048,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Unitree_goMsgRes)


class Ros2Unitree_goMsgSportModeCmd(Record):
    """@brief Own every original unitree_go/msg/SportModeCmd field.
    @details Exactly 11 fields; 887..887 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original mode: uint8; scalar; count/quota 0.
    # @brief Original gait_type: uint8; scalar; count/quota 0.
    # @brief Original speed_level: uint8; scalar; count/quota 0.
    # @brief Original foot_raise_height: float32; scalar; count/quota 0.
    # @brief Original body_height: float32; scalar; count/quota 0.
    # @brief Original position: float32; array; count/quota 2.
    # @brief Original euler: float32; array; count/quota 3.
    # @brief Original velocity: float32; array; count/quota 2.
    # @brief Original yaw_speed: float32; scalar; count/quota 0.
    # @brief Original bms_cmd: unitree_go/msg/BmsCmd; scalar; count/quota 0.
    # @brief Original path_point: unitree_go/msg/PathPoint; array; count/quota 30.
    __slots__ = (
        "mode",
        "gait_type",
        "speed_level",
        "foot_raise_height",
        "body_height",
        "position",
        "euler",
        "velocity",
        "yaw_speed",
        "bms_cmd",
        "path_point",
    )
    SCHEMA = {
        "type": "unitree_go/msg/SportModeCmd",
        "native_identity": "RIHS01_22c42d22e75a8d419fa6473b1d3ae92b3fa7473ca9d7bc9e336785659e7ab928",
        "codec_identity": "UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c",
        "minimum": 887,
        "maximum": 887,
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
            },
            {
                "name": "gait_type",
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
                "name": "speed_level",
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
                "name": "foot_raise_height",
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
                "name": "body_height",
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
                "name": "position",
                "type": "float32",
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
                "name": "euler",
                "type": "float32",
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
                "name": "velocity",
                "type": "float32",
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
                "name": "yaw_speed",
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
                "name": "bms_cmd",
                "type": "unitree_go/msg/BmsCmd",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "path_point",
                "type": "unitree_go/msg/PathPoint",
                "array": "array",
                "count": 30,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Unitree_goMsgSportModeCmd)


class Ros2Unitree_goMsgTimeSpec(Record):
    """@brief Own every original unitree_go/msg/TimeSpec field.
    @details Exactly 2 fields; 8..8 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original sec: int32; scalar; count/quota 0.
    # @brief Original nanosec: uint32; scalar; count/quota 0.
    __slots__ = ("sec", "nanosec")
    SCHEMA = {
        "type": "unitree_go/msg/TimeSpec",
        "native_identity": "RIHS01_0cac3f0605af323add43e1ed3ae7fc01f7c7857f41380170b3ea3a899b28cb76",
        "codec_identity": "UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4",
        "minimum": 8,
        "maximum": 8,
        "semantics": "",
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


REGISTRY.add(Ros2Unitree_goMsgTimeSpec)


class Ros2Unitree_goMsgSportModeState(Record):
    """@brief Own every original unitree_go/msg/SportModeState field.
    @details Exactly 15 fields; 227..227 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original stamp: unitree_go/msg/TimeSpec; scalar; count/quota 0.
    # @brief Original error_code: uint32; scalar; count/quota 0.
    # @brief Original imu_state: unitree_go/msg/IMUState; scalar; count/quota 0.
    # @brief Original mode: uint8; scalar; count/quota 0.
    # @brief Original progress: float32; scalar; count/quota 0.
    # @brief Original gait_type: uint8; scalar; count/quota 0.
    # @brief Original foot_raise_height: float32; scalar; count/quota 0.
    # @brief Original position: float32; array; count/quota 3.
    # @brief Original body_height: float32; scalar; count/quota 0.
    # @brief Original velocity: float32; array; count/quota 3.
    # @brief Original yaw_speed: float32; scalar; count/quota 0.
    # @brief Original range_obstacle: float32; array; count/quota 4.
    # @brief Original foot_force: int16; array; count/quota 4.
    # @brief Original foot_position_body: float32; array; count/quota 12.
    # @brief Original foot_speed_body: float32; array; count/quota 12.
    __slots__ = (
        "stamp",
        "error_code",
        "imu_state",
        "mode",
        "progress",
        "gait_type",
        "foot_raise_height",
        "position",
        "body_height",
        "velocity",
        "yaw_speed",
        "range_obstacle",
        "foot_force",
        "foot_position_body",
        "foot_speed_body",
    )
    SCHEMA = {
        "type": "unitree_go/msg/SportModeState",
        "native_identity": "RIHS01_814b4692a904d586a0c6fe49ce344480434364d0fb410d06df2986a16e79fcd4",
        "codec_identity": "UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760",
        "minimum": 227,
        "maximum": 227,
        "semantics": "",
        "fields": [
            {
                "name": "stamp",
                "type": "unitree_go/msg/TimeSpec",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "error_code",
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
                "name": "imu_state",
                "type": "unitree_go/msg/IMUState",
                "array": "",
                "count": 0,
                "string_bound": 0,
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
                "name": "progress",
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
                "name": "gait_type",
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
                "name": "foot_raise_height",
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
                "name": "position",
                "type": "float32",
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
                "name": "body_height",
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
                "name": "velocity",
                "type": "float32",
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
                "name": "yaw_speed",
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
                "name": "range_obstacle",
                "type": "float32",
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
                "name": "foot_force",
                "type": "int16",
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
                "name": "foot_position_body",
                "type": "float32",
                "array": "array",
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
                "name": "foot_speed_body",
                "type": "float32",
                "array": "array",
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


REGISTRY.add(Ros2Unitree_goMsgSportModeState)


class Ros2Unitree_goMsgUwbState(Record):
    """@brief Own every original unitree_go/msg/UwbState field.
    @details Exactly 17 fields; 55..55 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original version: uint8; array; count/quota 2.
    # @brief Original channel: uint8; scalar; count/quota 0.
    # @brief Original joy_mode: uint8; scalar; count/quota 0.
    # @brief Original orientation_est: float32; scalar; count/quota 0.
    # @brief Original pitch_est: float32; scalar; count/quota 0.
    # @brief Original distance_est: float32; scalar; count/quota 0.
    # @brief Original yaw_est: float32; scalar; count/quota 0.
    # @brief Original tag_roll: float32; scalar; count/quota 0.
    # @brief Original tag_pitch: float32; scalar; count/quota 0.
    # @brief Original tag_yaw: float32; scalar; count/quota 0.
    # @brief Original base_roll: float32; scalar; count/quota 0.
    # @brief Original base_pitch: float32; scalar; count/quota 0.
    # @brief Original base_yaw: float32; scalar; count/quota 0.
    # @brief Original joystick: float32; array; count/quota 2.
    # @brief Original error_state: uint8; scalar; count/quota 0.
    # @brief Original buttons: uint8; scalar; count/quota 0.
    # @brief Original enabled_from_app: uint8; scalar; count/quota 0.
    __slots__ = (
        "version",
        "channel",
        "joy_mode",
        "orientation_est",
        "pitch_est",
        "distance_est",
        "yaw_est",
        "tag_roll",
        "tag_pitch",
        "tag_yaw",
        "base_roll",
        "base_pitch",
        "base_yaw",
        "joystick",
        "error_state",
        "buttons",
        "enabled_from_app",
    )
    SCHEMA = {
        "type": "unitree_go/msg/UwbState",
        "native_identity": "RIHS01_d02a3bf8330a002373281a2888a9ea92d6135d7eba55c918403dabc38edce7f5",
        "codec_identity": "UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34",
        "minimum": 55,
        "maximum": 55,
        "semantics": "",
        "fields": [
            {
                "name": "version",
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
                "name": "channel",
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
                "name": "joy_mode",
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
                "name": "orientation_est",
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
                "name": "pitch_est",
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
                "name": "distance_est",
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
                "name": "yaw_est",
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
                "name": "tag_roll",
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
                "name": "tag_pitch",
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
                "name": "tag_yaw",
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
                "name": "base_roll",
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
                "name": "base_pitch",
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
                "name": "base_yaw",
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
                "name": "joystick",
                "type": "float32",
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
                "name": "error_state",
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
                "name": "buttons",
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
                "name": "enabled_from_app",
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


REGISTRY.add(Ros2Unitree_goMsgUwbState)


class Ros2Unitree_goMsgUwbSwitch(Record):
    """@brief Own every original unitree_go/msg/UwbSwitch field.
    @details Exactly 1 fields; 1..1 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original enabled: uint8; scalar; count/quota 0.
    __slots__ = ("enabled",)
    SCHEMA = {
        "type": "unitree_go/msg/UwbSwitch",
        "native_identity": "RIHS01_de3a330c27e9a44eb3a7dcf3547d97fdafb74230bf679e6f04e4563935a6a270",
        "codec_identity": "UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [
            {
                "name": "enabled",
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


REGISTRY.add(Ros2Unitree_goMsgUwbSwitch)


class Ros2Unitree_goMsgWirelessController(Record):
    """@brief Own every original unitree_go/msg/WirelessController field.
    @details Exactly 5 fields; 18..18 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original lx: float32; scalar; count/quota 0.
    # @brief Original ly: float32; scalar; count/quota 0.
    # @brief Original rx: float32; scalar; count/quota 0.
    # @brief Original ry: float32; scalar; count/quota 0.
    # @brief Original keys: uint16; scalar; count/quota 0.
    __slots__ = ("lx", "ly", "rx", "ry", "keys")
    SCHEMA = {
        "type": "unitree_go/msg/WirelessController",
        "native_identity": "RIHS01_83a5bbbf022f060aa36716ee78afb802528f26ce16238b9c3787939c830cbde5",
        "codec_identity": "UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438",
        "minimum": 18,
        "maximum": 18,
        "semantics": "",
        "fields": [
            {
                "name": "lx",
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
                "name": "ly",
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
                "name": "rx",
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
                "name": "ry",
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
                "name": "keys",
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
        ],
    }


REGISTRY.add(Ros2Unitree_goMsgWirelessController)


class Ros2Unitree_hgMsgBmsCmd(Record):
    """@brief Own every original unitree_hg/msg/BmsCmd field.
    @details Exactly 2 fields; 41..41 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original cmd: uint8; scalar; count/quota 0.
    # @brief Original reserve: uint8; array; count/quota 40.
    __slots__ = ("cmd", "reserve")
    SCHEMA = {
        "type": "unitree_hg/msg/BmsCmd",
        "native_identity": "RIHS01_7b7d2f71ab061902dd207e6f243109167b3fed94427066f40180d563290b6e15",
        "codec_identity": "UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de",
        "minimum": 41,
        "maximum": 41,
        "semantics": "",
        "fields": [
            {
                "name": "cmd",
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
                "name": "reserve",
                "type": "uint8",
                "array": "array",
                "count": 40,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Unitree_hgMsgBmsCmd)


class Ros2Unitree_hgMsgBmsState(Record):
    """@brief Own every original unitree_hg/msg/BmsState field.
    @details Exactly 13 fields; 161..161 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original version_high: uint8; scalar; count/quota 0.
    # @brief Original version_low: uint8; scalar; count/quota 0.
    # @brief Original fn: uint8; scalar; count/quota 0.
    # @brief Original cell_vol: uint16; array; count/quota 40.
    # @brief Original bmsvoltage: uint32; array; count/quota 3.
    # @brief Original current: int32; scalar; count/quota 0.
    # @brief Original soc: uint8; scalar; count/quota 0.
    # @brief Original soh: uint8; scalar; count/quota 0.
    # @brief Original temperature: int16; array; count/quota 12.
    # @brief Original cycle: uint16; scalar; count/quota 0.
    # @brief Original manufacturer_date: uint16; scalar; count/quota 0.
    # @brief Original bmsstate: uint32; array; count/quota 5.
    # @brief Original reserve: uint32; array; count/quota 3.
    __slots__ = (
        "version_high",
        "version_low",
        "fn",
        "cell_vol",
        "bmsvoltage",
        "current",
        "soc",
        "soh",
        "temperature",
        "cycle",
        "manufacturer_date",
        "bmsstate",
        "reserve",
    )
    SCHEMA = {
        "type": "unitree_hg/msg/BmsState",
        "native_identity": "RIHS01_59d9c2459ddf390072902896850ce13ea5de394157907c7dc514d2187ff3e51f",
        "codec_identity": "UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d",
        "minimum": 161,
        "maximum": 161,
        "semantics": "",
        "fields": [
            {
                "name": "version_high",
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
                "name": "version_low",
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
                "name": "fn",
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
                "name": "cell_vol",
                "type": "uint16",
                "array": "array",
                "count": 40,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "bmsvoltage",
                "type": "uint32",
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
                "name": "current",
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
                "name": "soc",
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
                "name": "soh",
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
                "name": "temperature",
                "type": "int16",
                "array": "array",
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
                "name": "cycle",
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
                "name": "manufacturer_date",
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
                "name": "bmsstate",
                "type": "uint32",
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
                "name": "reserve",
                "type": "uint32",
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
        ],
    }


REGISTRY.add(Ros2Unitree_hgMsgBmsState)


class Ros2Unitree_hgMsgMotorCmd(Record):
    """@brief Own every original unitree_hg/msg/MotorCmd field.
    @details Exactly 7 fields; 25..25 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original mode: uint8; scalar; count/quota 0.
    # @brief Original q: float32; scalar; count/quota 0.
    # @brief Original dq: float32; scalar; count/quota 0.
    # @brief Original tau: float32; scalar; count/quota 0.
    # @brief Original kp: float32; scalar; count/quota 0.
    # @brief Original kd: float32; scalar; count/quota 0.
    # @brief Original reserve: uint32; scalar; count/quota 0.
    __slots__ = ("mode", "q", "dq", "tau", "kp", "kd", "reserve")
    SCHEMA = {
        "type": "unitree_hg/msg/MotorCmd",
        "native_identity": "RIHS01_b47468413c7037d0e2c0227fced04b91224cc165e5befe2b8cefacbe08391329",
        "codec_identity": "UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb",
        "minimum": 25,
        "maximum": 25,
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
            },
            {
                "name": "q",
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
                "name": "dq",
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
                "name": "tau",
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
                "name": "kp",
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
                "name": "kd",
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
                "name": "reserve",
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


REGISTRY.add(Ros2Unitree_hgMsgMotorCmd)


class Ros2Unitree_hgMsgHandCmd(Record):
    """@brief Own every original unitree_hg/msg/HandCmd field.
    @details Exactly 2 fields; 20..820 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original motor_cmd: unitree_hg/msg/MotorCmd; sequence; count/quota 32.
    # @brief Original reserve: uint32; array; count/quota 4.
    __slots__ = ("motor_cmd", "reserve")
    SCHEMA = {
        "type": "unitree_hg/msg/HandCmd",
        "native_identity": "RIHS01_aa5efb217dfce9bba4a5c51be7d09b6426ea5ad20bb919b2033f285a2b98a8f4",
        "codec_identity": "UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006",
        "minimum": 20,
        "maximum": 820,
        "semantics": "",
        "fields": [
            {
                "name": "motor_cmd",
                "type": "unitree_hg/msg/MotorCmd",
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
                "name": "reserve",
                "type": "uint32",
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
        ],
    }


REGISTRY.add(Ros2Unitree_hgMsgHandCmd)


class Ros2Unitree_hgMsgMotorState(Record):
    """@brief Own every original unitree_hg/msg/MotorState field.
    @details Exactly 10 fields; 53..53 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original mode: uint8; scalar; count/quota 0.
    # @brief Original q: float32; scalar; count/quota 0.
    # @brief Original dq: float32; scalar; count/quota 0.
    # @brief Original ddq: float32; scalar; count/quota 0.
    # @brief Original tau_est: float32; scalar; count/quota 0.
    # @brief Original temperature: int16; array; count/quota 2.
    # @brief Original vol: float32; scalar; count/quota 0.
    # @brief Original sensor: uint32; array; count/quota 2.
    # @brief Original motorstate: uint32; scalar; count/quota 0.
    # @brief Original reserve: uint32; array; count/quota 4.
    __slots__ = ("mode", "q", "dq", "ddq", "tau_est", "temperature", "vol", "sensor", "motorstate", "reserve")
    SCHEMA = {
        "type": "unitree_hg/msg/MotorState",
        "native_identity": "RIHS01_9fb0c7e50cef1769037c580304750df0da54b7a6a5fbfa92880f97add4945345",
        "codec_identity": "UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934",
        "minimum": 53,
        "maximum": 53,
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
            },
            {
                "name": "q",
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
                "name": "dq",
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
                "name": "ddq",
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
                "name": "tau_est",
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
                "name": "temperature",
                "type": "int16",
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
                "name": "vol",
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
                "name": "sensor",
                "type": "uint32",
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
                "name": "motorstate",
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
                "name": "reserve",
                "type": "uint32",
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
        ],
    }


REGISTRY.add(Ros2Unitree_hgMsgMotorState)


class Ros2Unitree_hgMsgPressSensorState(Record):
    """@brief Own every original unitree_hg/msg/PressSensorState field.
    @details Exactly 4 fields; 104..104 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original pressure: float32; array; count/quota 12.
    # @brief Original temperature: float32; array; count/quota 12.
    # @brief Original lost: uint32; scalar; count/quota 0.
    # @brief Original reserve: uint32; scalar; count/quota 0.
    __slots__ = ("pressure", "temperature", "lost", "reserve")
    SCHEMA = {
        "type": "unitree_hg/msg/PressSensorState",
        "native_identity": "RIHS01_3c61bae23b785ee850c57df73a948d53ca5cb00ccbdb82ee526994c77ae8d908",
        "codec_identity": "UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5",
        "minimum": 104,
        "maximum": 104,
        "semantics": "",
        "fields": [
            {
                "name": "pressure",
                "type": "float32",
                "array": "array",
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
                "name": "temperature",
                "type": "float32",
                "array": "array",
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
                "name": "lost",
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
                "name": "reserve",
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


REGISTRY.add(Ros2Unitree_hgMsgPressSensorState)


class Ros2Unitree_hgMsgIMUState(Record):
    """@brief Own every original unitree_hg/msg/IMUState field.
    @details Exactly 5 fields; 54..54 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original quaternion: float32; array; count/quota 4.
    # @brief Original gyroscope: float32; array; count/quota 3.
    # @brief Original accelerometer: float32; array; count/quota 3.
    # @brief Original rpy: float32; array; count/quota 3.
    # @brief Original temperature: int16; scalar; count/quota 0.
    __slots__ = ("quaternion", "gyroscope", "accelerometer", "rpy", "temperature")
    SCHEMA = {
        "type": "unitree_hg/msg/IMUState",
        "native_identity": "RIHS01_6fbba1a672360bf41e4393ad73d247036fd802d08adfb436d0c99a2a7b3ceec2",
        "codec_identity": "UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420",
        "minimum": 54,
        "maximum": 54,
        "semantics": "",
        "fields": [
            {
                "name": "quaternion",
                "type": "float32",
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
                "name": "gyroscope",
                "type": "float32",
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
                "name": "accelerometer",
                "type": "float32",
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
                "name": "rpy",
                "type": "float32",
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
                "name": "temperature",
                "type": "int16",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
        ],
    }


REGISTRY.add(Ros2Unitree_hgMsgIMUState)


class Ros2Unitree_hgMsgHandState(Record):
    """@brief Own every original unitree_hg/msg/HandState field.
    @details Exactly 9 fields; 94..5118 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original motor_state: unitree_hg/msg/MotorState; sequence; count/quota 32.
    # @brief Original press_sensor_state: unitree_hg/msg/PressSensorState; sequence; count/quota 32.
    # @brief Original imu_state: unitree_hg/msg/IMUState; scalar; count/quota 0.
    # @brief Original power_v: float32; scalar; count/quota 0.
    # @brief Original power_a: float32; scalar; count/quota 0.
    # @brief Original system_v: float32; scalar; count/quota 0.
    # @brief Original device_v: float32; scalar; count/quota 0.
    # @brief Original error: uint32; array; count/quota 2.
    # @brief Original reserve: uint32; array; count/quota 2.
    __slots__ = (
        "motor_state",
        "press_sensor_state",
        "imu_state",
        "power_v",
        "power_a",
        "system_v",
        "device_v",
        "error",
        "reserve",
    )
    SCHEMA = {
        "type": "unitree_hg/msg/HandState",
        "native_identity": "RIHS01_f8f161522deb4e58d5c1d679826c2a405b63b409db7e4ea9d17628f3029c4d2f",
        "codec_identity": "UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6",
        "minimum": 94,
        "maximum": 5118,
        "semantics": "",
        "fields": [
            {
                "name": "motor_state",
                "type": "unitree_hg/msg/MotorState",
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
                "name": "press_sensor_state",
                "type": "unitree_hg/msg/PressSensorState",
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
                "name": "imu_state",
                "type": "unitree_hg/msg/IMUState",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "power_v",
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
                "name": "power_a",
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
                "name": "system_v",
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
                "name": "device_v",
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
                "name": "error",
                "type": "uint32",
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
                "name": "reserve",
                "type": "uint32",
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


REGISTRY.add(Ros2Unitree_hgMsgHandState)


class Ros2Unitree_hgMsgLowCmd(Record):
    """@brief Own every original unitree_hg/msg/LowCmd field.
    @details Exactly 5 fields; 897..897 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original mode_pr: uint8; scalar; count/quota 0.
    # @brief Original mode_machine: uint8; scalar; count/quota 0.
    # @brief Original motor_cmd: unitree_hg/msg/MotorCmd; array; count/quota 35.
    # @brief Original reserve: uint32; array; count/quota 4.
    # @brief Original crc: uint32; scalar; count/quota 0.
    __slots__ = ("mode_pr", "mode_machine", "motor_cmd", "reserve", "crc")
    SCHEMA = {
        "type": "unitree_hg/msg/LowCmd",
        "native_identity": "RIHS01_b0eec4778db3ad67ffade328b063bea700bd1558f3f359ea5e4c86e3c3f25bc5",
        "codec_identity": "UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461",
        "minimum": 897,
        "maximum": 897,
        "semantics": "",
        "fields": [
            {
                "name": "mode_pr",
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
                "name": "mode_machine",
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
                "name": "motor_cmd",
                "type": "unitree_hg/msg/MotorCmd",
                "array": "array",
                "count": 35,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "reserve",
                "type": "uint32",
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
                "name": "crc",
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


REGISTRY.add(Ros2Unitree_hgMsgLowCmd)


class Ros2Unitree_hgMsgLowState(Record):
    """@brief Own every original unitree_hg/msg/LowState field.
    @details Exactly 9 fields; 1983..1983 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original version: uint32; array; count/quota 2.
    # @brief Original mode_pr: uint8; scalar; count/quota 0.
    # @brief Original mode_machine: uint8; scalar; count/quota 0.
    # @brief Original tick: uint32; scalar; count/quota 0.
    # @brief Original imu_state: unitree_hg/msg/IMUState; scalar; count/quota 0.
    # @brief Original motor_state: unitree_hg/msg/MotorState; array; count/quota 35.
    # @brief Original wireless_remote: uint8; array; count/quota 40.
    # @brief Original reserve: uint32; array; count/quota 4.
    # @brief Original crc: uint32; scalar; count/quota 0.
    __slots__ = (
        "version",
        "mode_pr",
        "mode_machine",
        "tick",
        "imu_state",
        "motor_state",
        "wireless_remote",
        "reserve",
        "crc",
    )
    SCHEMA = {
        "type": "unitree_hg/msg/LowState",
        "native_identity": "RIHS01_aee6c5bd4b4d2eeca854bf47e32e4e3d34c47c2cafa05c08b6b0fa4bc51c6b3a",
        "codec_identity": "UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d",
        "minimum": 1983,
        "maximum": 1983,
        "semantics": "",
        "fields": [
            {
                "name": "version",
                "type": "uint32",
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
                "name": "mode_pr",
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
                "name": "mode_machine",
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
                "name": "tick",
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
                "name": "imu_state",
                "type": "unitree_hg/msg/IMUState",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "motor_state",
                "type": "unitree_hg/msg/MotorState",
                "array": "array",
                "count": 35,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "wireless_remote",
                "type": "uint8",
                "array": "array",
                "count": 40,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "default": None,
            },
            {
                "name": "reserve",
                "type": "uint32",
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
                "name": "crc",
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


REGISTRY.add(Ros2Unitree_hgMsgLowState)


class Ros2Unitree_hgMsgMainBoardState(Record):
    """@brief Own every original unitree_hg/msg/MainBoardState field.
    @details Exactly 4 fields; 72..72 canonical bytes.
    Inherited encode/decode reject malformed whole values transactionally.
    """

    # @brief Original fan_state: uint16; array; count/quota 6.
    # @brief Original temperature: int16; array; count/quota 6.
    # @brief Original value: float32; array; count/quota 6.
    # @brief Original state: uint32; array; count/quota 6.
    __slots__ = ("fan_state", "temperature", "value", "state")
    SCHEMA = {
        "type": "unitree_hg/msg/MainBoardState",
        "native_identity": "RIHS01_1420200fd0eedd8dbabb47d0ea2c3bdb38a7ee47c682c84301326db51baa5450",
        "codec_identity": "UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6",
        "minimum": 72,
        "maximum": 72,
        "semantics": "",
        "fields": [
            {
                "name": "fan_state",
                "type": "uint16",
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
                "name": "temperature",
                "type": "int16",
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
                "name": "value",
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
                "name": "state",
                "type": "uint32",
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


REGISTRY.add(Ros2Unitree_hgMsgMainBoardState)
