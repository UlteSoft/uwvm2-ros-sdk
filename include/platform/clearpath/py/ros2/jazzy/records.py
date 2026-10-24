"""@file records.py
@brief Complete original clearpath values using the shared strict Python codec.
@details Source-only identities confer no native ROS registration or permission.
"""

from ros.py.wire import Record, Registry

REGISTRY = Registry()


class Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal(Record):
    """@brief Own every original clearpath_motor_msgs/action/LynxCalibrate_Goal field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ()
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_61b01a6234b41f96464de9449b3e8d1b955decf6afa12aa3ba94062c98cec681",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [],
        "type": "clearpath_motor_msgs/action/LynxCalibrate_Goal",
    }


REGISTRY.add(Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal)


class Ros2Clearpath_motor_msgsActionLynxCalibrate_Result(Record):
    """@brief Own every original clearpath_motor_msgs/action/LynxCalibrate_Result field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("offset",)
    # @brief Original offset: float32; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_686450363b8b15eba1e9e9e9ff05c9aacfb95bb0d113eaa7c443e4c70d55d41f",
        "minimum": 4,
        "maximum": 12,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "offset",
                "type": "float32",
                "array": "sequence",
                "count": 2,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 4,
            }
        ],
        "type": "clearpath_motor_msgs/action/LynxCalibrate_Result",
    }


REGISTRY.add(Ros2Clearpath_motor_msgsActionLynxCalibrate_Result)


class Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback(Record):
    """@brief Own every original clearpath_motor_msgs/action/LynxCalibrate_Feedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("iteration",)
    # @brief Original iteration: uint16; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ebe7badd3f72982079911d8aa72c4ddd27ff0a12d2f948e5970649317a592b53",
        "minimum": 4,
        "maximum": 8,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "iteration",
                "type": "uint16",
                "array": "sequence",
                "count": 2,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 2,
            }
        ],
        "type": "clearpath_motor_msgs/action/LynxCalibrate_Feedback",
    }


REGISTRY.add(Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback)


class Ros2Clearpath_motor_msgsActionLynxUpdate_Goal(Record):
    """@brief Own every original clearpath_motor_msgs/action/LynxUpdate_Goal field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("file",)
    # @brief Original file: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_f0362f8a90391e8ffda2e8f3b798769b644091058361882c4e9457196f007565",
        "minimum": 4,
        "maximum": 260,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "file",
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
                "raw": False,
                "element_minimum": 4,
            }
        ],
        "type": "clearpath_motor_msgs/action/LynxUpdate_Goal",
    }


REGISTRY.add(Ros2Clearpath_motor_msgsActionLynxUpdate_Goal)


class Ros2Clearpath_motor_msgsActionLynxUpdate_Result(Record):
    """@brief Own every original clearpath_motor_msgs/action/LynxUpdate_Result field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success",)
    # @brief Original success: bool; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_126fe871dbcb036e485d20e8ccdc8e9fb7be01757f539bfba895aabf44d341d8",
        "minimum": 4,
        "maximum": 6,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "success",
                "type": "bool",
                "array": "sequence",
                "count": 2,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 1,
            }
        ],
        "type": "clearpath_motor_msgs/action/LynxUpdate_Result",
    }


REGISTRY.add(Ros2Clearpath_motor_msgsActionLynxUpdate_Result)


class Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback(Record):
    """@brief Own every original clearpath_motor_msgs/action/LynxUpdate_Feedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("progress",)
    # @brief Original progress: float32; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_2179ec9dee627234a1a31e9681ff214cc45ca837349cd8e407e019a354121b19",
        "minimum": 4,
        "maximum": 12,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "progress",
                "type": "float32",
                "array": "sequence",
                "count": 2,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 4,
            }
        ],
        "type": "clearpath_motor_msgs/action/LynxUpdate_Feedback",
    }


REGISTRY.add(Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback)


class Ros2Builtin_interfacesMsgDuration(Record):
    """@brief Own every original builtin_interfaces/msg/Duration field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("sec", "nanosec")
    # @brief Original sec: int32; shape scalar.
    # @brief Original nanosec: uint32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4",
        "minimum": 8,
        "maximum": 8,
        "semantics": "normalized-duration",
        "ros_version": 2,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
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
                "raw": False,
                "element_minimum": 4,
            },
        ],
        "type": "builtin_interfaces/msg/Duration",
    }


REGISTRY.add(Ros2Builtin_interfacesMsgDuration)


class Ros2Builtin_interfacesMsgTime(Record):
    """@brief Own every original builtin_interfaces/msg/Time field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("sec", "nanosec")
    # @brief Original sec: int32; shape scalar.
    # @brief Original nanosec: uint32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
        "minimum": 8,
        "maximum": 8,
        "semantics": "normalized-time",
        "ros_version": 2,
        "constants": {},
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
                "raw": False,
                "element_minimum": 4,
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
                "raw": False,
                "element_minimum": 4,
            },
        ],
        "type": "builtin_interfaces/msg/Time",
    }


REGISTRY.add(Ros2Builtin_interfacesMsgTime)


class Ros2Clearpath_control_msgsMsgDeviceInfo(Record):
    """@brief Own every original clearpath_control_msgs/msg/DeviceInfo field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "device_id",
        "device_class",
        "model",
        "manufacturer",
        "firmware_version",
        "hardware_version",
        "serial_number",
    )
    # @brief Original device_id: string; shape scalar.
    # @brief Original device_class: string; shape scalar.
    # @brief Original model: string; shape scalar.
    # @brief Original manufacturer: string; shape scalar.
    # @brief Original firmware_version: string; shape scalar.
    # @brief Original hardware_version: string; shape scalar.
    # @brief Original serial_number: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_9111f5d4b5324c36eb85f01e6fdbc3c589479ff5b64a8fa7b9d467aa14675c3e",
        "minimum": 28,
        "maximum": 1820,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "device_id",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "device_class",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "model",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "manufacturer",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "firmware_version",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "hardware_version",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "serial_number",
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
                "raw": False,
                "element_minimum": 4,
            },
        ],
        "type": "clearpath_control_msgs/msg/DeviceInfo",
    }


REGISTRY.add(Ros2Clearpath_control_msgsMsgDeviceInfo)


class Ros2Clearpath_control_msgsMsgStreamControl(Record):
    """@brief Own every original clearpath_control_msgs/msg/StreamControl field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("stream", "enabled")
    # @brief Original stream: string; shape scalar.
    # @brief Original enabled: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_26208e266c9185bfb0e715407ab0fe313f2d47e6bc9f54594a102c3a09d34734",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "stream",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "enabled",
                "type": "bool",
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
        "type": "clearpath_control_msgs/msg/StreamControl",
    }


