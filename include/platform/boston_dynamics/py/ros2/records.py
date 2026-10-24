"""@file records.py
@brief Complete original boston_dynamics values using the shared strict Python codec.
@details Source-only identities confer no native ROS registration or permission.
"""

from ros.py.wire import Record, Registry

REGISTRY = Registry()


class Ros2Uwvm_spot_bridgeSrvState_Request(Record):
    """@brief Own every original uwvm_spot_bridge/srv/State_Request field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("token", "nonce", "budget_ns")
    # @brief Original token: uint64; shape scalar.
    # @brief Original nonce: uint64; shape scalar.
    # @brief Original budget_ns: uint64; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_9becf278bc168ed6d5b15fe7f1ec35b83e274de8a5173cb2335948306bc7a47e",
        "minimum": 24,
        "maximum": 24,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "token",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "nonce",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "budget_ns",
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
                "raw": False,
                "element_minimum": 8,
            },
        ],
        "type": "uwvm_spot_bridge/srv/State_Request",
    }


REGISTRY.add(Ros2Uwvm_spot_bridgeSrvState_Request)


class Ros2Uwvm_spot_bridgeSrvState_Response(Record):
    """@brief Own every original uwvm_spot_bridge/srv/State_Response field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "token",
        "nonce",
        "error",
        "unknown",
        "acquisition_sec",
        "acquisition_nsec",
        "joint_names",
        "joint_position",
        "joint_velocity",
        "joint_load",
        "motor_power_state",
        "native_proto",
    )
    # @brief Original token: uint64; shape scalar.
    # @brief Original nonce: uint64; shape scalar.
    # @brief Original error: uint32; shape scalar.
    # @brief Original unknown: bool; shape scalar.
    # @brief Original acquisition_sec: int64; shape scalar.
    # @brief Original acquisition_nsec: uint32; shape scalar.
    # @brief Original joint_names: string; shape sequence.
    # @brief Original joint_position: float64; shape sequence.
    # @brief Original joint_velocity: float64; shape sequence.
    # @brief Original joint_load: float64; shape sequence.
    # @brief Original motor_power_state: uint32; shape scalar.
    # @brief Original native_proto: uint8; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ab07340e952c2ff63f35dad37e9d4837a280eee9ce477ac5be4a05f82408ce0a",
        "minimum": 57,
        "maximum": 21433,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "token",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "nonce",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "error",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "unknown",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 1,
            },
            {
                "name": "acquisition_sec",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "acquisition_nsec",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "joint_names",
                "type": "string",
                "array": "sequence",
                "count": 32,
                "string_bound": 128,
                "native_string_bound": 128,
                "native_sequence_bound": 32,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "joint_position",
                "type": "float64",
                "array": "sequence",
                "count": 32,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 32,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "joint_velocity",
                "type": "float64",
                "array": "sequence",
                "count": 32,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 32,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "joint_load",
                "type": "float64",
                "array": "sequence",
                "count": 32,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 32,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "motor_power_state",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "native_proto",
                "type": "uint8",
                "array": "sequence",
                "count": 16384,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 16384,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 1,
            },
        ],
        "type": "uwvm_spot_bridge/srv/State_Response",
    }


REGISTRY.add(Ros2Uwvm_spot_bridgeSrvState_Response)


class Ros2Uwvm_spot_bridgeSrvLease_Request(Record):
    """@brief Own every original uwvm_spot_bridge/srv/Lease_Request field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("token", "nonce", "budget_ns")
    # @brief Original token: uint64; shape scalar.
    # @brief Original nonce: uint64; shape scalar.
    # @brief Original budget_ns: uint64; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_a9aacd78dc6ae9d18fb6bb0d185797c6463c882edadf251eb5c21e3aa3c538a1",
        "minimum": 24,
        "maximum": 24,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "token",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "nonce",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "budget_ns",
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
                "raw": False,
                "element_minimum": 8,
            },
        ],
        "type": "uwvm_spot_bridge/srv/Lease_Request",
    }


REGISTRY.add(Ros2Uwvm_spot_bridgeSrvLease_Request)


class Ros2Uwvm_spot_bridgeSrvLease_Response(Record):
    """@brief Own every original uwvm_spot_bridge/srv/Lease_Response field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("token", "nonce", "error", "unknown", "provider_holds_body_lease")
    # @brief Original token: uint64; shape scalar.
    # @brief Original nonce: uint64; shape scalar.
    # @brief Original error: uint32; shape scalar.
    # @brief Original unknown: bool; shape scalar.
    # @brief Original provider_holds_body_lease: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ce875eb701b607c01f8a19dc8fcff607829824ad99276f906c7fc8fc5567f6d3",
        "minimum": 22,
        "maximum": 22,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "token",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "nonce",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "error",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "unknown",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 1,
            },
            {
                "name": "provider_holds_body_lease",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 1,
            },
        ],
        "type": "uwvm_spot_bridge/srv/Lease_Response",
    }


