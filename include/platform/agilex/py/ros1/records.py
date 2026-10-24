"""@file records.py
@brief Complete original agilex values using the shared strict Python codec.
@details Source-only identities confer no native ROS registration or permission.
"""

from ros.py.wire import Record, Registry

REGISTRY = Registry()


class Ros1Geometry_msgsPoint(Record):
    """@brief Own every original geometry_msgs/Point field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("x", "y", "z")
    # @brief Original x: float64; shape scalar.
    # @brief Original y: float64; shape scalar.
    # @brief Original z: float64; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b",
        "minimum": 24,
        "maximum": 24,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 8,
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
                "raw": False,
                "element_minimum": 8,
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
                "raw": False,
                "element_minimum": 8,
            },
        ],
        "type": "geometry_msgs/Point",
    }


REGISTRY.add(Ros1Geometry_msgsPoint)


class Ros1Geometry_msgsQuaternion(Record):
    """@brief Own every original geometry_msgs/Quaternion field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("x", "y", "z", "w")
    # @brief Original x: float64; shape scalar.
    # @brief Original y: float64; shape scalar.
    # @brief Original z: float64; shape scalar.
    # @brief Original w: float64; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934",
        "minimum": 32,
        "maximum": 32,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 8,
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
                "raw": False,
                "element_minimum": 8,
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "w",
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
        "type": "geometry_msgs/Quaternion",
    }


REGISTRY.add(Ros1Geometry_msgsQuaternion)


class Ros1Geometry_msgsPose(Record):
    """@brief Own every original geometry_msgs/Pose field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("position", "orientation")
    # @brief Original position: geometry_msgs/Point; shape scalar.
    # @brief Original orientation: geometry_msgs/Quaternion; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471",
        "minimum": 56,
        "maximum": 56,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "position",
                "type": "geometry_msgs/Point",
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
                "element_minimum": 24,
            },
            {
                "name": "orientation",
                "type": "geometry_msgs/Quaternion",
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
                "element_minimum": 32,
            },
        ],
        "type": "geometry_msgs/Pose",
    }


REGISTRY.add(Ros1Geometry_msgsPose)


class Ros1Geometry_msgsPoseWithCovariance(Record):
    """@brief Own every original geometry_msgs/PoseWithCovariance field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("pose", "covariance")
    # @brief Original pose: geometry_msgs/Pose; shape scalar.
    # @brief Original covariance: float64; shape array.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf",
        "minimum": 344,
        "maximum": 344,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "pose",
                "type": "geometry_msgs/Pose",
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
                "element_minimum": 56,
            },
            {
                "name": "covariance",
                "type": "float64",
                "array": "array",
                "count": 36,
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
        "type": "geometry_msgs/PoseWithCovariance",
    }


REGISTRY.add(Ros1Geometry_msgsPoseWithCovariance)


class Ros1Geometry_msgsVector3(Record):
    """@brief Own every original geometry_msgs/Vector3 field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("x", "y", "z")
    # @brief Original x: float64; shape scalar.
    # @brief Original y: float64; shape scalar.
    # @brief Original z: float64; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc",
        "minimum": 24,
        "maximum": 24,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 8,
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
                "raw": False,
                "element_minimum": 8,
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
                "raw": False,
                "element_minimum": 8,
            },
        ],
        "type": "geometry_msgs/Vector3",
    }


REGISTRY.add(Ros1Geometry_msgsVector3)


class Ros1Geometry_msgsTwist(Record):
    """@brief Own every original geometry_msgs/Twist field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("linear", "angular")
    # @brief Original linear: geometry_msgs/Vector3; shape scalar.
    # @brief Original angular: geometry_msgs/Vector3; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921",
        "minimum": 48,
        "maximum": 48,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "linear",
                "type": "geometry_msgs/Vector3",
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
                "element_minimum": 24,
            },
            {
                "name": "angular",
                "type": "geometry_msgs/Vector3",
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
                "element_minimum": 24,
            },
        ],
        "type": "geometry_msgs/Twist",
    }


REGISTRY.add(Ros1Geometry_msgsTwist)