REGISTRY.add(Ros2Clearpath_control_msgsMsgStreamControl)


class Ros2Clearpath_motor_msgsMsgLynxDebug(Record):
    """@brief Own every original clearpath_motor_msgs/msg/LynxDebug field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("can_id", "joint_name", "fault_frequency", "accumulator_flags", "accumulators", "currents")
    # @brief Original can_id: uint8; shape scalar.
    # @brief Original joint_name: string; shape scalar.
    # @brief Original fault_frequency: uint16; shape scalar.
    # @brief Original accumulator_flags: uint32; shape scalar.
    # @brief Original accumulators: float32; shape sequence.
    # @brief Original currents: float32; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_0341ae040f1e8a1f980bde84498c4a4f8b9c55c3806839a73727c1579ab4416e",
        "minimum": 19,
        "maximum": 291,
        "semantics": "",
        "ros_version": 2,
        "constants": {
            "ACCUMULATOR_FLAG_ABOVE_RATED": 0,
            "ACCUMULATOR_FLAG_CONTINUOUS_1_1": 1,
            "ACCUMULATOR_FLAG_CONTINUOUS_1_2": 2,
            "ACCUMULATOR_FLAG_CONTINUOUS_1_3": 3,
            "ACCUMULATOR_FLAG_CONTINUOUS_1_4": 4,
            "ACCUMULATOR_FLAG_CONTINUOUS_1_5": 5,
            "ACCUMULATOR_FLAG_CONTINUOUS_1_6": 6,
            "ACCUMULATOR_FLAG_CONTINUOUS_1_7": 7,
            "ACCUMULATOR_FLAG_CONTINUOUS_1_8": 8,
            "ACCUMULATOR_FLAG_CONTINUOUS_1_9": 9,
            "ACCUMULATOR_FLAG_CONTINUOUS_2_0": 10,
            "ACCUMULATOR_FLAG_CONTINUOUS_2_1": 11,
            "ACCUMULATOR_FLAG_CONTINUOUS_2_2": 12,
            "ACCUMULATOR_FLAG_CONTINUOUS_2_3": 13,
            "ACCUMULATOR_FLAG_CONTINUOUS_2_4": 14,
            "ACCUMULATOR_FLAG_CONTINUOUS_2_5": 15,
            "ACCUMULATOR_FLAG_CONTINUOUS_2_6": 16,
            "ACCUMULATOR_FLAG_CONTINUOUS_2_7": 17,
            "ACCUMULATOR_FLAG_CONTINUOUS_2_8": 18,
            "ACCUMULATOR_FLAG_CONTINUOUS_2_9": 19,
            "ACCUMULATOR_FLAG_CONTINUOUS_3_0": 20,
            "ACCUMULATOR_ABOVE_RATED": 0,
            "ACCUMULATOR_CONTINUOUS_1_1": 1,
            "ACCUMULATOR_CONTINUOUS_1_5": 2,
            "ACCUMULATOR_CONTINUOUS_2_0": 3,
            "ACCUMULATOR_CONTINUOUS_2_5": 4,
            "ACCUMULATOR_CONTINUOUS_3_0": 5,
            "CURRENT_ID_FB": 0,
            "CURRENT_ID_FF": 1,
            "CURRENT_ID_REF": 2,
            "CURRENT_IQ_FB": 3,
            "CURRENT_IQ_FF": 4,
            "CURRENT_IQ_REF": 5,
        },
        "fields": [
            {
                "name": "can_id",
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
                "name": "joint_name",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "fault_frequency",
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
                "raw": False,
                "element_minimum": 2,
            },
            {
                "name": "accumulator_flags",
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
                "name": "accumulators",
                "type": "float32",
                "array": "sequence",
                "count": 2,
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
                "name": "currents",
                "type": "float32",
                "array": "sequence",
                "count": 2,
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
        "type": "clearpath_motor_msgs/msg/LynxDebug",
    }


REGISTRY.add(Ros2Clearpath_motor_msgsMsgLynxDebug)


class Ros2Clearpath_motor_msgsMsgLynxFeedback(Record):
    """@brief Own every original clearpath_motor_msgs/msg/LynxFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("can_id", "joint_name", "current", "voltage", "velocity", "travel")
    # @brief Original can_id: uint8; shape scalar.
    # @brief Original joint_name: string; shape scalar.
    # @brief Original current: float32; shape scalar.
    # @brief Original voltage: float32; shape scalar.
    # @brief Original velocity: float32; shape scalar.
    # @brief Original travel: float32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_5d92c7085019ebf00ba93788b5b2f4055ad40b2c6714575a66fb75cf314429eb",
        "minimum": 21,
        "maximum": 277,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "can_id",
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
                "name": "joint_name",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "current",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "voltage",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "velocity",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "travel",
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
                "raw": False,
                "element_minimum": 4,
            },
        ],
        "type": "clearpath_motor_msgs/msg/LynxFeedback",
    }


REGISTRY.add(Ros2Clearpath_motor_msgsMsgLynxFeedback)


class Ros2Clearpath_motor_msgsMsgLynxMotorProtection(Record):
    """@brief Own every original clearpath_motor_msgs/msg/LynxMotorProtection field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("can_id", "joint_name", "state")
    # @brief Original can_id: uint8; shape scalar.
    # @brief Original joint_name: string; shape scalar.
    # @brief Original state: uint8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_f824abfa97f6f24934e04094d66170167f19a14fb933f325cbef4ed6fca16630",
        "minimum": 6,
        "maximum": 262,
        "semantics": "",
        "ros_version": 2,
        "constants": {"NORMAL": 0, "THROTTLED": 1, "OVERHEATED": 2, "ERROR": 3},
        "fields": [
            {
                "name": "can_id",
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
                "name": "joint_name",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "state",
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
        ],
        "type": "clearpath_motor_msgs/msg/LynxMotorProtection",
    }


REGISTRY.add(Ros2Clearpath_motor_msgsMsgLynxMotorProtection)


class Ros2Std_msgsMsgHeader(Record):
    """@brief Own every original std_msgs/msg/Header field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("stamp", "frame_id")
    # @brief Original stamp: builtin_interfaces/msg/Time; shape scalar.
    # @brief Original frame_id: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96",
        "minimum": 12,
        "maximum": 140,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
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
                "raw": False,
                "element_minimum": 8,
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
                "raw": False,
                "element_minimum": 4,
            },
        ],
        "type": "std_msgs/msg/Header",
    }