REGISTRY.add(Ros2Uwvm_spot_bridgeSrvLease_Response)


class Ros2Uwvm_spot_bridgeSrvCommand_Request(Record):
    """@brief Own every original uwvm_spot_bridge/srv/Command_Request field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("token", "nonce", "budget_ns")
    # @brief Original token: uint64; shape scalar.
    # @brief Original nonce: uint64; shape scalar.
    # @brief Original budget_ns: uint64; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_29996d4dacb4ea847c5d629cb634d4aa5e2451627d2469d6cdf301cc007968f8",
        "minimum": 24,
        "maximum": 24,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "token",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "nonce",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "budget_ns",
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
                "raw": False,
                "element_minimum": 8,
            },
        ],
        "type": "uwvm_spot_bridge/srv/Command_Request",
    }


REGISTRY.add(Ros2Uwvm_spot_bridgeSrvCommand_Request)


class Ros2Uwvm_spot_bridgeSrvCommand_Response(Record):
    """@brief Own every original uwvm_spot_bridge/srv/Command_Response field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("token", "nonce", "error", "unknown", "native_accepted", "native_command_id")
    # @brief Original token: uint64; shape scalar.
    # @brief Original nonce: uint64; shape scalar.
    # @brief Original error: uint32; shape scalar.
    # @brief Original unknown: bool; shape scalar.
    # @brief Original native_accepted: bool; shape scalar.
    # @brief Original native_command_id: uint32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e35556e7439c8d5ca79cb0f4ad23cf73c85a8a79d1382cde398dd85082dd1733",
        "minimum": 26,
        "maximum": 26,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "token",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "nonce",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "error",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "unknown",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 1,
            },
            {
                "name": "native_accepted",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 1,
            },
            {
                "name": "native_command_id",
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
                "raw": False,
                "element_minimum": 4,
            },
        ],
        "type": "uwvm_spot_bridge/srv/Command_Response",
    }


REGISTRY.add(Ros2Uwvm_spot_bridgeSrvCommand_Response)


class Ros2Uwvm_spot_bridgeSrvVelocity_Request(Record):
    """@brief Own every original uwvm_spot_bridge/srv/Velocity_Request field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("token", "nonce", "budget_ns", "x_mps", "y_mps", "yaw_rps", "duration_ns")
    # @brief Original token: uint64; shape scalar.
    # @brief Original nonce: uint64; shape scalar.
    # @brief Original budget_ns: uint64; shape scalar.
    # @brief Original x_mps: float64; shape scalar.
    # @brief Original y_mps: float64; shape scalar.
    # @brief Original yaw_rps: float64; shape scalar.
    # @brief Original duration_ns: uint64; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ffe3b1dec91a25cd84d221ba4ebeae576bd7d6b96f258579c0b3d280cad79f8d",
        "minimum": 56,
        "maximum": 56,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "token",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "nonce",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "budget_ns",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "x_mps",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "y_mps",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "yaw_rps",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "duration_ns",
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
                "raw": False,
                "element_minimum": 8,
            },
        ],
        "type": "uwvm_spot_bridge/srv/Velocity_Request",
    }


REGISTRY.add(Ros2Uwvm_spot_bridgeSrvVelocity_Request)


class Ros2Uwvm_spot_bridgeSrvVelocity_Response(Record):
    """@brief Own every original uwvm_spot_bridge/srv/Velocity_Response field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("token", "nonce", "error", "unknown", "native_accepted", "native_command_id")
    # @brief Original token: uint64; shape scalar.
    # @brief Original nonce: uint64; shape scalar.
    # @brief Original error: uint32; shape scalar.
    # @brief Original unknown: bool; shape scalar.
    # @brief Original native_accepted: bool; shape scalar.
    # @brief Original native_command_id: uint32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_031f37beeb5a03c4e65d4be8fd70bc680408d110a020e066bea593d86498401a",
        "minimum": 26,
        "maximum": 26,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "token",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "nonce",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "error",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "unknown",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 1,
            },
            {
                "name": "native_accepted",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 1,
            },
            {
                "name": "native_command_id",
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
                "raw": False,
                "element_minimum": 4,
            },
        ],
        "type": "uwvm_spot_bridge/srv/Velocity_Response",
    }