class Ros1Geometry_msgsTwistWithCovariance(Record):
    """@brief Own every original geometry_msgs/TwistWithCovariance field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("twist", "covariance")
    # @brief Original twist: geometry_msgs/Twist; shape scalar.
    # @brief Original covariance: float64; shape array.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf",
        "minimum": 336,
        "maximum": 336,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "twist",
                "type": "geometry_msgs/Twist",
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
                "element_minimum": 48,
            },
            {
                "name": "covariance",
                "type": "float64",
                "array": "array",
                "count": 36,
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
        "type": "geometry_msgs/TwistWithCovariance",
    }


REGISTRY.add(Ros1Geometry_msgsTwistWithCovariance)


class Ros1Time(Record):
    """@brief Own every original time field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("sec", "nsec")
    # @brief Original sec: uint32; shape scalar.
    # @brief Original nsec: uint32; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0",
        "minimum": 8,
        "maximum": 8,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "sec",
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
                "name": "nsec",
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
        "type": "time",
    }


REGISTRY.add(Ros1Time)


class Ros1Std_msgsHeader(Record):
    """@brief Own every original std_msgs/Header field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("seq", "stamp", "frame_id")
    # @brief Original seq: uint32; shape scalar.
    # @brief Original stamp: time; shape scalar.
    # @brief Original frame_id: string; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435",
        "minimum": 16,
        "maximum": 144,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "seq",
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
                "name": "stamp",
                "type": "time",
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
        "type": "std_msgs/Header",
    }


REGISTRY.add(Ros1Std_msgsHeader)


class Ros1Nav_msgsOdometry(Record):
    """@brief Own every original nav_msgs/Odometry field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("header", "child_frame_id", "pose", "twist")
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original child_frame_id: string; shape scalar.
    # @brief Original pose: geometry_msgs/PoseWithCovariance; shape scalar.
    # @brief Original twist: geometry_msgs/TwistWithCovariance; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_c10d3ce1f2824c33d728d0006fb83134330d0332af122f179cf2dac32181a2ca",
        "minimum": 700,
        "maximum": 956,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "header",
                "type": "std_msgs/Header",
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
                "element_minimum": 16,
            },
            {
                "name": "child_frame_id",
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
            {
                "name": "pose",
                "type": "geometry_msgs/PoseWithCovariance",
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
                "element_minimum": 344,
            },
            {
                "name": "twist",
                "type": "geometry_msgs/TwistWithCovariance",
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
                "element_minimum": 336,
            },
        ],
        "type": "nav_msgs/Odometry",
    }


REGISTRY.add(Ros1Nav_msgsOdometry)


class Ros1Scout_msgsScoutBmsStatus(Record):
    """@brief Own every original scout_msgs/ScoutBmsStatus field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "SOC",
        "SOH",
        "battery_voltage",
        "battery_current",
        "battery_temperature",
        "Alarm_Status_1",
        "Alarm_Status_2",
        "Warning_Status_1",
        "Warning_Status_2",
    )
    # @brief Original SOC: float64; shape scalar.
    # @brief Original SOH: float64; shape scalar.
    # @brief Original battery_voltage: float64; shape scalar.
    # @brief Original battery_current: float64; shape scalar.
    # @brief Original battery_temperature: float64; shape scalar.
    # @brief Original Alarm_Status_1: uint8; shape scalar.
    # @brief Original Alarm_Status_2: uint8; shape scalar.
    # @brief Original Warning_Status_1: uint8; shape scalar.
    # @brief Original Warning_Status_2: uint8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_6921538c08e86ab5b9ecdbf974c6cb5b580488f4ed96ccbdb8b7824d51e9cf95",
        "minimum": 44,
        "maximum": 44,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "SOC",
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
                "name": "SOH",
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
                "name": "battery_voltage",
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
                "name": "battery_current",
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
                "name": "battery_temperature",
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
                "name": "Alarm_Status_1",
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
                "name": "Alarm_Status_2",
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
                "name": "Warning_Status_1",
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
                "name": "Warning_Status_2",
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
        "type": "scout_msgs/ScoutBmsStatus",
    }


REGISTRY.add(Ros1Scout_msgsScoutBmsStatus)


class Ros1Scout_msgsScoutDriverState(Record):
    """@brief Own every original scout_msgs/ScoutDriverState field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("driver_voltage", "driver_temperature", "driver_state")
    # @brief Original driver_voltage: float64; shape scalar.
    # @brief Original driver_temperature: float64; shape scalar.
    # @brief Original driver_state: uint8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_4c56c71ae621b2b8822d742894d19946492002453c93b72faccb4f2abc9d4275",
        "minimum": 17,
        "maximum": 17,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "driver_voltage",
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
                "name": "driver_temperature",
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
                "name": "driver_state",
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
        "type": "scout_msgs/ScoutDriverState",
    }