REGISTRY.add(Ros2Std_msgsMsgHeader)


class Ros2Clearpath_motor_msgsMsgLynxMultiDebug(Record):
    """@brief Own every original clearpath_motor_msgs/msg/LynxMultiDebug field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "drivers")
    # @brief Original header: std_msgs/msg/Header; shape scalar.
    # @brief Original drivers: clearpath_motor_msgs/msg/LynxDebug; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_056abd2153e7f1a6df223bf5daba581e6c218bb7ef365444fc5c3171dfc62e95",
        "minimum": 16,
        "maximum": 1308,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
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
                "raw": False,
                "element_minimum": 12,
            },
            {
                "name": "drivers",
                "type": "clearpath_motor_msgs/msg/LynxDebug",
                "array": "sequence",
                "count": 4,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 19,
            },
        ],
        "type": "clearpath_motor_msgs/msg/LynxMultiDebug",
    }


REGISTRY.add(Ros2Clearpath_motor_msgsMsgLynxMultiDebug)


class Ros2Clearpath_motor_msgsMsgLynxMultiFeedback(Record):
    """@brief Own every original clearpath_motor_msgs/msg/LynxMultiFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "drivers")
    # @brief Original header: std_msgs/msg/Header; shape scalar.
    # @brief Original drivers: clearpath_motor_msgs/msg/LynxFeedback; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_2c83cade6bec4d766fd2cff97338642b3d2065d41e9968ccf5054c6f231242c7",
        "minimum": 16,
        "maximum": 1252,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
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
                "raw": False,
                "element_minimum": 12,
            },
            {
                "name": "drivers",
                "type": "clearpath_motor_msgs/msg/LynxFeedback",
                "array": "sequence",
                "count": 4,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 21,
            },
        ],
        "type": "clearpath_motor_msgs/msg/LynxMultiFeedback",
    }


REGISTRY.add(Ros2Clearpath_motor_msgsMsgLynxMultiFeedback)


class Ros2Clearpath_motor_msgsMsgLynxStatus(Record):
    """@brief Own every original clearpath_motor_msgs/msg/LynxStatus field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "can_id",
        "joint_name",
        "firmware_version",
        "motor_temperature",
        "mcu_temperature",
        "pcb_temperature",
        "stopped",
        "status_flags",
        "warning_flags",
        "error_flags",
    )
    # @brief Original can_id: uint8; shape scalar.
    # @brief Original joint_name: string; shape scalar.
    # @brief Original firmware_version: string; shape scalar.
    # @brief Original motor_temperature: float32; shape scalar.
    # @brief Original mcu_temperature: float32; shape scalar.
    # @brief Original pcb_temperature: float32; shape scalar.
    # @brief Original stopped: bool; shape scalar.
    # @brief Original status_flags: uint32; shape scalar.
    # @brief Original warning_flags: uint32; shape scalar.
    # @brief Original error_flags: uint32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_b68a7ab9bc5312c59d2ef86e49313468b631e8cacdf52468374b67f4eced5c6d",
        "minimum": 34,
        "maximum": 546,
        "semantics": "",
        "ros_version": 2,
        "constants": {
            "STATUS_FLAG_ADC_CALIBRATED": 0,
            "STATUS_FLAG_FOC_ENABLED": 1,
            "STATUS_FLAG_CALIBRATION_REQUESTED": 2,
            "STATUS_FLAG_CALIBRATION_CANCELLED": 3,
            "STATUS_FLAG_ESTOPPED": 4,
            "WARNING_FLAG_MOTOR_THERMISTOR": 0,
            "WARNING_FLAG_PCB_THERMISTOR": 1,
            "WARNING_FLAG_PHASE": 2,
            "WARNING_FLAG_PHASE_A": 3,
            "WARNING_FLAG_PHASE_B": 4,
            "WARNING_FLAG_PHASE_C": 5,
            "WARNING_FLAG_ENCODER_INDEX": 6,
            "WARNING_FLAG_ENCODER_OUTPUT_A": 7,
            "WARNING_FLAG_ENCODER_OUTPUT_B": 8,
            "ERROR_FLAG_NOT_CALIBRATED": 0,
            "ERROR_FLAG_MOTOR_FAULT": 1,
            "ERROR_FLAG_MOTOR_STALLING": 2,
            "ERROR_FLAG_MOTOR_THERMISTOR": 3,
            "ERROR_FLAG_PCB_THERMISTOR": 4,
            "ERROR_FLAG_PHASE": 5,
            "ERROR_FLAG_PHASE_A": 6,
            "ERROR_FLAG_PHASE_B": 7,
            "ERROR_FLAG_PHASE_C": 8,
            "ERROR_FLAG_ENCODER_POWER": 9,
            "ERROR_FLAG_ENCODER_INDEX": 10,
            "ERROR_FLAG_ENCODER_OUTPUT_A": 11,
            "ERROR_FLAG_ENCODER_OUTPUT_B": 12,
        },
        "fields": [
            {
                "name": "can_id",
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
                "name": "joint_name",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "firmware_version",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "motor_temperature",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "mcu_temperature",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "pcb_temperature",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "stopped",
                "type": "bool",
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
                "name": "status_flags",
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
                "name": "warning_flags",
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
                "name": "error_flags",
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
        "type": "clearpath_motor_msgs/msg/LynxStatus",
    }


REGISTRY.add(Ros2Clearpath_motor_msgsMsgLynxStatus)


class Ros2Clearpath_motor_msgsMsgLynxMultiStatus(Record):
    """@brief Own every original clearpath_motor_msgs/msg/LynxMultiStatus field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "drivers")
    # @brief Original header: std_msgs/msg/Header; shape scalar.
    # @brief Original drivers: clearpath_motor_msgs/msg/LynxStatus; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_595cd0847b4332e14cc067b916166e9a6e1d1e12a7a68cdb7e1cd414a9ea9ce1",
        "minimum": 16,
        "maximum": 2328,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
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
                "raw": False,
                "element_minimum": 12,
            },
            {
                "name": "drivers",
                "type": "clearpath_motor_msgs/msg/LynxStatus",
                "array": "sequence",
                "count": 4,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 34,
            },
        ],
        "type": "clearpath_motor_msgs/msg/LynxMultiStatus",
    }


REGISTRY.add(Ros2Clearpath_motor_msgsMsgLynxMultiStatus)