REGISTRY.add(Ros2Uwvm_spot_bridgeSrvVelocity_Response)


class Ros2Uwvm_spot_bridgeSrvFeedback_Request(Record):
    """@brief Own every original uwvm_spot_bridge/srv/Feedback_Request field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("token", "nonce", "budget_ns", "command_token")
    # @brief Original token: uint64; shape scalar.
    # @brief Original nonce: uint64; shape scalar.
    # @brief Original budget_ns: uint64; shape scalar.
    # @brief Original command_token: uint64; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_de64ce283f49f5c324912ec262f7d15b6fd828879c01039d455c765743c45ba3",
        "minimum": 32,
        "maximum": 32,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "token",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "nonce",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "budget_ns",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "command_token",
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
                "raw": False,
                "element_minimum": 8,
            },
        ],
        "type": "uwvm_spot_bridge/srv/Feedback_Request",
    }


REGISTRY.add(Ros2Uwvm_spot_bridgeSrvFeedback_Request)


class Ros2Uwvm_spot_bridgeSrvFeedback_Response(Record):
    """@brief Own every original uwvm_spot_bridge/srv/Feedback_Response field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "token",
        "nonce",
        "error",
        "unknown",
        "native_command_id",
        "has_full_body_feedback",
        "full_body_status",
        "has_mobility_feedback",
        "mobility_status",
        "feedback_kind",
        "has_subcommand_status",
        "subcommand_status",
        "native_proto",
    )
    # @brief Original token: uint64; shape scalar.
    # @brief Original nonce: uint64; shape scalar.
    # @brief Original error: uint32; shape scalar.
    # @brief Original unknown: bool; shape scalar.
    # @brief Original native_command_id: uint32; shape scalar.
    # @brief Original has_full_body_feedback: bool; shape scalar.
    # @brief Original full_body_status: uint32; shape scalar.
    # @brief Original has_mobility_feedback: bool; shape scalar.
    # @brief Original mobility_status: uint32; shape scalar.
    # @brief Original feedback_kind: uint8; shape scalar.
    # @brief Original has_subcommand_status: bool; shape scalar.
    # @brief Original subcommand_status: uint32; shape scalar.
    # @brief Original native_proto: uint8; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_4a19efe7f64fe0d7f6f13abe8980fb55503d3b897af64abc73bbd236587adfe8",
        "minimum": 45,
        "maximum": 16429,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "token",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "nonce",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "error",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "unknown",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 1,
            },
            {
                "name": "native_command_id",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "has_full_body_feedback",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 1,
            },
            {
                "name": "full_body_status",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "has_mobility_feedback",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 1,
            },
            {
                "name": "mobility_status",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "feedback_kind",
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
                "raw": False,
                "element_minimum": 1,
            },
            {
                "name": "has_subcommand_status",
                "type": "bool",
                "array": "",
                "count": 0,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 1,
            },
            {
                "name": "subcommand_status",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "native_proto",
                "type": "uint8",
                "array": "sequence",
                "count": 16384,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 16384,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 1,
            },
        ],
        "type": "uwvm_spot_bridge/srv/Feedback_Response",
    }


REGISTRY.add(Ros2Uwvm_spot_bridgeSrvFeedback_Response)