REGISTRY.add(Ros1Scout_msgsScoutDriverState)


class Ros1Scout_msgsScoutLightCmd(Record):
    """@brief Own every original scout_msgs/ScoutLightCmd field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("enable_cmd_light_control", "front_mode", "front_custom_value", "rear_mode", "rear_custom_value")
    # @brief Original enable_cmd_light_control: bool; shape scalar.
    # @brief Original front_mode: uint8; shape scalar.
    # @brief Original front_custom_value: uint8; shape scalar.
    # @brief Original rear_mode: uint8; shape scalar.
    # @brief Original rear_custom_value: uint8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_cf08cccf454f88111d5cc4a4b1ace08de72cf1ae9a9400c23a148126da95942a",
        "minimum": 5,
        "maximum": 5,
        "semantics": "",
        "ros_version": 1,
        "constants": {"LIGHT_CONST_OFF": 0, "LIGHT_CONST_ON": 1, "LIGHT_BREATH": 2, "LIGHT_CUSTOM": 3},
        "fields": [
            {
                "name": "enable_cmd_light_control",
                "type": "bool",
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
                "name": "front_mode",
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
                "name": "front_custom_value",
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
                "name": "rear_mode",
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
                "name": "rear_custom_value",
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
        "type": "scout_msgs/ScoutLightCmd",
    }


REGISTRY.add(Ros1Scout_msgsScoutLightCmd)


class Ros1Scout_msgsScoutLightState(Record):
    """@brief Own every original scout_msgs/ScoutLightState field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("mode", "custom_value")
    # @brief Original mode: uint8; shape scalar.
    # @brief Original custom_value: uint8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_af55048f9200cfa80fc419664204a515f628cc610a352ab3ed8443dd7ac0ae51",
        "minimum": 2,
        "maximum": 2,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
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
                "raw": False,
                "element_minimum": 1,
            },
            {
                "name": "custom_value",
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
        "type": "scout_msgs/ScoutLightState",
    }


REGISTRY.add(Ros1Scout_msgsScoutLightState)