class Ros2Clearpath_motor_msgsMsgLynxSystemProtection(Record):
    """@brief Own every original clearpath_motor_msgs/msg/LynxSystemProtection field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "system_state", "motor_states")
    # @brief Original header: std_msgs/msg/Header; shape scalar.
    # @brief Original system_state: uint8; shape scalar.
    # @brief Original motor_states: clearpath_motor_msgs/msg/LynxMotorProtection; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_4d662de03c34bb633a122399be1a1aaea6187550c83231bf6d8a06b95fa82d9f",
        "minimum": 17,
        "maximum": 669,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
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
                "raw": False,
                "element_minimum": 12,
            },
            {
                "name": "system_state",
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
                "name": "motor_states",
                "type": "clearpath_motor_msgs/msg/LynxMotorProtection",
                "array": "sequence",
                "count": 2,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 6,
            },
        ],
        "type": "clearpath_motor_msgs/msg/LynxSystemProtection",
    }


REGISTRY.add(Ros2Clearpath_motor_msgsMsgLynxSystemProtection)


class Ros2Clearpath_motor_msgsMsgPumaFeedback(Record):
    """@brief Own every original clearpath_motor_msgs/msg/PumaFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("device_number", "device_name", "duty_cycle", "current", "travel", "speed", "setpoint")
    # @brief Original device_number: uint8; shape scalar.
    # @brief Original device_name: string; shape scalar.
    # @brief Original duty_cycle: float32; shape scalar.
    # @brief Original current: float32; shape scalar.
    # @brief Original travel: float64; shape scalar.
    # @brief Original speed: float64; shape scalar.
    # @brief Original setpoint: float64; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_c020162b07a55ac5f41df6021c0d3053d7302863f4e544a738b6cc5bc4dc9659",
        "minimum": 37,
        "maximum": 293,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "device_number",
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
                "name": "device_name",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "duty_cycle",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "current",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "travel",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "setpoint",
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
        ],
        "type": "clearpath_motor_msgs/msg/PumaFeedback",
    }


REGISTRY.add(Ros2Clearpath_motor_msgsMsgPumaFeedback)


class Ros2Clearpath_motor_msgsMsgPumaMultiFeedback(Record):
    """@brief Own every original clearpath_motor_msgs/msg/PumaMultiFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "drivers_feedback")
    # @brief Original header: std_msgs/msg/Header; shape scalar.
    # @brief Original drivers_feedback: clearpath_motor_msgs/msg/PumaFeedback; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_638309564580ad23d585799dcd46156e1e4261ebf9febfbb91754c250907c947",
        "minimum": 16,
        "maximum": 1316,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
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
                "raw": False,
                "element_minimum": 12,
            },
            {
                "name": "drivers_feedback",
                "type": "clearpath_motor_msgs/msg/PumaFeedback",
                "array": "sequence",
                "count": 4,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 37,
            },
        ],
        "type": "clearpath_motor_msgs/msg/PumaMultiFeedback",
    }


REGISTRY.add(Ros2Clearpath_motor_msgsMsgPumaMultiFeedback)


class Ros2Clearpath_motor_msgsMsgPumaStatus(Record):
    """@brief Own every original clearpath_motor_msgs/msg/PumaStatus field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "device_number",
        "device_name",
        "bus_voltage",
        "temperature",
        "output_voltage",
        "analog_input",
        "mode",
        "fault",
    )
    # @brief Original device_number: uint8; shape scalar.
    # @brief Original device_name: string; shape scalar.
    # @brief Original bus_voltage: float32; shape scalar.
    # @brief Original temperature: float32; shape scalar.
    # @brief Original output_voltage: float32; shape scalar.
    # @brief Original analog_input: float32; shape scalar.
    # @brief Original mode: uint8; shape scalar.
    # @brief Original fault: uint8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_a027229db2c8500f707d97064548b27e77e24ae4840ad9722d2dc74726099da8",
        "minimum": 23,
        "maximum": 279,
        "semantics": "",
        "ros_version": 2,
        "constants": {
            "MODE_VOLTAGE": 0,
            "MODE_CURRENT": 1,
            "MODE_SPEED": 2,
            "MODE_POSITION": 3,
            "MODE_VCOMP": 4,
            "FAULT_CURRENT": 1,
            "FAULT_TEMPERATURE": 2,
            "FAULT_BUS_VOLTAGE": 4,
            "FAULT_BRIDGE_DRIVER": 8,
        },
        "fields": [
            {
                "name": "device_number",
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
                "name": "device_name",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "bus_voltage",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "temperature",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "output_voltage",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "analog_input",
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
                "raw": False,
                "element_minimum": 4,
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
                "raw": False,
                "element_minimum": 1,
            },
            {
                "name": "fault",
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
        ],
        "type": "clearpath_motor_msgs/msg/PumaStatus",
    }


REGISTRY.add(Ros2Clearpath_motor_msgsMsgPumaStatus)


class Ros2Clearpath_motor_msgsMsgPumaMultiStatus(Record):
    """@brief Own every original clearpath_motor_msgs/msg/PumaMultiStatus field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "drivers")
    # @brief Original header: std_msgs/msg/Header; shape scalar.
    # @brief Original drivers: clearpath_motor_msgs/msg/PumaStatus; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_30a0210fea4fffe07371c898c365ef9696501a7541935dd80770671a7163c8f2",
        "minimum": 16,
        "maximum": 1260,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
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
                "raw": False,
                "element_minimum": 12,
            },
            {
                "name": "drivers",
                "type": "clearpath_motor_msgs/msg/PumaStatus",
                "array": "sequence",
                "count": 4,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 23,
            },
        ],
        "type": "clearpath_motor_msgs/msg/PumaMultiStatus",
    }


REGISTRY.add(Ros2Clearpath_motor_msgsMsgPumaMultiStatus)


class Ros2Clearpath_platform_msgsMsgDisplayStatus(Record):
    """@brief Own every original clearpath_platform_msgs/msg/DisplayStatus field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("string1", "string2")
    # @brief Original string1: string; shape scalar.
    # @brief Original string2: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e4585117414581491304a26d528b44c770799f622c3f1cde037078f5cb2462c2",
        "minimum": 8,
        "maximum": 106,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "string1",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 49,
                "native_string_bound": 49,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "string2",
                "type": "string",
                "array": "",
                "count": 0,
                "string_bound": 49,
                "native_string_bound": 49,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 4,
            },
        ],
        "type": "clearpath_platform_msgs/msg/DisplayStatus",
    }


REGISTRY.add(Ros2Clearpath_platform_msgsMsgDisplayStatus)


class Ros2Clearpath_platform_msgsMsgDrive(Record):
    """@brief Own every original clearpath_platform_msgs/msg/Drive field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("mode", "drivers")
    # @brief Original mode: int8; shape scalar.
    # @brief Original drivers: float32; shape array.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_be8664128ff89a066550f1a2496c30396f39bafd1d96483c545048a328138785",
        "minimum": 9,
        "maximum": 9,
        "semantics": "",
        "ros_version": 2,
        "constants": {"MODE_VELOCITY": 0, "MODE_PWM": 1, "MODE_NONE": -1, "LEFT": 0, "RIGHT": 1},
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
                "raw": False,
                "element_minimum": 1,
            },
            {
                "name": "drivers",
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
                "raw": False,
                "element_minimum": 4,
            },
        ],
        "type": "clearpath_platform_msgs/msg/Drive",
    }


REGISTRY.add(Ros2Clearpath_platform_msgsMsgDrive)


class Ros2Clearpath_platform_msgsMsgDriveFeedback(Record):
    """@brief Own every original clearpath_platform_msgs/msg/DriveFeedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "current",
        "duty_cycle",
        "bridge_temperature",
        "motor_temperature",
        "measured_velocity",
        "measured_travel",
        "driver_fault",
    )
    # @brief Original current: float32; shape scalar.
    # @brief Original duty_cycle: float32; shape scalar.
    # @brief Original bridge_temperature: float32; shape scalar.
    # @brief Original motor_temperature: float32; shape scalar.
    # @brief Original measured_velocity: float32; shape scalar.
    # @brief Original measured_travel: float32; shape scalar.
    # @brief Original driver_fault: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_008f51d4c8341723ffec72651f93c00db0f9feceb037ee7b6b460ffcafd3f287",
        "minimum": 25,
        "maximum": 25,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "current",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "duty_cycle",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "bridge_temperature",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "motor_temperature",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "measured_velocity",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "measured_travel",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "driver_fault",
                "type": "bool",
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
        "type": "clearpath_platform_msgs/msg/DriveFeedback",
    }


REGISTRY.add(Ros2Clearpath_platform_msgsMsgDriveFeedback)


class Ros2Clearpath_platform_msgsMsgFans(Record):
    """@brief Own every original clearpath_platform_msgs/msg/Fans field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("fans",)
    # @brief Original fans: uint8; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_a7d96f2242d992baf96f31bd8f93088547f92c72912c241c2d237f7714800cc8",
        "minimum": 4,
        "maximum": 6,
        "semantics": "",
        "ros_version": 2,
        "constants": {
            "CC01_FAN1": 0,
            "CC01_FAN2": 1,
            "CC01_FAN3": 2,
            "CC01_FAN4": 3,
            "CC01_FAN5": 4,
            "CC01_FAN6": 5,
            "CC01_FAN7": 6,
            "CC01_FAN8": 7,
            "R100_EQUIPMENT_BAY_INTAKE": 0,
            "R100_EQUIPMENT_BAY_EXHAUST": 1,
            "R100_CHARGER_BAY_INTAKE": 2,
            "R100_CHARGER_BAY_EXHAUST": 3,
            "R100_USER_BAY_INTAKE": 4,
            "R100_USER_BAY_EXHAUST": 5,
            "FAN_OFF": 0,
            "FAN_ON_HIGH": 1,
            "FAN_ON_LOW": 2,
        },
        "fields": [
            {
                "name": "fans",
                "type": "uint8",
                "array": "sequence",
                "count": 2,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 1,
            }
        ],
        "type": "clearpath_platform_msgs/msg/Fans",
    }


REGISTRY.add(Ros2Clearpath_platform_msgsMsgFans)


class Ros2Clearpath_platform_msgsMsgFeedback(Record):
    """@brief Own every original clearpath_platform_msgs/msg/Feedback field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "drivers", "commanded_mode", "actual_mode")
    # @brief Original header: std_msgs/msg/Header; shape scalar.
    # @brief Original drivers: clearpath_platform_msgs/msg/DriveFeedback; shape array.
    # @brief Original commanded_mode: int8; shape scalar.
    # @brief Original actual_mode: int8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_15fdfd2e12df38bab09bf083beb61ce23d3c1082e794c34d51eec4c473e29442",
        "minimum": 64,
        "maximum": 192,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
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
                "raw": False,
                "element_minimum": 12,
            },
            {
                "name": "drivers",
                "type": "clearpath_platform_msgs/msg/DriveFeedback",
                "array": "array",
                "count": 2,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 25,
            },
            {
                "name": "commanded_mode",
                "type": "int8",
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
                "raw": False,
                "element_minimum": 1,
            },
        ],
        "type": "clearpath_platform_msgs/msg/Feedback",
    }


REGISTRY.add(Ros2Clearpath_platform_msgsMsgFeedback)


class Ros2Clearpath_platform_msgsMsgRGB(Record):
    """@brief Own every original clearpath_platform_msgs/msg/RGB field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("red", "green", "blue")
    # @brief Original red: uint8; shape scalar.
    # @brief Original green: uint8; shape scalar.
    # @brief Original blue: uint8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_42db8731293054ef44002afc54c16dac45544354932d5353cf749fb376cef1a1",
        "minimum": 3,
        "maximum": 3,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "red",
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
                "name": "green",
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
                "name": "blue",
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
        ],
        "type": "clearpath_platform_msgs/msg/RGB",
    }


REGISTRY.add(Ros2Clearpath_platform_msgsMsgRGB)


class Ros2Clearpath_platform_msgsMsgLights(Record):
    """@brief Own every original clearpath_platform_msgs/msg/Lights field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("lights",)
    # @brief Original lights: clearpath_platform_msgs/msg/RGB; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_3f975a3ec1fca4f8add9523d4f9f99963be520c0e2982e644551b71cbd4b8a27",
        "minimum": 4,
        "maximum": 10,
        "semantics": "",
        "ros_version": 2,
        "constants": {
            "D100_LIGHTS_REAR_LEFT": 0,
            "D100_LIGHTS_FRONT_LEFT": 1,
            "D100_LIGHTS_FRONT_RIGHT": 2,
            "D100_LIGHTS_REAR_RIGHT": 3,
            "D150_LIGHTS_REAR_LEFT": 0,
            "D150_LIGHTS_FRONT_LEFT": 1,
            "D150_LIGHTS_FRONT_RIGHT": 2,
            "D150_LIGHTS_REAR_RIGHT": 3,
            "R100_LIGHTS_FRONT_PORT_UPPER": 0,
            "R100_LIGHTS_FRONT_PORT_LOWER": 1,
            "R100_LIGHTS_FRONT_STARBOARD_UPPER": 2,
            "R100_LIGHTS_FRONT_STARBOARD_LOWER": 3,
            "R100_LIGHTS_REAR_PORT_UPPER": 4,
            "R100_LIGHTS_REAR_PORT_LOWER": 5,
            "R100_LIGHTS_REAR_STARBOARD_UPPER": 6,
            "R100_LIGHTS_REAR_STARBOARD_LOWER": 7,
            "W200_LIGHTS_FRONT_LEFT": 0,
            "W200_LIGHTS_FRONT_RIGHT": 1,
            "W200_LIGHTS_REAR_LEFT": 2,
            "W200_LIGHTS_REAR_RIGHT": 3,
            "A300_LIGHTS_FRONT_RIGHT": 0,
            "A300_LIGHTS_FRONT_LEFT": 1,
            "A300_LIGHTS_REAR_LEFT": 2,
            "A300_LIGHTS_REAR_RIGHT": 3,
        },
        "fields": [
            {
                "name": "lights",
                "type": "clearpath_platform_msgs/msg/RGB",
                "array": "sequence",
                "count": 2,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 3,
            }
        ],
        "type": "clearpath_platform_msgs/msg/Lights",
    }