class Ros1Scout_msgsScoutMotorState(Record):
    """@brief Own every original scout_msgs/ScoutMotorState field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = ("current", "rpm", "temperature", "motor_pose")
    # @brief Original current: float64; shape scalar.
    # @brief Original rpm: float64; shape scalar.
    # @brief Original temperature: float64; shape scalar.
    # @brief Original motor_pose: float64; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ca67a704d7bb4ba6b2839db1fdb8a75bc753868ec871d101c24c85d8202a79b7",
        "minimum": 32,
        "maximum": 32,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
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
                "raw": False,
                "element_minimum": 8,
            },
            {
                "name": "rpm",
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
                "name": "temperature",
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
                "name": "motor_pose",
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
        "type": "scout_msgs/ScoutMotorState",
    }


REGISTRY.add(Ros1Scout_msgsScoutMotorState)


class Ros1Scout_msgsScoutRsStatus(Record):
    """@brief Own every original scout_msgs/ScoutRsStatus field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "header",
        "stick_left_h",
        "stick_left_v",
        "stick_right_h",
        "stick_right_v",
        "swa",
        "swb",
        "swc",
        "swd",
        "var_a",
    )
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original stick_left_h: int8; shape scalar.
    # @brief Original stick_left_v: int8; shape scalar.
    # @brief Original stick_right_h: int8; shape scalar.
    # @brief Original stick_right_v: int8; shape scalar.
    # @brief Original swa: uint8; shape scalar.
    # @brief Original swb: uint8; shape scalar.
    # @brief Original swc: uint8; shape scalar.
    # @brief Original swd: uint8; shape scalar.
    # @brief Original var_a: uint8; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_deb068b75fb629df3724c141ed3be9f6ee8a4aac7727cdaa28769cb61211f7de",
        "minimum": 25,
        "maximum": 153,
        "semantics": "",
        "ros_version": 1,
        "constants": {},
        "fields": [
            {
                "name": "header",
                "type": "std_msgs/Header",
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
                "element_minimum": 16,
            },
            {
                "name": "stick_left_h",
                "type": "int8",
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
                "name": "stick_left_v",
                "type": "int8",
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
                "name": "stick_right_h",
                "type": "int8",
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
                "name": "stick_right_v",
                "type": "int8",
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
                "name": "swa",
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
                "name": "swb",
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
                "name": "swc",
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
                "name": "swd",
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
                "name": "var_a",
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
        "type": "scout_msgs/ScoutRsStatus",
    }


REGISTRY.add(Ros1Scout_msgsScoutRsStatus)


class Ros1Scout_msgsScoutStatus(Record):
    """@brief Own every original scout_msgs/ScoutStatus field.
    @details Whole encode/decode are transactional; bounds and units follow the source catalog.
    """

    __slots__ = (
        "header",
        "linear_velocity",
        "angular_velocity",
        "lateral_velocity",
        "base_state",
        "control_mode",
        "fault_code",
        "battery_voltage",
        "motor_states",
        "driver_states",
        "light_control_enabled",
        "front_light_state",
        "rear_light_state",
    )
    # @brief Original header: std_msgs/Header; shape scalar.
    # @brief Original linear_velocity: float64; shape scalar.
    # @brief Original angular_velocity: float64; shape scalar.
    # @brief Original lateral_velocity: float64; shape scalar.
    # @brief Original base_state: uint8; shape scalar.
    # @brief Original control_mode: uint8; shape scalar.
    # @brief Original fault_code: uint16; shape scalar.
    # @brief Original battery_voltage: float64; shape scalar.
    # @brief Original motor_states: scout_msgs/ScoutMotorState; shape array.
    # @brief Original driver_states: scout_msgs/ScoutDriverState; shape array.
    # @brief Original light_control_enabled: bool; shape scalar.
    # @brief Original front_light_state: scout_msgs/ScoutLightState; shape scalar.
    # @brief Original rear_light_state: scout_msgs/ScoutLightState; shape scalar.
    SCHEMA = {
        "native_identity": None,
        "codec_identity": "UWVMROS1_ff62854d4de0aae3dfbbc312822c6f912294f0feb04a7fff943df602d40bcbe2",
        "minimum": 253,
        "maximum": 381,
        "semantics": "",
        "ros_version": 1,
        "constants": {
            "MOTOR_ID_FRONT_RIGHT": 0,
            "MOTOR_ID_FRONT_LEFT": 1,
            "MOTOR_ID_REAR_RIGHT": 2,
            "MOTOR_ID_REAR_LEFT": 3,
            "LIGHT_ID_FRONT": 0,
            "LIGHT_ID_REAR": 1,
        },
        "fields": [
            {
                "name": "header",
                "type": "std_msgs/Header",
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
                "element_minimum": 16,
            },
            {
                "name": "linear_velocity",
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
                "name": "angular_velocity",
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
                "name": "lateral_velocity",
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
                "name": "base_state",
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
                "raw": False,
                "element_minimum": 1,
            },
            {
                "name": "fault_code",
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
                "name": "battery_voltage",
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
                "name": "motor_states",
                "type": "scout_msgs/ScoutMotorState",
                "array": "array",
                "count": 4,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 32,
            },
            {
                "name": "driver_states",
                "type": "scout_msgs/ScoutDriverState",
                "array": "array",
                "count": 4,
                "string_bound": 0,
                "native_string_bound": 0,
                "native_sequence_bound": 0,
                "native_default": None,
                "native_scalar": "",
                "string_encoding": "utf8",
                "float_policy": "finite",
                "raw": False,
                "element_minimum": 17,
            },
            {
                "name": "light_control_enabled",
                "type": "bool",
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
                "name": "front_light_state",
                "type": "scout_msgs/ScoutLightState",
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
                "name": "rear_light_state",
                "type": "scout_msgs/ScoutLightState",
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
        ],
        "type": "scout_msgs/ScoutStatus",
    }


REGISTRY.add(Ros1Scout_msgsScoutStatus)