REGISTRY.add(Ros2Clearpath_platform_msgsMsgLights)


class Ros2Clearpath_platform_msgsMsgPinoutCommand(Record):
    """@brief Own every original clearpath_platform_msgs/msg/PinoutCommand field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("rails", "outputs")
    # @brief Original rails: bool; shape sequence.
    # @brief Original outputs: uint32; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_b26c2baf1e64cefa889c4ac6bd6b7f4647d9247eca0626b83cd726547a4e80ff",
        "minimum": 8,
        "maximum": 18,
        "semantics": "",
        "ros_version": 2,
        "constants": {
            "CC01_USER_PWR_CTRL": 0,
            "D100_AUX_OUT1": 0,
            "D100_AUX_OUT2": 1,
            "D100_AUX_OUT3": 2,
            "D150_AUX_OUT1": 0,
            "D150_AUX_OUT2": 1,
            "D150_AUX_OUT3": 2,
            "CC01_AUX_OUT1": 0,
            "CC01_AUX_OUT2": 1,
            "CC01_AUX_OUT3": 2,
            "CC01_GPO0": 3,
            "CC01_GPO1": 4,
            "CC01_GPO2": 5,
            "CC01_GPO3": 6,
        },
        "fields": [
            {
                "name": "rails",
                "type": "bool",
                "array": "sequence",
                "count": 2,
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
                "name": "outputs",
                "type": "uint32",
                "array": "sequence",
                "count": 2,
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
        "type": "clearpath_platform_msgs/msg/PinoutCommand",
    }


REGISTRY.add(Ros2Clearpath_platform_msgsMsgPinoutCommand)


class Ros2Clearpath_platform_msgsMsgPinoutState(Record):
    """@brief Own every original clearpath_platform_msgs/msg/PinoutState field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "rails", "inputs", "outputs", "output_periods")
    # @brief Original header: std_msgs/msg/Header; shape scalar.
    # @brief Original rails: bool; shape sequence.
    # @brief Original inputs: bool; shape sequence.
    # @brief Original outputs: bool; shape sequence.
    # @brief Original output_periods: uint32; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_a936c6d91440709d50fa9b0be8fb567a9ce793e84f57e5379f6a160c8cbf73e7",
        "minimum": 28,
        "maximum": 170,
        "semantics": "",
        "ros_version": 2,
        "constants": {
            "CC01_USER_PWR_CTRL": 0,
            "D100_AUX_IN1": 0,
            "D100_AUX_IN2": 1,
            "D100_AUX_IN3": 2,
            "D150_AUX_IN1": 0,
            "D150_AUX_IN2": 1,
            "D150_AUX_IN3": 2,
            "CC01_AUX_IN1": 0,
            "CC01_AUX_IN2": 1,
            "CC01_AUX_IN3": 2,
            "CC01_GPI0": 3,
            "CC01_GPI1": 4,
            "CC01_GPI2": 5,
            "CC01_GPI3": 6,
            "D100_AUX_OUT1": 0,
            "D100_AUX_OUT2": 1,
            "D100_AUX_OUT3": 2,
            "D150_AUX_OUT1": 0,
            "D150_AUX_OUT2": 1,
            "D150_AUX_OUT3": 2,
            "CC01_AUX_OUT1": 0,
            "CC01_AUX_OUT2": 1,
            "CC01_AUX_OUT3": 2,
            "CC01_GPO0": 3,
            "CC01_GPO1": 4,
            "CC01_GPO2": 5,
            "CC01_GPO3": 6,
        },
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
                "raw": False,
                "element_minimum": 12,
            },
            {
                "name": "rails",
                "type": "bool",
                "array": "sequence",
                "count": 2,
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
                "name": "inputs",
                "type": "bool",
                "array": "sequence",
                "count": 2,
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
                "name": "outputs",
                "type": "bool",
                "array": "sequence",
                "count": 2,
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
                "name": "output_periods",
                "type": "uint32",
                "array": "sequence",
                "count": 2,
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
        "type": "clearpath_platform_msgs/msg/PinoutState",
    }


REGISTRY.add(Ros2Clearpath_platform_msgsMsgPinoutState)


class Ros2Clearpath_platform_msgsMsgPower(Record):
    """@brief Own every original clearpath_platform_msgs/msg/Power field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "header",
        "shore_power_connected",
        "battery_connected",
        "power_12v_user_nominal",
        "charger_connected",
        "charging_complete",
        "measured_voltages",
        "measured_currents",
    )
    # @brief Original header: std_msgs/msg/Header; shape scalar.
    # @brief Original shore_power_connected: int8; shape scalar.
    # @brief Original battery_connected: int8; shape scalar.
    # @brief Original power_12v_user_nominal: int8; shape scalar.
    # @brief Original charger_connected: int8; shape scalar.
    # @brief Original charging_complete: int8; shape scalar.
    # @brief Original measured_voltages: float32; shape sequence.
    # @brief Original measured_currents: float32; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_3fc241d6b81da2f80bfce22933b81786b5e582715dc66cd238fa40b239e7aecc",
        "minimum": 25,
        "maximum": 169,
        "semantics": "",
        "ros_version": 2,
        "constants": {
            "NOT_APPLICABLE": -1,
            "J100_MEASURED_BATTERY": 0,
            "J100_MEASURED_5V": 1,
            "J100_MEASURED_12V": 2,
            "D100_MEASURED_BATTERY": 0,
            "D100_MEASURED_5V": 1,
            "D100_MEASURED_12V": 2,
            "D150_MEASURED_BATTERY": 0,
            "D150_MEASURED_5V": 1,
            "D150_MEASURED_12V": 2,
            "W200_MEASURED_BATTERY": 0,
            "W200_MEASURED_12V": 1,
            "W200_MEASURED_24V": 2,
            "W200_MEASURED_48V": 3,
            "R100_MEASURED_BATTERY": 0,
            "R100_MEASURED_5V": 1,
            "R100_MEASURED_12V": 2,
            "R100_MEASURED_INVERTER": 3,
            "R100_MEASURED_FRONT_AXLE": 4,
            "R100_MEASURED_REAR_AXLE": 5,
            "R100_MEASURED_LIGHT": 6,
            "A200_BATTERY_VOLTAGE": 0,
            "A200_LEFT_DRIVER_VOLTAGE": 1,
            "A200_RIGHT_DRIVER_VOLTAGE": 2,
            "A200_VOLTAGES_SIZE": 3,
            "CC01_BATTERY_VOLTAGE": 0,
            "CC01_USER_BATTERY_VOLTAGE": 1,
            "CC01_USER_24V_VOLTAGE": 2,
            "CC01_USER_12VB_VOLTAGE": 3,
            "CC01_SYSTEM_12V_VOLTAGE": 4,
            "CC01_EXPANSION_VOLTAGE": 5,
            "CC01_BREAKOUT_24V_AUX_VOLTAGE": 6,
            "CC01_BREAKOUT_12V_AUX_VOLTAGE": 7,
            "CC01_BREAKOUT_USER_12VA_VOLTAGE": 8,
            "CC01_BREAKOUT_LYNX1_VOLTAGE": 9,
            "CC01_BREAKOUT_LYNX2_VOLTAGE": 10,
            "CC01_BREAKOUT_LYNX3_VOLTAGE": 11,
            "CC01_BREAKOUT_LYNX4_VOLTAGE": 12,
            "J100_TOTAL_CURRENT": 0,
            "J100_COMPUTER_CURRENT": 1,
            "J100_DRIVE_CURRENT": 2,
            "J100_USER_CURRENT": 3,
            "D100_TOTAL_CURRENT": 0,
            "D100_COMPUTER_CURRENT": 1,
            "D150_TOTAL_CURRENT": 0,
            "D150_COMPUTER_CURRENT": 1,
            "W200_TOTAL_CURRENT": 0,
            "W200_COMPUTER_CURRENT": 1,
            "W200_12V_CURRENT": 2,
            "W200_24V_CURRENT": 3,
            "R100_TOTAL_CURRENT": 0,
            "A200_MCU_AND_USER_PORT_CURRENT": 0,
            "A200_LEFT_DRIVER_CURRENT": 1,
            "A200_RIGHT_DRIVER_CURRENT": 2,
            "A200_CURRENTS_SIZE": 3,
            "CC01_BATTERY_PACK_CURRENT": 0,
            "CC01_USER_BATTERY_CURRENT": 1,
            "CC01_AUX_HES_CURRENT": 2,
            "CC01_SYSTEM_12V_CURRENT": 3,
            "CC01_24V_AUX_CURRENT": 4,
            "CC01_12V_AUX_CURRENT": 5,
            "CC01_BREAKOUT_USER_24V_CURRENT": 6,
            "CC01_BREAKOUT_USER_12VA_CURRENT": 7,
            "CC01_BREAKOUT_USER_12VB_CURRENT": 8,
            "CC01_BREAKOUT_USER_LYNX1_CURRENT": 9,
            "CC01_BREAKOUT_USER_LYNX2_CURRENT": 10,
            "CC01_BREAKOUT_USER_LYNX3_CURRENT": 11,
            "CC01_BREAKOUT_USER_LYNX4_CURRENT": 12,
        },
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
                "raw": False,
                "element_minimum": 12,
            },
            {
                "name": "shore_power_connected",
                "type": "int8",
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
                "name": "battery_connected",
                "type": "int8",
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
                "name": "power_12v_user_nominal",
                "type": "int8",
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
                "name": "charger_connected",
                "type": "int8",
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
                "name": "charging_complete",
                "type": "int8",
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
                "name": "measured_voltages",
                "type": "float32",
                "array": "sequence",
                "count": 2,
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
                "name": "measured_currents",
                "type": "float32",
                "array": "sequence",
                "count": 2,
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
        "type": "clearpath_platform_msgs/msg/Power",
    }


REGISTRY.add(Ros2Clearpath_platform_msgsMsgPower)


class Ros2Clearpath_platform_msgsMsgStatus(Record):
    """@brief Own every original clearpath_platform_msgs/msg/Status field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "hardware_id", "firmware_version", "mcu_uptime", "connection_uptime")
    # @brief Original header: std_msgs/msg/Header; shape scalar.
    # @brief Original hardware_id: string; shape scalar.
    # @brief Original firmware_version: string; shape scalar.
    # @brief Original mcu_uptime: builtin_interfaces/msg/Duration; shape scalar.
    # @brief Original connection_uptime: builtin_interfaces/msg/Duration; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_1bd99cc11ea9efcb51eeba8fc1d599960c16e958a8adf33a56d47fe27be87782",
        "minimum": 36,
        "maximum": 676,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
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
                "raw": False,
                "element_minimum": 12,
            },
            {
                "name": "hardware_id",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "firmware_version",
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
                "raw": False,
                "element_minimum": 4,
            },
            {
                "name": "mcu_uptime",
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "connection_uptime",
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
                "raw": False,
                "element_minimum": 8,
            },
        ],
        "type": "clearpath_platform_msgs/msg/Status",
    }


REGISTRY.add(Ros2Clearpath_platform_msgsMsgStatus)


class Ros2Clearpath_platform_msgsMsgStopStatus(Record):
    """@brief Own every original clearpath_platform_msgs/msg/StopStatus field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "stop_power_status", "external_stop_present", "needs_reset")
    # @brief Original header: std_msgs/msg/Header; shape scalar.
    # @brief Original stop_power_status: bool; shape scalar.
    # @brief Original external_stop_present: bool; shape scalar.
    # @brief Original needs_reset: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_101f96c8d48e7a945a2f94108e7b48393fc9d4bd75507dd709b95180ff4794d2",
        "minimum": 15,
        "maximum": 143,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
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
                "raw": False,
                "element_minimum": 12,
            },
            {
                "name": "stop_power_status",
                "type": "bool",
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
                "name": "external_stop_present",
                "type": "bool",
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
                "name": "needs_reset",
                "type": "bool",
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
        "type": "clearpath_platform_msgs/msg/StopStatus",
    }


REGISTRY.add(Ros2Clearpath_platform_msgsMsgStopStatus)


class Ros2Clearpath_platform_msgsMsgTemperature(Record):
    """@brief Own every original clearpath_platform_msgs/msg/Temperature field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "temperatures")
    # @brief Original header: std_msgs/msg/Header; shape scalar.
    # @brief Original temperatures: float32; shape sequence.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_b4ae4d6ace9045ce96b0931f08d3b2c7ec358ab9c6da7022afd9ea489f9b0466",
        "minimum": 16,
        "maximum": 152,
        "semantics": "",
        "ros_version": 2,
        "constants": {
            "J100_MCU": 0,
            "J100_PCB": 1,
            "D100_MCU": 0,
            "D100_PCB": 1,
            "D150_MCU": 0,
            "D150_PCB": 1,
            "W200_MCU": 0,
            "R100_MCU": 0,
            "R100_PCB": 1,
            "CC01_MCU": 0,
            "CC01_FAN1": 1,
            "CC01_FAN2": 2,
            "CC01_FAN3": 3,
            "CC01_FAN4": 4,
            "CC01_FAN5": 5,
            "CC01_FAN6": 6,
            "CC01_FAN7": 7,
            "CC01_FAN8": 8,
            "CC01_5V_INDUCTOR": 9,
            "CC01_MAIN_GND_LUG": 10,
            "CC01_24V_DCDC": 11,
            "CC01_12V_DCDC": 12,
            "CC01_EXT_1": 13,
            "CC01_EXT_2": 14,
            "CC01_EXT_3": 15,
            "CC01_EXT_4": 16,
            "CC01_BREAKOUT_1": 17,
            "CC01_BREAKOUT_2": 18,
        },
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
                "raw": False,
                "element_minimum": 12,
            },
            {
                "name": "temperatures",
                "type": "float32",
                "array": "sequence",
                "count": 2,
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
        "type": "clearpath_platform_msgs/msg/Temperature",
    }


REGISTRY.add(Ros2Clearpath_platform_msgsMsgTemperature)


class Ros2Clearpath_control_msgsSrvPowerControl_Request(Record):
    """@brief Own every original clearpath_control_msgs/srv/PowerControl_Request field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("power_on",)
    # @brief Original power_on: bool; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_1ad49d42d8895b3bd219799ab9cc080cf09d23aa4bca4c1172d19bc18fa416c4",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "power_on",
                "type": "bool",
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
            }
        ],
        "type": "clearpath_control_msgs/srv/PowerControl_Request",
    }


REGISTRY.add(Ros2Clearpath_control_msgsSrvPowerControl_Request)


class Ros2Clearpath_control_msgsSrvPowerControl_Response(Record):
    """@brief Own every original clearpath_control_msgs/srv/PowerControl_Response field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "message")
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_6d74d07d6a8ff1c41ed4ca13939d54e9e642f423dc2ff6598665238ebbf10a8b",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
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
                "raw": False,
                "element_minimum": 1,
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
                "raw": False,
                "element_minimum": 4,
            },
        ],
        "type": "clearpath_control_msgs/srv/PowerControl_Response",
    }


REGISTRY.add(Ros2Clearpath_control_msgsSrvPowerControl_Response)


class Ros2Clearpath_platform_msgsSrvConfigureMcu_Request(Record):
    """@brief Own every original clearpath_platform_msgs/srv/ConfigureMcu_Request field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("domain_id", "robot_namespace")
    # @brief Original domain_id: uint8; shape scalar.
    # @brief Original robot_namespace: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_9c48451b208c4de7a51c5075587dfbe710e7ec6b249c7e1eef519022154023fa",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
            {
                "name": "domain_id",
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
                "name": "robot_namespace",
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
                "raw": False,
                "element_minimum": 4,
            },
        ],
        "type": "clearpath_platform_msgs/srv/ConfigureMcu_Request",
    }


REGISTRY.add(Ros2Clearpath_platform_msgsSrvConfigureMcu_Request)


class Ros2Clearpath_platform_msgsSrvConfigureMcu_Response(Record):
    """@brief Own every original clearpath_platform_msgs/srv/ConfigureMcu_Response field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "message")
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_552e715f290b5b9aa5dc926519cf2ab5120d6b2ae5eca9902efcc3f8c9e459ad",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
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
                "raw": False,
                "element_minimum": 1,
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
                "raw": False,
                "element_minimum": 4,
            },
        ],
        "type": "clearpath_platform_msgs/srv/ConfigureMcu_Response",
    }


REGISTRY.add(Ros2Clearpath_platform_msgsSrvConfigureMcu_Response)


class Ros2Clearpath_platform_msgsSrvSetPinout_Request(Record):
    """@brief Own every original clearpath_platform_msgs/srv/SetPinout_Request field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("state", "toggle_period")
    # @brief Original state: bool; shape scalar.
    # @brief Original toggle_period: uint32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_3a3a2f8f16279c2e7a057353cd1f7f11e1a65e887dd3ce0a4b7f584708afb238",
        "minimum": 5,
        "maximum": 5,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
        "fields": [
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
                "raw": False,
                "element_minimum": 1,
            },
            {
                "name": "toggle_period",
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
        "type": "clearpath_platform_msgs/srv/SetPinout_Request",
    }


REGISTRY.add(Ros2Clearpath_platform_msgsSrvSetPinout_Request)


class Ros2Clearpath_platform_msgsSrvSetPinout_Response(Record):
    """@brief Own every original clearpath_platform_msgs/srv/SetPinout_Response field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("success", "message")
    # @brief Original success: bool; shape scalar.
    # @brief Original message: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_b643ef5de2dfb725906ef8f11d79601400953211b47220be7a6fcc05d1be8ee3",
        "minimum": 5,
        "maximum": 261,
        "semantics": "",
        "ros_version": 2,
        "constants": {},
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
                "raw": False,
                "element_minimum": 1,
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
                "raw": False,
                "element_minimum": 4,
            },
        ],
        "type": "clearpath_platform_msgs/srv/SetPinout_Response",
    }


REGISTRY.add(Ros2Clearpath_platform_msgsSrvSetPinout_Response)
